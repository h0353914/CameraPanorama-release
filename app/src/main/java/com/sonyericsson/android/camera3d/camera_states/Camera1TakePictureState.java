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

    public Camera1TakePictureState(Camera camera, CameraInfo cameraInfo, IMorphoPanoramaGP2Callback gp2Callback,
                                    MorphoCameraBase.IMorphoCameraListener listener) {
        super(camera, cameraInfo, gp2Callback, listener);
        mResultCode = 0;
    }

    public Camera1TakePictureState(CameraState state) {
        super((Camera1State) state);
        mResultCode = 0;
    }

    private void commonTerminate() {
        mCamera.setPreviewCallback(null);

        if (CameraConstants.AutoFocusType == 0) {
            Camera1PreviewState next = new Camera1PreviewState(this);
            mGP2Callback.updateCameraState(next);
        } else {
            Camera1UnlockFocusState next = new Camera1UnlockFocusState(this);
            mGP2Callback.updateCameraState(next);
        }

        if (!Build.MANUFACTURER.equals("Sony")) {
            mGP2Callback.setGravitySensorListener(true);
        }
    }

    @Override
    public boolean canExit() {
        return false;
    }

    @Override
    public void onCancel() {
        if (!Build.MANUFACTURER.equals("Sony")) {
            mGP2Callback.setGravitySensorListener(false);
        }
        synchronized (CameraConstants.EngineSynchronizedObject) {
            mGP2Callback.onAttachEnd();
            commonTerminate();
            mGP2Callback.onTakePictureCancel();
        }
    }

    @Override
    public boolean onFinish() {
        if (mGP2Callback.onTakePictureFinish()) {
            return true;
        }
        mGP2Callback.onAttachEnd();
        commonTerminate();
        mGP2Callback.onTakePictureFinish2NextState(mResultCode);
        return true;
    }

    @Override
    public void onPreviewFrame(byte[] data, Camera camera) {
        Camera1Image image = new Camera1Image(data, mCameraInfo.getCaptureWidth(), mCameraInfo.getCaptureHeight());
        if (!mListener.onPictureTaken(image)) {
            image.close();
        }
    }

    @Override
    public void onStart() {
        mGP2Callback.onTakePictureStart(this);
        mCamera.setPreviewCallback(this);
        Camera.Parameters parameters = mCamera.getParameters();
        parameters.setAutoExposureLock(mGP2Callback.isAutoAELock());
        parameters.setAutoWhiteBalanceLock(mGP2Callback.isAutoWBLock());
        mCamera.setParameters(parameters);
    }

    @Override
    public void requestEnd(PanoramaState state, int reason) {
        mResultCode = reason;
        mGP2Callback.onAttachEnd();
        commonTerminate();
        mGP2Callback.onTakePictureFinish2NextState(mResultCode);
    }
}
