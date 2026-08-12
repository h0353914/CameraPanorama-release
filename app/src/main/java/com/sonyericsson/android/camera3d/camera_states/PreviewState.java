package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.os.Build;
import android.os.Handler;
import android.util.Range;

import com.sonyericsson.android.camera3d.Camera2ParamsFragment;
import com.sonyericsson.android.camera3d.CameraConstants;
import com.sonyericsson.android.camera3d.CameraInfo;
import com.sonyericsson.android.camera3d.MorphoPanoramaGP2;
import com.sonyericsson.android.camera3d.utils.LogFilter;

public class PreviewState extends MorphoPanoramaGP2CameraState {
    public interface ICaptureCompletedWrapper {
        void captureCompleted(CaptureRequest request, TotalCaptureResult result);
    }

    private static final ICaptureCompletedWrapper mNullCaptureCompletedWrapper;

    static {
        mNullCaptureCompletedWrapper = new ICaptureCompletedWrapper() {
            @Override
            public void captureCompleted(CaptureRequest request, TotalCaptureResult result) {
            }
        };
    }

    private ICaptureCompletedWrapper mCaptureCompleted;
    private final ICaptureCompletedWrapper mContinuousTv;
    private final ICaptureCompletedWrapper mRestartAuto;

    public PreviewState() {
        super();
        mCaptureCompleted = mNullCaptureCompletedWrapper;
        mRestartAuto = new ICaptureCompletedWrapper() {
            @Override
            public void captureCompleted(CaptureRequest request, TotalCaptureResult result) {
                Integer afState = (Integer) result.get(CaptureResult.CONTROL_AF_STATE);
                boolean restart = afState == null || afState.intValue() == 2;
                if (restart) {
                    mCaptureCompleted = mNullCaptureCompletedWrapper;
                    PreviewState.this.toTakePictureState(getCameraStartupInfo().capture_mode);
                }
            }
        };
        mContinuousTv = new ICaptureCompletedWrapper() {
            private void setNewRequest(double gain) {
                MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
                Integer iso = (Integer) info.totalCaptureResult.get(TotalCaptureResult.SENSOR_SENSITIVITY);
                Long exposureTimeNs = (Long) info.totalCaptureResult.get(TotalCaptureResult.SENSOR_EXPOSURE_TIME);
                if (iso == null || exposureTimeNs == null) {
                    LogFilter.e(LOG_TAG, "SENSOR_SENSITIVITY or SENSOR_EXPOSURE_TIME is null.");
                    return;
                }

                Camera2ParamsFragment params = camera2Params();
                double ev;
                if (params.evSteps() == 0) {
                    ev = (Double) CameraInfo.PREVIEW_GAIN_RANGE.clamp(Double.valueOf(gain));
                } else {
                    ev = (Double) CameraInfo.PREVIEW_GAIN_RANGE.clamp(
                            Double.valueOf(Math.exp(Math.log(2.0) * params.evValue()) * gain));
                }
                ev = ev * iso.intValue();
                ev = ev * exposureTimeNs.longValue();
                ev = MorphoPanoramaGP2CameraState.getSmoothenedEv(ev);

                long shutterSpeedNs = params.shutterSpeedInNanoSeconds();
                int newSensitivity = info.cameraInfo.clampSensitivityRange((int) (ev / shutterSpeedNs));
                long newExposureTime = info.cameraInfo.clampExposureTime((long) (ev / newSensitivity)).longValue();
                newExposureTime = Math.min(newExposureTime, 0xfe502aL);

                if (newSensitivity == params.sensorSensitivity()
                        && Math.abs(params.exposureTime().longValue() - newExposureTime) < 0x7a120L) {
                    return;
                }

                newExposureTime = Math.min(newExposureTime, 0x3938700L);

                params.setSensorSensitivity(newSensitivity);
                params.setExposureTime(newExposureTime);

                try {
                    CaptureRequest.Builder builder = info.cameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW);
                    builder.addTarget(info.previewSurface);
                    if (info.miniPreviewSurface != null) {
                        builder.addTarget(info.miniPreviewSurface);
                    }
                    if (info.available_af_mode) {
                        builder.set(CaptureRequest.CONTROL_AF_MODE, 4);
                    }
                    if (info.available_ae_mode) {
                        builder.set(CaptureRequest.CONTROL_AE_MODE, 0);
                    }
                    builder.set(CaptureRequest.SENSOR_SENSITIVITY, params.sensorSensitivity());
                    builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, params.exposureTime());
                    builder.set(CaptureRequest.SENSOR_FRAME_DURATION, params.frameDuration());
                    builder.set(CaptureRequest.CONTROL_MODE, 1);
                    builder.set(CaptureRequest.CONTROL_AE_LOCK, false);
                    builder.set(CaptureRequest.CONTROL_AWB_LOCK, false);
                    if (info.available_antibanding_mode) {
                        builder.set(CaptureRequest.CONTROL_AE_ANTIBANDING_MODE, info.gp2Callback.getAntiBanding());
                    }
                    if (info.available_image_quality_settings) {
                        setRequestIntParamIfEnable(builder, CaptureRequest.COLOR_CORRECTION_MODE, info.gp2Callback.getColorCorrectionMode());
                        setRequestIntParamIfEnable(builder, CaptureRequest.EDGE_MODE, info.gp2Callback.getEdgeMode());
                        setRequestIntParamIfEnable(builder, CaptureRequest.NOISE_REDUCTION_MODE, info.gp2Callback.getNoiseReductionMode());
                        setRequestIntParamIfEnable(builder, CaptureRequest.SHADING_MODE, info.gp2Callback.getShadingMode());
                        setRequestIntParamIfEnable(builder, CaptureRequest.TONEMAP_MODE, info.gp2Callback.getTonemapMode());
                    }
                    if (info.gp2Callback.isInfinityFocus()) {
                        MorphoPanoramaGP2CameraState.setupFocusModeInfinity(builder);
                    }
                    PreviewState.this.setRepeatingRequest(builder.build());
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                    info.gp2Callback.onErrorCapture();
                }
            }

            @Override
            public void captureCompleted(CaptureRequest request, TotalCaptureResult result) {
                MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
                Image image = info.imageReaderIdling.acquireNextImage();
                while (image != null) {
                    if (info.gp2Callback.isTvLock()) {
                        safeImageClose(image);
                    } else {
                        double gain = MorphoPanoramaGP2.getGain(image);
                        safeImageClose(image);
                        setNewRequest(gain);
                    }
                    image = info.imageReaderIdling.acquireNextImage();
                }
                safeImageClose(info.imageReader.acquireLatestImage());
            }
        };
    }

    private void setRepeatingRequest(CaptureRequest request) throws CameraAccessException {
        synchronized (CameraConstants.CameraSynchronizedObject) {
            MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
            info.cameraInfo.getCaptureSession().setRepeatingRequest(request, info.captureCallback, backgroundHandler());
        }
    }

    private static void setRequestIntParamIfEnable(CaptureRequest.Builder builder, CaptureRequest.Key<Integer> key, int value) {
        if (value >= 0) {
            builder.set(key, Integer.valueOf(value));
        }
    }

    private void setupCaptureCompletedWrapper() {
        if (camera2Params().tv()) {
            mCaptureCompleted = mContinuousTv;
        } else {
            mCaptureCompleted = mNullCaptureCompletedWrapper;
        }
    }

    static void setupPreviewRequest(MorphoPanoramaGP2CameraState state, CaptureRequest.Builder builder, boolean setAfMode,
                                     MorphoPanoramaGP2CameraState.CameraStartupInfo info) {
        Camera2ParamsFragment params = state.camera2Params();
        if (params == null) {
            return;
        }

        if (params.auto()) {
            if (info.available_ae_mode) {
                builder.set(CaptureRequest.CONTROL_AE_MODE, 1);
                builder.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, params.evSteps());
            }
            if (Build.MANUFACTURER.equals("Sony")) {
                if (info.available_scene_mode_sports) {
                    builder.set(CaptureRequest.CONTROL_MODE, 2);
                    builder.set(CaptureRequest.CONTROL_SCENE_MODE, 13);
                }
            } else {
                builder.set(CaptureRequest.CONTROL_MODE, 1);
            }
        } else if (params.tv()) {
            if (info.available_ae_mode) {
                builder.set(CaptureRequest.CONTROL_AE_MODE, 0);
            }
            builder.set(CaptureRequest.SENSOR_SENSITIVITY, params.sensorSensitivity());
            builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, params.exposureTime());
            builder.set(CaptureRequest.SENSOR_FRAME_DURATION, params.frameDuration());
            builder.set(CaptureRequest.CONTROL_MODE, 1);
        } else {
            if (info.available_ae_mode) {
                builder.set(CaptureRequest.CONTROL_AE_MODE, 0);
            }
            builder.set(CaptureRequest.SENSOR_SENSITIVITY, params.sensorSensitivity());
            builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, params.exposureTime());
            builder.set(CaptureRequest.SENSOR_FRAME_DURATION, params.frameDuration());
        }

        if (setAfMode && info.available_af_mode) {
            builder.set(CaptureRequest.CONTROL_AF_MODE, 4);
        }

        if (info.gp2Callback.isInfinityFocus()) {
            setupFocusModeInfinity(builder);
        }
        builder.set(CaptureRequest.CONTROL_AE_LOCK, false);
        builder.set(CaptureRequest.CONTROL_AWB_LOCK, false);
        if (info.available_antibanding_mode) {
            builder.set(CaptureRequest.CONTROL_AE_ANTIBANDING_MODE, info.gp2Callback.getAntiBanding());
        }
        if (info.available_image_quality_settings) {
            setRequestIntParamIfEnable(builder, CaptureRequest.COLOR_CORRECTION_MODE, info.gp2Callback.getColorCorrectionMode());
            setRequestIntParamIfEnable(builder, CaptureRequest.EDGE_MODE, info.gp2Callback.getEdgeMode());
            setRequestIntParamIfEnable(builder, CaptureRequest.NOISE_REDUCTION_MODE, info.gp2Callback.getNoiseReductionMode());
            setRequestIntParamIfEnable(builder, CaptureRequest.SHADING_MODE, info.gp2Callback.getShadingMode());
            setRequestIntParamIfEnable(builder, CaptureRequest.TONEMAP_MODE, info.gp2Callback.getTonemapMode());
        }
    }

    @Override
    public void onCaptureCompleted(CaptureRequest request, TotalCaptureResult result) {
        getCameraStartupInfo().totalCaptureResult = result;
        synchronized (CameraConstants.CameraSynchronizedObject) {
            mCaptureCompleted.captureCompleted(request, result);
        }
    }

    @Override
    public void onCaptureSequenceCompleted(int sequenceId) {
    }

    @Override
    public void onRequestParamChange() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
        try {
            CaptureRequest.Builder builder = info.cameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW);
            builder.addTarget(info.previewSurface);
            if (info.miniPreviewSurface != null) {
                builder.addTarget(info.miniPreviewSurface);
            }
            setupPreviewRequest(this, builder, true, info);
            setRepeatingRequest(builder.build());
            setupCaptureCompletedWrapper();
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void onStart() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
        if (info.gp2Callback.isEngineRunning()) {
            info.backgroundHandler = null;
        } else {
            if (info.backgroundHandlerThread == null) {
                LogFilter.e(LOG_TAG, "Activity has already been destroyed.");
                return;
            }
            info.backgroundHandler = new Handler(info.backgroundHandlerThread.getLooper());
        }

        info.gp2Callback.onPreviewStart();

        try {
            CaptureRequest.Builder builder = info.cameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW);
            builder.addTarget(info.previewSurface);
            if (info.miniPreviewSurface != null) {
                builder.addTarget(info.miniPreviewSurface);
            }
            setupPreviewRequest(this, builder, true, info);
            setRepeatingRequest(builder.build());
            setupCaptureCompletedWrapper();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            info.gp2Callback.onErrorCamera();
            return;
        } catch (CameraAccessException | NullPointerException e) {
            e.printStackTrace();
            info.gp2Callback.onErrorCapture();
            return;
        }

        info.gp2Callback.setNullDirectionFunction();
    }

    @Override
    public void onStop() {
        synchronized (CameraConstants.CameraSynchronizedObject) {
            mCaptureCompleted = mNullCaptureCompletedWrapper;
            getCameraStartupInfo().backgroundHandler = null;
        }
    }

    @Override
    public void onTakePictureStart() {
        toTakePictureState(getCameraStartupInfo().capture_mode);
    }

    @Override
    public void onTouch() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
        int hardwareLevel = info.cameraInfo.getHardwareLevel();
        if (hardwareLevel == 2 || hardwareLevel == 0) {
            return;
        }
        AutoFocusState state = new AutoFocusState();
        info.gp2Callback.updateCameraState(state);
        state.onStart();
    }

    public void toTakePictureState(int mode) {
        onStop();
        MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
        info.gp2Callback.onTakePicturePreprocess();
        Camera2ParamsFragment params = camera2Params();

        try {
            CaptureRequest.Builder previewBuilder;
            switch (mode) {
                case 1:
                case 3:
                case 4:
                    previewBuilder = info.cameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_STILL_CAPTURE);
                    break;
                case 2:
                    previewBuilder = info.cameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_ZERO_SHUTTER_LAG);
                    break;
                default:
                    previewBuilder = info.cameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW);
                    break;
            }
            previewBuilder.addTarget(info.previewSurface);
            previewBuilder.addTarget(info.imageReader.getSurface());
            if (info.miniPreviewSurface != null) {
                previewBuilder.addTarget(info.miniPreviewSurface);
            }

            if (info.available_image_quality_settings) {
                setRequestIntParamIfEnable(previewBuilder, CaptureRequest.COLOR_CORRECTION_MODE, info.gp2Callback.getColorCorrectionMode());
                setRequestIntParamIfEnable(previewBuilder, CaptureRequest.EDGE_MODE, info.gp2Callback.getEdgeMode());
                setRequestIntParamIfEnable(previewBuilder, CaptureRequest.NOISE_REDUCTION_MODE, info.gp2Callback.getNoiseReductionMode());
                setRequestIntParamIfEnable(previewBuilder, CaptureRequest.SHADING_MODE, info.gp2Callback.getShadingMode());
                setRequestIntParamIfEnable(previewBuilder, CaptureRequest.TONEMAP_MODE, info.gp2Callback.getTonemapMode());
            }

            if (mode == 2) {
                previewBuilder.set(CaptureRequest.CONTROL_AE_LOCK, false);
                previewBuilder.set(CaptureRequest.CONTROL_AWB_LOCK, false);
                previewBuilder.set(CaptureRequest.CONTROL_MODE, 1);
            } else {
                previewBuilder.set(CaptureRequest.CONTROL_AE_LOCK, info.gp2Callback.isAutoAELock());
                previewBuilder.set(CaptureRequest.CONTROL_AWB_LOCK, info.gp2Callback.isAutoWBLock());
                if (info.available_antibanding_mode) {
                    previewBuilder.set(CaptureRequest.CONTROL_AE_ANTIBANDING_MODE, info.gp2Callback.getAntiBanding());
                }
                if (info.available_af_mode) {
                    previewBuilder.set(CaptureRequest.CONTROL_AF_MODE, 1);
                }
                if (params.auto()) {
                    if (info.available_ae_mode) {
                        previewBuilder.set(CaptureRequest.CONTROL_AE_MODE, 1);
                    }
                } else {
                    if (info.available_ae_mode) {
                        previewBuilder.set(CaptureRequest.CONTROL_AE_MODE, 0);
                    }
                    previewBuilder.set(CaptureRequest.SENSOR_SENSITIVITY, params.sensorSensitivity());
                    previewBuilder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, params.exposureTime());
                    previewBuilder.set(CaptureRequest.SENSOR_FRAME_DURATION, params.frameDuration());
                }
                if (info.gp2Callback.isInfinityFocus()) {
                    setupFocusModeInfinity(previewBuilder);
                }
            }

            if (mode == 3 || mode == 4) {
                CaptureRequest.Builder burstBuilder = info.cameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_STILL_CAPTURE);
                burstBuilder.addTarget(info.previewSurface);
                burstBuilder.addTarget(info.imageReader.getSurface());
                if (info.miniPreviewSurface != null) {
                    burstBuilder.addTarget(info.miniPreviewSurface);
                }
                burstBuilder.set(CaptureRequest.CONTROL_AE_LOCK, info.gp2Callback.isAutoAELock());
                burstBuilder.set(CaptureRequest.CONTROL_AWB_LOCK, info.gp2Callback.isAutoWBLock());
                if (info.available_antibanding_mode) {
                    burstBuilder.set(CaptureRequest.CONTROL_AE_ANTIBANDING_MODE, info.gp2Callback.getAntiBanding());
                }
                if (info.available_image_quality_settings) {
                    setRequestIntParamIfEnable(burstBuilder, CaptureRequest.COLOR_CORRECTION_MODE, info.gp2Callback.getColorCorrectionMode());
                    setRequestIntParamIfEnable(burstBuilder, CaptureRequest.EDGE_MODE, info.gp2Callback.getEdgeMode());
                    setRequestIntParamIfEnable(burstBuilder, CaptureRequest.NOISE_REDUCTION_MODE, info.gp2Callback.getNoiseReductionMode());
                    setRequestIntParamIfEnable(burstBuilder, CaptureRequest.SHADING_MODE, info.gp2Callback.getShadingMode());
                    setRequestIntParamIfEnable(burstBuilder, CaptureRequest.TONEMAP_MODE, info.gp2Callback.getTonemapMode());
                }
                if (CameraConstants.AutoFocusType != 2 && info.available_af_mode) {
                    burstBuilder.set(CaptureRequest.CONTROL_AF_MODE, 1);
                }

                if (params.auto()) {
                    if (info.available_ae_mode) {
                        burstBuilder.set(CaptureRequest.CONTROL_AE_MODE, 1);
                    }
                    float fps = params.fps();
                    int lower = (int) fps;
                    for (Object rangeObj : info.cameraInfo.getTargetFpsRanges()) {
                        Range<Integer> range = (Range<Integer>) rangeObj;
                        if ((float) range.getUpper().intValue() == fps && range.getLower().intValue() < lower) {
                            lower = range.getLower().intValue();
                        }
                    }
                    if (info.available_ae_mode) {
                        burstBuilder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, Range.create(lower, (int) fps));
                        burstBuilder.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, params.evSteps());
                    }
                    if (Build.MANUFACTURER.equals("Sony") && info.available_scene_mode_sports) {
                        burstBuilder.set(CaptureRequest.CONTROL_MODE, 2);
                        burstBuilder.set(CaptureRequest.CONTROL_SCENE_MODE, 13);
                    }
                } else {
                    if (info.available_ae_mode) {
                        burstBuilder.set(CaptureRequest.CONTROL_AE_MODE, 0);
                    }
                    burstBuilder.set(CaptureRequest.SENSOR_SENSITIVITY, params.sensorSensitivity());
                    burstBuilder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, params.exposureTime());
                    burstBuilder.set(CaptureRequest.SENSOR_FRAME_DURATION, params.frameDuration());
                }

                if (info.gp2Callback.isInfinityFocus()) {
                    setupFocusModeInfinity(burstBuilder);
                }

                info.currentBurstRequestBuilder = burstBuilder;
                CaptureRequest burstRequest = burstBuilder.build();
                info.burstRequestList.clear();
                int repeatCount = (mode == 3) ? 600 : 1;
                for (int i = 0; i < repeatCount; i++) {
                    info.burstRequestList.add(burstRequest);
                }
            }

            info.gp2Callback.updateTvValue();
            info.currentRequestBuilder = previewBuilder;
            info.captureRequest = previewBuilder.build();
            info.cameraInfo.getCaptureSession().stopRepeating();

            switch (mode) {
                case 1:
                    LogFilter.i(LOG_TAG, "onTakePictureStart : STILL");
                    info.cameraInfo.getCaptureSession().capture(info.captureRequest, info.captureCallback, backgroundHandler());
                    break;
                case 2:
                    LogFilter.i(LOG_TAG, "onTakePictureStart : ZERO_SHUTTER_LAG");
                    info.cameraInfo.getCaptureSession().capture(info.captureRequest, info.captureCallback, backgroundHandler());
                    break;
                case 3:
                    LogFilter.i(LOG_TAG, "onTakePictureStart : BURST");
                    setBurstRemaining(0);
                    info.cameraInfo.getCaptureSession().capture(info.captureRequest, info.captureCallback, backgroundHandler());
                    break;
                case 4:
                    LogFilter.i(LOG_TAG, "onTakePictureStart : REPEATING_BURST");
                    info.cameraInfo.getCaptureSession().setRepeatingBurst(info.burstRequestList, info.captureCallback, backgroundHandler());
                    break;
                default:
                    LogFilter.i(LOG_TAG, "onTakePictureStart : PREVIEW");
                    info.cameraInfo.getCaptureSession().setRepeatingRequest(info.captureRequest, info.captureCallback, backgroundHandler());
                    break;
            }
        } catch (CameraAccessException e) {
            e.printStackTrace();
            info.gp2Callback.onErrorCapture();
            return;
        }

        TakePictureState state = new TakePictureState();
        info.gp2Callback.updateCameraState(state);
        state.onStart();
    }
}
