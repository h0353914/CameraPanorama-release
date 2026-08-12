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

    public Camera1State(Camera camera, CameraInfo cameraInfo, IMorphoPanoramaGP2Callback gp2Callback,
                         MorphoCameraBase.IMorphoCameraListener listener) {
        super();
        mCamera = camera;
        mCameraInfo = cameraInfo;
        if (gp2Callback == null) {
            mGP2Callback = MorphoPanoramaGP2CameraState.nullGP2Callback;
        } else {
            mGP2Callback = gp2Callback;
        }
        mListener = listener;
    }

    Camera1State(Camera1State other) {
        super();
        mCamera = other.mCamera;
        mCameraInfo = other.mCameraInfo;
        mGP2Callback = other.mGP2Callback;
        mListener = other.mListener;
    }
}
