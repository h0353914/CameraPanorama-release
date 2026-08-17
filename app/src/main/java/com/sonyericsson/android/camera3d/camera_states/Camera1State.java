package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.Camera;
import com.sonyericsson.android.camera3d.CameraInfo;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;

public class Camera1State extends CameraState {
    static final String LOG_TAG = "MorphoCamera1State";
    final Camera mCamera;
    final CameraInfo mCameraInfo;
    final IMorphoPanoramaGP2Callback mGP2Callback;
    final MorphoCameraBase.IMorphoCameraListener mListener;

    public Camera1State(Camera camera, CameraInfo cameraInfo, IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback, MorphoCameraBase.IMorphoCameraListener iMorphoCameraListener) {
        this.mCamera = camera;
        this.mCameraInfo = cameraInfo;
        if (iMorphoPanoramaGP2Callback == null) {
            this.mGP2Callback = MorphoPanoramaGP2CameraState.nullGP2Callback;
        } else {
            this.mGP2Callback = iMorphoPanoramaGP2Callback;
        }
        this.mListener = iMorphoCameraListener;
    }

    Camera1State(Camera1State camera1State) {
        this.mCamera = camera1State.mCamera;
        this.mCameraInfo = camera1State.mCameraInfo;
        this.mGP2Callback = camera1State.mGP2Callback;
        this.mListener = camera1State.mListener;
    }
}
