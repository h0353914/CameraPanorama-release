package com.sonyericsson.android.camera3d;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;

import com.sonyericsson.android.camera3d.utils.LogFilter;
import com.sonyericsson.psm.sysmonservice.ISysmonService;

import java.util.EventListener;

public class ThermalAlertReceiver extends BroadcastReceiver {
    public interface ThermalAlertInterface extends EventListener {
        void onTemperatureAlreadyHigh();

        void onTemperatureReachedHigh();

        void onTemperatureReachingHigh();
    }

    public static final String ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN =
            "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN";
    public static final String ACTION_CAMERA_HEATED_OVER_CRITICAL =
            "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL";
    private static final int CAMERA_CRITICAL = 0x25c;
    private static final int CAMERA_NORMAL = 0x258;
    private static final int CAMERA_WARNING = 0x25b;
    private static final String EXPLICIT_INTENT_SYSMON_SERVICE_CLASS_NAME =
            "com.sonyericsson.psm.sysmonservice.SysmonService";
    private static final String EXPLICIT_INTENT_SYSMON_SERVICE_PACKAGE_NAME =
            "com.sonyericsson.psm.sysmonservice";
    private static final String SYSMON_SERVICE = "com.sonyericsson.psm.sysmonservice.ISysmonService";
    private static final String TAG = "ThermalAlertReceiver";

    private final Activity mActivity;
    private boolean mIsBindSysmonService;
    private final ServiceConnection mServiceConnectionSysmon;
    private ISysmonService mSysmonService;
    private ThermalAlertInterface mThermalAlertListener;

    public ThermalAlertReceiver(Activity activity, ThermalAlertInterface listener) {
        mThermalAlertListener = null;
        mActivity = activity;
        mServiceConnectionSysmon = new ServiceConnectionSysmon();
        setThermalAlertListener(listener);
    }

    private void checkStartupStatus(int status, String serviceName) {
        if (status == CAMERA_NORMAL) {
            LogFilter.d(TAG, "Startup status of service[" + serviceName + "] is NORMAL.");
            return;
        }
        switch (status) {
            case CAMERA_WARNING:
                LogFilter.d(TAG, "Startup status of service[" + serviceName + "] is WARNING.");
                mThermalAlertListener.onTemperatureAlreadyHigh();
                break;
            case CAMERA_CRITICAL:
                LogFilter.d(TAG, "Startup status of service[" + serviceName + "] is CRITICAL.");
                mThermalAlertListener.onTemperatureAlreadyHigh();
                break;
            default:
                LogFilter.d(TAG, "Startup status of service[" + serviceName + "] is unknown.");
                break;
        }
    }

    public void bindThermalService() {
        if (Build.VERSION.SDK_INT >= 21) {
            Intent intent = new Intent();
            intent.setClassName(EXPLICIT_INTENT_SYSMON_SERVICE_PACKAGE_NAME,
                    EXPLICIT_INTENT_SYSMON_SERVICE_CLASS_NAME);
            mIsBindSysmonService = mActivity.bindService(intent, mServiceConnectionSysmon, Context.BIND_AUTO_CREATE);
        } else {
            Intent intent = new Intent(SYSMON_SERVICE);
            mIsBindSysmonService = mActivity.bindService(intent, mServiceConnectionSysmon, 0);
        }

        if (mIsBindSysmonService) {
            LogFilter.d(TAG, "bind sysmon service");
        } else {
            mActivity.unbindService(mServiceConnectionSysmon);
        }
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        LogFilter.d(TAG, "action=" + action);

        if (ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN.equals(action)) {
            mThermalAlertListener.onTemperatureReachingHigh();
        } else if (ACTION_CAMERA_HEATED_OVER_CRITICAL.equals(action)) {
            mThermalAlertListener.onTemperatureReachedHigh();
        }
    }

    public void setThermalAlertListener(ThermalAlertInterface listener) {
        mThermalAlertListener = listener;
    }

    public void unbindThermalService() {
        if (mIsBindSysmonService) {
            mIsBindSysmonService = false;
            mActivity.unbindService(mServiceConnectionSysmon);
        }
    }

    private class ServiceConnectionSysmon implements ServiceConnection {
        private ServiceConnectionSysmon() {
        }

        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            mSysmonService = ISysmonService.Stub.asInterface(service);
            if (mSysmonService != null) {
                try {
                    int level = mSysmonService.getThermalLevelForCamera();
                    checkStartupStatus(level, "sysmon");
                } catch (Exception e) {
                    LogFilter.e(TAG, "sysmon ServiceConnection failed.", e);
                }
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            mSysmonService = null;
        }
    }
}
