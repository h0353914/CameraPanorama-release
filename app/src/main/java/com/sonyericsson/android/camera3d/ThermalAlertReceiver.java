package com.sonyericsson.android.camera3d;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import com.sonyericsson.psm.sysmonservice.ISysmonService;
import java.util.EventListener;

public class ThermalAlertReceiver extends BroadcastReceiver {
    public static final String ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN = "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN";
    public static final String ACTION_CAMERA_HEATED_OVER_CRITICAL = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL";
    private static final int CAMERA_CRITICAL = 604;
    private static final int CAMERA_NORMAL = 600;
    private static final int CAMERA_WARNING = 603;
    private static final String EXPLICIT_INTENT_SYSMON_SERVICE_CLASS_NAME = "com.sonyericsson.psm.sysmonservice.SysmonService";
    private static final String EXPLICIT_INTENT_SYSMON_SERVICE_PACKAGE_NAME = "com.sonyericsson.psm.sysmonservice";
    private static final String SYSMON_SERVICE = "com.sonyericsson.psm.sysmonservice.ISysmonService";
    private static final String TAG = "ThermalAlertReceiver";
    private final Activity mActivity;
    private boolean mIsBindSysmonService;
    private ISysmonService mSysmonService;
    private ThermalAlertInterface mThermalAlertListener = null;
    private final ServiceConnection mServiceConnectionSysmon = new ServiceConnectionSysmon();

    public interface ThermalAlertInterface extends EventListener {
        void onTemperatureAlreadyHigh();

        void onTemperatureReachedHigh();

        void onTemperatureReachingHigh();
    }

    public ThermalAlertReceiver(Activity activity, ThermalAlertInterface thermalAlertInterface) {
        this.mActivity = activity;
        setThermalAlertListener(thermalAlertInterface);
    }

    public void setThermalAlertListener(ThermalAlertInterface thermalAlertInterface) {
        this.mThermalAlertListener = thermalAlertInterface;
    }

    private class ServiceConnectionSysmon implements ServiceConnection {
        private ServiceConnectionSysmon() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ThermalAlertReceiver.this.mSysmonService = ISysmonService.Stub.asInterface(iBinder);
            if (ThermalAlertReceiver.this.mSysmonService != null) {
                try {
                    ThermalAlertReceiver thermalAlertReceiver = ThermalAlertReceiver.this;
                    thermalAlertReceiver.checkStartupStatus(thermalAlertReceiver.mSysmonService.getThermalLevelForCamera(), "sysmon");
                } catch (Exception e) {
                    LogFilter.e(ThermalAlertReceiver.TAG, "sysmon ServiceConnection failed.", e);
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            ThermalAlertReceiver.this.mSysmonService = null;
        }
    }

    public void checkStartupStatus(int i, String str) {
        if (i == 600) {
            LogFilter.d(TAG, "Startup status of service[" + str + "] is NORMAL.");
            return;
        }
        if (i == CAMERA_WARNING) {
            LogFilter.d(TAG, "Startup status of service[" + str + "] is WARNING.");
            this.mThermalAlertListener.onTemperatureAlreadyHigh();
        } else if (i != CAMERA_CRITICAL) {
            LogFilter.d(TAG, "Startup status of service[" + str + "] is unknown.");
        } else {
            LogFilter.d(TAG, "Startup status of service[" + str + "] is CRITICAL.");
            this.mThermalAlertListener.onTemperatureAlreadyHigh();
        }
    }

    public void bindThermalService() {
        Intent intent = new Intent();
        intent.setClassName(EXPLICIT_INTENT_SYSMON_SERVICE_PACKAGE_NAME, EXPLICIT_INTENT_SYSMON_SERVICE_CLASS_NAME);
        boolean zBindService = this.mActivity.bindService(intent, this.mServiceConnectionSysmon, 1);
        this.mIsBindSysmonService = zBindService;
        if (zBindService) {
            LogFilter.d(TAG, "bind sysmon service");
        } else {
            this.mActivity.unbindService(this.mServiceConnectionSysmon);
        }
    }

    public void unbindThermalService() {
        if (this.mIsBindSysmonService) {
            this.mIsBindSysmonService = false;
            this.mActivity.unbindService(this.mServiceConnectionSysmon);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        LogFilter.d(TAG, "action=" + action);
        action.hashCode();
        if (action.equals(ACTION_CAMERA_HEATED_OVER_CRITICAL)) {
            this.mThermalAlertListener.onTemperatureReachedHigh();
        } else if (action.equals(ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN)) {
            this.mThermalAlertListener.onTemperatureReachingHigh();
        }
    }
}
