package com.sonyericsson.android.camera3d.base;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.util.Size;

import com.sonyericsson.android.camera3d.CameraInfo;
import com.sonyericsson.android.camera3d.CaptureImage;
import com.sonyericsson.android.camera3d.camera_states.CameraState;
import com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback;

public abstract class MorphoCameraBase {
    public interface IMorphoCameraListener {
        void onCaptureCompleted(CaptureRequest request, TotalCaptureResult result);

        void onError();

        void onOpened();

        boolean onPictureTaken(CaptureImage image);

        void onPreviewImage(byte[] data);

        boolean onPreviewImageAvailable();
    }

    protected static final IMorphoCameraListener nullMorphoCameraListener = new IMorphoCameraListener() {
        @Override
        public void onCaptureCompleted(CaptureRequest request, TotalCaptureResult result) {
        }

        @Override
        public void onError() {
        }

        @Override
        public void onOpened() {
        }

        @Override
        public boolean onPictureTaken(CaptureImage image) {
            return false;
        }

        @Override
        public void onPreviewImage(byte[] data) {
        }

        @Override
        public boolean onPreviewImageAvailable() {
            return false;
        }
    };

    protected boolean mIsAvailable;

    public MorphoCameraBase() {
        mIsAvailable = false;
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

    public abstract boolean isFrontCamera(int cameraId);

    public abstract void pause();

    public abstract void resume(Size previewSize, Size pictureSize);

    public abstract void setBurstRemaining(int remaining);

    public abstract void setDefaultCameraState();

    public abstract void setMorphoPanoramaGP2Interface(IMorphoPanoramaGP2Callback callback);

    public abstract void startState();

    public abstract void startTakePictureState();

    public abstract void stopState();

    public abstract boolean takePicture();

    public abstract boolean takePictureBurst();

    public abstract boolean takePictureZSL();

    public abstract void updateCameraState(CameraState state);
}
