package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;

public class CameraState {
    public boolean canExit() {
        return true;
    }

    public void onCancel() {
    }

    public void onCaptureCompleted(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
    }

    public void onCaptureSequenceCompleted(int i) {
    }

    public boolean onFinish() {
        return false;
    }

    public void onProgressed(CaptureResult captureResult) {
    }

    public void onRequestParamChange() {
    }

    public void onStart() {
    }

    public void onStop() {
    }

    public void onTakePictureStart() {
    }

    public void onTouch() {
    }
}
