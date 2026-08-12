package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.Camera;

import com.sonyericsson.android.camera3d.CameraConstants;
import com.sonyericsson.android.camera3d.CameraInfo;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;

public class Camera1PreviewState extends Camera1State implements Camera.PreviewCallback {
    public Camera1PreviewState(Camera camera, CameraInfo cameraInfo, IMorphoPanoramaGP2Callback gp2Callback,
                                MorphoCameraBase.IMorphoCameraListener listener) {
        super(camera, cameraInfo, gp2Callback, listener);
    }

    public Camera1PreviewState(CameraState state) {
        super((Camera1State) state);
    }

    @Override
    public void onPreviewFrame(byte[] data, Camera camera) {
        mListener.onPreviewImage(data);
    }

    @Override
    public void onStart() {
        Camera.Parameters parameters = mCamera.getParameters();
        parameters.setAutoExposureLock(false);
        parameters.setAutoWhiteBalanceLock(false);
        mCamera.setParameters(parameters);
        mCamera.setPreviewCallback(this);
        mCamera.startPreview();
        mGP2Callback.onPreviewStart();
        mGP2Callback.setNullDirectionFunction();
    }

    @Override
    public void onTakePictureStart() {
        if (CameraConstants.AutoFocusType == 0) {
            toTakePictureState();
            return;
        }

        Camera1AutoFocusState next = new Camera1AutoFocusState(this);
        mGP2Callback.updateCameraState(next);
        next.onStart();
    }

    @Override
    public void onTouch() {
        Camera1AutoFocusState next = new Camera1AutoFocusState(this);
        mGP2Callback.updateCameraState(next);
        next.onStart();
    }

    public void toTakePictureState() {
        onStop();
        mGP2Callback.onTakePicturePreprocess();
        Camera1TakePictureState next = new Camera1TakePictureState(this);
        mGP2Callback.updateCameraState(next);
        next.onStart();
    }
}
