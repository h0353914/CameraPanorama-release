package com.sonyericsson.android.camera3d.device;

import android.graphics.Rect;
import android.hardware.camera2.CaptureResult;
import java.lang.reflect.InvocationTargetException;

public final class SomcCaptureResultKeys {
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER = keyConstructor("com.sonymobile.statistics.objectSelectTrigger", Integer.TYPE);
    public static final CaptureResult.Key<int[]> SONYMOBILE_STATISTICS_OBJECT_SELECT_TRIGGER_AREA = keyConstructor("com.sonymobile.statistics.objectSelectTriggerArea", int[].class);
    public static final CaptureResult.Key<int[]> SONYMOBILE_STATISTICS_OBJECT_SELECT_AREA = keyConstructor("com.sonymobile.statistics.objectSelectArea", int[].class);
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER = keyConstructor("com.sonymobile.statistics.faceSelectTrigger", Integer.TYPE);
    public static final CaptureResult.Key<int[]> SONYMOBILE_STATISTICS_FACE_SELECT_TRIGGER_AREA = keyConstructor("com.sonymobile.statistics.faceSelectTriggerArea", int[].class);
    public static final CaptureResult.Key<int[]> SONYMOBILE_STATISTICS_FACE_SELECT_AREA = keyConstructor("com.sonymobile.statistics.faceSelectArea", int[].class);
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_FACE_SMILE_SCORES_MODE = keyConstructor("com.sonymobile.statistics.faceSmileScoresMode", Integer.TYPE);
    public static final CaptureResult.Key<int[]> SONYMOBILE_STATISTICS_FACE_SMILE_SCORES = keyConstructor("com.sonymobile.statistics.faceSmileScores", int[].class);
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_SCENE_DETECT_MODE = keyConstructor("com.sonymobile.statistics.sceneDetectMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_SCENE = keyConstructor("com.sonymobile.statistics.scene", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_CONDITION_DETECT_MODE = keyConstructor("com.sonymobile.statistics.conditionDetectMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_CONDITION = keyConstructor("com.sonymobile.statistics.condition", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_RGBCIR_MEASURE_MODE = keyConstructor("com.sonymobile.statistics.rgbcirMeasureMode", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_RGBCIR_MEASURE_COLOR = keyConstructor("com.sonymobile.statistics.rgbcirMeasureColor", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_TOF_MEASURE_MODE = keyConstructor("com.sonymobile.statistics.tofMeasureMode", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<int[]> SONYMOBILE_STATISTICS_TOF_MEASURE_AREA = keyConstructor("com.sonymobile.statistics.tofMeasureArea", int[].class);
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_EYE_DETECT_MODE = keyConstructor("com.sonymobile.statistics.eyeDetectMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_HISTOGRAM_MODE = keyConstructor("com.sonymobile.statistics.histogramMode", Integer.TYPE);
    public static final CaptureResult.Key<int[]> SONYMOBILE_STATISTICS_HISTOGRAM = keyConstructor("com.sonymobile.statistics.histogram", int[].class);
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_PEAKING_MODE = keyConstructor("com.sonymobile.statistics.peakingMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_STATISTICS_PEAKING_LEVEL = keyConstructor("com.sonymobile.statistics.peakingLevel", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_AE_MODE = keyConstructor("com.sonymobile.control.aeMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_AE_REGION_MODE = keyConstructor("com.sonymobile.control.aeRegionMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_AF_REGION_MODE = keyConstructor("com.sonymobile.control.afRegionMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_AF_DRIVE_MODE = keyConstructor("com.sonymobile.control.afDriveMode", Integer.TYPE);
    public static final CaptureResult.Key<float[]> SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB_GM = keyConstructor("com.sonymobile.control.awbColorCompensationAbGm", float[].class);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB = keyConstructor("com.sonymobile.control.awbColorCompensationAb", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_GM = keyConstructor("com.sonymobile.control.awbColorCompensationGm", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_STILL_SKIN_SMOOTH_LEVEL = keyConstructor("com.sonymobile.control.stillSkinSmoothLevel", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_STILL_HDR_MODE = keyConstructor("com.sonymobile.control.stillHdrMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_STILL_HDR_STATE = keyConstructor("com.sonymobile.control.stillHdrState", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_POWER_SAVE_MODE = keyConstructor("com.sonymobile.control.powerSaveMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_SENSITIVITY_LIMIT = keyConstructor("com.sonymobile.control.sensitivityLimit", Integer.TYPE);
    public static final CaptureResult.Key<Long> SONYMOBILE_CONTROL_EXPOSURE_TIME_LIMIT = keyConstructor("com.sonymobile.control.exposureTimeLimit", Long.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_DISTORTION_CORRECTION_MODE = keyConstructor("com.sonymobile.control.distortionCorrectionMode", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_FUSION_MODE = keyConstructor("com.sonymobile.control.fusionMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_MULTI_FRAME_NR_MODE = keyConstructor("com.sonymobile.control.multiFrameNrMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_VIDEO_STABILIZATION_MODE = keyConstructor("com.sonymobile.control.videoStabilizationMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_INTELLIGENT_ACTIVE_TRIGGER = keyConstructor("com.sonymobile.control.intelligentActiveTrigger", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_HIGH_QUALITY_SNAPSHOT_MODE = keyConstructor("com.sonymobile.control.highQualitySnapshotMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_VAGUE_CONTROL_MODE = keyConstructor("com.sonymobile.control.vagueControlMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_SUPER_SLOW_MODE = keyConstructor("com.sonymobile.control.superSlowMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_COLOR_TONE_PROFILE = keyConstructor("com.sonymobile.control.colorToneProfile", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_CINEMA_PROFILE = keyConstructor("com.sonymobile.control.cinemaProfile", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_FUSION_CONDITION = keyConstructor("com.sonymobile.control.fusionCondition", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_PREVIEW_OUTPUT_STREAM_SOURCE = keyConstructor("com.sonymobile.control.previewOutputStreamSource", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_STILL_OUTPUT_STREAM_SOURCE = keyConstructor("com.sonymobile.control.stillOutputStreamSource", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_VIDEO_OUTPUT_STREAM_SOURCE = keyConstructor("com.sonymobile.control.videoOutputStreamSource", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_INTELLIGENT_ACTIVE_STATE = keyConstructor("com.sonymobile.control.intelligentActiveState", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_AF_FAILURE_REASON = keyConstructor("com.sonymobile.control.afFailureReason", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_WB_MODE = keyConstructor("com.sonymobile.control.wbMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_WB_CUSTOM_TRIGGER = keyConstructor("com.sonymobile.control.wbCustomTrigger", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_WB_CUSTOM_STATE = keyConstructor("com.sonymobile.control.wbCustomState", Integer.TYPE);
    public static final CaptureResult.Key<int[]> SONYMOBILE_CONTROL_WB_CUSTOM_RATIO = keyConstructor("com.sonymobile.control.wbCustomRatio", int[].class);
    public static final CaptureResult.Key<float[]> SONYMOBILE_CONTROL_WB_CUSTOM_TEMPERATURE = keyConstructor("com.sonymobile.control.wbCustomTemperature", float[].class);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_SNAPSHOT_PREPARE = keyConstructor("com.sonymobile.control.snapshotPrepare", Integer.TYPE);
    public static final CaptureResult.Key<Boolean> SONYMOBILE_CONTROL_ZERO_SHUTTER_LAG_CAPTURE = keyConstructor("com.sonymobile.control.zeroShutterLagCapture", Boolean.TYPE);
    public static final CaptureResult.Key<Long> SONYMOBILE_CONTROL_CAPTURE_DURATION = keyConstructor("com.sonymobile.control.captureDuration", Long.TYPE);
    public static final CaptureResult.Key<int[]> SONYMOBILE_CONTROL_FRAME_CAPTURE_PROGRESS = keyConstructor("com.sonymobile.control.frameCaptureProgress", int[].class);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_PREPARE_BURST_TRIGGER = keyConstructor("com.sonymobile.control.prepareBurstTrigger", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_PREPARE_BURST_STATE = keyConstructor("com.sonymobile.control.prepareBurstState", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_BURST_QUALITY = keyConstructor("com.sonymobile.control.burstQuality", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_TARGET_BURST_FRAME_RATE = keyConstructor("com.sonymobile.control.targetBurstFrameRate", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_YUV_FRAME_DRAW_MODE = keyConstructor("com.sonymobile.control.yuvFrameDrawMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_YUV_FRAME_DRAW_ORIENTATION = keyConstructor("com.sonymobile.control.yuvFrameDrawOrientation", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_USECASE = keyConstructor("com.sonymobile.control.usecase", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_VIDEO_MULTI_FRAME_HDR_MODE = keyConstructor("com.sonymobile.control.videoMultiFrameHdrMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_REMAINING_NUM_OF_BURST_SNAPSHOT_QUEUEING = keyConstructor("com.sonymobile.control.remainingNumOfBurstSnapshotQueueing", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_VIDEO_SENSITIVITY_SMOOTHING_MODE = keyConstructor("com.sonymobile.control.videoSensitivitySmoothingMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_AF_SPEED = keyConstructor("com.sonymobile.control.afSpeed", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_PRODUCT_REVIEW_MODE = keyConstructor("com.sonymobile.control.productReviewMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_LOW_LIGHT_SHOT_MODE = keyConstructor("com.sonymobile.control.lowLightShotMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_LOW_LIGHT_SHOT_STATE = keyConstructor("com.sonymobile.control.lowLightShotState", Integer.TYPE);
    public static final CaptureResult.Key<Float> SONYMOBILE_CONTROL_FPS = keyConstructor("com.sonymobile.control.fps", Float.TYPE);
    public static final CaptureResult.Key<Float> SONYMOBILE_CONTROL_BOKEH_STRENGTH = keyConstructor("com.sonymobile.control.bokehStrength", Float.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_BOKEH_STATUS = keyConstructor("com.sonymobile.control.bokehStatus", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_BOKEH_QUALITY = keyConstructor("com.sonymobile.control.bokehQuality", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_CONTROL_HYBRID_ZOOM_MODE = keyConstructor("com.sonymobile.control.hybridZoomMode", Integer.TYPE);
    public static final CaptureResult.Key<Float> SONYMOBILE_SCALER_FOCUS_MAGNIFICATION_RATIO = keyConstructor("com.sonymobile.scaler.focusMagnificationRatio", Float.TYPE);

    @Deprecated
    public static final CaptureResult.Key<int[]> SONYMOBILE_SCALER_FOCUS_MAGNIFICATION_SIZE = keyConstructor("com.sonymobile.scaler.focusMagnificationSize", int[].class);
    public static final CaptureResult.Key<int[]> SONYMOBILE_SCALER_FOCUS_MAGNIFICATION_POSITION = keyConstructor("com.sonymobile.scaler.focusMagnificationPosition", int[].class);
    public static final CaptureResult.Key<Integer> SONYMOBILE_SCALER_SUPER_RESOLUTION_ZOOM_MODE = keyConstructor("com.sonymobile.scaler.superResolutionZoomMode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_SENSOR_SENSITIVITY_HINT = keyConstructor("com.sonymobile.sensor.sensitivityHint", Integer.TYPE);
    public static final CaptureResult.Key<Long> SONYMOBILE_SENSOR_EXPOSURE_TIME_HINT = keyConstructor("com.sonymobile.sensor.exposureTimeHint", Long.TYPE);
    public static final CaptureResult.Key<Float> SONYMOBILE_SENSOR_ILLUMINANCE = keyConstructor("com.sonymobile.sensor.illuminance", Float.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_SENSOR_PROPER_EXPOSURE_GAP = keyConstructor("com.sonymobile.sensor.properExposureGap", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Float> SONYMOBILE_LENS_FOCAL_LENGTH = keyConstructor("com.sonymobile.lens.focalLength", Float.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_LENS_CLOSE_UP_MODE = keyConstructor("com.sonymobile.lens.closeUpMode", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_DUAL_CAMERA_TARGET_STREAM_SOURCE = keyConstructor("com.sonymobile.dualCamera.targetStreamSource", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Rect> SONYMOBILE_DUAL_CAMERA_SUB_CROP_REGION = keyConstructor("com.sonymobile.dualCamera.subCropRegion", Rect.class);

    @Deprecated
    public static final CaptureResult.Key<Float> SONYMOBILE_DUAL_CAMERA_SUB_FOCAL_LENGTH = keyConstructor("com.sonymobile.dualCamera.subFocalLength", Float.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Float> SONYMOBILE_DUAL_CAMERA_SUB_FOCUS_DISTANCE = keyConstructor("com.sonymobile.dualCamera.subFocusDistance", Float.TYPE);

    @Deprecated
    public static final CaptureResult.Key<float[]> SONYMOBILE_DUAL_CAMERA_ROTATION_ANGLE = keyConstructor("com.sonymobile.dualCamera.rotationAngle", float[].class);

    @Deprecated
    public static final CaptureResult.Key<float[]> SONYMOBILE_DUAL_CAMERA_CENTER_SHIFT = keyConstructor("com.sonymobile.dualCamera.centerShift", float[].class);

    @Deprecated
    public static final CaptureResult.Key<int[]> SONYMOBILE_DUAL_CAMERA_EFFECTIVE_AREA = keyConstructor("com.sonymobile.dualCamera.effectiveArea", int[].class);

    @Deprecated
    public static final CaptureResult.Key<float[]> SONYMOBILE_DUAL_CAMERA_DISTORTION_PARAMETERS = keyConstructor("com.sonymobile.dualCamera.distortionParameters", float[].class);
    public static final CaptureResult.Key<Integer> SONYMOBILE_LOGICAL_MULTI_CAMERA_MODE = keyConstructor("com.sonymobile.logicalMultiCamera.mode", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_LOGICAL_MULTI_CAMERA_BOKEH_STATUS = keyConstructor("com.sonymobile.logicalMultiCamera.bokehStatus", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_LOGICAL_MULTI_CAMERA_BOKEH_QUALITY = keyConstructor("com.sonymobile.logicalMultiCamera.bokehQuality", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_LOGICAL_MULTI_CAMERA_FALLBACK_MODE = keyConstructor("com.sonymobile.logicalMultiCamera.fallbackMode", Integer.TYPE);
    public static final CaptureResult.Key<Boolean> SONYMOBILE_LOGICAL_MULTI_CAMERA_FALLBACKABLE_CONDITION = keyConstructor("com.sonymobile.logicalMultiCamera.fallbackableCondition", Boolean.TYPE);
    public static final CaptureResult.Key<int[]> SONYMOBILE_COLOR_CORRECTION_WB_RATIO = keyConstructor("com.sonymobile.colorCorrection.wbRatio", int[].class);
    public static final CaptureResult.Key<Float> SONYMOBILE_COLOR_CORRECTION_WB_TEMPERATURE = keyConstructor("com.sonymobile.colorCorrection.wbTemperature", Float.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_EXTERNAL_MANUAL_DATA_SPACE = keyConstructor("com.sonymobile.external.manualDataSpace", Integer.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Long> SONYMOBILE_DEPTH_FRAME_DURATION = keyConstructor("com.sonymobile.depth.frameDuration", Long.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Long> SONYMOBILE_DEPTH_EXPOSURE_TIME = keyConstructor("com.sonymobile.depth.exposureTime", Long.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Boolean> SONYMOBILE_DEPTH_SLAVE_CONTROL = keyConstructor("com.sonymobile.depth.slaveControl", Boolean.TYPE);

    @Deprecated
    public static final CaptureResult.Key<Integer> SONYMOBILE_DEPTH_MODE = keyConstructor("com.sonymobile.depth.mode", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_ETS_FOCUS_TARGET_POSITION = keyConstructor("com.sonymobile.ets.focusTargetPosition", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_ETS_FOCUS_SPECIFIED_MODE = keyConstructor("com.sonymobile.ets.focusSpecifiedMode", Integer.TYPE);
    public static final CaptureResult.Key<int[]> SONYMOBILE_ETS_CONTRAST_AF_PARAMETER = keyConstructor("com.sonymobile.ets.contrastAfParameter", int[].class);
    public static final CaptureResult.Key<Integer> SONYMOBILE_ETS_FOCUS_CALIBRATION_SHIFT_NUMBER = keyConstructor("com.sonymobile.ets.focusCalibrationShiftNumber", Integer.TYPE);
    public static final CaptureResult.Key<Integer> SONYMOBILE_ETS_FOCUS_POSITION = keyConstructor("com.sonymobile.ets.focusPosition", Integer.TYPE);
    public static final CaptureResult.Key<float[]> SONYMOBILE_ETS_CAAF_PARAMETER1 = keyConstructor("com.sonymobile.ets.caafParameter1", float[].class);
    public static final CaptureResult.Key<int[]> SONYMOBILE_ETS_CAAF_PARAMETER2 = keyConstructor("com.sonymobile.ets.caafParameter2", int[].class);
    public static final CaptureResult.Key<float[]> SONYMOBILE_ETS_CONTRAST_PEAK_COEFFICIENT = keyConstructor("com.sonymobile.ets.contrastPeakCoefficient", float[].class);
    public static final CaptureResult.Key<int[]> SONYMOBILE_ETS_CONTRAST_STATS = keyConstructor("com.sonymobile.ets.contrastStats", int[].class);
    public static final CaptureResult.Key<Integer> SONYMOBILE_ETS_THERMISTOR_TEMPERATURE = keyConstructor("com.sonymobile.ets.thermistorTemperature", Integer.TYPE);

    @SuppressWarnings({"unchecked", "rawtypes"})
    private static CaptureResult.Key keyConstructor(String str, Class<?> cls) {
        try {
            return (CaptureResult.Key) Class.forName("android.hardware.camera2.CaptureResult$Key").getConstructor(String.class, Class.class).newInstance(str, cls);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        } catch (InstantiationException e3) {
            e3.printStackTrace();
            return null;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            return null;
        } catch (RuntimeException e5) {
            e5.printStackTrace();
            return null;
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
            return null;
        }
    }
}
