package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
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
import com.sonyericsson.android.camera3d.device.SomcCaptureRequestKeys;
import com.sonyericsson.android.camera3d.utils.LogFilter;

public class PreviewState extends MorphoPanoramaGP2CameraState {
    private static final ICaptureCompletedWrapper mNullCaptureCompletedWrapper = new ICaptureCompletedWrapper() { // from class: com.sonyericsson.android.camera3d.camera_states.PreviewState.1
        @Override // com.sonyericsson.android.camera3d.camera_states.PreviewState.ICaptureCompletedWrapper
        public void captureCompleted(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        }
    };
    private ICaptureCompletedWrapper mCaptureCompleted = mNullCaptureCompletedWrapper;
    private final ICaptureCompletedWrapper mRestartAuto = new ICaptureCompletedWrapper() { // from class: com.sonyericsson.android.camera3d.camera_states.PreviewState.2
        @Override // com.sonyericsson.android.camera3d.camera_states.PreviewState.ICaptureCompletedWrapper
        public void captureCompleted(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
            if (num == null || num.intValue() == 2) {
                PreviewState.this.mCaptureCompleted = PreviewState.mNullCaptureCompletedWrapper;
                PreviewState previewState = PreviewState.this;
                previewState.toTakePictureState(previewState.getCameraStartupInfo().capture_mode);
            }
        }
    };
    private final ICaptureCompletedWrapper mContinuousTv = new ICaptureCompletedWrapper() { // from class: com.sonyericsson.android.camera3d.camera_states.PreviewState.3
        private void setNewRequest(double d) {
            double dDoubleValue;
            MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = PreviewState.this.getCameraStartupInfo();
            Integer num = (Integer) cameraStartupInfo.totalCaptureResult.get(TotalCaptureResult.SENSOR_SENSITIVITY);
            Long l = (Long) cameraStartupInfo.totalCaptureResult.get(TotalCaptureResult.SENSOR_EXPOSURE_TIME);
            if (num == null || l == null) {
                LogFilter.e("MorphoCamera2State", "SENSOR_SENSITIVITY or SENSOR_EXPOSURE_TIME is null.");
                return;
            }
            Camera2ParamsFragment camera2ParamsFragmentCamera2Params = PreviewState.this.camera2Params();
            if (camera2ParamsFragmentCamera2Params.evSteps() == 0) {
                dDoubleValue = ((Double) CameraInfo.PREVIEW_GAIN_RANGE.clamp(Double.valueOf(d))).doubleValue();
            } else {
                dDoubleValue = ((Double) CameraInfo.PREVIEW_GAIN_RANGE.clamp(Double.valueOf(Math.exp(Math.log(2.0d) * camera2ParamsFragmentCamera2Params.evValue()) * d))).doubleValue();
            }
            double smoothenedEv = MorphoPanoramaGP2CameraState.getSmoothenedEv(dDoubleValue * ((double) num.intValue()) * l.longValue());
            int iClampSensitivityRange = cameraStartupInfo.cameraInfo.clampSensitivityRange((int) (smoothenedEv / camera2ParamsFragmentCamera2Params.shutterSpeedInNanoSeconds()));
            long jMin = Math.min(cameraStartupInfo.cameraInfo.clampExposureTime(Long.valueOf((long) (smoothenedEv / ((double) iClampSensitivityRange)))).longValue(), CameraConstants.TV_EXPOSURE_TIME_MAX);
            if (camera2ParamsFragmentCamera2Params.sensorSensitivity() != iClampSensitivityRange || Math.abs(camera2ParamsFragmentCamera2Params.exposureTime().longValue() - jMin) >= CameraConstants.TV_EXPOSURE_TIME_DIFF) {
                long jMin2 = Math.min(jMin, 60000000L);
                camera2ParamsFragmentCamera2Params.setSensorSensitivity(iClampSensitivityRange);
                camera2ParamsFragmentCamera2Params.setExposureTime(jMin2);
                try {
                    CaptureRequest.Builder builderCreateCaptureRequest = cameraStartupInfo.cameraInfo.getOpenCameraDevice().createCaptureRequest(1);
                    builderCreateCaptureRequest.addTarget(cameraStartupInfo.previewSurface);
                    if (cameraStartupInfo.miniPreviewSurface != null) {
                        builderCreateCaptureRequest.addTarget(cameraStartupInfo.miniPreviewSurface);
                    }
                    if (cameraStartupInfo.available_af_mode) {
                        builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AF_MODE, 4);
                    }
                    if (cameraStartupInfo.available_ae_mode) {
                        builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_MODE, 0);
                    }
                    builderCreateCaptureRequest.set(CaptureRequest.SENSOR_SENSITIVITY, Integer.valueOf(camera2ParamsFragmentCamera2Params.sensorSensitivity()));
                    builderCreateCaptureRequest.set(CaptureRequest.SENSOR_EXPOSURE_TIME, camera2ParamsFragmentCamera2Params.exposureTime());
                    builderCreateCaptureRequest.set(CaptureRequest.SENSOR_FRAME_DURATION, camera2ParamsFragmentCamera2Params.frameDuration());
                    builderCreateCaptureRequest.set(CaptureRequest.CONTROL_MODE, 1);
                    builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_LOCK, false);
                    builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AWB_LOCK, false);
                    if (cameraStartupInfo.available_antibanding_mode) {
                        builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_ANTIBANDING_MODE, Integer.valueOf(cameraStartupInfo.gp2Callback.getAntiBanding()));
                    }
                    if (cameraStartupInfo.available_image_quality_settings) {
                        PreviewState.setRequestIntParamIfEnable(builderCreateCaptureRequest, CaptureRequest.COLOR_CORRECTION_MODE, cameraStartupInfo.gp2Callback.getColorCorrectionMode());
                        PreviewState.setRequestIntParamIfEnable(builderCreateCaptureRequest, CaptureRequest.EDGE_MODE, cameraStartupInfo.gp2Callback.getEdgeMode());
                        PreviewState.setRequestIntParamIfEnable(builderCreateCaptureRequest, CaptureRequest.NOISE_REDUCTION_MODE, cameraStartupInfo.gp2Callback.getNoiseReductionMode());
                        PreviewState.setRequestIntParamIfEnable(builderCreateCaptureRequest, CaptureRequest.SHADING_MODE, cameraStartupInfo.gp2Callback.getShadingMode());
                        PreviewState.setRequestIntParamIfEnable(builderCreateCaptureRequest, CaptureRequest.TONEMAP_MODE, cameraStartupInfo.gp2Callback.getTonemapMode());
                    }
                    if (cameraStartupInfo.gp2Callback.isInfinityFocus()) {
                        MorphoPanoramaGP2CameraState.setupFocusModeInfinity(builderCreateCaptureRequest);
                    }
                    PreviewState.this.setRepeatingRequest(builderCreateCaptureRequest.build());
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                    cameraStartupInfo.gp2Callback.onErrorCapture();
                }
            }
        }

        @Override // com.sonyericsson.android.camera3d.camera_states.PreviewState.ICaptureCompletedWrapper
        public void captureCompleted(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = PreviewState.this.getCameraStartupInfo();
            for (Image imageAcquireNextImage = cameraStartupInfo.imageReaderIdling.acquireNextImage(); imageAcquireNextImage != null; imageAcquireNextImage = cameraStartupInfo.imageReaderIdling.acquireNextImage()) {
                if (cameraStartupInfo.gp2Callback.isTvLock()) {
                    MorphoPanoramaGP2CameraState.safeImageClose(imageAcquireNextImage);
                } else {
                    double gain = MorphoPanoramaGP2.getGain(imageAcquireNextImage);
                    MorphoPanoramaGP2CameraState.safeImageClose(imageAcquireNextImage);
                    setNewRequest(gain);
                }
            }
            MorphoPanoramaGP2CameraState.safeImageClose(cameraStartupInfo.imageReader.acquireLatestImage());
        }
    };

    public interface ICaptureCompletedWrapper {
        void captureCompleted(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult);
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onCaptureSequenceCompleted(int i) {
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onCaptureCompleted(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        getCameraStartupInfo().totalCaptureResult = totalCaptureResult;
        synchronized (CameraConstants.CameraSynchronizedObject) {
            this.mCaptureCompleted.captureCompleted(captureRequest, totalCaptureResult);
        }
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onStart() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = getCameraStartupInfo();
        if (cameraStartupInfo.gp2Callback.isEngineRunning()) {
            cameraStartupInfo.backgroundHandler = null;
        } else {
            if (cameraStartupInfo.backgroundHandlerThread == null) {
                LogFilter.e("MorphoCamera2State", "Activity has already been destroyed.");
                return;
            }
            cameraStartupInfo.backgroundHandler = new Handler(cameraStartupInfo.backgroundHandlerThread.getLooper());
        }
        cameraStartupInfo.gp2Callback.onPreviewStart();
        try {
            CaptureRequest.Builder builderCreateCaptureRequest = cameraStartupInfo.cameraInfo.getOpenCameraDevice().createCaptureRequest(1);
            builderCreateCaptureRequest.addTarget(cameraStartupInfo.previewSurface);
            if (cameraStartupInfo.miniPreviewSurface != null) {
                builderCreateCaptureRequest.addTarget(cameraStartupInfo.miniPreviewSurface);
            }
            setupPreviewRequest(this, builderCreateCaptureRequest, true, cameraStartupInfo);
            setRepeatingRequest(builderCreateCaptureRequest.build());
            setupCaptureCompletedWrapper();
            cameraStartupInfo.gp2Callback.setNullDirectionFunction();
        } catch (CameraAccessException | NullPointerException e) {
            e.printStackTrace();
            cameraStartupInfo.gp2Callback.onErrorCapture();
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            cameraStartupInfo.gp2Callback.onErrorCamera();
        }
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onStop() {
        synchronized (CameraConstants.CameraSynchronizedObject) {
            this.mCaptureCompleted = mNullCaptureCompletedWrapper;
            getCameraStartupInfo().backgroundHandler = null;
        }
    }

    private void setupCaptureCompletedWrapper() {
        if (camera2Params().tv()) {
            this.mCaptureCompleted = this.mContinuousTv;
        } else {
            this.mCaptureCompleted = mNullCaptureCompletedWrapper;
        }
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onTouch() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = getCameraStartupInfo();
        if (cameraStartupInfo.cameraInfo.getHardwareLevel() == 2 || cameraStartupInfo.cameraInfo.getHardwareLevel() == 0) {
            return;
        }
        AutoFocusState autoFocusState = new AutoFocusState();
        cameraStartupInfo.gp2Callback.updateCameraState(autoFocusState);
        autoFocusState.onStart();
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onTakePictureStart() {
        toTakePictureState(getCameraStartupInfo().capture_mode);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0035 A[Catch: CameraAccessException -> 0x0374, TryCatch #1 {CameraAccessException -> 0x0374, blocks: (B:7:0x001e, B:10:0x003f, B:12:0x0051, B:13:0x0056, B:15:0x005a, B:18:0x0094, B:93:0x02df, B:99:0x02ff, B:100:0x0310, B:101:0x0321, B:102:0x0337, B:103:0x034a, B:107:0x036b, B:19:0x00b1, B:21:0x00d3, B:22:0x00e2, B:24:0x00e6, B:25:0x00ef, B:27:0x00f5, B:29:0x00f9, B:34:0x012f, B:36:0x0137, B:30:0x0103, B:32:0x0107, B:33:0x0110, B:8:0x0029, B:9:0x0035, B:39:0x013e, B:41:0x015a, B:42:0x015f, B:44:0x0181, B:45:0x0190, B:47:0x0194, B:48:0x01cb, B:50:0x01cf, B:52:0x01d3, B:53:0x01dc, B:55:0x01e2, B:57:0x01e6, B:58:0x01ef, B:59:0x01ff, B:61:0x0205, B:63:0x021a, B:65:0x0226, B:66:0x0231, B:68:0x0235, B:69:0x0253, B:71:0x025d, B:73:0x0261, B:74:0x0275, B:76:0x0279, B:77:0x0282, B:82:0x02b8, B:84:0x02c0, B:85:0x02c3, B:91:0x02d7, B:78:0x028c, B:80:0x0290, B:81:0x0299), top: B:114:0x0016, inners: #0 }] */
    public void toTakePictureState(int i) {
        CaptureRequest.Builder builderCreateCaptureRequest;
        onStop();
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = getCameraStartupInfo();
        cameraStartupInfo.gp2Callback.onTakePicturePreprocess();
        Camera2ParamsFragment camera2ParamsFragmentCamera2Params = camera2Params();
        try {
            if (i == 1) {
                builderCreateCaptureRequest = cameraStartupInfo.cameraInfo.getOpenCameraDevice().createCaptureRequest(2);
            } else if (i == 2) {
                builderCreateCaptureRequest = cameraStartupInfo.cameraInfo.getOpenCameraDevice().createCaptureRequest(5);
            } else if (i != 3 && i != 4) {
                builderCreateCaptureRequest = cameraStartupInfo.cameraInfo.getOpenCameraDevice().createCaptureRequest(1);
            } else {
                builderCreateCaptureRequest = cameraStartupInfo.cameraInfo.getOpenCameraDevice().createCaptureRequest(2);
            }
            builderCreateCaptureRequest.addTarget(cameraStartupInfo.previewSurface);
            builderCreateCaptureRequest.addTarget(cameraStartupInfo.imageReader.getSurface());
            if (cameraStartupInfo.miniPreviewSurface != null) {
                builderCreateCaptureRequest.addTarget(cameraStartupInfo.miniPreviewSurface);
            }
            if (cameraStartupInfo.available_image_quality_settings) {
                setRequestIntParamIfEnable(builderCreateCaptureRequest, CaptureRequest.COLOR_CORRECTION_MODE, cameraStartupInfo.gp2Callback.getColorCorrectionMode());
                setRequestIntParamIfEnable(builderCreateCaptureRequest, CaptureRequest.EDGE_MODE, cameraStartupInfo.gp2Callback.getEdgeMode());
                setRequestIntParamIfEnable(builderCreateCaptureRequest, CaptureRequest.NOISE_REDUCTION_MODE, cameraStartupInfo.gp2Callback.getNoiseReductionMode());
                setRequestIntParamIfEnable(builderCreateCaptureRequest, CaptureRequest.SHADING_MODE, cameraStartupInfo.gp2Callback.getShadingMode());
                setRequestIntParamIfEnable(builderCreateCaptureRequest, CaptureRequest.TONEMAP_MODE, cameraStartupInfo.gp2Callback.getTonemapMode());
            }
            if (i == 2) {
                builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_LOCK, false);
                builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AWB_LOCK, false);
                builderCreateCaptureRequest.set(CaptureRequest.CONTROL_MODE, 1);
            } else {
                builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_LOCK, Boolean.valueOf(cameraStartupInfo.gp2Callback.isAutoAELock()));
                builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AWB_LOCK, Boolean.valueOf(cameraStartupInfo.gp2Callback.isAutoWBLock()));
                if (cameraStartupInfo.available_antibanding_mode) {
                    builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_ANTIBANDING_MODE, Integer.valueOf(cameraStartupInfo.gp2Callback.getAntiBanding()));
                }
                if (cameraStartupInfo.available_af_mode) {
                    builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AF_MODE, 1);
                }
                if (camera2ParamsFragmentCamera2Params.auto()) {
                    if (cameraStartupInfo.available_ae_mode) {
                        builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_MODE, 1);
                    }
                } else {
                    if (cameraStartupInfo.available_ae_mode) {
                        builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_MODE, 0);
                    }
                    builderCreateCaptureRequest.set(CaptureRequest.SENSOR_SENSITIVITY, Integer.valueOf(camera2ParamsFragmentCamera2Params.sensorSensitivity()));
                    builderCreateCaptureRequest.set(CaptureRequest.SENSOR_EXPOSURE_TIME, camera2ParamsFragmentCamera2Params.exposureTime());
                    builderCreateCaptureRequest.set(CaptureRequest.SENSOR_FRAME_DURATION, camera2ParamsFragmentCamera2Params.frameDuration());
                }
                if (cameraStartupInfo.gp2Callback.isInfinityFocus()) {
                    setupFocusModeInfinity(builderCreateCaptureRequest);
                }
            }
            if (i == 3 || i == 4) {
                try {
                    CaptureRequest.Builder builderCreateCaptureRequest2 = cameraStartupInfo.cameraInfo.getOpenCameraDevice().createCaptureRequest(2);
                    builderCreateCaptureRequest2.addTarget(cameraStartupInfo.previewSurface);
                    builderCreateCaptureRequest2.addTarget(cameraStartupInfo.imageReader.getSurface());
                    if (cameraStartupInfo.miniPreviewSurface != null) {
                        builderCreateCaptureRequest2.addTarget(cameraStartupInfo.miniPreviewSurface);
                    }
                    builderCreateCaptureRequest2.set(CaptureRequest.CONTROL_AE_LOCK, Boolean.valueOf(cameraStartupInfo.gp2Callback.isAutoAELock()));
                    builderCreateCaptureRequest2.set(CaptureRequest.CONTROL_AWB_LOCK, Boolean.valueOf(cameraStartupInfo.gp2Callback.isAutoWBLock()));
                    if (cameraStartupInfo.available_antibanding_mode) {
                        builderCreateCaptureRequest2.set(CaptureRequest.CONTROL_AE_ANTIBANDING_MODE, Integer.valueOf(cameraStartupInfo.gp2Callback.getAntiBanding()));
                    }
                    if (cameraStartupInfo.available_image_quality_settings) {
                        setRequestIntParamIfEnable(builderCreateCaptureRequest2, CaptureRequest.COLOR_CORRECTION_MODE, cameraStartupInfo.gp2Callback.getColorCorrectionMode());
                        setRequestIntParamIfEnable(builderCreateCaptureRequest2, CaptureRequest.EDGE_MODE, cameraStartupInfo.gp2Callback.getEdgeMode());
                        setRequestIntParamIfEnable(builderCreateCaptureRequest2, CaptureRequest.NOISE_REDUCTION_MODE, cameraStartupInfo.gp2Callback.getNoiseReductionMode());
                        setRequestIntParamIfEnable(builderCreateCaptureRequest2, CaptureRequest.SHADING_MODE, cameraStartupInfo.gp2Callback.getShadingMode());
                        setRequestIntParamIfEnable(builderCreateCaptureRequest2, CaptureRequest.TONEMAP_MODE, cameraStartupInfo.gp2Callback.getTonemapMode());
                    }
                    if (CameraConstants.AutoFocusType != 2 && cameraStartupInfo.available_af_mode) {
                        builderCreateCaptureRequest2.set(CaptureRequest.CONTROL_AF_MODE, 1);
                    }
                    if (camera2ParamsFragmentCamera2Params.auto()) {
                        if (cameraStartupInfo.available_ae_mode) {
                            builderCreateCaptureRequest2.set(CaptureRequest.CONTROL_AE_MODE, 1);
                        }
                        float fFps = camera2ParamsFragmentCamera2Params.fps();
                        int i2 = (int) fFps;
                        int iIntValue = i2;
                        for (Range<Integer> range : cameraStartupInfo.cameraInfo.getTargetFpsRanges()) {
                            if (((Integer) range.getUpper()).intValue() == fFps && ((Integer) range.getLower()).intValue() < iIntValue) {
                                iIntValue = ((Integer) range.getLower()).intValue();
                            }
                        }
                        if (cameraStartupInfo.available_ae_mode) {
                            builderCreateCaptureRequest2.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, Range.create(Integer.valueOf(iIntValue), Integer.valueOf(i2)));
                            builderCreateCaptureRequest2.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf(camera2ParamsFragmentCamera2Params.evSteps()));
                        }
                        if (Build.MANUFACTURER.equals("Sony")) {
                            if (cameraStartupInfo.available_scene_mode_sports) {
                                builderCreateCaptureRequest2.set(CaptureRequest.CONTROL_MODE, 2);
                                builderCreateCaptureRequest2.set(CaptureRequest.CONTROL_SCENE_MODE, 13);
                            }
                            if (cameraStartupInfo.available_fallback_mode) {
                                builderCreateCaptureRequest2.set(SomcCaptureRequestKeys.SONYMOBILE_LOGICAL_MULTI_CAMERA_FALLBACK_MODE, 0);
                            }
                            builderCreateCaptureRequest2.set(CaptureRequest.CONTROL_CAPTURE_INTENT, 1);
                        }
                    } else {
                        if (cameraStartupInfo.available_ae_mode) {
                            builderCreateCaptureRequest2.set(CaptureRequest.CONTROL_AE_MODE, 0);
                        }
                        builderCreateCaptureRequest2.set(CaptureRequest.SENSOR_SENSITIVITY, Integer.valueOf(camera2ParamsFragmentCamera2Params.sensorSensitivity()));
                        builderCreateCaptureRequest2.set(CaptureRequest.SENSOR_EXPOSURE_TIME, camera2ParamsFragmentCamera2Params.exposureTime());
                        builderCreateCaptureRequest2.set(CaptureRequest.SENSOR_FRAME_DURATION, camera2ParamsFragmentCamera2Params.frameDuration());
                    }
                    if (cameraStartupInfo.gp2Callback.isInfinityFocus()) {
                        setupFocusModeInfinity(builderCreateCaptureRequest2);
                    }
                    cameraStartupInfo.currentBurstRequestBuilder = builderCreateCaptureRequest2;
                    CaptureRequest captureRequestBuild = builderCreateCaptureRequest2.build();
                    cameraStartupInfo.burstRequestList.clear();
                    int i3 = i == 3 ? CameraConstants.BURST_SHOT_NUM : 1;
                    for (int i4 = 0; i4 < i3; i4++) {
                        cameraStartupInfo.burstRequestList.add(captureRequestBuild);
                    }
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                    cameraStartupInfo.gp2Callback.onErrorCapture();
                    return;
                }
            }
            cameraStartupInfo.gp2Callback.updateTvValue();
            cameraStartupInfo.currentRequestBuilder = builderCreateCaptureRequest;
            cameraStartupInfo.captureRequest = builderCreateCaptureRequest.build();
            CameraCaptureSession captureSession = cameraStartupInfo.cameraInfo.getCaptureSession();
            captureSession.stopRepeating();
            if (i == 1) {
                LogFilter.i("MorphoCamera2State", "onTakePictureStart : STILL");
                captureSession.capture(cameraStartupInfo.captureRequest, cameraStartupInfo.captureCallback, backgroundHandler());
            } else if (i == 2) {
                LogFilter.i("MorphoCamera2State", "onTakePictureStart : ZERO_SHUTTER_LAG");
                captureSession.capture(cameraStartupInfo.captureRequest, cameraStartupInfo.captureCallback, backgroundHandler());
            } else if (i == 3) {
                LogFilter.i("MorphoCamera2State", "onTakePictureStart : BURST");
                setBurstRemaining(0);
                captureSession.capture(cameraStartupInfo.captureRequest, cameraStartupInfo.captureCallback, backgroundHandler());
            } else if (i != 4) {
                LogFilter.i("MorphoCamera2State", "onTakePictureStart : PREVIEW");
                captureSession.setRepeatingRequest(cameraStartupInfo.captureRequest, cameraStartupInfo.captureCallback, backgroundHandler());
            } else {
                LogFilter.i("MorphoCamera2State", "onTakePictureStart : REPEATING_BURST");
                captureSession.setRepeatingBurst(cameraStartupInfo.burstRequestList, cameraStartupInfo.captureCallback, backgroundHandler());
            }
            TakePictureState takePictureState = new TakePictureState();
            cameraStartupInfo.gp2Callback.updateCameraState(takePictureState);
            takePictureState.onStart();
        } catch (CameraAccessException e2) {
            e2.printStackTrace();
            cameraStartupInfo.gp2Callback.onErrorCapture();
        }
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onRequestParamChange() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = getCameraStartupInfo();
        try {
            CaptureRequest.Builder builderCreateCaptureRequest = cameraStartupInfo.cameraInfo.getOpenCameraDevice().createCaptureRequest(1);
            builderCreateCaptureRequest.addTarget(cameraStartupInfo.previewSurface);
            if (cameraStartupInfo.miniPreviewSurface != null) {
                builderCreateCaptureRequest.addTarget(cameraStartupInfo.miniPreviewSurface);
            }
            setupPreviewRequest(this, builderCreateCaptureRequest, true, cameraStartupInfo);
            setRepeatingRequest(builderCreateCaptureRequest.build());
            setupCaptureCompletedWrapper();
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
    }

    public void setRepeatingRequest(CaptureRequest captureRequest) throws CameraAccessException {
        synchronized (CameraConstants.CameraSynchronizedObject) {
            MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = getCameraStartupInfo();
            cameraStartupInfo.cameraInfo.getCaptureSession().setRepeatingRequest(captureRequest, cameraStartupInfo.captureCallback, backgroundHandler());
        }
    }

    static void setupPreviewRequest(MorphoPanoramaGP2CameraState morphoPanoramaGP2CameraState, CaptureRequest.Builder builder, boolean z, MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo) {
        Camera2ParamsFragment camera2ParamsFragmentCamera2Params = morphoPanoramaGP2CameraState.camera2Params();
        if (camera2ParamsFragmentCamera2Params == null) {
            return;
        }
        if (camera2ParamsFragmentCamera2Params.auto()) {
            if (cameraStartupInfo.available_ae_mode) {
                builder.set(CaptureRequest.CONTROL_AE_MODE, 1);
                builder.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf(camera2ParamsFragmentCamera2Params.evSteps()));
            }
            if (Build.MANUFACTURER.equals("Sony")) {
                if (cameraStartupInfo.available_scene_mode_sports) {
                    builder.set(CaptureRequest.CONTROL_MODE, 2);
                    builder.set(CaptureRequest.CONTROL_SCENE_MODE, 13);
                }
                if (cameraStartupInfo.available_fallback_mode) {
                    builder.set(SomcCaptureRequestKeys.SONYMOBILE_LOGICAL_MULTI_CAMERA_FALLBACK_MODE, 0);
                }
            } else {
                builder.set(CaptureRequest.CONTROL_MODE, 1);
            }
        } else if (camera2ParamsFragmentCamera2Params.tv()) {
            if (cameraStartupInfo.available_ae_mode) {
                builder.set(CaptureRequest.CONTROL_AE_MODE, 0);
            }
            builder.set(CaptureRequest.SENSOR_SENSITIVITY, Integer.valueOf(camera2ParamsFragmentCamera2Params.sensorSensitivity()));
            builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, camera2ParamsFragmentCamera2Params.exposureTime());
            builder.set(CaptureRequest.SENSOR_FRAME_DURATION, camera2ParamsFragmentCamera2Params.frameDuration());
            builder.set(CaptureRequest.CONTROL_MODE, 1);
        } else {
            if (cameraStartupInfo.available_ae_mode) {
                builder.set(CaptureRequest.CONTROL_AE_MODE, 0);
            }
            builder.set(CaptureRequest.SENSOR_SENSITIVITY, Integer.valueOf(camera2ParamsFragmentCamera2Params.sensorSensitivity()));
            builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, camera2ParamsFragmentCamera2Params.exposureTime());
            builder.set(CaptureRequest.SENSOR_FRAME_DURATION, camera2ParamsFragmentCamera2Params.frameDuration());
            builder.set(CaptureRequest.CONTROL_MODE, 1);
        }
        if (z && cameraStartupInfo.available_af_mode) {
            builder.set(CaptureRequest.CONTROL_AF_MODE, 4);
        }
        if (morphoPanoramaGP2CameraState.getCameraStartupInfo().gp2Callback.isInfinityFocus()) {
            setupFocusModeInfinity(builder);
        }
        builder.set(CaptureRequest.CONTROL_AE_LOCK, false);
        builder.set(CaptureRequest.CONTROL_AWB_LOCK, false);
        if (cameraStartupInfo.available_antibanding_mode) {
            builder.set(CaptureRequest.CONTROL_AE_ANTIBANDING_MODE, Integer.valueOf(morphoPanoramaGP2CameraState.getCameraStartupInfo().gp2Callback.getAntiBanding()));
        }
        if (cameraStartupInfo.available_image_quality_settings) {
            setRequestIntParamIfEnable(builder, CaptureRequest.COLOR_CORRECTION_MODE, morphoPanoramaGP2CameraState.getCameraStartupInfo().gp2Callback.getColorCorrectionMode());
            setRequestIntParamIfEnable(builder, CaptureRequest.EDGE_MODE, morphoPanoramaGP2CameraState.getCameraStartupInfo().gp2Callback.getEdgeMode());
            setRequestIntParamIfEnable(builder, CaptureRequest.NOISE_REDUCTION_MODE, morphoPanoramaGP2CameraState.getCameraStartupInfo().gp2Callback.getNoiseReductionMode());
            setRequestIntParamIfEnable(builder, CaptureRequest.SHADING_MODE, morphoPanoramaGP2CameraState.getCameraStartupInfo().gp2Callback.getShadingMode());
            setRequestIntParamIfEnable(builder, CaptureRequest.TONEMAP_MODE, morphoPanoramaGP2CameraState.getCameraStartupInfo().gp2Callback.getTonemapMode());
        }
    }

    public static void setRequestIntParamIfEnable(CaptureRequest.Builder builder, CaptureRequest.Key<Integer> key, int i) {
        if (i >= 0) {
            builder.set(key, Integer.valueOf(i));
        }
    }
}
