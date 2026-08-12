package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.Camera;

import com.sonyericsson.android.camera3d.CameraInfo;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;

public class Camera1UnlockFocusState extends Camera1State {
    public Camera1UnlockFocusState(Camera camera, CameraInfo cameraInfo, IMorphoPanoramaGP2Callback gp2Callback,
                                    MorphoCameraBase.IMorphoCameraListener listener) {
        super(camera, cameraInfo, gp2Callback, listener);
    }

    public Camera1UnlockFocusState(CameraState state) {
        super((Camera1State) state);
    }

    @Override
    public boolean canExit() {
        return false;
    }

    @Override
    public void onStart() {
        mCamera.autoFocus(null);

        Camera1PreviewState next = new Camera1PreviewState(this);
        mGP2Callback.updateCameraState(next);
        next.onStart();
    }
}
