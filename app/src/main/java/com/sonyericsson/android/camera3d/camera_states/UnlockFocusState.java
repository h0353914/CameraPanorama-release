package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;

public class UnlockFocusState extends MorphoPanoramaGP2CameraState {
    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public boolean canExit() {
        return false;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onStart() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = getCameraStartupInfo();
        try {
            CaptureRequest.Builder builderCreateCaptureRequest = cameraStartupInfo.cameraInfo.getOpenCameraDevice().createCaptureRequest(1);
            builderCreateCaptureRequest.addTarget(cameraStartupInfo.previewSurface);
            builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
            PreviewState.setupPreviewRequest(this, builderCreateCaptureRequest, false, cameraStartupInfo);
            cameraStartupInfo.cameraInfo.getCaptureSession().capture(builderCreateCaptureRequest.build(), cameraStartupInfo.captureCallback, backgroundHandler());
        } catch (CameraAccessException e) {
            e.printStackTrace();
            cameraStartupInfo.gp2Callback.onErrorCapture();
        } catch (SecurityException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onCaptureCompleted(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        getCameraStartupInfo().gp2Callback.requestUiRunnable(new Runnable() { // from class: com.sonyericsson.android.camera3d.camera_states.UnlockFocusState.1
            @Override // java.lang.Runnable
            public void run() {
                PreviewState previewState = new PreviewState();
                UnlockFocusState.this.getCameraStartupInfo().gp2Callback.updateCameraState(previewState);
                previewState.onStart();
            }
        });
    }
}
