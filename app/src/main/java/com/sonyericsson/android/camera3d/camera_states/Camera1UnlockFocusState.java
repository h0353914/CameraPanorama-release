package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.Camera;
import com.sonyericsson.android.camera3d.CameraInfo;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;

public class Camera1UnlockFocusState extends Camera1State {
    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public boolean canExit() {
        return false;
    }

    public Camera1UnlockFocusState(Camera camera, CameraInfo cameraInfo, IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback, MorphoCameraBase.IMorphoCameraListener iMorphoCameraListener) {
        super(camera, cameraInfo, iMorphoPanoramaGP2Callback, iMorphoCameraListener);
    }

    public Camera1UnlockFocusState(CameraState cameraState) {
        super((Camera1State) cameraState);
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onStart() {
        this.mCamera.autoFocus(null);
        Camera1PreviewState camera1PreviewState = new Camera1PreviewState(this);
        this.mGP2Callback.updateCameraState(camera1PreviewState);
        camera1PreviewState.onStart();
    }
}
