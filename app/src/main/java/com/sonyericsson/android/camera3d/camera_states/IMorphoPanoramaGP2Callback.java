package com.sonyericsson.android.camera3d.camera_states;

import com.sonyericsson.android.camera3d.base.PanoramaState;

public interface IMorphoPanoramaGP2Callback {
    int getAntiBanding();

    int getColorCorrectionMode();

    int getEdgeMode();

    int getNoiseReductionMode();

    int getShadingMode();

    int getTonemapMode();

    boolean isAutoAELock();

    boolean isAutoEdgeNR();

    boolean isAutoWBLock();

    boolean isEngineRunning();

    boolean isInfinityFocus();

    boolean isTvLock();

    void onAttachEnd();

    void onAutoFocusFinish(boolean success);

    void onErrorCamera();

    void onErrorCapture();

    void onPreviewStart();

    void onTakePictureCancel();

    boolean onTakePictureFinish();

    void onTakePictureFinish2NextState(int resultCode);

    void onTakePicturePreprocess();

    void onTakePictureStart(PanoramaState.IPanoramaStateEventListener listener);

    void requestUiRunnable(Runnable runnable);

    void setGravitySensorListener(boolean enable);

    void setNullDirectionFunction();

    void updateCameraState(CameraState state);

    void updateTvValue();
}
