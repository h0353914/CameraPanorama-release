package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.Camera;
import android.os.Build;
import com.sonyericsson.android.camera3d.Camera1Image;
import com.sonyericsson.android.camera3d.CameraConstants;
import com.sonyericsson.android.camera3d.CameraInfo;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;
import com.sonyericsson.android.camera3d.base.PanoramaState;

public class Camera1TakePictureState extends Camera1State implements PanoramaState.IPanoramaStateEventListener, Camera.PreviewCallback {
    private int mResultCode;

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public boolean canExit() {
        return false;
    }

    public Camera1TakePictureState(Camera camera, CameraInfo cameraInfo, IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback, MorphoCameraBase.IMorphoCameraListener iMorphoCameraListener) {
        super(camera, cameraInfo, iMorphoPanoramaGP2Callback, iMorphoCameraListener);
        this.mResultCode = 0;
    }

    public Camera1TakePictureState(CameraState cameraState) {
        super((Camera1State) cameraState);
        this.mResultCode = 0;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onStart() {
        this.mGP2Callback.onTakePictureStart(this);
        this.mCamera.setPreviewCallback(this);
        Camera.Parameters parameters = this.mCamera.getParameters();
        parameters.setAutoExposureLock(this.mGP2Callback.isAutoAELock());
        parameters.setAutoWhiteBalanceLock(this.mGP2Callback.isAutoWBLock());
        this.mCamera.setParameters(parameters);
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public boolean onFinish() {
        if (this.mGP2Callback.onTakePictureFinish()) {
            return true;
        }
        this.mGP2Callback.onAttachEnd();
        commonTerminate();
        this.mGP2Callback.onTakePictureFinish2NextState(this.mResultCode);
        return true;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onCancel() {
        if (!Build.MANUFACTURER.equals("Sony")) {
            this.mGP2Callback.setGravitySensorListener(false);
        }
        synchronized (CameraConstants.EngineSynchronizedObject) {
            this.mGP2Callback.onAttachEnd();
            commonTerminate();
            this.mGP2Callback.onTakePictureCancel();
        }
    }

    private void commonTerminate() {
        this.mCamera.setPreviewCallback(null);
        if (CameraConstants.AutoFocusType == 0) {
            this.mGP2Callback.updateCameraState(new Camera1PreviewState(this));
        } else {
            this.mGP2Callback.updateCameraState(new Camera1UnlockFocusState(this));
        }
        if (Build.MANUFACTURER.equals("Sony")) {
            return;
        }
        this.mGP2Callback.setGravitySensorListener(true);
    }

    @Override // com.sonyericsson.android.camera3d.base.PanoramaState.IPanoramaStateEventListener
    public void requestEnd(PanoramaState panoramaState, int i) {
        this.mResultCode = i;
        this.mGP2Callback.onAttachEnd();
        commonTerminate();
        this.mGP2Callback.onTakePictureFinish2NextState(this.mResultCode);
    }

    @Override // android.hardware.Camera.PreviewCallback
    public void onPreviewFrame(byte[] bArr, Camera camera) {
        Camera1Image camera1Image = new Camera1Image(bArr, this.mCameraInfo.getCaptureWidth(), this.mCameraInfo.getCaptureHeight());
        if (this.mListener.onPictureTaken(camera1Image)) {
            return;
        }
        camera1Image.close();
    }
}
