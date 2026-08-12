package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;

import com.sonyericsson.android.camera3d.CameraConstants;
import com.sonyericsson.android.camera3d.base.PanoramaState;

public class TakePictureState extends MorphoPanoramaGP2CameraState implements PanoramaState.IPanoramaStateEventListener {
    private int mResultCode;

    public TakePictureState() {
        super();
        mResultCode = 0;
    }

    private void commonTerminate() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
        if (info.imageReader != null) {
            info.imageReader.setOnImageAvailableListener(info.previewAvailableListener, backgroundHandler());
        }

        if (CameraConstants.AutoFocusType == 0) {
            PreviewState next = new PreviewState();
            info.gp2Callback.updateCameraState(next);
        } else {
            UnlockFocusState next = new UnlockFocusState();
            info.gp2Callback.updateCameraState(next);
        }

        if (!Build.MANUFACTURER.equals("Sony")) {
            info.gp2Callback.setGravitySensorListener(true);
        }
    }

    @Override
    public boolean canExit() {
        return false;
    }

    @Override
    public void onCancel() {
        IMorphoPanoramaGP2Callback gp2Callback = getCameraStartupInfo().gp2Callback;
        if (!Build.MANUFACTURER.equals("Sony")) {
            gp2Callback.setGravitySensorListener(false);
        }
        synchronized (CameraConstants.EngineSynchronizedObject) {
            gp2Callback.onAttachEnd();
            commonTerminate();
            gp2Callback.onTakePictureCancel();
        }
    }

    @Override
    public void onCaptureCompleted(CaptureRequest request, TotalCaptureResult result) {
        getCameraStartupInfo().totalCaptureResult = result;
    }

    @Override
    public boolean onFinish() {
        IMorphoPanoramaGP2Callback gp2Callback = getCameraStartupInfo().gp2Callback;
        if (gp2Callback.onTakePictureFinish()) {
            return true;
        }
        gp2Callback.onAttachEnd();
        commonTerminate();
        gp2Callback.onTakePictureFinish2NextState(mResultCode);
        return true;
    }

    @Override
    public void onStart() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
        info.gp2Callback.onTakePictureStart(this);
        info.imageReader.setOnImageAvailableListener(info.takePictureAvailableListener, backgroundHandler());
    }

    @Override
    public void requestEnd(PanoramaState state, int reason) {
        mResultCode = reason;
        IMorphoPanoramaGP2Callback gp2Callback = getCameraStartupInfo().gp2Callback;
        gp2Callback.onAttachEnd();
        commonTerminate();
        gp2Callback.onTakePictureFinish2NextState(mResultCode);
    }
}
