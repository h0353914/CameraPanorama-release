package com.sonyericsson.android.camera3d;

import android.content.Context;
import android.media.Image;
import android.os.Build;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.SimpleArrayMap;
import android.util.Size;
import android.view.View;
import android.view.ViewStub;
import android.widget.Switch;

import com.sonyericsson.android.camera3d.base.MorphoCameraBase;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import com.sonyericsson.android.camera3d.utils.VideoRec.VideoRecorderRaw;

import java.nio.ByteBuffer;
import java.text.NumberFormat;
import java.util.Locale;

class InternalSettings {
    private static final String CAMERA2_PARAM_FILE = "camera2.ini";
    private static final int[][] DEFAULT_CAPTURE_RESOLUTION;
    public static final int DEFAULT_SETTING_ANTI_BANDING = 1;
    public static final double DEFAULT_SETTING_AOV_GAIN = 1.0;
    public static final boolean DEFAULT_SETTING_AUTO_AE_LOCK = true;
    public static final boolean DEFAULT_SETTING_AUTO_WB_LOCK = true;
    public static final int DEFAULT_SETTING_CAMERA_ID = 0;
    public static final int DEFAULT_SETTING_CAPTURE_MODE = 0;
    public static final int DEFAULT_SETTING_CAPTURE_SIZE_INDEX = 0;
    public static final String DEFAULT_SETTING_COLOR_CORRECTION_MODE = "-1";
    public static final boolean DEFAULT_SETTING_DEFORM = false;
    public static final double DEFAULT_SETTING_DISTORTION_K1 = 0.0;
    public static final double DEFAULT_SETTING_DISTORTION_K2 = 0.0;
    public static final double DEFAULT_SETTING_DISTORTION_K3 = 0.0;
    public static final double DEFAULT_SETTING_DISTORTION_K4 = 0.0;
    public static final double DEFAULT_SETTING_DRAW_THRESHOLD = 0.5;
    public static final String DEFAULT_SETTING_EDGE_MODE = "-1";
    public static final int DEFAULT_SETTING_FOCUS_MODE = 0;
    public static final double DEFAULT_SETTING_INPUT_MOVIE_FPS = 15.0;
    public static final boolean DEFAULT_SETTING_LUMINANCE_CORRECTION = false;
    private static final int DEFAULT_SETTING_MOTION_DETECTION_MODE = 0;
    public static final String DEFAULT_SETTING_NOISE_REDUCTION_MODE = "-1";
    private static final boolean DEFAULT_SETTING_NR_AUTO = true;
    private static final int DEFAULT_SETTING_PROJECTION_MODE = 1;
    public static final double DEFAULT_SETTING_ROTATION_RATIO = 0.96;
    public static final int DEFAULT_SETTING_SAVE_INPUT_IMAGES = 0;
    public static final double DEFAULT_SETTING_SEAMSEARCH_RATIO = 1.0;
    public static final int DEFAULT_SETTING_SENSOR_MODE = 1;
    public static final String DEFAULT_SETTING_SHADING_MODE = "-1";
    public static final String DEFAULT_SETTING_TONEMAP_MODE = "-1";
    public static final boolean DEFAULT_SETTING_USE_CAMERA2 = true;
    public static final boolean DEFAULT_SETTING_USE_GPS = false;
    public static final boolean DEFAULT_SETTING_USE_GRAVITY_SENSOR = false;
    public static final double DEFAULT_SETTING_ZROTATION_COEFF = 0.95;
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
    private static final Object mRecorderLock;

    public int anti_banding;
    public double aov_gain;
    public double aov_x;
    public double aov_y;
    public boolean auto_ae_lock;
    public boolean auto_wb_lock;
    public int calcseam_pixnum;
    public int camera_id;
    public int capture_mode;
    public int capture_size_index;
    public int color_correction_mode;
    public double distortion_k1;
    public double distortion_k2;
    public double distortion_k3;
    public double distortion_k4;
    public double draw_threshold;
    public int edge_mode;
    public int focus_mode;
    public double input_movie_fps;
    private boolean isValidCameraParamFrame;
    private final FragmentActivity mActivity;
    private Camera2ParamsFragment mCamera2ParamsFragment;
    private int mCamera2ParamsFragmentSelectedMode;
    private boolean mIsTvLock;
    private MorphoCameraBase mMorphoCamera;
    private int mNumEncodedFrames;
    private final VideoRecorderRaw.RawRenderListener mRawRenderListener;
    private long mRecordTimeStamp;
    private long mRecordTimeStampStart;
    private VideoRecorderRaw mRecorder;
    private View mTvView;
    public int motion_detection_mode;
    public int noise_reduction_mode;
    public boolean nr_auto;
    public int nr_strength;
    public int projection_mode;
    public double rotation_ratio;
    public int save_input_images;
    public double seamsearch_ratio;
    public int sensor_mode;
    public int shading_mode;
    public double shrink_ratio;
    public int tonemap_mode;
    public int ui_control_mode;
    public int unsharp_strength;
    public boolean use_camera2;
    public boolean use_deform;
    public boolean use_gps;
    public boolean use_gravity_sensor;
    public boolean use_luminance_correction;
    public double zrotation_coeff;

    static {
        mRecorderLock = new Object();

        DEFAULT_UI_CONTROL_MODES = new SimpleArrayMap<>();
        DEFAULT_UI_CONTROL_MODES.put("E6653,21", Integer.valueOf(1));
        DEFAULT_UI_CONTROL_MODES.put("E6653,22", Integer.valueOf(1));
        DEFAULT_UI_CONTROL_MODES.put("E6653,23", Integer.valueOf(1));
        DEFAULT_UI_CONTROL_MODES.put("E6683,21", Integer.valueOf(1));
        DEFAULT_UI_CONTROL_MODES.put("E6683,22", Integer.valueOf(1));
        DEFAULT_UI_CONTROL_MODES.put("E6683,23", Integer.valueOf(1));
        DEFAULT_UI_CONTROL_MODES.put("LG-H961N,22", Integer.valueOf(2));

        DEFAULT_CAPTURE_RESOLUTION = new int[][]{
                {0xf00, 0x870},
                {0x780, 0x438},
                {0x500, 0x2d0},
        };
    }

    public InternalSettings(FragmentActivity activity) {
        mMorphoCamera = null;
        isValidCameraParamFrame = false;
        mRawRenderListener = new VideoRecorderRaw.RawRenderListener() {
            @Override
            public int onDraw(ByteBuffer buffer, Image image) {
                if (mRecorder != null) {
                    return MorphoPanoramaGP2.renderByteBuffer(buffer, image);
                }
                return 0;
            }
        };
        mActivity = activity;
        capture_size_index = 0;
        use_gps = false;
        save_input_images = 0;
        auto_ae_lock = true;
        auto_wb_lock = true;
        anti_banding = 1;
        capture_mode = 0;
        shrink_ratio = 7.5;
        calcseam_pixnum = 0x7e90;
        aov_x = 0.0;
        aov_y = 0.0;
        use_deform = false;
        use_luminance_correction = false;
        seamsearch_ratio = 1.0;
        zrotation_coeff = 0.95;
        draw_threshold = 0.5;
        sensor_mode = 1;
        use_gravity_sensor = false;
        unsharp_strength = 0x600;
        input_movie_fps = 15.0;
        aov_gain = 1.0;
        distortion_k1 = 0.0;
        distortion_k2 = 0.0;
        distortion_k3 = 0.0;
        distortion_k4 = 0.0;
        rotation_ratio = 0.96;
        ui_control_mode = 0;
        focus_mode = 0;
        use_camera2 = true;
        camera_id = 0;
        color_correction_mode = Integer.parseInt("-1");
        edge_mode = Integer.parseInt("-1");
        noise_reduction_mode = Integer.parseInt("-1");
        shading_mode = Integer.parseInt("-1");
        tonemap_mode = Integer.parseInt("-1");
        projection_mode = 1;
        motion_detection_mode = 0;
        nr_auto = true;
        nr_strength = 0;
    }

    private Camera2ParamsFragment getCamera2ParamsFragment() {
        if (mCamera2ParamsFragment == null) {
            ((ViewStub) mActivity.findViewById(R.id.stub_debug_view)).inflate();
            mCamera2ParamsFragment = (Camera2ParamsFragment) mActivity.getSupportFragmentManager()
                    .findFragmentById(R.id.camera2_params);
        }
        return mCamera2ParamsFragment;
    }

    private int getIndexOfDefaultCaptureSize(MorphoPanoramaGP2Application app) {
        Size[] sizes = app.getSupportedPictureSizes();
        for (int i = 0; i < sizes.length; i++) {
            Size size = sizes[i];
            for (int j = 0; j < DEFAULT_CAPTURE_RESOLUTION.length; j++) {
                int[] resolution = DEFAULT_CAPTURE_RESOLUTION[j];
                if (size.getWidth() == resolution[0] && size.getHeight() == resolution[1]) {
                    return i;
                }
            }
        }
        return 0;
    }

    private View getTvView() {
        if (mTvView == null) {
            ((ViewStub) mActivity.findViewById(R.id.stub_camera_info)).inflate();
            mTvView = mActivity.findViewById(R.id.tv_view);
        }
        return mTvView;
    }

    private boolean isVisibleCameraParamFrame() {
        if (!isValidCameraParamFrame) {
            return false;
        }
        return mActivity.findViewById(R.id.camera_param_frame).getVisibility() == View.VISIBLE;
    }

    private void print(MorphoPanoramaGP2Application app) {
    }

    private void setVisibilityCameraParamFrame(int visibility) {
        if (!isValidCameraParamFrame) {
            return;
        }
        mActivity.findViewById(R.id.camera_param_frame).setVisibility(visibility);
    }

    public void encodeFrame(Image image) {
    }

    public void finalizeEncoder() {
    }

    public int getAntiBanding() {
        switch (anti_banding) {
            case 0:
                return 0;
            case 1:
                return 3;
            case 2:
                return 1;
            case 3:
                return 2;
            default:
                return 3;
        }
    }

    public int getCaptureMode() {
        if (!use_camera2) {
            return 1;
        }
        return capture_mode;
    }

    public void getSettingValue(MorphoPanoramaGP2Application app) {
        capture_size_index = getIndexOfDefaultCaptureSize(app);
        Size[] sizes = app.getSupportedPictureSizes();
        Size size = sizes[capture_size_index];
        LogFilter.i(LOG_TAG, String.format(Locale.US, "capture_size : %d x %d",
                Integer.valueOf(size.getWidth()), Integer.valueOf(size.getHeight())));
    }

    public void initViews(MorphoCameraBase camera, Handler handler, boolean unused) {
        Camera2ParamsFragment fragment = getCamera2ParamsFragment();
        if (use_camera2) {
            ((MorphoCamera) camera).setCamera2Params(fragment);
        }
        if (OPERATING_MODE_DEBUG) {
            fragment.setEventHandler(new Camera2ParamsFragment.ICamera2ParamsFragmentEvent() {
                @Override
                public void onParamChanged() {
                    if (isValidCameraParamFrame) {
                        if (getCamera2ParamsFragment().tv()) {
                            getTvView().setVisibility(View.VISIBLE);
                        } else {
                            getTvView().setVisibility(View.INVISIBLE);
                        }
                    }
                    mMorphoCamera.cameraState().onRequestParamChange();
                }
            });
            handler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    revertCamera2ParamsFragmentMode();
                }
            }, 0);
        }
    }

    public void initializeEncoder(String param, int width, int height) {
    }

    public void initializeUI(CameraInfo cameraInfo) {
        Camera2ParamsFragment fragment = getCamera2ParamsFragment();
        fragment.initializeUI(cameraInfo);
        if (use_camera2) {
            fragment.setSensorSensitivity(cameraInfo.getSensitivityMin());
            fragment.setExposureTime(fragment.frameDuration().longValue());
        }
    }

    public boolean isInfinityFocus() {
        return focus_mode == 1;
    }

    public boolean isTvLock() {
        if (isValidCameraParamFrame) {
            return ((Switch) mActivity.findViewById(R.id.tv_lock)).isChecked();
        }
        return false;
    }

    public boolean isUseCamera1(Context context) {
        return false;
    }

    public void loadValues() {
    }

    public boolean onBackKeyDown() {
        if (!isValidCameraParamFrame) {
            return false;
        }
        if (isVisibleCameraParamFrame()) {
            setVisibilityCameraParamFrame(View.INVISIBLE);
            return true;
        }
        return false;
    }

    public void putParamFile(String fileName, CameraInfo cameraInfo, String param) {
    }

    public void removePreviewSize(Context context) {
    }

    public void resetValues() {
    }

    public synchronized void revertCamera2ParamsFragmentMode() {
        if (!isValidCameraParamFrame) {
            return;
        }
        Camera2ParamsFragment fragment = getCamera2ParamsFragment();
        switch (mCamera2ParamsFragmentSelectedMode) {
            case 1:
                fragment.setTv();
                fragment.setEnabled(true);
                break;
            case 2:
                fragment.setManual();
                fragment.setEnabled(true);
                break;
            default:
                break;
        }
        mCamera2ParamsFragmentSelectedMode = -1;
    }

    public void saveSettings(String fileName, String param, CameraInfo cameraInfo, int i1, int i2,
                              int i3, int i4, int i5, long l1) {
    }

    public void saveValues() {
    }

    public void settingCaptureMode(Context context) {
        int mode;
        if (!use_camera2) {
            mode = 1;
        } else if (Build.MODEL.equals("EVA-TL00")) {
            mode = 3;
        } else {
            mode = 4;
        }
        capture_mode = mode;
    }

    public void startSettingActivity(Context context, double[] values, String param,
                                      Camera2ImageQualitySettings[] settings, String[] strings) {
    }

    public void toggleVisibilityCameraParamFrame() {
        if (!isValidCameraParamFrame) {
            return;
        }
        if (isVisibleCameraParamFrame()) {
            setVisibilityCameraParamFrame(View.INVISIBLE);
        } else {
            setVisibilityCameraParamFrame(View.VISIBLE);
        }
    }

    public boolean tv() {
        return isValidCameraParamFrame && getCamera2ParamsFragment().tv();
    }

    public void updateCamera2ImageQualitySettings(Context context, Camera2ImageQualitySettings[] settings) {
        if (settings[0].isAvailable() && color_correction_mode == Integer.parseInt("-1")) {
            color_correction_mode = Integer.parseInt(settings[0].getDefaultValue(getCaptureMode()));
        }
        if (settings[1].isAvailable() && edge_mode == Integer.parseInt("-1")) {
            edge_mode = Integer.parseInt(settings[1].getDefaultValue(getCaptureMode()));
        }
        if (settings[2].isAvailable() && noise_reduction_mode == Integer.parseInt("-1")) {
            noise_reduction_mode = Integer.parseInt(settings[2].getDefaultValue(getCaptureMode()));
        }
        if (settings[3].isAvailable() && shading_mode == Integer.parseInt("-1")) {
            shading_mode = Integer.parseInt(settings[3].getDefaultValue(getCaptureMode()));
        }
        if (settings[4].isAvailable() && tonemap_mode == Integer.parseInt("-1")) {
            tonemap_mode = Integer.parseInt(settings[4].getDefaultValue(getCaptureMode()));
        }
    }

    public void updateCameraInfoView(long exposureTimeNs, int iso) {
        if (!isValidCameraParamFrame) {
            return;
        }
        CameraInfoViewFragment fragment = (CameraInfoViewFragment) mActivity.getSupportFragmentManager()
                .findFragmentById(R.id.camera_info_view);
        if (fragment != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(String.format(Locale.US, "ISO:%n %d%nExposureTime:%n ", Integer.valueOf(iso)));
            sb.append(NumberFormat.getNumberInstance().format(exposureTimeNs));
            sb.append("nsec");
            fragment.update(sb.toString());
        }
    }

    public void updateTvValue() {
        if (!isValidCameraParamFrame) {
            return;
        }
        if (getCamera2ParamsFragment().tv()) {
            ((MorphoCamera) mMorphoCamera).updateTvValue();
        }
    }

    public void updateViewsForPreviewStart() {
        if (!isValidCameraParamFrame) {
            return;
        }
        if (getCamera2ParamsFragment().tv()
                && ((Switch) mActivity.findViewById(R.id.tv_auto_lock)).isChecked()) {
            ((Switch) mActivity.findViewById(R.id.tv_lock)).setChecked(mIsTvLock);
        }
        CameraInfoViewFragment fragment = (CameraInfoViewFragment) mActivity.getSupportFragmentManager()
                .findFragmentById(R.id.camera_info_view);
        if (fragment != null && fragment.getView() != null) {
            fragment.getView().setVisibility(View.VISIBLE);
        }
    }

    public void updateViewsForTakePictureStart() {
        if (!isValidCameraParamFrame) {
            return;
        }
        mActivity.findViewById(R.id.camera_param_frame).setVisibility(View.INVISIBLE);
        if (getCamera2ParamsFragment().tv()
                && ((Switch) mActivity.findViewById(R.id.tv_auto_lock)).isChecked()) {
            mIsTvLock = ((Switch) mActivity.findViewById(R.id.tv_lock)).isChecked();
            ((Switch) mActivity.findViewById(R.id.tv_lock)).setChecked(true);
        }
    }
}
