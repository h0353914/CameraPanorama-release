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

    void onAutoFocusFinish(boolean z);

    void onErrorCamera();

    void onErrorCapture();

    void onPreviewStart();

    void onTakePictureCancel();

    boolean onTakePictureFinish();

    void onTakePictureFinish2NextState(int i);

    void onTakePicturePreprocess();

    void onTakePictureStart(PanoramaState.IPanoramaStateEventListener iPanoramaStateEventListener);

    void requestUiRunnable(Runnable runnable);

    void setGravitySensorListener(boolean z);

    void setNullDirectionFunction();

    void updateCameraState(CameraState cameraState);

    void updateTvValue();
}
