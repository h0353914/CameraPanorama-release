package com.sonyericsson.android.camera3d.device;

import android.hardware.camera2.CameraCharacteristics;
import java.lang.reflect.InvocationTargetException;

public final class SomcCameraCharacteristicsKeys {
    public static final CameraCharacteristics.Key<Boolean> SONYMOBILE_STATISTICS_INFO_AVAILABLE_OBJECT_TRACKING = keyConstructor("com.sonymobile.statistics.info.availableObjectTracking", Boolean.TYPE);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_STATISTICS_INFO_AVAILABLE_FACE_SMILE_SCORES_MODE = keyConstructor("com.sonymobile.statistics.info.availableFaceSmileScoresMode", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_STATISTICS_INFO_AVAILABLE_SCENE_DETECT_MODE = keyConstructor("com.sonymobile.statistics.info.availableSceneDetectMode", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_STATISTICS_INFO_AVAILABLE_CONDITION_DETECT_MODE = keyConstructor("com.sonymobile.statistics.info.availableConditionDetectMode", int[].class);
    public static final CameraCharacteristics.Key<Boolean> SONYMOBILE_STATISTICS_INFO_AVAILABLE_TRACKING_FOCUS_DURING_LOCK = keyConstructor("com.sonymobile.statistics.info.availableTrackingFocusDuringLock", Boolean.TYPE);

    @Deprecated
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_STATISTICS_INFO_AVAILABLE_RGBCIR_MEASURE_MODE = keyConstructor("com.sonymobile.statistics.info.availableRgbcirMeasureMode", int[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_STATISTICS_INFO_AVAILABLE_TOF_MEASURE_MODE = keyConstructor("com.sonymobile.statistics.info.availableTofMeasureMode", int[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<Integer> SONYMOBILE_STATISTICS_INFO_MAX_TOF_AREA_COUNT = keyConstructor("com.sonymobile.statistics.info.maxTofAreaCount", Integer.TYPE);

    @Deprecated
    public static final CameraCharacteristics.Key<Boolean> SONYMOBILE_STATISTICS_INFO_AVAILABLE_EYE_DETECTION = keyConstructor("com.sonymobile.statistics.info.availableEyeDetection", Boolean.TYPE);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_STATISTICS_INFO_AVAILABLE_EYE_DETECT_MODE = keyConstructor("com.sonymobile.statistics.info.availableEyeDetectMode", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_STATISTICS_INFO_AVAILABLE_HISTOGRAM_MODES = keyConstructor("com.sonymobile.statistics.info.availableHistogramModes", int[].class);
    public static final CameraCharacteristics.Key<Integer> SONYMOBILE_STATISTICS_INFO_HISTOGRAM_BUCKET_COUNT = keyConstructor("com.sonymobile.statistics.info.histogramBucketCount", Integer.TYPE);
    public static final CameraCharacteristics.Key<Integer> SONYMOBILE_STATISTICS_INFO_MAX_HISTOGRAM_COUNT = keyConstructor("com.sonymobile.statistics.info.maxHistogramCount", Integer.TYPE);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_STATISTICS_INFO_AVAILABLE_PEAKING_MODES = keyConstructor("com.sonymobile.statistics.info.availablePeakingModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_STATISTICS_INFO_AVAILABLE_PEAKING_LEVELS = keyConstructor("com.sonymobile.statistics.info.availablePeakingLevels", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AE_AVAILABLE_MODES = keyConstructor("com.sonymobile.control.aeAvailableModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AE_AVAILABLE_REGION_MODES = keyConstructor("com.sonymobile.control.aeAvailableRegionModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AF_AVAILABLE_REGION_MODES = keyConstructor("com.sonymobile.control.afAvailableRegionModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AF_AVAILABLE_DRIVE_MODES = keyConstructor("com.sonymobile.control.afAvailableDriveModes", int[].class);
    public static final CameraCharacteristics.Key<float[]> SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB_GM_RANGE = keyConstructor("com.sonymobile.control.awbColorCompensationAbGmRange", float[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_AB_RANGE = keyConstructor("com.sonymobile.control.awbColorCompensationAbRange", int[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AWB_COLOR_COMPENSATION_GM_RANGE = keyConstructor("com.sonymobile.control.awbColorCompensationGmRange", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_STILL_SKIN_SMOOTH_LEVEL_RANGE = keyConstructor("com.sonymobile.control.availableStillSkinSmoothLevelRange", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_STILL_HDR_MODES = keyConstructor("com.sonymobile.control.availableStillHdrModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_POWER_SAVE_MODES = keyConstructor("com.sonymobile.control.availablePowerSaveModes", int[].class);
    public static final CameraCharacteristics.Key<Long> SONYMOBILE_CONTROL_MIN_EXPOSURE_TIME_LIMIT = keyConstructor("com.sonymobile.control.minExposureTimeLimit", Long.TYPE);

    @Deprecated
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_DISTORTION_CORRECTION_MODES = keyConstructor("com.sonymobile.control.availableDistortionCorrectionModes", int[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_FUSION_MODES = keyConstructor("com.sonymobile.control.availableFusionModes", int[].class);
    public static final CameraCharacteristics.Key<Boolean> SONYMOBILE_CONTROL_AVAILABLE_TRACKING_BURST = keyConstructor("com.sonymobile.control.availableTrackingBurst", Boolean.TYPE);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_MULTI_FRAME_NR_MODES = keyConstructor("com.sonymobile.control.availableMultiFrameNrModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES = keyConstructor("com.sonymobile.control.availableVideoStabilizationModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_HIGH_QUALITY_SNAPSHOT_MODES = keyConstructor("com.sonymobile.control.availableHighQualitySnapshotModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_VAGUE_CONTROL_MODES = keyConstructor("com.sonymobile.control.availableVagueControlModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_SUPER_SLOW_MODES = keyConstructor("com.sonymobile.control.availableSuperSlowModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_COLOR_TONE_PROFILES = keyConstructor("com.sonymobile.control.availableColorToneProfiles", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_CINEMA_PROFILES = keyConstructor("com.sonymobile.control.availableCinemaProfiles", int[].class);
    public static final CameraCharacteristics.Key<Boolean> SONYMOBILE_CONTROL_AVAILABLE_OIS_EIS_SYNC = keyConstructor("com.sonymobile.control.availableOisEisSync", Boolean.TYPE);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_WB_AVAILABLE_MODES = keyConstructor("com.sonymobile.control.wbAvailableModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_YUV_FRAME_DRAW_MODES = keyConstructor("com.sonymobile.control.availableYuvFrameDrawModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_USECASES = keyConstructor("com.sonymobile.control.availableUsecases", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_VIDEO_MULTI_FRAME_HDR_MODES = keyConstructor("com.sonymobile.control.availableVideoMultiFrameHdrModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_MAX_NUM_OF_BURST_SNAPSHOT_QUEUEING = keyConstructor("com.sonymobile.control.maxNumOfBurstSnapshotQueueing", int[].class);
    public static final CameraCharacteristics.Key<Integer> SONYMOBILE_CONTROL_MAX_PREVIEW_FPS = keyConstructor("com.sonymobile.control.maxPreviewFps", Integer.TYPE);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_VIDEO_SENSITIVITY_SMOOTHING_MODES = keyConstructor("com.sonymobile.control.availableVideoSensitivitySmoothingModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_AF_SPEED_RANGE = keyConstructor("com.sonymobile.control.availableAfSpeedRange", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_PRODUCT_REVIEW_MODES = keyConstructor("com.sonymobile.control.availableProductReviewModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_LOW_LIGHT_SHOT_MODES = keyConstructor("com.sonymobile.control.availableLowLightShotModes", int[].class);
    public static final CameraCharacteristics.Key<Long> SONYMOBILE_CONTROL_AVAILABLE_HYBRID_ZOOM_MIN_FRAME_DURATION = keyConstructor("com.sonymobile.control.availableHybridZoomMinFrameDuration", Long.TYPE);
    public static final CameraCharacteristics.Key<float[]> SONYMOBILE_CONTROL_HYBRID_ZOOM_RATIO_RANGE = keyConstructor("com.sonymobile.control.hybridZoomRatioRange", float[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_CONTROL_AVAILABLE_HYBRID_ZOOM_MODES = keyConstructor("com.sonymobile.control.availableHybridZoomModes", int[].class);
    public static final CameraCharacteristics.Key<long[]> SONYMOBILE_SCALER_AVAILABLE_STILL_HDR_CONFIGURATION_MAP = keyConstructor("com.sonymobile.scaler.availableStillHdrConfigurationMap", long[].class);
    public static final CameraCharacteristics.Key<long[]> SONYMOBILE_SCALER_AVAILABLE_MANUAL_ISO_CONFIGURATION_MAP = keyConstructor("com.sonymobile.scaler.availableManualIsoConfigurationMap", long[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SCALER_PREFERRED_STILL_PREVIEW_SIZE = keyConstructor("com.sonymobile.scaler.preferredStillPreviewSize", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SCALER_PREFERRED_VIDEO_PREVIEW_SIZE = keyConstructor("com.sonymobile.scaler.preferredVideoPreviewSize", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SCALER_PREFERRED_HDR_VIDEO_PREVIEW_SIZE = keyConstructor("com.sonymobile.scaler.preferredHdrVideoPreviewSize", int[].class);
    public static final CameraCharacteristics.Key<Float> SONYMOBILE_SCALER_WIDE_ZOOM_TARGET_RATIO = keyConstructor("com.sonymobile.scaler.wideZoomTargetRatio", Float.TYPE);

    @Deprecated
    public static final CameraCharacteristics.Key<long[]> SONYMOBILE_SCALER_AVAILABLE_FUSION_CONFIGURATION_MAP = keyConstructor("com.sonymobile.scaler.availableFusionConfigurationMap", long[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SCALER_AVAILABLE_VIDEO_STREAM_CONFIGURATION_MAP = keyConstructor("com.sonymobile.scaler.availableVideoStreamConfigurationMap", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SCALER_AVAILABLE_BURST_CONFIGURATIONS = keyConstructor("com.sonymobile.scaler.availableBurstConfigurations", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SCALER_AVAILABLE_FOCUS_MAGNIFICATION_USECASES = keyConstructor("com.sonymobile.scaler.availableFocusMagnificationUsecases", int[].class);
    public static final CameraCharacteristics.Key<Float> SONYMOBILE_SCALER_MAX_FOCUS_MAGNIFICATION_RATIO = keyConstructor("com.sonymobile.scaler.maxFocusMagnificationRatio", Float.TYPE);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SCALER_AVAILABLE_SUPER_RESOLUTION_ZOOM_MODES = keyConstructor("com.sonymobile.scaler.availableSuperResolutionZoomModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SCALER_RECOMMENDED_VIDEO_SNAPSHOT_SIZE = keyConstructor("com.sonymobile.scaler.recommendedVideoSnapshotSize", int[].class);
    public static final CameraCharacteristics.Key<long[]> SONYMOBILE_SCALER_AVAILABLE_HIGH_SPEED_MIN_FRAME_DURATIONS = keyConstructor("com.sonymobile.scaler.availableHighSpeedMinFrameDurations", long[].class);
    public static final CameraCharacteristics.Key<float[]> SONYMOBILE_SCALER_OPTICAL_ZOOM_RATIO_RANGES = keyConstructor("com.sonymobile.scaler.opticalZoomRatioRanges", float[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SCALER_AVAILABLE_HDR_BURST_CONFIGURATIONS = keyConstructor("com.sonymobile.scaler.availableHdrBurstConfigurations", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SCALER_AVAILABLE_BOKEH_BURST_CONFIGURATIONS = keyConstructor("com.sonymobile.scaler.availableBokehBurstConfigurations", int[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SENSOR_INFO_SENSITIVITY_RANGE = keyConstructor("com.sonymobile.sensor.info.sensitivityRange", int[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SENSOR_INFO_HDR_SENSITIVITY_RANGE = keyConstructor("com.sonymobile.sensor.info.hdrSensitivityRange", int[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SENSOR_INFO_FUSION_SENSITIVITY_RANGE = keyConstructor("com.sonymobile.sensor.info.fusionSensitivityRange", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SENSOR_INFO_STILL_SENSITIVITY_RANGES = keyConstructor("com.sonymobile.sensor.info.stillSensitivityRanges", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SENSOR_INFO_VIDEO_SENSITIVITY_RANGES = keyConstructor("com.sonymobile.sensor.info.videoSensitivityRanges", int[].class);
    public static final CameraCharacteristics.Key<long[]> SONYMOBILE_SENSOR_INFO_EXPOSURE_TIME_RANGE = keyConstructor("com.sonymobile.sensor.info.exposureTimeRange", long[].class);
    public static final CameraCharacteristics.Key<long[]> SONYMOBILE_SENSOR_INFO_HDR_EXPOSURE_TIME_RANGE = keyConstructor("com.sonymobile.sensor.info.hdrExposureTimeRange", long[].class);
    public static final CameraCharacteristics.Key<Integer> SONYMOBILE_SENSOR_INFO_CAMERA_MODULE_H_W_CHECK_RESULT = keyConstructor("com.sonymobile.sensor.info.cameraModuleHWCheckResult", Integer.TYPE);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_SENSOR_INFO_PRECISE_FOCUS_AREA = keyConstructor("com.sonymobile.sensor.info.preciseFocusArea", int[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<float[]> SONYMOBILE_LENS_AVAILABLE_FOCAL_LENGTHS = keyConstructor("com.sonymobile.lens.availableFocalLengths", float[].class);
    public static final CameraCharacteristics.Key<Boolean> SONYMOBILE_LENS_AVAILABLE_CLOSE_UP_MODES = keyConstructor("com.sonymobile.lens.availableCloseUpModes", Boolean.TYPE);
    public static final CameraCharacteristics.Key<float[]> SONYMOBILE_LENS_CLOSE_UP_DISTANCE_RANGE = keyConstructor("com.sonymobile.lens.closeUpDistanceRange", float[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<float[]> SONYMOBILE_DUAL_CAMERA_MODULE_SHIFT = keyConstructor("com.sonymobile.dualCamera.moduleShift", float[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<float[]> SONYMOBILE_DUAL_CAMERA_SUB_PHYSICAL_SIZE = keyConstructor("com.sonymobile.dualCamera.subPhysicalSize", float[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_DUAL_CAMERA_SUB_ACTIVE_ARRAY_SIZE = keyConstructor("com.sonymobile.dualCamera.subActiveArraySize", int[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<Integer> SONYMOBILE_DUAL_CAMERA_DISTORTION_PARAM_POINTS = keyConstructor("com.sonymobile.dualCamera.distortionParamPoints", Integer.TYPE);

    @Deprecated
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_DUAL_CAMERA_AVAILABLE_TARGET_STREAM_SOURCE = keyConstructor("com.sonymobile.dualCamera.availableTargetStreamSource", int[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<long[]> SONYMOBILE_DUAL_CAMERA_AVAILABLE_STREAM_CONFIGURATION_MAP = keyConstructor("com.sonymobile.dualCamera.availableStreamConfigurationMap", long[].class);
    public static final CameraCharacteristics.Key<String> SONYMOBILE_INFO_SENSOR_NAME = keyConstructor("com.sonymobile.info.sensorName", String.class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_LOGICAL_MULTI_CAMERA_AVAILABLE_MODES = keyConstructor("com.sonymobile.logicalMultiCamera.availableModes", int[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<float[]> SONYMOBILE_LOGICAL_MULTI_CAMERA_ZOOM_SWITCH_POINT_RATIOS = keyConstructor("com.sonymobile.logicalMultiCamera.zoomSwitchPointRatios", float[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<float[]> SONYMOBILE_LOGICAL_MULTI_CAMERA_AVAILABLE_BOKEH_FOCAL_LENGTHS = keyConstructor("com.sonymobile.logicalMultiCamera.availableBokehFocalLengths", float[].class);
    public static final CameraCharacteristics.Key<float[]> SONYMOBILE_LOGICAL_MULTI_CAMERA_AVAILABLE_BOKEH_ZOOM_RATIO_RANGES = keyConstructor("com.sonymobile.logicalMultiCamera.availableBokehZoomRatioRanges", float[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_LOGICAL_MULTI_CAMERA_AVAILABLE_FALLBACK_MODES = keyConstructor("com.sonymobile.logicalMultiCamera.availableFallbackModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_FLASH_DISPLAY_FLASH_LIGHT_SHIELDING_AREA = keyConstructor("com.sonymobile.flash.displayFlashLightShieldingArea", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_FLASH_DISPLAY_FLASH_COLOR = keyConstructor("com.sonymobile.flash.displayFlashColor", int[].class);
    public static final CameraCharacteristics.Key<float[]> SONYMOBILE_COLOR_CORRECTION_WB_TEMPERATURE_RANGE = keyConstructor("com.sonymobile.colorCorrection.wbTemperatureRange", float[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_EXTERNAL_AVAILABLE_MANUAL_DATA_SPACE = keyConstructor("com.sonymobile.external.availableManualDataSpace", int[].class);
    public static final CameraCharacteristics.Key<Integer> SONYMOBILE_EXTERNAL_RECOMMEND_DATA_SPACE = keyConstructor("com.sonymobile.external.recommendDataSpace", Integer.TYPE);
    public static final CameraCharacteristics.Key<Integer> SONYMOBILE_EXTERNAL_CONNECTION_TYPE = keyConstructor("com.sonymobile.external.connectionType", Integer.TYPE);
    public static final CameraCharacteristics.Key<Float> SONYMOBILE_EXTERNAL_REAL_SUPPORTED_FRAME_RATE_FOR30FPS = keyConstructor("com.sonymobile.external.realSupportedFrameRateFor30fps", Float.TYPE);
    public static final CameraCharacteristics.Key<Float> SONYMOBILE_EXTERNAL_REAL_SUPPORTED_FRAME_RATE_FOR60FPS = keyConstructor("com.sonymobile.external.realSupportedFrameRateFor60fps", Float.TYPE);

    @Deprecated
    public static final CameraCharacteristics.Key<Long> SONYMOBILE_DEPTH_MAX_FRAME_DURATION = keyConstructor("com.sonymobile.depth.maxFrameDuration", Long.TYPE);

    @Deprecated
    public static final CameraCharacteristics.Key<long[]> SONYMOBILE_DEPTH_EXPOSURE_TIME_RANGE = keyConstructor("com.sonymobile.depth.exposureTimeRange", long[].class);

    @Deprecated
    public static final CameraCharacteristics.Key<Boolean> SONYMOBILE_DEPTH_SLAVE_CONTROL_AVAILABLE = keyConstructor("com.sonymobile.depth.slaveControlAvailable", Boolean.TYPE);

    @Deprecated
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_DEPTH_AVAILABLE_MODES = keyConstructor("com.sonymobile.depth.availableModes", int[].class);
    public static final CameraCharacteristics.Key<byte[]> SONYMOBILE_ETS_SENSOR_LOT_ID = keyConstructor("com.sonymobile.ets.sensorLotId", byte[].class);
    public static final CameraCharacteristics.Key<byte[]> SONYMOBILE_ETS_CALIBRATION_DATA = keyConstructor("com.sonymobile.ets.calibrationData", byte[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_ETS_AVAILABLE_FOCUS_POSITION = keyConstructor("com.sonymobile.ets.availableFocusPosition", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_ETS_AVAILABLE_FOCUS_SPECIFIED_MODES = keyConstructor("com.sonymobile.ets.availableFocusSpecifiedModes", int[].class);
    public static final CameraCharacteristics.Key<int[]> SONYMOBILE_ETS_PD_GRID_AREA_NUMBER = keyConstructor("com.sonymobile.ets.pdGridAreaNumber", int[].class);

    @SuppressWarnings({"unchecked", "rawtypes"})
    private static CameraCharacteristics.Key keyConstructor(String str, Class<?> cls) {
        try {
            return (CameraCharacteristics.Key) Class.forName("android.hardware.camera2.CameraCharacteristics$Key").getConstructor(String.class, Class.class).newInstance(str, cls);
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
