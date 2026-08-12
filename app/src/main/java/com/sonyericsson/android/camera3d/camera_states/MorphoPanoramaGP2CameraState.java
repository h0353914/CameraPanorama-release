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
import com.sonyericsson.android.camera3d.CameraInfo;

import java.util.ArrayList;
import java.util.List;

public class MorphoPanoramaGP2CameraState extends CameraState {
    static final String LOG_TAG = "MorphoCamera2State";

    private static CameraStartupInfo cameraStartup;
    private static final double[] mTvBuf;
    private static int mTvBufIndex;
    static final IMorphoPanoramaGP2Callback nullGP2Callback;

    static {
        cameraStartup = new CameraStartupInfo(0);
        nullGP2Callback = new IMorphoPanoramaGP2Callback() {
            @Override
            public int getAntiBanding() {
                return 0;
            }

            @Override
            public int getColorCorrectionMode() {
                return 0;
            }

            @Override
            public int getEdgeMode() {
                return 0;
            }

            @Override
            public int getNoiseReductionMode() {
                return 0;
            }

            @Override
            public int getShadingMode() {
                return 0;
            }

            @Override
            public int getTonemapMode() {
                return 0;
            }

            @Override
            public boolean isAutoAELock() {
                return false;
            }

            @Override
            public boolean isAutoEdgeNR() {
                return false;
            }

            @Override
            public boolean isAutoWBLock() {
                return false;
            }

            @Override
            public boolean isEngineRunning() {
                return false;
            }

            @Override
            public boolean isInfinityFocus() {
                return false;
            }

            @Override
            public boolean isTvLock() {
                return false;
            }

            @Override
            public void onAttachEnd() {
            }

            @Override
            public void onAutoFocusFinish(boolean success) {
            }

            @Override
            public void onErrorCamera() {
            }

            @Override
            public void onErrorCapture() {
            }

            @Override
            public void onPreviewStart() {
            }

            @Override
            public void onTakePictureCancel() {
            }

            @Override
            public boolean onTakePictureFinish() {
                return false;
            }

            @Override
            public void onTakePictureFinish2NextState(int resultCode) {
            }

            @Override
            public void onTakePicturePreprocess() {
            }

            @Override
            public void onTakePictureStart(com.sonyericsson.android.camera3d.base.PanoramaState.IPanoramaStateEventListener listener) {
            }

            @Override
            public void requestUiRunnable(Runnable runnable) {
            }

            @Override
            public void setGravitySensorListener(boolean enable) {
            }

            @Override
            public void setNullDirectionFunction() {
            }

            @Override
            public void updateCameraState(CameraState state) {
            }

            @Override
            public void updateTvValue() {
            }
        };
        mTvBuf = new double[8];
    }

    public MorphoPanoramaGP2CameraState() {
        super();
    }

    static double getSmoothenedEv(double ev) {
        int index = mTvBufIndex;
        mTvBufIndex = index + 1;
        mTvBuf[index & 7] = ev;
        double sum = 0.0;
        for (int i = 3; i < 8; i++) {
            sum += i * mTvBuf[(mTvBufIndex + i) & 7];
        }
        return sum * 0.04;
    }

    public static void initialize(int captureMode) {
        cameraStartup = new CameraStartupInfo(captureMode);
    }

    static void safeImageClose(Image image) {
        if (image != null) {
            image.close();
        }
    }

    static void setupFocusModeInfinity(CaptureRequest.Builder builder) {
        builder.set(CaptureRequest.CONTROL_MODE, 1);
        builder.set(CaptureRequest.CONTROL_AF_MODE, 0);
        builder.set(CaptureRequest.LENS_FOCUS_DISTANCE, 0f);
    }

    public Handler backgroundHandler() {
        return cameraStartup.backgroundHandler;
    }

    public Camera2ParamsFragment camera2Params() {
        return cameraStartup.camera2Params;
    }

    public CameraStartupInfo getCameraStartupInfo() {
        return cameraStartup;
    }

    public void setBackgroundHandlerThread(HandlerThread thread) {
        cameraStartup.backgroundHandlerThread = thread;
    }

    public void setBurstRemaining(int remaining) {
        cameraStartup.burstRemaining = remaining;
    }

    public void setCamera2Params(Camera2ParamsFragment params) {
        cameraStartup.camera2Params = params;
    }

    public void setCameraInfo(CameraInfo cameraInfo) {
        cameraStartup.cameraInfo = cameraInfo;
    }

    public void setCaptureCallback(CameraCaptureSession.CaptureCallback callback) {
        cameraStartup.captureCallback = callback;
    }

    public void setImageReader(ImageReader imageReader) {
        cameraStartup.imageReader = imageReader;
    }

    public void setImageReaderIdling(ImageReader imageReader) {
        cameraStartup.imageReaderIdling = imageReader;
    }

    public void setMiniPreviewSurface(Surface surface) {
        cameraStartup.miniPreviewSurface = surface;
    }

    public void setMorphoPanoramaGP2Interface(IMorphoPanoramaGP2Callback callback) {
        if (callback == null) {
            cameraStartup.gp2Callback = nullGP2Callback;
        } else {
            cameraStartup.gp2Callback = callback;
        }
    }

    public void setOnPreviewImageAvailableListener(ImageReader.OnImageAvailableListener listener) {
        cameraStartup.previewAvailableListener = listener;
    }

    public void setOnTakePictureImageAvailableListener(ImageReader.OnImageAvailableListener listener) {
        cameraStartup.takePictureAvailableListener = listener;
    }

    public void setPreviewSurface(Surface surface) {
        cameraStartup.previewSurface = surface;
    }

    public static class CameraStartupInfo {
        public boolean available_ae_mode;
        public boolean available_af_mode;
        public boolean available_antibanding_mode;
        public boolean available_image_quality_settings;
        public boolean available_scene_mode_sports;
        public Handler backgroundHandler;
        public HandlerThread backgroundHandlerThread;
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
        public ImageReader imageReader;
        public ImageReader imageReaderIdling;
        public Surface miniPreviewSurface;
        public ImageReader.OnImageAvailableListener previewAvailableListener;
        public Surface previewSurface;
        public ImageReader.OnImageAvailableListener takePictureAvailableListener;
        public TotalCaptureResult totalCaptureResult;

        public CameraStartupInfo(int captureMode) {
            previewSurface = null;
            miniPreviewSurface = null;
            backgroundHandler = null;
            backgroundHandlerThread = null;
            imageReader = null;
            imageReaderIdling = null;
            available_ae_mode = false;
            available_af_mode = false;
            available_scene_mode_sports = false;
            available_antibanding_mode = false;
            available_image_quality_settings = false;
            capture_mode = captureMode;
            switch (captureMode) {
                case 4:
                    burstRequestList = new ArrayList<>(1);
                    break;
                case 3:
                    burstRequestList = new ArrayList<>(600);
                    break;
                default:
                    burstRequestList = new ArrayList<>(0);
                    break;
            }
            gp2Callback = MorphoPanoramaGP2CameraState.nullGP2Callback;
        }
    }
}
