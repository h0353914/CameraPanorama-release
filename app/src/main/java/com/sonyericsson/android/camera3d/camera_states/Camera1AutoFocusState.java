package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.Camera;

import com.sonyericsson.android.camera3d.CameraConstants;
import com.sonyericsson.android.camera3d.CameraInfo;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;
import com.sonyericsson.android.camera3d.utils.LogFilter;

public class Camera1AutoFocusState extends Camera1State implements Camera.AutoFocusCallback {
    private boolean mCancel;
    private boolean mToNext;

    public Camera1AutoFocusState(Camera camera, CameraInfo cameraInfo, IMorphoPanoramaGP2Callback gp2Callback,
                                  MorphoCameraBase.IMorphoCameraListener listener) {
        super(camera, cameraInfo, gp2Callback, listener);
        mCancel = false;
        mToNext = true;
    }

    public Camera1AutoFocusState(Camera camera, CameraInfo cameraInfo, IMorphoPanoramaGP2Callback gp2Callback,
                                  MorphoCameraBase.IMorphoCameraListener listener, boolean toNext) {
        super(camera, cameraInfo, gp2Callback, listener);
        mCancel = false;
        mToNext = toNext;
    }

    public Camera1AutoFocusState(CameraState state) {
        super((Camera1State) state);
        mCancel = false;
        mToNext = true;
    }

    public Camera1AutoFocusState(CameraState state, boolean toNext) {
        super((Camera1State) state);
        mCancel = false;
        mToNext = toNext;
    }

    @Override
    public boolean canExit() {
        return false;
    }

    @Override
    public void onAutoFocus(boolean success, Camera camera) {
        if (mCancel) {
            LogFilter.i(LOG_TAG, "AutoFocus canceled.");
            return;
        }

        mGP2Callback.onAutoFocusFinish(success);

        if (CameraConstants.AutoFocusType != 0 && mToNext) {
            Camera1PreviewState next = new Camera1PreviewState(this);
            mGP2Callback.updateCameraState(next);
            next.toTakePictureState();
            return;
        }

        Camera1PreviewState next = new Camera1PreviewState(this);
        mGP2Callback.updateCameraState(next);
        next.onStart();
    }

    @Override
    public void onCancel() {
        mCancel = true;
        mGP2Callback.onAutoFocusFinish(false);
        Camera1PreviewState next = new Camera1PreviewState(this);
        mGP2Callback.updateCameraState(next);
    }

    @Override
    public void onStart() {
        mCamera.autoFocus(this);
    }

    public void setToNext(boolean toNext) {
        mToNext = toNext;
    }
}
