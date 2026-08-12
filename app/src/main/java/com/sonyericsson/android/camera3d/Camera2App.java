package com.sonyericsson.android.camera3d;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Build;
import android.os.CountDownTimer;
import android.os.Environment;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.view.ScaleGestureDetector;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.sonyericsson.android.camera3d.base.DirectionFunction;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;
import com.sonyericsson.android.camera3d.base.PanoramaState;
import com.sonyericsson.android.camera3d.base.SettingListBase;
import com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback;
import com.sonyericsson.android.camera3d.dialog.AlertOkDialog;
import com.sonyericsson.android.camera3d.dialog.AlertSettingDialog;
import com.sonyericsson.android.camera3d.dialog.LicenseDialog;
import com.sonyericsson.android.camera3d.dialog.RotatableDialogFragment;

import java.util.LinkedList;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;

/**
 * NOTE(手刻筆記): 本檔案為骨架(fields + constructor + 61 個常數)，方法本體正在依 smali 逐一手刻中，
 * 尚未完成、無法編譯。所有欄位型別與初始值均直接由 Camera2App.smali 的 .field / <clinit> / <init> 逐一還原，
 * 為 100% 對照原始位元碼的正確值，之後所有 method 與 62 個 inner class 會依此欄位表合併進來。
 */
public class Camera2App extends FragmentActivity implements SensorEventListener,
        IMorphoPanoramaGP2Callback, MorphoCameraBase.IMorphoCameraListener,
        ThermalAlertReceiver.ThermalAlertInterface, SettingListBase.OnSelectedListener,
        SettingList.OnCheckedChangeListener {

    private static final boolean ALWAYS_AUTO_MODE_AFTER_STARTUP =
            Build.MODEL.equals("Nexus 5X") || Build.MODEL.equals("Robin");
    private static final int[][] ASPECT_TABLE = {{16, 9}, {4, 3}, {1, 1}};
    private static final int BASIC_SYSTEM_UI_FLAGS = 0x700;
    private static final int BLACK_SCREEN_COUNTER_FOR_LAUNCH = 2;
    private static final int BLACK_SCREEN_COUNTER_FOR_SUSPEND = 3;
    public static final boolean DEBUG_CAMERA_PARAM = false;
    private static final boolean DEBUG_HIDE_MINI_PREVIEW = false;
    private static final int DEBUG_VERSION = 0x16901;
    private static final boolean DEFAULT_SETTING_CAMERA_SOUND = true;
    private static final boolean DEFAULT_SETTING_SAVE_INTERNAL_STORAGE = true;
    private static final boolean DEFAULT_SETTING_SAVE_LOCATION = false;
    private static final String DEFAULT_SETTING_USE_VOLUME_KEY = "HW_CAMERA_KEY";
    private static final int DIR_ID_MAX = 0x3e7;
    private static final int DIR_ID_MIN = 0x64;
    private static final boolean DO_BACKGROUND_OPEN_CAMERA = true;
    private static final String DUMMY_FILE_MIME_TYPE = "text/plane";
    private static final String DUMMY_FILE_NAME = "sdcard_write_test";
    private static final int FILE_ID_MAX = 0x270f;
    private static final int FILE_ID_MIN = 0x1;
    private static final boolean GET_PREVIEW_IMAGE_EVERY_FRAME = false;
    private static final long INTERVAL = 0x3e8L;
    private static final int LENGTH_OF_FILE_NAME = 0xc;
    private static final boolean LIMIT_DIRECTION = Build.MANUFACTURER.equals("Sony");
    private static final String LOG_TAG = "Camera2App";
    private static final int MAX_LOCAL_CACHE_NUM = 0x64;
    private static final int OVERLAY_DIALOG_NUM_MAX = 3;
    private static final String[] PERMISSIONS_CAMERA_STORAGE = {
            "android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE",
            "android.permission.READ_EXTERNAL_STORAGE"};
    private static final String[] PERMISSIONS_LOCATION = {
            "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};
    private static final String[] PERMISSIONS_STORAGE = {
            "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"};
    private static final String[] PERMISSION_CAMERA = {"android.permission.CAMERA"};
    private static final String PREFIX_DIR = "ANDRO";
    private static final String PREFIX_IMAGE = "DSC_";
    private static final String PREFIX_MOVIE = "MOV_";
    private static final String PREF_KEY = "ApplicationPreference";
    private static final String PREF_KEY_FIRST_LAUNCH = "First Launch";
    private static final String PREF_KEY_FIRST_TIME_LOCATION = "First Time Location";
    private static final String PREF_KEY_VIEW_ANGLE_CAMERA_ID = "VIEW_ANGLE_CAMERA_ID";
    private static final String PREF_KEY_VIEW_ANGLE_H = "VIEW_ANGLE_H";
    private static final String PREF_KEY_VIEW_ANGLE_V = "VIEW_ANGLE_V";
    private static final float PREVIEW_LONG_SIDE_CROP_RATIO = 1.0f;
    private static final boolean PREVIEW_SPREAD_BOTH_SIDES = Build.MANUFACTURER.equals("Sony");
    private static final boolean PRINT_PROCESSING_TIME = false;
    private static final Object PreviewImageSynchronizedObject = new Object();
    private static final long REMAINING_MEMORY_SIZE_MIN = 0x3c00000L;
    private static final long REMAINING_MEMORY_SIZE_RECOMMEND = 0x9600000L;
    private static final int REQUEST_CAMERA = 0x1;
    private static final int REQUEST_CAMERA_STORAGE = 0x0;
    private static final int REQUEST_LOCATION = 0x3;
    private static final int REQUEST_SD_CARD_PERMISSION = 0x14;
    private static final int REQUEST_STORAGE = 0x2;
    private static final int REQUEST_SYSTEM_LOCATION_PERMISSION = 0x28;
    private static final int REQUEST_VIEW = 0x1e;
    private static final boolean SAVE_DESTINATION_EXTERNAL = false;
    private static final boolean SAVE_DESTINATION_INTERNAL = true;
    private static final boolean SHOW_DUAL_STORAGE_AVAILABLE_DIALOG = false;
    private static final int SLEEP_MICROSEC = Build.MANUFACTURER.equals("Sony") ? 0x1388 : 0x3e8;
    private static final long SLEEP_MILLISEC = SLEEP_MICROSEC / 1000;
    private static final int SLEEP_NANOSEC = (SLEEP_MICROSEC % 1000) * 1000;
    private static final boolean STABILIZE_PREVIEW_FRAME = true;
    private static final long START_TIME = 0x2bf20L;
    private static final String STORAGE_PATH_PREFIX = Environment.DIRECTORY_DCIM;
    private static final boolean USE_TEXTURE_VIEW_FOR_MINI_PREVIEW = false;
    private static final String VALUE_VOLUME_KEY_CAMERA = "HW_CAMERA_KEY";
    private static final String VALUE_VOLUME_KEY_VOLUME = "VOLUME";
    private static final String VALUE_VOLUME_KEY_ZOOM = "ZOOM";
    private static final Object mSyncCancelSave = new Object();
    private static final Object mSyncImageTask = new Object();
    private static final CaptureImage sAttachExit = new Camera2Image(null);

    private final double[] mACMatrix = new double[9];
    private Sensor mAccelerometer;
    private boolean mActive = false;
    private AlertOkDialog mAlertOkDialog;
    private AlertSettingDialog mAlertSettingDialog;
    private int mAngle;
    private double[] mAovs;
    private int mArrowDir;
    private final LinkedBlockingQueue mAttachImageQueue = new LinkedBlockingQueue();
    private long mAttachNumDirectionUndecided;
    private ImageView mAutoFocusCircle;
    private android.content.BroadcastReceiver mBroadcastReceiver;
    private final Camera2ImageQualitySettings[] mCamera2ImageQualitySettings = new Camera2ImageQualitySettings[5];
    private CountDownTimer mCameraCheckTimer;
    private int mCameraIdTmp;
    private int mCameraOrientation;
    private boolean mCanDisableShutterSound;
    private CountDownTimer mCaptureTimer;
    private CountDownTimer mCountDownTimer;
    private boolean mCreateSequence = false;
    private int mCurOrientation = -1;
    private View mCurPreviewFrame;
    private int mCurViewDegree = -1;
    private RotatableDialogFragment mDialog;
    private EnumDialogType mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
    private DirectionFunction mDirectionFunction;
    private boolean mEngineEnding = false;
    private final ExecutorService mExecutor = Executors.newCachedThreadPool();
    private int mFocusedSoundId;
    private String mFolderPath;
    private GetLatestImageTask mGetLatestImageTask = null;
    private Timer mGpsSearchTimer;
    private TimerTask mGpsSearchTimerTask;
    private float[] mGravities;
    private boolean mGuiCapturePressed = false;
    private final double[] mGyroMatrix = new double[9];
    private Sensor mGyroscope;
    private final Handler mHandler = new Handler();
    private final Runnable mHideBlackScreenRunnable; // TODO(合併階段): = new Camera2App$15(this) 匿名類別，由 anonymous-classes fragment 合併
    private String mImageFileLocation = null;
    private String mImageFormat;
    private long mImageId = -1L;
    private int mIndexSettingSaveDestinationInternal;
    private int mIndexSettingSaveDestinationSD;
    private final MorphoPanoramaGP2.InitParam mInitParam = new MorphoPanoramaGP2.InitParam();
    private String mInputFolderPath;
    private final InternalSettings mInternalSettings = new InternalSettings(this);
    private boolean mIsAutoFocusProcessing = false;
    private boolean mIsFrontCamera;
    private boolean mIsInflateSavingProgress = false;
    private boolean mIsInvalidDir;
    private final boolean[] mIsMiniPreviewArrowsVisible = new boolean[4];
    private boolean mIsNotifySave2Internal = false;
    private boolean mIsPanoramaCancel = false;
    private boolean mIsSensorAverage;
    private boolean mKeyFocusPressed = false;
    private CaptureResult mLatestCaptureResult;
    private LicenseDialog mLicenseDialog;
    private final LinkedList mLocalCache = new LinkedList();
    private LinkedList mLocalCacheBackup;
    private PanoramaGP2LocationManager mLocationManager;
    private String mMainThreadName = null;
    private int mMaxHeight;
    private int mMaxWidth;
    private Bitmap mMiniPreviewBitmapForCamera1;
    private View mMiniPreviewFrame;
    private ImageView mMiniPreviewImageView;
    private Matrix mMiniPreviewMatrix;
    private final TextureView.SurfaceTextureListener mMiniPreviewSurfaceTextureListener; // TODO(合併階段): = new Camera2App$2(this) 匿名類別
    private TextureView mMiniPreviewTextureView;
    private MorphoCameraBase mMorphoCamera = null;
    private MorphoPanoramaGP2 mMorphoPanoramaGP2;
    private ExtendedOrientationEventListener mOrientationEventListener = null;
    private int mOverlayDialogNum = 0;
    private final EnumDialogType[] mOverlayDialogType = new EnumDialogType[3];
    private PanoramaState mPanoramaState;
    private boolean mPermissionSequence = false;
    private Toast mPinToast = null;
    private ImageView mPreviewArrow;
    private Bitmap mPreviewBitmap = null;
    private Bitmap mPreviewFitBitmap = null;
    private Canvas mPreviewFitBitmapCanvas;
    private Paint mPreviewFitBitmapPaint;
    private Matrix mPreviewFitMatrix;
    private FrameLayout mPreviewFrame;
    private final Runnable mPreviewFrameRunnable; // TODO(合併階段): = new Camera2App$16(this) 匿名類別
    private ImageView mPreviewImageView;
    private View mPreviewLine1;
    private View mPreviewLine2;
    private final double[] mRVMatrix = new double[9];
    private boolean mResumeAlertOkDialog = false;
    private boolean mResumeAlertSettingDialog = false;
    private boolean mResumeSequence = false;
    private RotatableToast mRotatableToast;
    private Sensor mRotationVector = null;
    private int mSaveDirId = -1;
    private int mSaveFileId = -1;
    private String mSavePanoramaPath;
    private boolean mSavingBackground = false;
    private ScaleGestureDetector mScaleGestureDetector;
    private int mScreenCounter = 3;
    private int mSensorAspectIndex = 0;
    private int mSensorCnt;
    private SensorFusion mSensorFusion = null;
    private int mSensorFusionMode;
    private SensorManager mSensorManager;
    private final SensorSensitivityAverageManager mSensorSensitivityAverageManager; // TODO(合併階段): = new SensorSensitivityAverageManager(this)
    private SettingList mSettingList;
    private final int[] mSettingSaveDestinationList = {
            R.string.cam_strings_panorama_save_destination_ims_txt,
            R.string.cam_strings_panorama_save_destination_sd_txt};
    private SettingSubList mSettingSubListSaveDestination;
    private SettingSubList mSettingSubListUseVolumeKey;
    private final int[] mSettingUseVolumeKeyList = {
            R.string.cam_strings_panorama_volumekey_volume_txt,
            R.string.cam_strings_panorama_volumekey_shutter_txt};
    private final Settings mSettings; // TODO(合併階段): = new Settings(this)
    private final ShotSettings mShotSettings; // TODO(合併階段): = new ShotSettings(this)
    private boolean mShutdownView = false;
    private int mShutterSoundId;
    private SoundPool mSoundPool;
    private boolean mStartTrackFlag = true;
    private int mStopSoundId;
    private final SurfaceHolder.Callback mSurfaceListener; // TODO(合併階段): = new Camera2App$3(this) 匿名類別
    private final TextureView.SurfaceTextureListener mSurfaceTextureListener; // TODO(合併階段): = new Camera2App$1(this) 匿名類別
    private SurfaceView mSurfaceView;
    private final Runnable mTakePictureVisibleRunnable; // TODO(合併階段): = new Camera2App$17(this) 匿名類別
    private boolean mTemperatureHigh = false;
    private TextureViewEx mTextureView;
    private ThermalAlertReceiver mThermalAlertReceiver;
    private Bitmap mThumbnailBitmap;
    private String mThumbnailFilePath;
    private Uri mThumbnailUri;
    private final UpdateCameraInfoViewRunnable mUpdateCameraInfoViewRunnable; // TODO(合併階段): = new UpdateCameraInfoViewRunnable(this)
    private boolean mUseCamera1;
    private boolean mUseCamera1Tmp;
    private View mView;
    private float mViewAngleH = 60.0f;
    private float mViewAngleV = 40.0f;
    private TextView mWarningTextView;
    private Point realPixelSize = new Point();

    // TODO(合併階段): 386 個方法本體尚未填入，將依 camera2app_method_reference.txt 逐一手刻補上。
}
