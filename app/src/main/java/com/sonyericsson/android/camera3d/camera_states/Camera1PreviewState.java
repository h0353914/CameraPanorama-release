package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.Camera;
import com.sonyericsson.android.camera3d.CameraConstants;
import com.sonyericsson.android.camera3d.CameraInfo;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;

public class Camera1PreviewState extends Camera1State implements Camera.PreviewCallback {
    public Camera1PreviewState(Camera camera, CameraInfo cameraInfo, IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback, MorphoCameraBase.IMorphoCameraListener iMorphoCameraListener) {
        super(camera, cameraInfo, iMorphoPanoramaGP2Callback, iMorphoCameraListener);
    }

    public Camera1PreviewState(CameraState cameraState) {
        super((Camera1State) cameraState);
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onStart() {
        Camera.Parameters parameters = this.mCamera.getParameters();
        parameters.setAutoExposureLock(false);
        parameters.setAutoWhiteBalanceLock(false);
        this.mCamera.setParameters(parameters);
        this.mCamera.setPreviewCallback(this);
        this.mCamera.startPreview();
        this.mGP2Callback.onPreviewStart();
        this.mGP2Callback.setNullDirectionFunction();
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onTouch() {
        Camera1AutoFocusState camera1AutoFocusState = new Camera1AutoFocusState(this);
        this.mGP2Callback.updateCameraState(camera1AutoFocusState);
        camera1AutoFocusState.onStart();
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onTakePictureStart() {
        if (CameraConstants.AutoFocusType == 0) {
            toTakePictureState();
            return;
        }
        Camera1AutoFocusState camera1AutoFocusState = new Camera1AutoFocusState(this);
        this.mGP2Callback.updateCameraState(camera1AutoFocusState);
        camera1AutoFocusState.onStart();
    }

    public void toTakePictureState() {
        onStop();
        this.mGP2Callback.onTakePicturePreprocess();
        Camera1TakePictureState camera1TakePictureState = new Camera1TakePictureState(this);
        this.mGP2Callback.updateCameraState(camera1TakePictureState);
        camera1TakePictureState.onStart();
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        this.mListener.onPreviewImage(bArr);
    }
}
