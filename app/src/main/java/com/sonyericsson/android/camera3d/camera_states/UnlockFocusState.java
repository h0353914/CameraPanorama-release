package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;

public class UnlockFocusState extends MorphoPanoramaGP2CameraState {
    public UnlockFocusState() {
        super();
    }

    @Override
    public boolean canExit() {
        return false;
    }

    @Override
    public void onCaptureCompleted(CaptureRequest request, TotalCaptureResult result) {
        MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
        info.gp2Callback.requestUiRunnable(new Runnable() {
            @Override
            public void run() {
                PreviewState next = new PreviewState();
                getCameraStartupInfo().gp2Callback.updateCameraState(next);
                next.onStart();
            }
        });
    }

    @Override
    public void onStart() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
        try {
            CaptureRequest.Builder builder = info.cameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW);
            builder.addTarget(info.previewSurface);
            builder.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
            PreviewState.setupPreviewRequest(this, builder, false, info);
            info.cameraInfo.getCaptureSession().capture(builder.build(), info.captureCallback, backgroundHandler());
        } catch (SecurityException e) {
            e.printStackTrace();
        } catch (CameraAccessException e) {
            e.printStackTrace();
            info.gp2Callback.onErrorCapture();
        }
    }
}
