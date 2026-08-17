package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import com.sonyericsson.android.camera3d.CameraConstants;
import com.sonyericsson.android.camera3d.base.PanoramaState;

public class TakePictureState extends MorphoPanoramaGP2CameraState implements PanoramaState.IPanoramaStateEventListener {
    private int mResultCode = 0;

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public boolean canExit() {
        return false;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onStart() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = getCameraStartupInfo();
        cameraStartupInfo.gp2Callback.onTakePictureStart(this);
        cameraStartupInfo.imageReader.setOnImageAvailableListener(cameraStartupInfo.takePictureAvailableListener, backgroundHandler());
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public boolean onFinish() {
        if (getCameraStartupInfo().gp2Callback.onTakePictureFinish()) {
            return true;
        }
        IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback = getCameraStartupInfo().gp2Callback;
        iMorphoPanoramaGP2Callback.onAttachEnd();
        commonTerminate();
        iMorphoPanoramaGP2Callback.onTakePictureFinish2NextState(this.mResultCode);
        return true;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onCancel() {
        IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback = getCameraStartupInfo().gp2Callback;
        if (!Build.MANUFACTURER.equals("Sony")) {
            iMorphoPanoramaGP2Callback.setGravitySensorListener(false);
        }
        synchronized (CameraConstants.EngineSynchronizedObject) {
            iMorphoPanoramaGP2Callback.onAttachEnd();
            commonTerminate();
            iMorphoPanoramaGP2Callback.onTakePictureCancel();
        }
    }

    private void commonTerminate() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = getCameraStartupInfo();
        if (cameraStartupInfo.imageReader != null) {
            cameraStartupInfo.imageReader.setOnImageAvailableListener(cameraStartupInfo.previewAvailableListener, backgroundHandler());
        }
        if (CameraConstants.AutoFocusType == 0) {
            cameraStartupInfo.gp2Callback.updateCameraState(new PreviewState());
        } else {
            cameraStartupInfo.gp2Callback.updateCameraState(new UnlockFocusState());
        }
        if (Build.MANUFACTURER.equals("Sony")) {
            return;
        }
        cameraStartupInfo.gp2Callback.setGravitySensorListener(true);
    }

    @Override // com.sonyericsson.android.camera3d.base.PanoramaState.IPanoramaStateEventListener
    public void requestEnd(PanoramaState panoramaState, int i) {
        this.mResultCode = i;
        IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback = getCameraStartupInfo().gp2Callback;
        iMorphoPanoramaGP2Callback.onAttachEnd();
        commonTerminate();
        iMorphoPanoramaGP2Callback.onTakePictureFinish2NextState(this.mResultCode);
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onCaptureCompleted(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        getCameraStartupInfo().totalCaptureResult = totalCaptureResult;
    }
}
