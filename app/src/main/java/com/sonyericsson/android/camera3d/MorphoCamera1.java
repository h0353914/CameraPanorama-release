package com.sonyericsson.android.camera3d;

import android.hardware.Camera;
import android.util.Size;
import android.view.SurfaceHolder;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;
import com.sonyericsson.android.camera3d.camera_states.Camera1PreviewState;
import com.sonyericsson.android.camera3d.camera_states.Camera1State;
import com.sonyericsson.android.camera3d.camera_states.CameraState;
import com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

public class MorphoCamera1 extends MorphoCameraBase {
    private static final String LOG_TAG = "MorphoCamera1";
    private final int mCameraId;
    private final CameraInfo mCameraInfo;
    private IMorphoPanoramaGP2Callback mGP2Callback;
    private final MorphoCameraBase.IMorphoCameraListener mListener;
    public float viewAngleH;
    public float viewAngleV;
    private Camera mCamera = null;
    private CameraState mCameraState = new CameraState();
    private SurfaceHolder mSurfaceHolder = null;
    private boolean mResumed = false;
    private int mDisplayOrientation = 0;
    private final Comparator<Camera.Size> mSizeComparator = new Comparator<Camera.Size>() { // from class: com.sonyericsson.android.camera3d.MorphoCamera1.1
        @Override // java.util.Comparator
        public int compare(Camera.Size size, Camera.Size size2) {
            int i = size2.width - size.height;
            return i == 0 ? size2.height - size.height : i;
        }
    };

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public int burstRemaining() {
        return 0;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void exit() {
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public boolean isFrontCamera(int i) {
        return false;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void setBurstRemaining(int i) {
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public boolean takePicture() {
        return true;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public boolean takePictureBurst() {
        return false;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public boolean takePictureZSL() {
        return false;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public CameraInfo cameraInfo() {
        return this.mCameraInfo;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public final CameraState cameraState() {
        return this.mCameraState;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void setMorphoPanoramaGP2Interface(IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback) {
        this.mGP2Callback = iMorphoPanoramaGP2Callback;
    }

    public MorphoCamera1(MorphoCameraBase.IMorphoCameraListener iMorphoCameraListener, int i) {
        CameraInfo cameraInfo = new CameraInfo();
        this.mCameraInfo = cameraInfo;
        cameraInfo.setCameraId(String.valueOf(i));
        this.mListener = iMorphoCameraListener == null ? nullMorphoCameraListener : iMorphoCameraListener;
        this.mCameraId = i;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void pause() {
        releaseCamera();
        this.mResumed = false;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void resume(Size size, Size size2) {
        this.mCameraInfo.setCaptureSize(size.getWidth(), size.getHeight());
        this.mCameraInfo.setPreviewSize(size2.getWidth(), size2.getHeight());
        this.mResumed = true;
        startPreviewLocal(this.mDisplayOrientation);
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getAllCameras() {
        int numberOfCameras = Camera.getNumberOfCameras();
        String[] strArr = new String[numberOfCameras];
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < numberOfCameras; i4++) {
            Camera.getCameraInfo(i4, cameraInfo);
            int i5 = cameraInfo.facing;
            if (i5 == 0) {
                i2++;
                strArr[i4] = String.format(Locale.US, "Back %d", Integer.valueOf(i2));
            } else if (i5 != 1) {
                i++;
                strArr[i4] = String.format(Locale.US, "Other %d", Integer.valueOf(i));
            } else {
                i3++;
                strArr[i4] = String.format(Locale.US, "Front %d", Integer.valueOf(i3));
            }
        }
        if (i == 1) {
            for (int i6 = 0; i6 < numberOfCameras; i6++) {
                if (strArr[i6].contains("Other")) {
                    strArr[i6] = strArr[i6].replace(" 1", "");
                }
            }
        }
        if (i3 == 1) {
            for (int i7 = 0; i7 < numberOfCameras; i7++) {
                if (strArr[i7].contains("Front")) {
                    strArr[i7] = strArr[i7].replace(" 1", "");
                }
            }
        }
        if (i2 == 1) {
            for (int i8 = 0; i8 < numberOfCameras; i8++) {
                if (strArr[i8].contains("Back")) {
                    strArr[i8] = strArr[i8].replace(" 1", "");
                }
            }
        }
        return strArr;
    }

    private void releaseCamera() {
        Camera camera = this.mCamera;
        if (camera != null) {
            camera.setPreviewCallback(null);
            this.mCamera.release();
            this.mCamera = null;
            this.mCameraInfo.setOpenState(0);
        }
    }

    public boolean openCamera(SurfaceHolder surfaceHolder) {
        releaseCamera();
        Camera cameraOpen = open(this.mCameraId);
        this.mCamera = cameraOpen;
        if (cameraOpen == null) {
            return false;
        }
        try {
            cameraOpen.setPreviewDisplay(surfaceHolder);
            this.mSurfaceHolder = surfaceHolder;
            Camera.Parameters parameters = this.mCamera.getParameters();
            this.viewAngleH = parameters.getHorizontalViewAngle();
            this.viewAngleV = parameters.getVerticalViewAngle();
            this.mCameraInfo.setFocalLength(parameters.getFocalLength());
            this.mCameraInfo.setOpenState(2);
            this.mListener.onOpened();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            releaseCamera();
            return false;
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void updateCameraState(CameraState cameraState) {
        if (cameraState instanceof Camera1State) {
            this.mCameraState = cameraState;
        } else {
            LogFilter.w(LOG_TAG, "#updateCameraState, argument is invalid.");
            setDefaultCameraState();
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void cancelState() {
        this.mCameraState.onCancel();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void startState() {
        this.mCameraState.onStart();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void stopState() {
        this.mCameraState.onStop();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public boolean finishState() {
        return this.mCameraState.onFinish();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void startTakePictureState() {
        this.mCameraState.onTakePictureStart();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public boolean canExitState() {
        return this.mCameraState.canExit();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void setDefaultCameraState() {
        this.mCameraState = new Camera1State(this.mCamera, this.mCameraInfo, this.mGP2Callback, this.mListener);
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public int[] getSupportedPreviewSizes() {
        Camera cameraOpen = this.mCamera;
        if (cameraOpen == null && (cameraOpen = open(this.mCameraId)) == null) {
            return new int[0];
        }
        try {
            List<Camera.Size> supportedPreviewSizes = cameraOpen.getParameters().getSupportedPreviewSizes();
            Collections.sort(supportedPreviewSizes, this.mSizeComparator);
            int[] iArr = new int[supportedPreviewSizes.size() * 2];
            int i = 0;
            for (Camera.Size size : supportedPreviewSizes) {
                int i2 = i + 1;
                iArr[i] = size.width;
                i += 2;
                iArr[i2] = size.height;
            }
            if (this.mCamera == null) {
                cameraOpen.release();
                this.mCameraInfo.setOpenState(0);
            }
            return iArr;
        } catch (Throwable th) {
            if (this.mCamera == null) {
                cameraOpen.release();
                this.mCameraInfo.setOpenState(0);
            }
            throw th;
        }
    }

    public void startPreview(int i) {
        startPreviewLocal(i);
        this.mDisplayOrientation = i;
    }

    private void startPreviewLocal(int i) {
        SurfaceHolder surfaceHolder;
        int i2;
        if (!this.mResumed || (surfaceHolder = this.mSurfaceHolder) == null) {
            return;
        }
        if (this.mCamera == null) {
            openCamera(surfaceHolder);
        }
        Camera.Parameters parameters = this.mCamera.getParameters();
        LogFilter.i(LOG_TAG, String.format(Locale.US, "format:%d, displayOrientation:%d", Integer.valueOf(parameters.getPreviewFormat()), Integer.valueOf(i)));
        Camera.CameraInfo cameraInfo = getCameraInfo(this.mCameraId);
        if (cameraInfo.facing == 1) {
            i2 = (360 - ((cameraInfo.orientation + i) % 360)) % 360;
        } else {
            i2 = ((cameraInfo.orientation - i) + 360) % 360;
        }
        this.mCamera.setDisplayOrientation(i2);
        parameters.setPreviewSize(this.mCameraInfo.getCaptureWidth(), this.mCameraInfo.getCaptureHeight());
        this.mCamera.setParameters(parameters);
        Camera1PreviewState camera1PreviewState = new Camera1PreviewState(this.mCamera, this.mCameraInfo, this.mGP2Callback, this.mListener);
        this.mCameraState = camera1PreviewState;
        camera1PreviewState.onStart();
    }

    public Size getMaxPictureSize() {
        Camera cameraOpen = this.mCamera;
        if (cameraOpen == null && (cameraOpen = open(this.mCameraId)) == null) {
            return new Size(320, 240);
        }
        try {
            List<Camera.Size> supportedPictureSizes = cameraOpen.getParameters().getSupportedPictureSizes();
            if (supportedPictureSizes.isEmpty()) {
                return new Size(320, 240);
            }
            Collections.sort(supportedPictureSizes, this.mSizeComparator);
            return new Size(supportedPictureSizes.get(0).width, supportedPictureSizes.get(0).height);
        } finally {
            if (this.mCamera == null) {
                cameraOpen.release();
                this.mCameraInfo.setOpenState(0);
            }
        }
    }

    public static Camera.CameraInfo getCameraInfo(int i) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        return cameraInfo;
    }

    public static Camera open(int i) {
        try {
            return Camera.open(i);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
