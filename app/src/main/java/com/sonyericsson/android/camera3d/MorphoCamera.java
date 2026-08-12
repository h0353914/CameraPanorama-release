package com.sonyericsson.android.camera3d;

import android.app.Activity;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import android.util.SizeF;
import android.view.Surface;
import android.view.TextureView;

import com.sonyericsson.android.camera3d.base.MorphoCameraBase;
import com.sonyericsson.android.camera3d.camera_states.CameraState;
import com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback;
import com.sonyericsson.android.camera3d.camera_states.MorphoPanoramaGP2CameraState;
import com.sonyericsson.android.camera3d.camera_states.MorphoPanoramaGP2CameraState.CameraStartupInfo;
import com.sonyericsson.android.camera3d.camera_states.PreviewState;
import com.sonyericsson.android.camera3d.utils.LogFilter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

public class MorphoCamera extends MorphoCameraBase {
    private static final String LOG_TAG = "MorphoCamera2";

    private HandlerThread mBackgroundHandlerThread;
    private final CameraInfo mCameraInfo;
    private final CameraManager mCameraManager;
    private MorphoPanoramaGP2CameraState mCameraState;
    private final CameraCaptureSession.CaptureCallback mCaptureCallback = new CameraCaptureSession.CaptureCallback() {
        @Override
        public void onCaptureCompleted(CameraCaptureSession session, CaptureRequest request, TotalCaptureResult result) {
            mCameraState.onCaptureCompleted(request, result);
            synchronized (CameraConstants.CameraSynchronizedObject) {
                if (!mIsAvailable) {
                    return;
                }
                mListener.onCaptureCompleted(request, result);
            }
        }

        @Override
        public void onCaptureFailed(CameraCaptureSession session, CaptureRequest request, CaptureFailure failure) {
            LogFilter.w(LOG_TAG, "CameraCaptureSession.CaptureCallback.onCaptureFailed >Reason:" + failure.getReason());
        }

        @Override
        public void onCaptureProgressed(CameraCaptureSession session, CaptureRequest request, CaptureResult partialResult) {
            mCameraState.onProgressed(partialResult);
        }

        @Override
        public void onCaptureSequenceCompleted(CameraCaptureSession session, int sequenceId, long frameNumber) {
            mCameraState.onCaptureSequenceCompleted(sequenceId);
        }
    };
    private ImageReader mImageReader;
    private ImageReader mImageReaderIdling;
    private IMorphoCameraListener mListener;
    private final ImageReader.OnImageAvailableListener mPreviewAvailableListener = new ImageReader.OnImageAvailableListener() {
        @Override
        public void onImageAvailable(ImageReader reader) {
            synchronized (CameraConstants.CameraSynchronizedObject) {
                if (!mIsAvailable) {
                    return;
                }
                if (!mListener.onPreviewImageAvailable()) {
                    try {
                        Image image = reader.acquireNextImage();
                        if (image != null) {
                            image.close();
                        }
                    } catch (IllegalStateException e) {
                        e.printStackTrace();
                        mListener.onError();
                    }
                    return;
                }
                if (!mCameraState.camera2Params().tv()) {
                    try {
                        Image image = reader.acquireNextImage();
                        if (image != null) {
                            image.close();
                        }
                    } catch (IllegalStateException e) {
                        e.printStackTrace();
                        mListener.onError();
                    }
                }
            }
        }
    };
    private Surface mPreviewSurface;
    private Surface mPreviewSurfaceMini;
    private final CameraCaptureSession.StateCallback mSessionCallback = new CameraCaptureSession.StateCallback() {
        @Override
        public void onConfigureFailed(CameraCaptureSession session) {
            LogFilter.e(LOG_TAG, "CameraCaptureSession.StateCallback.onConfigureFailed");
            mCameraInfo.onCloseCamera();
            mPreviewSurface = null;
            mCameraState.setPreviewSurface(null);
        }

        @Override
        public void onConfigured(CameraCaptureSession session) {
            synchronized (CameraConstants.CameraSynchronizedObject) {
                if (!mIsAvailable) {
                    return;
                }
                if (mCameraInfo.isCameraEnabled() && mCameraInfo.getOpenState() == 2) {
                    mCameraInfo.setCaptureSession(session);
                    mCameraState = new PreviewState();
                    mCameraState.onStart();
                }
            }
        }
    };
    private final Comparator<Size> mSizeComparator = new Comparator<Size>() {
        @Override
        public int compare(Size lhs, Size rhs) {
            int result = rhs.getWidth() - lhs.getWidth();
            if (result == 0) {
                return rhs.getHeight() - lhs.getHeight();
            }
            return result;
        }
    };
    private final CameraDevice.StateCallback mStateCallback = new CameraDevice.StateCallback() {
        @Override
        public void onDisconnected(CameraDevice camera) {
            mCameraInfo.onCloseCamera(camera);
            mPreviewSurface = null;
            mCameraState.setPreviewSurface(null);
        }

        @Override
        public void onError(CameraDevice camera, int error) {
            LogFilter.e(LOG_TAG, String.format(Locale.US, "CameraDevice.StateCallback.onError (%d)", error));
            mListener.onError();
        }

        @Override
        public void onOpened(CameraDevice camera) {
            synchronized (CameraConstants.CameraSynchronizedObject) {
                if (!mIsAvailable) {
                    return;
                }
                mCameraInfo.setOpenCameraDevice(camera);
                SurfaceTexture texture = (mTextureView != null) ? mTextureView.getSurfaceTexture() : null;
                if (texture == null) {
                    LogFilter.w(LOG_TAG, "CameraDevice.StateCallback.onOpened SurfaceTexture is null!!");
                    camera.close();
                    mCameraInfo.setOpenState(0);
                    return;
                }
                if (mImageReader == null) {
                    LogFilter.w(LOG_TAG, "CameraDevice.StateCallback.onOpened ImageReader is null!!");
                    camera.close();
                    mCameraInfo.setOpenState(0);
                    return;
                }
                mListener.onOpened();
                if (Build.MODEL.equals("EVA-TL00")) {
                    texture.setDefaultBufferSize(0x780, 0x5a0);
                } else {
                    LogFilter.i(LOG_TAG, String.format(Locale.US, "preview_size : %d x %d",
                            mCameraInfo.getPreviewWidth(), mCameraInfo.getPreviewHeight()));
                    texture.setDefaultBufferSize(mCameraInfo.getPreviewWidth(), mCameraInfo.getPreviewHeight());
                }
                mPreviewSurface = new Surface(texture);
                if (mTextureViewMini != null) {
                    SurfaceTexture textureMini = mTextureViewMini.getSurfaceTexture();
                    textureMini.setDefaultBufferSize(mTextureViewMini.getWidth(), mTextureViewMini.getHeight());
                    mPreviewSurfaceMini = new Surface(textureMini);
                }
                try {
                    List<Surface> surfaces = new LinkedList<>();
                    surfaces.add(mPreviewSurface);
                    surfaces.add(mImageReader.getSurface());
                    if (mPreviewSurfaceMini != null) {
                        surfaces.add(mPreviewSurfaceMini);
                    }
                    mCameraInfo.getOpenCameraDevice().createCaptureSession(surfaces, mSessionCallback, null);
                } catch (SecurityException e) {
                    e.printStackTrace();
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                    mCameraInfo.onCloseCamera(camera);
                    mPreviewSurface = null;
                    mPreviewSurfaceMini = null;
                    mListener.onError();
                    return;
                }
                mCameraState.setPreviewSurface(mPreviewSurface);
                if (mPreviewSurfaceMini != null) {
                    mCameraState.setMiniPreviewSurface(mPreviewSurfaceMini);
                }
            }
        }
    };
    private final ImageReader.OnImageAvailableListener mTakePictureAvailableListener = new ImageReader.OnImageAvailableListener() {
        @Override
        public void onImageAvailable(ImageReader reader) {
            Image image;
            try {
                image = reader.acquireNextImage();
            } catch (IllegalStateException e) {
                e.printStackTrace();
                mListener.onError();
                return;
            }
            if (image == null) {
                LogFilter.w(LOG_TAG, "ImageReader#acquireNextImage() is null.");
                return;
            }
            Camera2Image captureImage = new Camera2Image(image);
            if (!mListener.onPictureTaken(captureImage)) {
                captureImage.close();
            }
        }
    };
    private TextureView mTextureView;
    private TextureView mTextureViewMini;
    private long mTvTargetExposureTime;
    private int mTvTargetSensorSensitivity;

    public MorphoCamera(IMorphoCameraListener listener, Activity activity, int cameraId, int captureMode) {
        super();
        mTextureView = null;
        mTextureViewMini = null;
        mBackgroundHandlerThread = null;
        mCameraManager = (CameraManager) activity.getSystemService("camera");
        mCameraInfo = new CameraInfo();
        mCameraInfo.setCameraId(String.valueOf(cameraId));
        if (listener == null) {
            listener = nullMorphoCameraListener;
        }
        mListener = listener;
        mCameraState = new MorphoPanoramaGP2CameraState();
        MorphoPanoramaGP2CameraState.initialize(captureMode);
    }

    private long calculateExposureTime(long targetTime) {
        Camera2ParamsFragment params = mCameraState.camera2Params();
        if (targetTime - params.exposureTime().longValue() > CameraConstants.TV_EXPOSURE_TIME_DIFF) {
            return Math.min(params.exposureTime().longValue() + CameraConstants.TV_EXPOSURE_TIME_DIFF, mTvTargetExposureTime);
        }
        if (targetTime - params.exposureTime().longValue() < -CameraConstants.TV_EXPOSURE_TIME_DIFF) {
            return Math.max(params.exposureTime().longValue() - CameraConstants.TV_EXPOSURE_TIME_DIFF, mTvTargetExposureTime);
        }
        return targetTime;
    }

    private int calculateSensorSensitivity(int target) {
        Camera2ParamsFragment params = mCameraState.camera2Params();
        if (target - params.sensorSensitivity() > CameraConstants.TV_SENSOR_SENSITIVITY_DIFF) {
            return Math.min(params.sensorSensitivity() + CameraConstants.TV_SENSOR_SENSITIVITY_DIFF, mTvTargetSensorSensitivity);
        }
        if (target - params.sensorSensitivity() < -CameraConstants.TV_SENSOR_SENSITIVITY_DIFF) {
            return Math.max(params.sensorSensitivity() - CameraConstants.TV_SENSOR_SENSITIVITY_DIFF, mTvTargetSensorSensitivity);
        }
        return target;
    }

    private String[] getImageQualitySettingsDefaultValues(CaptureRequest.Key<Integer> key) {
        if (!mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        String[] values = new String[3];
        Integer preview;
        try {
            CaptureRequest.Builder builder = mCameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW);
            preview = builder.get(key);
        } catch (IllegalStateException e) {
            e.printStackTrace();
            return null;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        } catch (Exception e) {
            return null;
        }
        if (preview == null) {
            return null;
        }
        values[0] = String.valueOf(preview);
        try {
            CaptureRequest.Builder builder = mCameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_STILL_CAPTURE);
            Integer still = builder.get(key);
            if (still != null) {
                values[1] = String.valueOf(still);
            } else {
                values[1] = values[0];
            }
        } catch (IllegalStateException e) {
            e.printStackTrace();
            return null;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        } catch (Exception e) {
            values[1] = values[0];
        }
        if (mCameraInfo.isEnabledZsl()) {
            try {
                CaptureRequest.Builder builder = mCameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_ZERO_SHUTTER_LAG);
                Integer zsl = builder.get(key);
                if (zsl != null) {
                    values[2] = String.valueOf(zsl);
                } else {
                    values[2] = values[0];
                }
            } catch (IllegalStateException e) {
                e.printStackTrace();
                return null;
            } catch (CameraAccessException e) {
                e.printStackTrace();
                return null;
            } catch (Exception e) {
                values[2] = values[0];
                mCameraInfo.setEnabledZsl(false);
            }
        } else {
            values[2] = values[0];
        }
        String keyName = "";
        if (CaptureRequest.COLOR_CORRECTION_MODE.equals(key)) {
            keyName = "COLOR_CORRECTION_MODE";
        } else if (CaptureRequest.EDGE_MODE.equals(key)) {
            keyName = "EDGE_MODE";
        } else if (CaptureRequest.NOISE_REDUCTION_MODE.equals(key)) {
            keyName = "NOISE_REDUCTION_MODE";
        } else if (CaptureRequest.SHADING_MODE.equals(key)) {
            keyName = "SHADING_MODE";
        } else if (CaptureRequest.TONEMAP_MODE.equals(key)) {
            keyName = "TONEMAP_MODE";
        }
        LogFilter.i(LOG_TAG, String.format(Locale.US, "getImageQualitySettingsDefaultValues %s[PREVIEW] : %s", keyName, values[0]));
        LogFilter.i(LOG_TAG, String.format(Locale.US, "getImageQualitySettingsDefaultValues %s[STILL]   : %s", keyName, values[1]));
        LogFilter.i(LOG_TAG, String.format(Locale.US, "getImageQualitySettingsDefaultValues %s[ZSL]     : %s", keyName, values[2]));
        return values;
    }

    @Override
    public int burstRemaining() {
        return mCameraState.getCameraStartupInfo().burstRemaining;
    }

    public void calculateNewRequest(double ev) {
        CameraStartupInfo info = mCameraState.getCameraStartupInfo();
        Integer sensitivity = info.totalCaptureResult.get(TotalCaptureResult.SENSOR_SENSITIVITY);
        Long exposureTime = info.totalCaptureResult.get(TotalCaptureResult.SENSOR_EXPOSURE_TIME);
        if (sensitivity == null || exposureTime == null) {
            LogFilter.e(LOG_TAG, "SENSOR_SENSITIVITY or SENSOR_EXPOSURE_TIME is null.");
            return;
        }
        Camera2ParamsFragment params = mCameraState.camera2Params();
        double gain;
        if (params.evSteps() == 0) {
            gain = CameraInfo.CAPTURE_GAIN_RANGE.clamp(Double.valueOf(ev)).doubleValue();
        } else {
            double factor = Math.exp(Math.log(2.0) * mCameraInfo.getAeCompensationStep() * params.evSteps());
            gain = CameraInfo.CAPTURE_GAIN_RANGE.clamp(Double.valueOf(factor * ev)).doubleValue();
        }
        gain *= sensitivity.intValue();
        gain *= exposureTime.longValue();
        long shutterSpeedNs = params.shutterSpeedInNanoSeconds();
        int newSensitivity = mCameraInfo.clampSensitivityRange((int) (gain / shutterSpeedNs));
        long newExposureTime = mCameraInfo.clampExposureTime(Long.valueOf((long) (gain / newSensitivity))).longValue();
        newExposureTime = Math.min(newExposureTime, CameraConstants.TV_EXPOSURE_TIME_MAX);
        mTvTargetSensorSensitivity = newSensitivity;
        mTvTargetExposureTime = newExposureTime;
        int sensorSensitivity = calculateSensorSensitivity(newSensitivity);
        long calculatedExposureTime = calculateExposureTime(newExposureTime);
        params.setSensorSensitivity(sensorSensitivity);
        params.setExposureTime(calculatedExposureTime);
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
        mListener = nullMorphoCameraListener;
    }

    @Override
    public boolean finishState() {
        return mCameraState.onFinish();
    }

    @Override
    public String[] getAllCameras() {
        String[] ids;
        String[] names;
        try {
            ids = mCameraManager.getCameraIdList();
            names = new String[ids.length];
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
        try {
            int otherCount = 0;
            int frontCount = 0;
            int backCount = 0;
            for (int i = 0; i < ids.length; i++) {
                CameraCharacteristics characteristics = mCameraManager.getCameraCharacteristics(ids[i]);
                Integer facing = characteristics.get(CameraCharacteristics.LENS_FACING);
                if (facing != null) {
                    switch (facing.intValue()) {
                        case CameraCharacteristics.LENS_FACING_FRONT:
                            frontCount++;
                            names[i] = String.format(Locale.US, "Front %d", frontCount);
                            break;
                        case CameraCharacteristics.LENS_FACING_BACK:
                            backCount++;
                            names[i] = String.format(Locale.US, "Back %d", backCount);
                            break;
                        default:
                            otherCount++;
                            names[i] = String.format(Locale.US, "Other %d", otherCount);
                            break;
                    }
                } else {
                    otherCount++;
                    names[i] = String.format(Locale.US, "Other %d", otherCount);
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
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
        return names;
    }

    @Override
    public String[] getAvailableColorCorrectionMode() {
        if (!mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        return new String[]{"FAST", "HIGH_QUALITY"};
    }

    @Override
    public String[] getAvailableColorCorrectionModeValues() {
        if (!mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        String[] values = new String[2];
        values[0] = String.valueOf(1);
        values[1] = String.valueOf(2);
        return values;
    }

    @Override
    public String[] getAvailableEdgeMode() {
        if (!mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        try {
            CameraCharacteristics characteristics = mCameraManager.getCameraCharacteristics(mCameraInfo.getCameraId());
            int[] modes = characteristics.get(CameraCharacteristics.EDGE_AVAILABLE_EDGE_MODES);
            if (modes == null) {
                return null;
            }
            ArrayList<String> list = new ArrayList<>();
            for (int mode : modes) {
                switch (mode) {
                    case CaptureRequest.EDGE_MODE_OFF:
                        list.add("OFF");
                        break;
                    case CaptureRequest.EDGE_MODE_FAST:
                        list.add("FAST");
                        break;
                    case CaptureRequest.EDGE_MODE_HIGH_QUALITY:
                        list.add("HIGH_QUALITY");
                        break;
                    default:
                        break;
                }
            }
            return list.toArray(new String[list.size()]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public String[] getAvailableEdgeModeValues() {
        if (!mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        try {
            CameraCharacteristics characteristics = mCameraManager.getCameraCharacteristics(mCameraInfo.getCameraId());
            int[] modes = characteristics.get(CameraCharacteristics.EDGE_AVAILABLE_EDGE_MODES);
            if (modes == null) {
                return null;
            }
            ArrayList<String> list = new ArrayList<>();
            for (int mode : modes) {
                switch (mode) {
                    case CaptureRequest.EDGE_MODE_OFF:
                    case CaptureRequest.EDGE_MODE_FAST:
                    case CaptureRequest.EDGE_MODE_HIGH_QUALITY:
                        list.add(String.valueOf(mode));
                        break;
                    default:
                        break;
                }
            }
            return list.toArray(new String[list.size()]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public String[] getAvailableNoiseReductionMode() {
        if (!mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        try {
            CameraCharacteristics characteristics = mCameraManager.getCameraCharacteristics(mCameraInfo.getCameraId());
            int[] modes = characteristics.get(CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES);
            if (modes == null) {
                return null;
            }
            ArrayList<String> list = new ArrayList<>();
            for (int mode : modes) {
                switch (mode) {
                    case CaptureRequest.NOISE_REDUCTION_MODE_OFF:
                        list.add("OFF");
                        break;
                    case CaptureRequest.NOISE_REDUCTION_MODE_FAST:
                        list.add("FAST");
                        break;
                    case CaptureRequest.NOISE_REDUCTION_MODE_HIGH_QUALITY:
                        list.add("HIGH_QUALITY");
                        break;
                    default:
                        break;
                }
            }
            return list.toArray(new String[list.size()]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public String[] getAvailableNoiseReductionModeValues() {
        if (!mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        try {
            CameraCharacteristics characteristics = mCameraManager.getCameraCharacteristics(mCameraInfo.getCameraId());
            int[] modes = characteristics.get(CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES);
            if (modes == null) {
                return null;
            }
            ArrayList<String> list = new ArrayList<>();
            for (int mode : modes) {
                switch (mode) {
                    case CaptureRequest.NOISE_REDUCTION_MODE_OFF:
                    case CaptureRequest.NOISE_REDUCTION_MODE_FAST:
                    case CaptureRequest.NOISE_REDUCTION_MODE_HIGH_QUALITY:
                        list.add(String.valueOf(mode));
                        break;
                    default:
                        break;
                }
            }
            return list.toArray(new String[list.size()]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public String[] getAvailableShadingMode() {
        if (!mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        return new String[]{"OFF", "FAST"};
    }

    @Override
    public String[] getAvailableShadingModeValues() {
        if (!mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        String[] values = new String[2];
        values[0] = String.valueOf(0);
        values[1] = String.valueOf(1);
        return values;
    }

    @Override
    public String[] getAvailableTonemapMode() {
        if (!mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        try {
            CameraCharacteristics characteristics = mCameraManager.getCameraCharacteristics(mCameraInfo.getCameraId());
            int[] modes = characteristics.get(CameraCharacteristics.TONEMAP_AVAILABLE_TONE_MAP_MODES);
            if (modes == null) {
                return null;
            }
            ArrayList<String> list = new ArrayList<>();
            for (int mode : modes) {
                switch (mode) {
                    case CaptureRequest.TONEMAP_MODE_FAST:
                        list.add("FAST");
                        break;
                    case CaptureRequest.TONEMAP_MODE_HIGH_QUALITY:
                        list.add("HIGH_QUALITY");
                        break;
                    default:
                        break;
                }
            }
            return list.toArray(new String[list.size()]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public String[] getAvailableTonemapModeValues() {
        if (!mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        try {
            CameraCharacteristics characteristics = mCameraManager.getCameraCharacteristics(mCameraInfo.getCameraId());
            int[] modes = characteristics.get(CameraCharacteristics.TONEMAP_AVAILABLE_TONE_MAP_MODES);
            if (modes == null) {
                return null;
            }
            ArrayList<String> list = new ArrayList<>();
            for (int mode : modes) {
                switch (mode) {
                    case CaptureRequest.TONEMAP_MODE_FAST:
                    case CaptureRequest.TONEMAP_MODE_HIGH_QUALITY:
                        list.add(String.valueOf(mode));
                        break;
                    default:
                        break;
                }
            }
            return list.toArray(new String[list.size()]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public String[] getColorCorrectionModeDefaultValues() {
        return getImageQualitySettingsDefaultValues(CaptureRequest.COLOR_CORRECTION_MODE);
    }

    @Override
    public String[] getEdgeModeDefaultValues() {
        return getImageQualitySettingsDefaultValues(CaptureRequest.EDGE_MODE);
    }

    @Override
    public String[] getNoiseReductionModeDefaultValues() {
        return getImageQualitySettingsDefaultValues(CaptureRequest.NOISE_REDUCTION_MODE);
    }

    @Override
    public String[] getShadingModeDefaultValues() {
        return getImageQualitySettingsDefaultValues(CaptureRequest.SHADING_MODE);
    }

    @Override
    public int[] getSupportedPreviewSizes() {
        if (!mCameraInfo.isCameraEnabled()) {
            return new int[0];
        }
        try {
            CameraCharacteristics characteristics = mCameraManager.getCameraCharacteristics(mCameraInfo.getCameraId());
            StreamConfigurationMap map = characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
            if (map == null) {
                return new int[0];
            }
            List<Size> sizes = Arrays.asList(map.getOutputSizes(ImageFormat.YUV_420_888));
            Collections.sort(sizes, mSizeComparator);
            int[] result = new int[sizes.size() * 2];
            int index = 0;
            for (Size size : sizes) {
                result[index] = size.getWidth();
                index++;
                result[index] = size.getHeight();
                index++;
            }
            return result;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return new int[0];
        }
    }

    @Override
    public String[] getTonemapModeDefaultValues() {
        return getImageQualitySettingsDefaultValues(CaptureRequest.TONEMAP_MODE);
    }

    @Override
    public boolean isFrontCamera(int cameraId) throws IllegalArgumentException {
        try {
            CameraCharacteristics characteristics = mCameraManager.getCameraCharacteristics(String.valueOf(cameraId));
            Integer facing = characteristics.get(CameraCharacteristics.LENS_FACING);
            if (facing != null && facing.intValue() == CameraCharacteristics.LENS_FACING_FRONT) {
                return true;
            }
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean openCamera(TextureView textureView) throws IllegalArgumentException {
        return openCamera(textureView, false);
    }

    public boolean openCamera(TextureView textureView, boolean useHandlerThread) throws IllegalArgumentException {
        if (!prepareCamera(textureView)) {
            return false;
        }
        return openCamera(useHandlerThread);
    }

    public boolean openCamera(boolean useHandlerThread) throws IllegalArgumentException {
        if (!mIsAvailable || mTextureView == null) {
            return false;
        }
        CameraStartupInfo info = mCameraState.getCameraStartupInfo();
        try {
            mCameraInfo.setOpenState(1);
            if (useHandlerThread) {
                Handler handler = new Handler(info.backgroundHandlerThread.getLooper());
                mCameraManager.openCamera(mCameraInfo.getCameraId(), mStateCallback, handler);
            } else {
                mCameraManager.openCamera(mCameraInfo.getCameraId(), mStateCallback, null);
            }
            return true;
        } catch (CameraAccessException | SecurityException e) {
            e.printStackTrace();
            mCameraInfo.setOpenState(0);
            return false;
        }
    }

    @Override
    public void pause() {
        synchronized (CameraConstants.CameraSynchronizedObject) {
            mIsAvailable = false;
            mCameraState.setPreviewSurface(null);
            if ("samsung".equals(Build.MANUFACTURER)) {
                try {
                    CaptureRequest.Builder builder = mCameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_STILL_CAPTURE);
                    builder.addTarget(mPreviewSurface);
                    mCameraInfo.getCaptureSession().capture(builder.build(), null, null);
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                }
            }
            mCameraInfo.onCloseCamera();
            mPreviewSurface = null;
            if (mImageReader != null) {
                mImageReader.close();
                mImageReader = null;
            }
            if (mImageReaderIdling != null) {
                mImageReaderIdling.close();
                mImageReaderIdling = null;
            }
            mCameraState.setImageReader(null);
            mCameraState.setImageReaderIdling(null);
            if (mBackgroundHandlerThread != null) {
                mBackgroundHandlerThread.quit();
                mBackgroundHandlerThread = null;
            }
            mCameraState.setBackgroundHandlerThread(null);
        }
    }

    public boolean prepareCamera(TextureView textureView) {
        return prepareCamera(textureView, null);
    }

    public boolean prepareCamera(TextureView textureView, TextureView textureViewMini) {
        mTextureView = textureView;
        mTextureViewMini = textureViewMini;
        CameraStartupInfo info = mCameraState.getCameraStartupInfo();
        float[] focalLengths;
        SizeF physicalSize;
        Size pixelArraySize;
        Rect activeArraySize;
        try {
            CameraCharacteristics characteristics = mCameraManager.getCameraCharacteristics(mCameraInfo.getCameraId());
            Integer hardwareLevel = characteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
            Integer sensorOrientation = characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
            if (hardwareLevel == null) {
                return false;
            }
            if (sensorOrientation == null) {
                return false;
            }
            mCameraInfo.setHardwareLevel(hardwareLevel.intValue());
            mCameraInfo.setOrientation(sensorOrientation.intValue());
            focalLengths = characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS);
            physicalSize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE);
            pixelArraySize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE);
            activeArraySize = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);

            if (mCameraInfo.getHardwareLevel() == CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY
                    || mCameraInfo.getHardwareLevel() == CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL_LIMITED) {
                int[] aeModes = characteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES);
                boolean hasAeOn = false;
                boolean hasAeOff = false;
                if (aeModes != null) {
                    for (int mode : aeModes) {
                        if (mode == CaptureRequest.CONTROL_AE_MODE_ON) {
                            hasAeOn = true;
                        }
                        if (mode == CaptureRequest.CONTROL_AE_MODE_OFF) {
                            hasAeOff = true;
                        }
                    }
                }
                info.available_ae_mode = hasAeOn && hasAeOff;

                int[] afModes = characteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
                boolean hasAfAuto = false;
                boolean hasAfContinuousPicture = false;
                if (afModes != null) {
                    for (int mode : afModes) {
                        if (mode == CaptureRequest.CONTROL_AF_MODE_AUTO) {
                            hasAfAuto = true;
                        }
                        if (mode == CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE) {
                            hasAfContinuousPicture = true;
                        }
                    }
                }
                info.available_af_mode = hasAfAuto && hasAfContinuousPicture;

                int[] sceneModes = characteristics.get(CameraCharacteristics.CONTROL_AVAILABLE_SCENE_MODES);
                boolean hasSceneModeSports = false;
                if (sceneModes != null) {
                    for (int mode : sceneModes) {
                        if (mode == CaptureRequest.CONTROL_SCENE_MODE_SPORTS) {
                            hasSceneModeSports = true;
                        }
                    }
                }
                info.available_scene_mode_sports = hasSceneModeSports;

                int[] antibandingModes = characteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_ANTIBANDING_MODES);
                boolean hasAntibandingOff = false;
                boolean hasAntibandingAuto = false;
                boolean hasAntibanding50Hz = false;
                boolean hasAntibanding60Hz = false;
                if (antibandingModes != null) {
                    for (int mode : antibandingModes) {
                        if (mode == CaptureRequest.CONTROL_AE_ANTIBANDING_MODE_OFF) {
                            hasAntibandingOff = true;
                        }
                        if (mode == CaptureRequest.CONTROL_AE_ANTIBANDING_MODE_AUTO) {
                            hasAntibandingAuto = true;
                        }
                        if (mode == CaptureRequest.CONTROL_AE_ANTIBANDING_MODE_50HZ) {
                            hasAntibanding50Hz = true;
                        }
                        if (mode == CaptureRequest.CONTROL_AE_ANTIBANDING_MODE_60HZ) {
                            hasAntibanding60Hz = true;
                        }
                    }
                }
                info.available_antibanding_mode = hasAntibandingOff && hasAntibandingAuto && hasAntibanding50Hz && hasAntibanding60Hz;

                LogFilter.i(LOG_TAG, String.format(Locale.US,
                        "AVAILABLE AE_MODE(%s), AF_MODE(%s), SM_SPORTS(%s), ANTIBANDING_MODE(%s)",
                        Boolean.toString(info.available_ae_mode),
                        Boolean.toString(info.available_af_mode),
                        Boolean.toString(info.available_scene_mode_sports),
                        Boolean.toString(info.available_antibanding_mode)));
            } else {
                Range<Long> exposureTimeRange = characteristics.get(CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE);
                Long maxFrameDuration = characteristics.get(CameraCharacteristics.SENSOR_INFO_MAX_FRAME_DURATION);
                Range<Integer> sensitivityRange = characteristics.get(CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE);
                if (sensitivityRange != null) {
                    sensitivityRange = sensitivityRange.intersect(sensitivityRange.getLower(), CameraConstants.MAX_ISO_VALUE);
                }
                Integer maxAnalogSensitivity = characteristics.get(CameraCharacteristics.SENSOR_MAX_ANALOG_SENSITIVITY);
                if (exposureTimeRange != null) {
                    mCameraInfo.setExposureTimeRange(exposureTimeRange.getLower(), exposureTimeRange.getUpper());
                }
                if (maxFrameDuration != null) {
                    mCameraInfo.setMaxFrameDuration(maxFrameDuration);
                }
                if (sensitivityRange != null) {
                    mCameraInfo.setSensitivityRange(sensitivityRange.getLower(), sensitivityRange.getUpper());
                }
                if (maxAnalogSensitivity != null) {
                    mCameraInfo.setMaxAnalogSensitivity(maxAnalogSensitivity);
                }
                Range<Integer> aeCompensationRange = characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
                Rational aeCompensationStep = characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP);
                if (aeCompensationRange != null) {
                    mCameraInfo.setAeCompensationRange(aeCompensationRange.getLower(), aeCompensationRange.getUpper());
                }
                if (aeCompensationStep != null) {
                    mCameraInfo.setAeCompensationStep(aeCompensationStep);
                }
                info.available_ae_mode = true;
                info.available_af_mode = true;
                info.available_scene_mode_sports = true;
                info.available_antibanding_mode = true;
                info.available_image_quality_settings = true;
            }

            mCameraInfo.setTargetFpsRanges(characteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES));
            LogFilter.i(LOG_TAG, "CameraCharacteristics ======= ========= ==========");
            LogFilter.i(LOG_TAG, String.format(Locale.US, "INFO_SUPPORTED_HARDWARE_LEVEL=%d", mCameraInfo.getHardwareLevel()));
            LogFilter.i(LOG_TAG, String.format(Locale.US, "SENSOR_ORIENTATION=%d", mCameraInfo.getOrientation()));

            int[] availableCapabilities = characteristics.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
            boolean hasPrivateReprocessing = false;
            boolean hasYuvReprocessing = false;
            if (availableCapabilities != null) {
                for (int capability : availableCapabilities) {
                    LogFilter.i(LOG_TAG, "REQUEST_AVAILABLE_CAPABILITIES : " + capability);
                    if (capability == 4) {
                        hasPrivateReprocessing = true;
                    }
                    if (capability == 7) {
                        hasYuvReprocessing = true;
                    }
                }
            }
            mCameraInfo.setEnabledZsl(hasPrivateReprocessing && hasYuvReprocessing);

            LogFilter.v(LOG_TAG, "TARGET_FPS_RANGES");
            for (Object rangeObject : mCameraInfo.getTargetFpsRanges()) {
                LogFilter.v(LOG_TAG, ((Range<?>) rangeObject).toString());
            }
            LogFilter.v(LOG_TAG, String.format(Locale.US, "AE Step=%f (%d/%d), Range(%d, %d)",
                    mCameraInfo.getAeCompensationStep(),
                    mCameraInfo.getAeCompensationNumerator(),
                    mCameraInfo.getAeCompensationDenominator(),
                    mCameraInfo.getAeCompensationMin(),
                    mCameraInfo.getAeCompensationMax()));
            LogFilter.i(LOG_TAG, "========= ========= ========= ========= ==========");

            if (focalLengths != null) {
                mCameraInfo.setFocalLength(focalLengths[0]);
            }
            if (physicalSize != null) {
                mCameraInfo.setPhysicalSize(physicalSize.getWidth(), physicalSize.getHeight());
            }
            if (pixelArraySize != null) {
                mCameraInfo.setPixelArraySize(pixelArraySize.getWidth(), pixelArraySize.getHeight());
            }
            if (activeArraySize != null) {
                mCameraInfo.setActiveArraySize(activeArraySize.left, activeArraySize.top, activeArraySize.right, activeArraySize.bottom);
            }
            return true;
        } catch (CameraAccessException | SecurityException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public void resume(Size captureSize, Size previewSize) {
        synchronized (CameraConstants.CameraSynchronizedObject) {
            mCameraInfo.setCaptureSize(captureSize.getWidth(), captureSize.getHeight());
            mCameraInfo.setPreviewSize(previewSize.getWidth(), previewSize.getHeight());
            mBackgroundHandlerThread = new HandlerThread("BackgroundHandlerThread");
            mBackgroundHandlerThread.start();
            mCameraState.setBackgroundHandlerThread(mBackgroundHandlerThread);
            Handler backgroundHandler = mCameraState.backgroundHandler();
            mImageReader = ImageReader.newInstance(mCameraInfo.getCaptureWidth(), mCameraInfo.getCaptureHeight(), ImageFormat.YUV_420_888, 3);
            mImageReader.setOnImageAvailableListener(mPreviewAvailableListener, backgroundHandler);
            int idlingWidth = 0x140;
            int idlingHeight = (int) (idlingWidth * (float) mCameraInfo.getCaptureHeight() / (float) mCameraInfo.getCaptureWidth()) & -2;
            mImageReaderIdling = ImageReader.newInstance(idlingWidth, idlingHeight, ImageFormat.YUV_420_888, 3);
            mImageReaderIdling.setOnImageAvailableListener(mPreviewAvailableListener, backgroundHandler);
            mCameraState.setCameraInfo(mCameraInfo);
            mCameraState.setCaptureCallback(mCaptureCallback);
            mCameraState.setImageReader(mImageReader);
            mCameraState.setImageReaderIdling(mImageReaderIdling);
            mCameraState.setOnPreviewImageAvailableListener(mPreviewAvailableListener);
            mCameraState.setOnTakePictureImageAvailableListener(mTakePictureAvailableListener);
            mIsAvailable = true;
        }
    }

    @Override
    public void setBurstRemaining(int remaining) {
        mCameraState.setBurstRemaining(remaining);
    }

    public void setCamera2Params(Camera2ParamsFragment params) {
        mCameraState.setCamera2Params(params);
    }

    @Override
    public void setDefaultCameraState() {
        mCameraState = new MorphoPanoramaGP2CameraState();
    }

    @Override
    public void setMorphoPanoramaGP2Interface(IMorphoPanoramaGP2Callback callback) {
        mCameraState.setMorphoPanoramaGP2Interface(callback);
    }

    @Override
    public void startState() {
        mCameraState.onStart();
    }

    public boolean startTakePictureNewRequest(int type) {
        CameraStartupInfo info = mCameraState.getCameraStartupInfo();
        CaptureRequest.Builder requestBuilder = info.currentRequestBuilder;
        CaptureRequest.Builder burstRequestBuilder = info.currentBurstRequestBuilder;
        Camera2ParamsFragment params = mCameraState.camera2Params();
        requestBuilder.set(CaptureRequest.CONTROL_AE_LOCK, Boolean.valueOf(false));
        requestBuilder.set(CaptureRequest.CONTROL_AWB_LOCK, Boolean.valueOf(false));
        int sensitivity = params.sensorSensitivity();
        Long exposureTime = params.exposureTime();
        Long frameDuration = params.frameDuration();
        requestBuilder.set(CaptureRequest.SENSOR_SENSITIVITY, Integer.valueOf(sensitivity));
        requestBuilder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, exposureTime);
        requestBuilder.set(CaptureRequest.SENSOR_FRAME_DURATION, frameDuration);
        if (type == CameraConstants.CAPTURE_MODE_BURST || type == CameraConstants.CAPTURE_MODE_REPEATING_BURST) {
            burstRequestBuilder.set(CaptureRequest.CONTROL_AE_LOCK, Boolean.valueOf(false));
            burstRequestBuilder.set(CaptureRequest.CONTROL_AWB_LOCK, Boolean.valueOf(false));
            burstRequestBuilder.set(CaptureRequest.SENSOR_SENSITIVITY, Integer.valueOf(sensitivity));
            burstRequestBuilder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, exposureTime);
            burstRequestBuilder.set(CaptureRequest.SENSOR_FRAME_DURATION, frameDuration);
            CaptureRequest burstRequest = burstRequestBuilder.build();
            info.burstRequestList.clear();
            info.burstRequestList.add(burstRequest);
        }
        try {
            Handler handler = mCameraState.backgroundHandler();
            info.captureRequest = requestBuilder.build();
            CameraCaptureSession session = mCameraInfo.getCaptureSession();
            synchronized (CameraConstants.CameraSynchronizedObject) {
                switch (type) {
                    case CameraConstants.CAPTURE_MODE_STILL:
                    case CameraConstants.CAPTURE_MODE_ZERO_SHUTTER_LAG:
                        session.capture(info.captureRequest, mCaptureCallback, handler);
                        break;
                    case CameraConstants.CAPTURE_MODE_BURST:
                        mCameraState.setBurstRemaining(0);
                        session.capture(info.captureRequest, mCaptureCallback, handler);
                        break;
                    case CameraConstants.CAPTURE_MODE_REPEATING_BURST:
                        session.stopRepeating();
                        session.setRepeatingBurst(info.burstRequestList, mCaptureCallback, handler);
                        break;
                    default:
                        session.setRepeatingRequest(info.captureRequest, mCaptureCallback, handler);
                        break;
                }
            }
            return true;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return false;
        }
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
        if (!mIsAvailable) {
            return false;
        }
        try {
            CameraStartupInfo info = mCameraState.getCameraStartupInfo();
            mCameraInfo.getCaptureSession().capture(info.captureRequest, mCaptureCallback, mCameraState.backgroundHandler());
            return true;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean takePictureBurst() {
        if (!mIsAvailable) {
            return false;
        }
        try {
            mCameraState.setBurstRemaining(CameraConstants.BURST_SHOT_NUM);
            LogFilter.i(LOG_TAG, "captureBurst");
            CameraStartupInfo info = mCameraState.getCameraStartupInfo();
            mCameraInfo.getCaptureSession().captureBurst(info.burstRequestList, mCaptureCallback, mCameraState.backgroundHandler());
            return true;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean takePictureZSL() {
        if (!mIsAvailable) {
            return false;
        }
        try {
            CaptureRequest.Builder builder = mCameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_ZERO_SHUTTER_LAG);
            builder.addTarget(mPreviewSurface);
            builder.addTarget(mImageReader.getSurface());
            builder.set(CaptureRequest.CONTROL_AE_LOCK, Boolean.valueOf(false));
            builder.set(CaptureRequest.CONTROL_AWB_LOCK, Boolean.valueOf(false));
            builder.set(CaptureRequest.CONTROL_MODE, Integer.valueOf(CaptureRequest.CONTROL_MODE_AUTO));
            mCameraInfo.getCaptureSession().capture(builder.build(), mCaptureCallback, mCameraState.backgroundHandler());
            return true;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public void updateCameraState(CameraState state) {
        if (state instanceof MorphoPanoramaGP2CameraState) {
            mCameraState = (MorphoPanoramaGP2CameraState) state;
        } else {
            LogFilter.w(LOG_TAG, "#updateCameraState, argument is invalid.");
            setDefaultCameraState();
        }
    }

    public void updateTvValue() {
        Camera2ParamsFragment params = mCameraState.camera2Params();
        mTvTargetSensorSensitivity = params.sensorSensitivity();
        mTvTargetExposureTime = params.exposureTime().longValue();
    }
}
