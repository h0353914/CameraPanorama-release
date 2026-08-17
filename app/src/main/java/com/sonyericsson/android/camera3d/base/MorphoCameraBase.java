package com.sonyericsson.android.camera3d.base;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.util.Size;
import com.sonyericsson.android.camera3d.CameraInfo;
import com.sonyericsson.android.camera3d.CaptureImage;
import com.sonyericsson.android.camera3d.camera_states.CameraState;
import com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback;

public abstract class MorphoCameraBase {
    protected static final IMorphoCameraListener nullMorphoCameraListener = new IMorphoCameraListener() { // from class: com.sonyericsson.android.camera3d.base.MorphoCameraBase.1
        @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase.IMorphoCameraListener
        public void onCaptureCompleted(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        }

        @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase.IMorphoCameraListener
        public void onError() {
        }

        @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase.IMorphoCameraListener
        public void onOpened() {
        }

        @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase.IMorphoCameraListener
        public boolean onPictureTaken(CaptureImage captureImage) {
            return false;
        }

        @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase.IMorphoCameraListener
        public void onPreviewImage(byte[] bArr) {
        }

        @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase.IMorphoCameraListener
        public boolean onPreviewImageAvailable() {
            return false;
        }
    };
    protected boolean mIsAvailable = false;

    public interface IMorphoCameraListener {
        void onCaptureCompleted(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult);

        void onError();

        void onOpened();

        boolean onPictureTaken(CaptureImage captureImage);

        void onPreviewImage(byte[] bArr);

        boolean onPreviewImageAvailable();
    }

    public abstract int burstRemaining();

    public abstract CameraInfo cameraInfo();

    public abstract CameraState cameraState();

    public abstract boolean canExitState();

    public abstract void cancelState();

    public abstract void exit();

    public abstract boolean finishState();

    public abstract String[] getAllCameras();

    public String[] getAvailableColorCorrectionMode() {
        return null;
    }

    public String[] getAvailableColorCorrectionModeValues() {
        return null;
    }

    public String[] getAvailableEdgeMode() {
        return null;
    }

    public String[] getAvailableEdgeModeValues() {
        return null;
    }

    public String[] getAvailableNoiseReductionMode() {
        return null;
    }

    public String[] getAvailableNoiseReductionModeValues() {
        return null;
    }

    public String[] getAvailableShadingMode() {
        return null;
    }

    public String[] getAvailableShadingModeValues() {
        return null;
    }

    public String[] getAvailableTonemapMode() {
        return null;
    }

    public String[] getAvailableTonemapModeValues() {
        return null;
    }

    public String[] getColorCorrectionModeDefaultValues() {
        return null;
    }

    public String[] getEdgeModeDefaultValues() {
        return null;
    }

    public String[] getNoiseReductionModeDefaultValues() {
        return null;
    }

    public String[] getShadingModeDefaultValues() {
        return null;
    }

    public abstract int[] getSupportedPreviewSizes();

    public String[] getTonemapModeDefaultValues() {
        return null;
    }

    public abstract boolean isFrontCamera(int i);

    public abstract void pause();

    public abstract void resume(Size size, Size size2);

    public abstract void setBurstRemaining(int i);

    public abstract void setDefaultCameraState();

    public abstract void setMorphoPanoramaGP2Interface(IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback);

    public abstract void startState();

    public abstract void startTakePictureState();

    public abstract void stopState();

    public abstract boolean takePicture();

    public abstract boolean takePictureBurst();

    public abstract boolean takePictureZSL();

    public abstract void updateCameraState(CameraState cameraState);
}
