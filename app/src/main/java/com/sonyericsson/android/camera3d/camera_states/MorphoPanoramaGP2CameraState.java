package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import com.sonyericsson.android.camera3d.Camera2ParamsFragment;
import com.sonyericsson.android.camera3d.CameraConstants;
import com.sonyericsson.android.camera3d.CameraInfo;
import com.sonyericsson.android.camera3d.base.PanoramaState;
import java.util.ArrayList;
import java.util.List;

public class MorphoPanoramaGP2CameraState extends CameraState {
    static final String LOG_TAG = "MorphoCamera2State";
    private static CameraStartupInfo cameraStartup = new CameraStartupInfo(0);
    static final IMorphoPanoramaGP2Callback nullGP2Callback = new IMorphoPanoramaGP2Callback() { // from class: com.sonyericsson.android.camera3d.camera_states.MorphoPanoramaGP2CameraState.1
        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public int getAntiBanding() {
            return 0;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public int getColorCorrectionMode() {
            return 0;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public int getEdgeMode() {
            return 0;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public int getNoiseReductionMode() {
            return 0;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public int getShadingMode() {
            return 0;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public int getTonemapMode() {
            return 0;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public boolean isAutoAELock() {
            return false;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public boolean isAutoEdgeNR() {
            return false;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public boolean isAutoWBLock() {
            return false;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public boolean isEngineRunning() {
            return false;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public boolean isInfinityFocus() {
            return false;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public boolean isTvLock() {
            return false;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void onAttachEnd() {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void onAutoFocusFinish(boolean z) {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void onErrorCamera() {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void onErrorCapture() {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void onPreviewStart() {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void onTakePictureCancel() {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public boolean onTakePictureFinish() {
            return false;
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void onTakePictureFinish2NextState(int i) {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void onTakePicturePreprocess() {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void onTakePictureStart(PanoramaState.IPanoramaStateEventListener iPanoramaStateEventListener) {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void requestUiRunnable(Runnable runnable) {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void setGravitySensorListener(boolean z) {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void setNullDirectionFunction() {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void updateCameraState(CameraState cameraState) {
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
        public void updateTvValue() {
        }
    };
    private static final double[] mTvBuf = new double[8];
    private static int mTvBufIndex = 0;

    public static class CameraStartupInfo {
        public int burstRemaining;
        public final List<CaptureRequest> burstRequestList;
        public Camera2ParamsFragment camera2Params;
        public CameraInfo cameraInfo;
        public CameraCaptureSession.CaptureCallback captureCallback;
        public CaptureRequest captureRequest;
        public final int capture_mode;
        public CaptureRequest.Builder currentBurstRequestBuilder;
        public CaptureRequest.Builder currentRequestBuilder;
        public IMorphoPanoramaGP2Callback gp2Callback;
        public ImageReader.OnImageAvailableListener previewAvailableListener;
        public ImageReader.OnImageAvailableListener takePictureAvailableListener;
        public TotalCaptureResult totalCaptureResult;
        public Surface previewSurface = null;
        public Surface miniPreviewSurface = null;
        public Handler backgroundHandler = null;
        public HandlerThread backgroundHandlerThread = null;
        public ImageReader imageReader = null;
        public ImageReader imageReaderIdling = null;
        public boolean available_ae_mode = false;
        public boolean available_af_mode = false;
        public boolean available_scene_mode_sports = false;
        public boolean available_antibanding_mode = false;
        public boolean available_image_quality_settings = false;
        public boolean available_fallback_mode = false;

        public CameraStartupInfo(int i) {
            this.capture_mode = i;
            if (i == 3) {
                this.burstRequestList = new ArrayList(CameraConstants.BURST_SHOT_NUM);
            } else if (i != 4) {
                this.burstRequestList = new ArrayList(0);
            } else {
                this.burstRequestList = new ArrayList(1);
            }
            this.gp2Callback = MorphoPanoramaGP2CameraState.nullGP2Callback;
        }
    }

    public static void initialize(int i) {
        cameraStartup = new CameraStartupInfo(i);
    }

    public CameraStartupInfo getCameraStartupInfo() {
        return cameraStartup;
    }

    public void setCamera2Params(Camera2ParamsFragment camera2ParamsFragment) {
        cameraStartup.camera2Params = camera2ParamsFragment;
    }

    public void setCameraInfo(CameraInfo cameraInfo) {
        cameraStartup.cameraInfo = cameraInfo;
    }

    public void setMorphoPanoramaGP2Interface(IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback) {
        if (iMorphoPanoramaGP2Callback == null) {
            cameraStartup.gp2Callback = nullGP2Callback;
        } else {
            cameraStartup.gp2Callback = iMorphoPanoramaGP2Callback;
        }
    }

    public void setPreviewSurface(Surface surface) {
        cameraStartup.previewSurface = surface;
    }

    public void setMiniPreviewSurface(Surface surface) {
        cameraStartup.miniPreviewSurface = surface;
    }

    public void setBackgroundHandlerThread(HandlerThread handlerThread) {
        cameraStartup.backgroundHandlerThread = handlerThread;
    }

    public void setCaptureCallback(CameraCaptureSession.CaptureCallback captureCallback) {
        cameraStartup.captureCallback = captureCallback;
    }

    public void setImageReader(ImageReader imageReader) {
        cameraStartup.imageReader = imageReader;
    }

    public void setImageReaderIdling(ImageReader imageReader) {
        cameraStartup.imageReaderIdling = imageReader;
    }

    public void setOnPreviewImageAvailableListener(ImageReader.OnImageAvailableListener onImageAvailableListener) {
        cameraStartup.previewAvailableListener = onImageAvailableListener;
    }

    public void setOnTakePictureImageAvailableListener(ImageReader.OnImageAvailableListener onImageAvailableListener) {
        cameraStartup.takePictureAvailableListener = onImageAvailableListener;
    }

    public void setBurstRemaining(int i) {
        cameraStartup.burstRemaining = i;
    }

    static double getSmoothenedEv(double d) {
        double[] dArr = mTvBuf;
        int i = mTvBufIndex;
        mTvBufIndex = i + 1;
        dArr[i & 7] = d;
        double d2 = 0.0d;
        for (int i2 = 3; i2 < 8; i2++) {
            d2 += ((double) i2) * mTvBuf[(mTvBufIndex + i2) & 7];
        }
        return d2 * 0.04d;
    }

    static void safeImageClose(Image image) {
        if (image != null) {
            image.close();
        }
    }

    public Camera2ParamsFragment camera2Params() {
        return cameraStartup.camera2Params;
    }

    public Handler backgroundHandler() {
        return cameraStartup.backgroundHandler;
    }

    static void setupFocusModeInfinity(CaptureRequest.Builder builder) {
        builder.set(CaptureRequest.CONTROL_MODE, 1);
        builder.set(CaptureRequest.CONTROL_AF_MODE, 0);
        builder.set(CaptureRequest.LENS_FOCUS_DISTANCE, Float.valueOf(0.0f));
    }
}
