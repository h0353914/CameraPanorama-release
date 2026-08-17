package com.sonyericsson.android.camera3d;

import android.content.Context;
import android.media.Image;
import android.os.Build;
import android.os.Handler;
import android.util.Size;
import android.view.View;
import android.view.ViewStub;
import android.widget.Switch;
import androidx.collection.SimpleArrayMap;
import androidx.fragment.app.FragmentActivity;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;
import com.sonyericsson.android.camera3d.setting.CalcseamPixnumPreference;
import com.sonyericsson.android.camera3d.setting.UnsharpStrengthPreference;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import com.sonyericsson.android.camera3d.utils.VideoRec.VideoRecorderRaw;
import java.nio.ByteBuffer;
import java.text.NumberFormat;
import java.util.Locale;

class InternalSettings {
    private static final String CAMERA2_PARAM_FILE = "camera2.ini";
    private static final int[][] DEFAULT_CAPTURE_RESOLUTION;
    public static final int DEFAULT_SETTING_ANTI_BANDING = 1;
    public static final double DEFAULT_SETTING_AOV_GAIN = 1.0d;
    public static final boolean DEFAULT_SETTING_AUTO_AE_LOCK = true;
    public static final boolean DEFAULT_SETTING_AUTO_WB_LOCK = true;
    public static final int DEFAULT_SETTING_CAMERA_ID = 0;
    public static final int DEFAULT_SETTING_CAPTURE_MODE = 0;
    public static final int DEFAULT_SETTING_CAPTURE_SIZE_INDEX = 0;
    public static final String DEFAULT_SETTING_COLOR_CORRECTION_MODE = "-1";
    public static final boolean DEFAULT_SETTING_DEFORM = false;
    public static final double DEFAULT_SETTING_DISTORTION_K1 = 0.0d;
    public static final double DEFAULT_SETTING_DISTORTION_K2 = 0.0d;
    public static final double DEFAULT_SETTING_DISTORTION_K3 = 0.0d;
    public static final double DEFAULT_SETTING_DISTORTION_K4 = 0.0d;
    public static final double DEFAULT_SETTING_DRAW_THRESHOLD = 0.5d;
    public static final String DEFAULT_SETTING_EDGE_MODE = "-1";
    public static final int DEFAULT_SETTING_FOCUS_MODE = 0;
    public static final double DEFAULT_SETTING_INPUT_MOVIE_FPS = 15.0d;
    public static final boolean DEFAULT_SETTING_LUMINANCE_CORRECTION = false;
    private static final int DEFAULT_SETTING_MOTION_DETECTION_MODE = 0;
    public static final String DEFAULT_SETTING_NOISE_REDUCTION_MODE = "-1";
    private static final boolean DEFAULT_SETTING_NR_AUTO = true;
    private static final int DEFAULT_SETTING_PROJECTION_MODE = 1;
    public static final double DEFAULT_SETTING_ROTATION_RATIO = 0.96d;
    public static final int DEFAULT_SETTING_SAVE_INPUT_IMAGES = 0;
    public static final double DEFAULT_SETTING_SEAMSEARCH_RATIO = 1.0d;
    public static final int DEFAULT_SETTING_SENSOR_MODE = 1;
    public static final String DEFAULT_SETTING_SHADING_MODE = "-1";
    public static final String DEFAULT_SETTING_TONEMAP_MODE = "-1";
    public static final boolean DEFAULT_SETTING_USE_CAMERA2 = true;
    public static final boolean DEFAULT_SETTING_USE_GPS = false;
    public static final boolean DEFAULT_SETTING_USE_GRAVITY_SENSOR = false;
    public static final double DEFAULT_SETTING_ZROTATION_COEFF = 0.95d;
    private static final SimpleArrayMap<String, Integer> DEFAULT_UI_CONTROL_MODES;
    private static final String LOG_TAG = "Camera2App";
    private static final boolean OPERATING_MODE_DEBUG = false;
    public static final int SETTING_ANTI_BANDING_50HZ = 2;
    public static final int SETTING_ANTI_BANDING_60HZ = 3;
    public static final int SETTING_ANTI_BANDING_AUTO = 1;
    public static final int SETTING_ANTI_BANDING_OFF = 0;
    public static final String SETTING_FILE_NAME = "setting.txt";
    public static final int SETTING_FOCUS_MODE_AUTO = 0;
    public static final int SETTING_FOCUS_MODE_INFINITY = 1;
    public static final String SETTING_KEY_ANGLE = "angle";
    public static final String SETTING_KEY_ANTI_BANDING = "anti_banding(0,OFF 1,AUTO 2,50Hz 3,60Hz)";
    public static final String SETTING_KEY_ATTACH_NUM_DIRECTION_UNDECIDED = "attached num during direction-undecided";
    public static final String SETTING_KEY_AUTO_AE_LOCK = "auto_ae_lock";
    public static final String SETTING_KEY_AUTO_WB_LOCK = "auto_wb_lock";
    public static final String SETTING_KEY_BUILD_MODEL = "build_model";
    public static final String SETTING_KEY_CAMERA_ID = "camera_id";
    public static final String SETTING_KEY_CAPTURE_MODE = "capture_mode";
    public static final String SETTING_KEY_COLOR_CORRECTION_MODE = "color_correction_mode";
    public static final String SETTING_KEY_EDGE_MODE = "edge_mode";
    public static final String SETTING_KEY_FORMAT = "image format";
    public static final String SETTING_KEY_HEIGHT = "height";
    public static final String SETTING_KEY_MAX_HEIGHT = "max height";
    public static final String SETTING_KEY_MAX_WIDTH = "max width";
    private static final String SETTING_KEY_MOTION_DETECTION_MODE = "motion_detection_mode";
    public static final String SETTING_KEY_NOISE_REDUCTION_MODE = "noise_reduction_mode";
    private static final String SETTING_KEY_NR_AUTO = "nr auto";
    private static final String SETTING_KEY_NR_STRENGTH = "nr strength";
    public static final String SETTING_KEY_PANORAMA_DIRECTION = "panorama direction(0,left 1,right 2,up 3,down)";
    public static final String SETTING_KEY_PREVIEW_SCALE = "preview scale";
    private static final String SETTING_KEY_PROJECTION_MODE = "projection_mode";
    public static final String SETTING_KEY_SENSOR_MODE = "sensor_mode";
    public static final String SETTING_KEY_SHADING_MODE = "shading_mode";
    public static final String SETTING_KEY_TONEMAP_MODE = "tonemap_mode";
    public static final String SETTING_KEY_UNSHARP_STRENGTH = "unsharp strength";
    public static final String SETTING_KEY_USE_CAMERA2 = "use_camera2";
    public static final String SETTING_KEY_USE_GRAVITY_SENSOR = "use_gravity_sensor";
    public static final String SETTING_KEY_WIDTH = "width";
    private static final int SETTING_MOTION_DETECTION_MODE_FAST = 0;
    private static final int SETTING_MOTION_DETECTION_MODE_HQ = 1;
    private static final int SETTING_PROJECTION_MODE_CENTRAL_CYLINDRICAL = 1;
    private static final int SETTING_PROJECTION_MODE_CENTRAL_CYLINDRICAL2 = 2;
    private static final int SETTING_PROJECTION_MODE_EQUIRECTANGULAR = 0;
    public static final int SETTING_SAVE_INPUT_IMAGES_MOVIE = 1;
    public static final int SETTING_SAVE_INPUT_IMAGES_OFF = 0;
    public static final int SETTING_SAVE_INPUT_IMAGES_RAW = 2;
    public static final int SETTING_SENSOR_MODE_OFF = -1;
    public static final String SETTING_SEPARATOR = ":";
    public static final int UI_CONTROL_MODE1 = 0;
    public static final int UI_CONTROL_MODE2 = 1;
    public static final int UI_CONTROL_MODE3 = 2;
    private static final Object mRecorderLock = new Object();
    private final FragmentActivity mActivity;
    private Camera2ParamsFragment mCamera2ParamsFragment;
    private int mCamera2ParamsFragmentSelectedMode;
    private boolean mIsTvLock;
    private int mNumEncodedFrames;
    private long mRecordTimeStamp;
    private long mRecordTimeStampStart;
    private VideoRecorderRaw mRecorder;
    private View mTvView;
    private MorphoCameraBase mMorphoCamera = null;
    private boolean isValidCameraParamFrame = false;
    private final VideoRecorderRaw.RawRenderListener mRawRenderListener = new VideoRecorderRaw.RawRenderListener() { // from class: com.sonyericsson.android.camera3d.InternalSettings.1
        @Override // com.sonyericsson.android.camera3d.utils.VideoRec.VideoRecorderRaw.RawRenderListener
        public int onDraw(ByteBuffer byteBuffer, Image image) {
            if (InternalSettings.this.mRecorder != null) {
                return MorphoPanoramaGP2.renderByteBuffer(byteBuffer, image);
            }
            return 0;
        }
    };
    public int capture_size_index = 0;
    public boolean use_gps = false;
    public int save_input_images = 0;
    public boolean auto_ae_lock = true;
    public boolean auto_wb_lock = true;
    public int anti_banding = 1;
    public int capture_mode = 0;
    public double shrink_ratio = 7.5d;
    public int calcseam_pixnum = CalcseamPixnumPreference.DEFAULT_VALUE;
    public double aov_x = 0.0d;
    public double aov_y = 0.0d;
    public boolean use_deform = false;
    public boolean use_luminance_correction = false;
    public double seamsearch_ratio = 1.0d;
    public double zrotation_coeff = 0.95d;
    public double draw_threshold = 0.5d;
    public int sensor_mode = 1;
    public boolean use_gravity_sensor = false;
    public int unsharp_strength = UnsharpStrengthPreference.DEFAULT_VALUE;
    public double input_movie_fps = 15.0d;
    public double aov_gain = 1.0d;
    public double distortion_k1 = 0.0d;
    public double distortion_k2 = 0.0d;
    public double distortion_k3 = 0.0d;
    public double distortion_k4 = 0.0d;
    public double rotation_ratio = 0.96d;
    public int ui_control_mode = 0;
    public int focus_mode = 0;
    public boolean use_camera2 = true;
    public int camera_id = 0;
    public int color_correction_mode = Integer.parseInt("-1");
    public int edge_mode = Integer.parseInt("-1");
    public int noise_reduction_mode = Integer.parseInt("-1");
    public int shading_mode = Integer.parseInt("-1");
    public int tonemap_mode = Integer.parseInt("-1");
    public int projection_mode = 1;
    public int motion_detection_mode = 0;
    public boolean nr_auto = true;
    public int nr_strength = 0;

    private void print(MorphoPanoramaGP2Application morphoPanoramaGP2Application) {
    }

    public void encodeFrame(Image image) {
    }

    public void finalizeEncoder() {
    }

    public void initializeEncoder(String str, int i, int i2) {
    }

    public boolean isUseCamera1(Context context) {
        return false;
    }

    public void loadValues() {
    }

    public void putParamFile(String str, CameraInfo cameraInfo, String str2) {
    }

    public void removePreviewSize(Context context) {
    }

    public void resetValues() {
    }

    public void saveSettings(String str, String str2, CameraInfo cameraInfo, int i, int i2, int i3, int i4, int i5, long j) {
    }

    public void saveValues() {
    }

    public void startSettingActivity(Context context, double[] dArr, String str, Camera2ImageQualitySettings[] camera2ImageQualitySettingsArr, String[] strArr) {
    }

    static {
        SimpleArrayMap<String, Integer> simpleArrayMap = new SimpleArrayMap<>();
        DEFAULT_UI_CONTROL_MODES = simpleArrayMap;
        simpleArrayMap.put("E6653,21", 1);
        simpleArrayMap.put("E6653,22", 1);
        simpleArrayMap.put("E6653,23", 1);
        simpleArrayMap.put("E6683,21", 1);
        simpleArrayMap.put("E6683,22", 1);
        simpleArrayMap.put("E6683,23", 1);
        simpleArrayMap.put("LG-H961N,22", 2);
        DEFAULT_CAPTURE_RESOLUTION = new int[][]{new int[]{3840, 2160}, new int[]{1920, 1080}, new int[]{1280, 720}};
    }

    public InternalSettings(FragmentActivity fragmentActivity) {
        this.mActivity = fragmentActivity;
    }

    public int getAntiBanding() {
        int i = this.anti_banding;
        if (i == 0) {
            return 0;
        }
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 3) {
                return 2;
            }
        }
        return 3;
    }

    public int getCaptureMode() {
        if (this.use_camera2) {
            return this.capture_mode;
        }
        return 1;
    }

    public boolean isInfinityFocus() {
        return this.focus_mode == 1;
    }

    private int getIndexOfDefaultCaptureSize(MorphoPanoramaGP2Application morphoPanoramaGP2Application) {
        Size[] supportedPictureSizes = morphoPanoramaGP2Application.getSupportedPictureSizes();
        for (int i = 0; i < supportedPictureSizes.length; i++) {
            Size size = supportedPictureSizes[i];
            for (int[] iArr : DEFAULT_CAPTURE_RESOLUTION) {
                if (size.getWidth() == iArr[0] && size.getHeight() == iArr[1]) {
                    return i;
                }
            }
        }
        return 0;
    }

    public void settingCaptureMode(Context context) {
        int i;
        if (this.use_camera2) {
            i = Build.MODEL.equals("EVA-TL00") ? 3 : 4;
        } else {
            i = 1;
        }
        this.capture_mode = i;
    }

    public void getSettingValue(MorphoPanoramaGP2Application morphoPanoramaGP2Application) {
        this.capture_size_index = getIndexOfDefaultCaptureSize(morphoPanoramaGP2Application);
        Size[] supportedPictureSizes = morphoPanoramaGP2Application.getSupportedPictureSizes();
        LogFilter.i(LOG_TAG, String.format(Locale.US, "capture_size : %d x %d", Integer.valueOf(supportedPictureSizes[this.capture_size_index].getWidth()), Integer.valueOf(supportedPictureSizes[this.capture_size_index].getHeight())));
    }

    public void updateCamera2ImageQualitySettings(Context context, Camera2ImageQualitySettings[] camera2ImageQualitySettingsArr) {
        if (camera2ImageQualitySettingsArr[0].isAvailable() && this.color_correction_mode == Integer.parseInt("-1")) {
            this.color_correction_mode = Integer.parseInt(camera2ImageQualitySettingsArr[0].getDefaultValue(getCaptureMode()));
        }
        if (camera2ImageQualitySettingsArr[1].isAvailable() && this.edge_mode == Integer.parseInt("-1")) {
            this.edge_mode = Integer.parseInt(camera2ImageQualitySettingsArr[1].getDefaultValue(getCaptureMode()));
        }
        if (camera2ImageQualitySettingsArr[2].isAvailable() && this.noise_reduction_mode == Integer.parseInt("-1")) {
            this.noise_reduction_mode = Integer.parseInt(camera2ImageQualitySettingsArr[2].getDefaultValue(getCaptureMode()));
        }
        if (camera2ImageQualitySettingsArr[3].isAvailable() && this.shading_mode == Integer.parseInt("-1")) {
            this.shading_mode = Integer.parseInt(camera2ImageQualitySettingsArr[3].getDefaultValue(getCaptureMode()));
        }
        if (camera2ImageQualitySettingsArr[4].isAvailable() && this.tonemap_mode == Integer.parseInt("-1")) {
            this.tonemap_mode = Integer.parseInt(camera2ImageQualitySettingsArr[4].getDefaultValue(getCaptureMode()));
        }
    }

    public Camera2ParamsFragment getCamera2ParamsFragment() {
        if (this.mCamera2ParamsFragment == null) {
            ((ViewStub) this.mActivity.findViewById(R.id.stub_debug_view)).inflate();
            this.mCamera2ParamsFragment = (Camera2ParamsFragment) this.mActivity.getSupportFragmentManager().findFragmentById(R.id.camera2_params);
        }
        return this.mCamera2ParamsFragment;
    }

    public View getTvView() {
        if (this.mTvView == null) {
            ((ViewStub) this.mActivity.findViewById(R.id.stub_camera_info)).inflate();
            this.mTvView = this.mActivity.findViewById(R.id.tv_view);
        }
        return this.mTvView;
    }

    public void initializeUI(CameraInfo cameraInfo) {
        Camera2ParamsFragment camera2ParamsFragment = getCamera2ParamsFragment();
        camera2ParamsFragment.initializeUI(cameraInfo);
        if (this.use_camera2) {
            camera2ParamsFragment.setSensorSensitivity(cameraInfo.getSensitivityMin());
            camera2ParamsFragment.setExposureTime(camera2ParamsFragment.frameDuration().longValue());
        }
    }

    public void initViews(MorphoCameraBase morphoCameraBase, Handler handler, boolean z) {
        Camera2ParamsFragment camera2ParamsFragment = getCamera2ParamsFragment();
        if (this.use_camera2) {
            ((MorphoCamera) morphoCameraBase).setCamera2Params(camera2ParamsFragment);
        }
    }

    class AnonymousClass2 implements Camera2ParamsFragment.ICamera2ParamsFragmentEvent {
        AnonymousClass2() {
        }

        @Override // com.sonyericsson.android.camera3d.Camera2ParamsFragment.ICamera2ParamsFragmentEvent
        public void onParamChanged() {
            if (InternalSettings.this.isValidCameraParamFrame) {
                if (InternalSettings.this.getCamera2ParamsFragment().tv()) {
                    InternalSettings.this.getTvView().setVisibility(0);
                } else {
                    InternalSettings.this.getTvView().setVisibility(4);
                }
            }
            InternalSettings.this.mMorphoCamera.cameraState().onRequestParamChange();
        }
    }

    class AnonymousClass3 implements Runnable {
        AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            InternalSettings.this.revertCamera2ParamsFragmentMode();
        }
    }

    private boolean isVisibleCameraParamFrame() {
        return this.isValidCameraParamFrame && this.mActivity.findViewById(R.id.camera_param_frame).getVisibility() == 0;
    }

    private void setVisibilityCameraParamFrame(int i) {
        if (this.isValidCameraParamFrame) {
            this.mActivity.findViewById(R.id.camera_param_frame).setVisibility(i);
        }
    }

    public void toggleVisibilityCameraParamFrame() {
        if (this.isValidCameraParamFrame) {
            if (isVisibleCameraParamFrame()) {
                setVisibilityCameraParamFrame(4);
            } else {
                setVisibilityCameraParamFrame(0);
            }
        }
    }

    public boolean onBackKeyDown() {
        if (!this.isValidCameraParamFrame || !isVisibleCameraParamFrame()) {
            return false;
        }
        setVisibilityCameraParamFrame(4);
        return true;
    }

    public void updateCameraInfoView(long j, int i) {
        CameraInfoViewFragment cameraInfoViewFragment;
        if (this.isValidCameraParamFrame && (cameraInfoViewFragment = (CameraInfoViewFragment) this.mActivity.getSupportFragmentManager().findFragmentById(R.id.camera_info_view)) != null) {
            cameraInfoViewFragment.update(String.format(Locale.US, "ISO:%n %d%nExposureTime:%n ", Integer.valueOf(i)) + NumberFormat.getNumberInstance().format(j) + "nsec");
        }
    }

    public void updateViewsForPreviewStart() {
        View view;
        if (this.isValidCameraParamFrame) {
            if (getCamera2ParamsFragment().tv() && ((Switch) this.mActivity.findViewById(R.id.tv_auto_lock)).isChecked()) {
                ((Switch) this.mActivity.findViewById(R.id.tv_lock)).setChecked(this.mIsTvLock);
            }
            CameraInfoViewFragment cameraInfoViewFragment = (CameraInfoViewFragment) this.mActivity.getSupportFragmentManager().findFragmentById(R.id.camera_info_view);
            if (cameraInfoViewFragment == null || (view = cameraInfoViewFragment.getView()) == null) {
                return;
            }
            view.setVisibility(0);
        }
    }

    public void updateViewsForTakePictureStart() {
        if (this.isValidCameraParamFrame) {
            this.mActivity.findViewById(R.id.camera_param_frame).setVisibility(4);
            if (getCamera2ParamsFragment().tv() && ((Switch) this.mActivity.findViewById(R.id.tv_auto_lock)).isChecked()) {
                this.mIsTvLock = ((Switch) this.mActivity.findViewById(R.id.tv_lock)).isChecked();
                ((Switch) this.mActivity.findViewById(R.id.tv_lock)).setChecked(true);
            }
        }
    }

    public void updateTvValue() {
        if (this.isValidCameraParamFrame && getCamera2ParamsFragment().tv()) {
            ((MorphoCamera) this.mMorphoCamera).updateTvValue();
        }
    }

    public synchronized void revertCamera2ParamsFragmentMode() {
        if (this.isValidCameraParamFrame) {
            Camera2ParamsFragment camera2ParamsFragment = getCamera2ParamsFragment();
            int i = this.mCamera2ParamsFragmentSelectedMode;
            if (i == 1) {
                camera2ParamsFragment.setTv();
                camera2ParamsFragment.setEnabled(true);
            } else if (i == 2) {
                camera2ParamsFragment.setManual();
                camera2ParamsFragment.setEnabled(true);
            }
            this.mCamera2ParamsFragmentSelectedMode = -1;
        }
    }

    public boolean tv() {
        return this.isValidCameraParamFrame && getCamera2ParamsFragment().tv();
    }

    public boolean isTvLock() {
        return this.isValidCameraParamFrame && ((Switch) this.mActivity.findViewById(R.id.tv_lock)).isChecked();
    }
}
