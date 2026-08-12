package com.sonyericsson.android.camera3d;

import android.hardware.Camera;
import android.util.Size;
import android.view.SurfaceHolder;

import java.io.IOException;

import com.sonyericsson.android.camera3d.base.MorphoCameraBase;
import com.sonyericsson.android.camera3d.camera_states.Camera1PreviewState;
import com.sonyericsson.android.camera3d.camera_states.Camera1State;
import com.sonyericsson.android.camera3d.camera_states.CameraState;
import com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback;
import com.sonyericsson.android.camera3d.utils.LogFilter;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

public class MorphoCamera1 extends MorphoCameraBase {
    private static final String LOG_TAG = "MorphoCamera1";

    private Camera mCamera;
    private final int mCameraId;
    private final CameraInfo mCameraInfo;
    private CameraState mCameraState;
    private int mDisplayOrientation;
    private IMorphoPanoramaGP2Callback mGP2Callback;
    private final IMorphoCameraListener mListener;
    private boolean mResumed;
    private final Comparator<Camera.Size> mSizeComparator = new Comparator<Camera.Size>() {
        @Override
        public int compare(Camera.Size lhs, Camera.Size rhs) {
            int result = rhs.width - lhs.height;
            if (result == 0) {
                return rhs.height - lhs.height;
            }
            return result;
        }
    };
    private SurfaceHolder mSurfaceHolder;

    public float viewAngleH;
    public float viewAngleV;

    public MorphoCamera1(IMorphoCameraListener listener, int cameraId) {
        super();
        mCamera = null;
        mCameraState = new CameraState();
        mSurfaceHolder = null;
        mResumed = false;
        mDisplayOrientation = 0;
        mCameraInfo = new CameraInfo();
        mCameraInfo.setCameraId(String.valueOf(cameraId));
        if (listener == null) {
            listener = nullMorphoCameraListener;
        }
        mListener = listener;
        mCameraId = cameraId;
    }

    public static Camera.CameraInfo getCameraInfo(int cameraId) {
        Camera.CameraInfo info = new Camera.CameraInfo();
        Camera.getCameraInfo(cameraId, info);
        return info;
    }

    public static Camera open(int cameraId) {
        try {
            return Camera.open(cameraId);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private void releaseCamera() {
        if (mCamera != null) {
            mCamera.setPreviewCallback(null);
            mCamera.release();
            mCamera = null;
            mCameraInfo.setOpenState(0);
        }
    }

    private void startPreviewLocal(int displayOrientation) {
        if (!mResumed || mSurfaceHolder == null) {
            return;
        }
        if (mCamera == null) {
            openCamera(mSurfaceHolder);
        }
        Camera.Parameters parameters = mCamera.getParameters();
        int previewFormat = parameters.getPreviewFormat();
        LogFilter.i(LOG_TAG, String.format(Locale.US, "format:%d, displayOrientation:%d",
                previewFormat, displayOrientation));

        Camera.CameraInfo info = getCameraInfo(mCameraId);
        int orientation;
        if (info.facing == 1) {
            orientation = (info.orientation + displayOrientation) % 360;
            orientation = 360 - orientation;
            orientation = orientation % 360;
        } else {
            orientation = info.orientation - displayOrientation + 360;
            orientation = orientation % 360;
        }
        mCamera.setDisplayOrientation(orientation);

        parameters.setPreviewSize(mCameraInfo.getCaptureWidth(), mCameraInfo.getCaptureHeight());
        mCamera.setParameters(parameters);

        mCameraState = new Camera1PreviewState(mCamera, mCameraInfo, mGP2Callback, mListener);
        mCameraState.onStart();
    }

    @Override
    public int burstRemaining() {
        return 0;
    }

    @Override
    public CameraInfo cameraInfo() {
        return mCameraInfo;
    }

    @Override
    public final CameraState cameraState() {
        return mCameraState;
    }

    @Override
    public boolean canExitState() {
        return mCameraState.canExit();
    }

    @Override
    public void cancelState() {
        mCameraState.onCancel();
    }

    @Override
    public void exit() {
    }

    @Override
    public boolean finishState() {
        return mCameraState.onFinish();
    }

    @Override
    public String[] getAllCameras() {
        int numberOfCameras = Camera.getNumberOfCameras();
        String[] names = new String[numberOfCameras];

        Camera.CameraInfo info = new Camera.CameraInfo();
        int otherCount = 0;
        int backCount = 0;
        int frontCount = 0;

        for (int i = 0; i < numberOfCameras; i++) {
            Camera.getCameraInfo(i, info);
            switch (info.facing) {
                case 0:
                    backCount++;
                    names[i] = String.format(Locale.US, "Back %d", backCount);
                    break;
                case 1:
                    frontCount++;
                    names[i] = String.format(Locale.US, "Front %d", frontCount);
                    break;
                default:
                    otherCount++;
                    names[i] = String.format(Locale.US, "Other %d", otherCount);
                    break;
            }
        }

        if (otherCount == 1) {
            for (int i = 0; i < names.length; i++) {
                if (names[i].contains("Other")) {
                    names[i] = names[i].replace(" 1", "");
                }
            }
        }

        if (frontCount == 1) {
            for (int i = 0; i < names.length; i++) {
                if (names[i].contains("Front")) {
                    names[i] = names[i].replace(" 1", "");
                }
            }
        }

        if (backCount == 1) {
            for (int i = 0; i < names.length; i++) {
                if (names[i].contains("Back")) {
                    names[i] = names[i].replace(" 1", "");
                }
            }
        }

        return names;
    }

    public Size getMaxPictureSize() {
        Camera camera = mCamera;
        if (camera == null) {
            camera = open(mCameraId);
            if (camera == null) {
                return new Size(320, 240);
            }
        }
        try {
            List<Camera.Size> sizes = camera.getParameters().getSupportedPictureSizes();
            if (sizes.isEmpty()) {
                Size result = new Size(320, 240);
                if (mCamera == null) {
                    camera.release();
                    mCameraInfo.setOpenState(0);
                }
                return result;
            } else {
                Collections.sort(sizes, mSizeComparator);
                Size result = new Size(sizes.get(0).width, sizes.get(0).height);
                if (mCamera == null) {
                    camera.release();
                    mCameraInfo.setOpenState(0);
                }
                return result;
            }
        } catch (Throwable t) {
            if (mCamera == null) {
                camera.release();
                mCameraInfo.setOpenState(0);
            }
            throw t;
        }
    }

    @Override
    public int[] getSupportedPreviewSizes() {
        Camera camera = mCamera;
        if (camera == null) {
            camera = open(mCameraId);
            if (camera == null) {
                return new int[0];
            }
        }
        try {
            List<Camera.Size> sizes = camera.getParameters().getSupportedPreviewSizes();
            Collections.sort(sizes, mSizeComparator);
            int[] result = new int[sizes.size() * 2];
            int index = 0;
            for (Camera.Size size : sizes) {
                result[index] = size.width;
                index++;
                result[index] = size.height;
                index++;
            }
            if (mCamera == null) {
                camera.release();
                mCameraInfo.setOpenState(0);
            }
            return result;
        } catch (Throwable t) {
            if (mCamera == null) {
                camera.release();
                mCameraInfo.setOpenState(0);
            }
            throw t;
        }
    }

    @Override
    public boolean isFrontCamera(int cameraId) {
        return false;
    }

    public boolean openCamera(SurfaceHolder surfaceHolder) {
        releaseCamera();
        mCamera = open(mCameraId);
        if (mCamera == null) {
            return false;
        }
        try {
            mCamera.setPreviewDisplay(surfaceHolder);
            mSurfaceHolder = surfaceHolder;
        } catch (IOException e) {
            e.printStackTrace();
            releaseCamera();
            return false;
        }

        Camera.Parameters parameters = mCamera.getParameters();
        viewAngleH = parameters.getHorizontalViewAngle();
        viewAngleV = parameters.getVerticalViewAngle();
        float focalLength = parameters.getFocalLength();
        mCameraInfo.setFocalLength(focalLength);
        mCameraInfo.setOpenState(2);
        mListener.onOpened();
        return true;
    }

    @Override
    public void pause() {
        releaseCamera();
        mResumed = false;
    }

    @Override
    public void resume(Size previewSize, Size pictureSize) {
        mCameraInfo.setCaptureSize(previewSize.getWidth(), previewSize.getHeight());
        mCameraInfo.setPreviewSize(pictureSize.getWidth(), pictureSize.getHeight());
        mResumed = true;
        startPreviewLocal(mDisplayOrientation);
    }

    @Override
    public void setBurstRemaining(int remaining) {
    }

    @Override
    public void setDefaultCameraState() {
        mCameraState = new Camera1State(mCamera, mCameraInfo, mGP2Callback, mListener);
    }

    @Override
    public void setMorphoPanoramaGP2Interface(IMorphoPanoramaGP2Callback callback) {
        mGP2Callback = callback;
    }

    public void startPreview(int displayOrientation) {
        startPreviewLocal(displayOrientation);
        mDisplayOrientation = displayOrientation;
    }

    @Override
    public void startState() {
        mCameraState.onStart();
    }

    @Override
    public void startTakePictureState() {
        mCameraState.onTakePictureStart();
    }

    @Override
    public void stopState() {
        mCameraState.onStop();
    }

    @Override
    public boolean takePicture() {
        return true;
    }

    @Override
    public boolean takePictureBurst() {
        return false;
    }

    @Override
    public boolean takePictureZSL() {
        return false;
    }

    @Override
    public void updateCameraState(CameraState state) {
        if (state instanceof Camera1State) {
            mCameraState = state;
        } else {
            LogFilter.w(LOG_TAG, "#updateCameraState, argument is invalid.");
            setDefaultCameraState();
        }
    }
}
