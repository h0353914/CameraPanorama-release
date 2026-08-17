package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.Camera;
import com.sonyericsson.android.camera3d.CameraConstants;
import com.sonyericsson.android.camera3d.CameraInfo;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;
import com.sonyericsson.android.camera3d.utils.LogFilter;

public class Camera1AutoFocusState extends Camera1State implements Camera.AutoFocusCallback {
    private boolean mCancel;
    private boolean mToNext;

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public boolean canExit() {
        return false;
    }

    public Camera1AutoFocusState(Camera camera, CameraInfo cameraInfo, IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback, MorphoCameraBase.IMorphoCameraListener iMorphoCameraListener) {
        super(camera, cameraInfo, iMorphoPanoramaGP2Callback, iMorphoCameraListener);
        this.mCancel = false;
        this.mToNext = true;
    }

    public Camera1AutoFocusState(Camera camera, CameraInfo cameraInfo, IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback, MorphoCameraBase.IMorphoCameraListener iMorphoCameraListener, boolean z) {
        super(camera, cameraInfo, iMorphoPanoramaGP2Callback, iMorphoCameraListener);
        this.mCancel = false;
        this.mToNext = z;
    }

    public Camera1AutoFocusState(CameraState cameraState) {
        super((Camera1State) cameraState);
        this.mCancel = false;
        this.mToNext = true;
    }

    public Camera1AutoFocusState(CameraState cameraState, boolean z) {
        super((Camera1State) cameraState);
        this.mCancel = false;
        this.mToNext = z;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onStart() {
        this.mCamera.autoFocus(this);
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onCancel() {
        this.mCancel = true;
        this.mGP2Callback.onAutoFocusFinish(false);
        this.mGP2Callback.updateCameraState(new Camera1PreviewState(this));
    }

    public void setToNext(boolean z) {
        this.mToNext = z;
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public void onAutoFocus(boolean z, Camera camera) {
        if (this.mCancel) {
            LogFilter.i("MorphoCamera1State", "AutoFocus canceled.");
            return;
        }
        this.mGP2Callback.onAutoFocusFinish(z);
        if (CameraConstants.AutoFocusType == 0 || !this.mToNext) {
            Camera1PreviewState camera1PreviewState = new Camera1PreviewState(this);
            this.mGP2Callback.updateCameraState(camera1PreviewState);
            camera1PreviewState.onStart();
        } else {
            Camera1PreviewState camera1PreviewState2 = new Camera1PreviewState(this);
            this.mGP2Callback.updateCameraState(camera1PreviewState2);
            camera1PreviewState2.toTakePictureState();
        }
    }
}
