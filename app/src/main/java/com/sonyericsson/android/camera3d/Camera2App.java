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

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.hardware.Camera;
import android.hardware.SensorEvent;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.location.Location;
import android.location.LocationManager;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.ExifInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.preference.PreferenceManager;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.support.v4.provider.DocumentFile;
import android.telephony.TelephonyManager;
import android.text.format.DateFormat;
import android.util.DisplayMetrics;
import android.util.Size;
import android.util.SizeF;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.ViewStub;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.webkit.MimeTypeMap;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;

import com.sonyericsson.android.camera3d.base.AttachRunnable;
import com.sonyericsson.android.camera3d.camera_states.AutoFocusState;
import com.sonyericsson.android.camera3d.camera_states.Camera1AutoFocusState;
import com.sonyericsson.android.camera3d.camera_states.Camera1PreviewState;
import com.sonyericsson.android.camera3d.camera_states.Camera1UnlockFocusState;
import com.sonyericsson.android.camera3d.camera_states.CameraState;
import com.sonyericsson.android.camera3d.camera_states.PreviewState;
import com.sonyericsson.android.camera3d.camera_states.TakePictureState;
import com.sonyericsson.android.camera3d.camera_states.UnlockFocusState;
import com.sonyericsson.android.camera3d.core.JpegIO;
import com.sonyericsson.android.camera3d.core.MorphoSensorFusion;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import com.sonyericsson.android.camera3d.utils.NativeMemoryAllocator;
import com.sonyericsson.android.camera3d.utils.io.StorageMonitor;

import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

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
    private final Runnable mHideBlackScreenRunnable = new Runnable() {
    @Override
    public void run() {
        if (!Camera2App.this.mActive) {
            return;
        }
        Camera2App.this.hideBlackScreen();
    }
};
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
    private LinkedList mLocalCache = new LinkedList();
    private LinkedList mLocalCacheBackup;
    private PanoramaGP2LocationManager mLocationManager;
    private String mMainThreadName = null;
    private int mMaxHeight;
    private int mMaxWidth;
    private Bitmap mMiniPreviewBitmapForCamera1;
    private View mMiniPreviewFrame;
    private ImageView mMiniPreviewImageView;
    private Matrix mMiniPreviewMatrix;
    private final TextureView.SurfaceTextureListener mMiniPreviewSurfaceTextureListener = new TextureView.SurfaceTextureListener() {
    @Override
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int width, int height) {
        if (Camera2App.this.mTextureView.isAvailable()) {
            Camera2App.this.textureViewPrepared();
        }
    }

    @Override
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Camera2App.this.mMiniPreviewTextureView = null;
        return false;
    }

    @Override
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int width, int height) {
    }

    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
};
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
    private final Runnable mPreviewFrameRunnable = new Runnable() {
    @Override
    public void run() {
        if (!Camera2App.this.mActive) {
            return;
        }
        if (Camera2App.this.mPreviewFrame != null) {
            Camera2App.this.mPreviewFrame.setVisibility(View.GONE);
            Camera2App.this.mCurPreviewFrame.setVisibility(View.GONE);
            Camera2App.this.mPreviewArrow.setVisibility(View.GONE);
        }
        if (Camera2App.this.mMiniPreviewImageView != null) {
            Camera2App.this.mMiniPreviewImageView.setImageBitmap(
                    Camera2App.this.mTextureView.getBitmap(
                            Camera2App.this.mMiniPreviewImageView.getWidth(),
                            Camera2App.this.mMiniPreviewImageView.getHeight()));
        }
    }
};
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
    private final SensorSensitivityAverageManager mSensorSensitivityAverageManager = new SensorSensitivityAverageManager();
    private SettingList mSettingList;
    private final int[] mSettingSaveDestinationList = {
            R.string.cam_strings_panorama_save_destination_ims_txt,
            R.string.cam_strings_panorama_save_destination_sd_txt};
    private SettingSubList mSettingSubListSaveDestination;
    private SettingSubList mSettingSubListUseVolumeKey;
    private final int[] mSettingUseVolumeKeyList = {
            R.string.cam_strings_panorama_volumekey_volume_txt,
            R.string.cam_strings_panorama_volumekey_shutter_txt};
    private final Settings mSettings = new Settings();
    private final ShotSettings mShotSettings = new ShotSettings();
    private boolean mShutdownView = false;
    private int mShutterSoundId;
    private SoundPool mSoundPool;
    private boolean mStartTrackFlag = true;
    private int mStopSoundId;
    private final SurfaceHolder.Callback mSurfaceListener = new SurfaceHolder.Callback() {
    @Override
    public void surfaceCreated(SurfaceHolder holder) {
        MorphoCamera1 camera1 = (MorphoCamera1) Camera2App.this.mMorphoCamera;
        if (!camera1.openCamera(holder)) {
            Camera2App.this.setViewsVisibility(4);
            Camera2App.this.startDialog(Camera2App.EnumDialogType.DIALOG_TYPE_ERROR_CAMERA);
            return;
        }
        Camera2App.this.mViewAngleH = camera1.viewAngleH;
        Camera2App.this.mViewAngleV = camera1.viewAngleV;
        CameraInfo cameraInfo = camera1.cameraInfo();
        Camera2App.this.mInternalSettings.initializeUI(cameraInfo);
        Camera2App.this.makeEngineParam();
    }

    @Override
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        int rotation = Camera2App.this.getDisplayRotation();
        ((MorphoCamera1) Camera2App.this.mMorphoCamera).startPreview(rotation);
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder holder) {
    }
};
    private final TextureView.SurfaceTextureListener mSurfaceTextureListener = new TextureView.SurfaceTextureListener() {
    @Override
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int width, int height) {
        LogFilter.i("Camera2App", "onSurfaceTextureAvailable size : " + width + " x " + height);
        if (!Camera2App.this.mStartTrackFlag) {
            return;
        }
        if (!Camera2App.this.mActive) {
            return;
        }
        int liveViewHeight = Camera2App.this.getLiveViewHeight();
        int liveViewWidth = Camera2App.this.getLiveViewWidth();
        RelativeLayout.LayoutParams textureParams = new RelativeLayout.LayoutParams(liveViewWidth, liveViewHeight);
        LogFilter.i("Camera2App", "display size : " + liveViewWidth + " x " + liveViewHeight);
        textureParams.addRule(Camera2App.this.isPreviewCentering() ? 0xd : 0xa, -1);
        Camera2App.this.mTextureView.setLayoutParams(textureParams);

        RelativeLayout.LayoutParams autoFocusParams = (RelativeLayout.LayoutParams) Camera2App.this.mAutoFocusCircle.getLayoutParams();
        if (Camera2App.this.isPreviewCentering()) {
            autoFocusParams.addRule(0xd, -1);
        } else {
            Drawable drawable = Camera2App.this.getDrawable(0x7f07006d);
            int drawableHeight = drawable != null ? drawable.getMinimumHeight() : 0;
            autoFocusParams.topMargin += (liveViewHeight - drawableHeight) / 2;
            autoFocusParams.addRule(0xe, -1);
        }
        Camera2App.this.mAutoFocusCircle.setLayoutParams(autoFocusParams);

        int bottomMargin = (int) (Camera2App.this.realPixelSize.y * 0.3);
        int settingViewWidth = Camera2App.this.findViewById(0x7f08003f).getLayoutParams().width;
        int settingDimen = Camera2App.this.getResources().getDimensionPixelSize(
                Camera2App.this.isDisplay18_9() ? 0x7f06005a : 0x7f060059);
        bottomMargin -= (settingViewWidth + settingDimen);

        boolean isResolution16_9 = Camera2App.this.isResolution16_9();

        View view785 = Camera2App.this.findViewById(0x7f080085);
        RelativeLayout.LayoutParams params785 = (RelativeLayout.LayoutParams) view785.getLayoutParams();
        params785.height = Camera2App.this.getResources().getDimensionPixelSize(isResolution16_9 ? 0x7f060082 : 0x7f060083);
        params785.bottomMargin = bottomMargin;
        view785.setLayoutParams(params785);

        RelativeLayout.LayoutParams line1Params = (RelativeLayout.LayoutParams) Camera2App.this.mPreviewLine1.getLayoutParams();
        line1Params.width = liveViewWidth;
        line1Params.bottomMargin = bottomMargin;
        line1Params.addRule(0xe, -1);
        Camera2App.this.mPreviewLine1.setLayoutParams(line1Params);

        RelativeLayout.LayoutParams line2Params = (RelativeLayout.LayoutParams) Camera2App.this.mPreviewLine2.getLayoutParams();
        line2Params.bottomMargin = Camera2App.this.getResources().getDimensionPixelSize(isResolution16_9 ? 0x7f060082 : 0x7f060083);
        line2Params.width = liveViewWidth;
        line2Params.addRule(0xe, -1);
        Camera2App.this.mPreviewLine2.setLayoutParams(line2Params);

        RelativeLayout.LayoutParams miniImageParams = (RelativeLayout.LayoutParams) Camera2App.this.mMiniPreviewImageView.getLayoutParams();
        miniImageParams.height = Camera2App.this.getResources().getDimensionPixelSize(isResolution16_9 ? 0x7f060084 : 0x7f060085);
        miniImageParams.bottomMargin = bottomMargin;
        Camera2App.this.mMiniPreviewImageView.setLayoutParams(miniImageParams);

        RelativeLayout.LayoutParams miniFrameParams = (RelativeLayout.LayoutParams) Camera2App.this.mMiniPreviewFrame.getLayoutParams();
        miniFrameParams.height = Camera2App.this.getResources().getDimensionPixelSize(isResolution16_9 ? 0x7f060084 : 0x7f060085);
        miniFrameParams.bottomMargin = bottomMargin;
        Camera2App.this.mMiniPreviewFrame.setLayoutParams(miniFrameParams);

        View view2b = Camera2App.this.findViewById(0x7f08002b);
        RelativeLayout.LayoutParams params2b = (RelativeLayout.LayoutParams) view2b.getLayoutParams();
        int half = Camera2App.this.getResources().getDimensionPixelSize(isResolution16_9 ? 0x7f060084 : 0x7f060085) / 2;
        params2b.bottomMargin = half;
        params2b.bottomMargin -= Camera2App.this.getResources().getDimensionPixelSize(0x7f06004e) / 2;
        view2b.setLayoutParams(params2b);

        View viewCa = Camera2App.this.findViewById(0x7f0800ca);
        RelativeLayout.LayoutParams paramsCa = (RelativeLayout.LayoutParams) viewCa.getLayoutParams();
        paramsCa.bottomMargin = bottomMargin;
        viewCa.setLayoutParams(paramsCa);

        Camera2App.this.mMiniPreviewImageView.setVisibility(View.VISIBLE);
        Camera2App.this.mMiniPreviewTextureView = null;
        Camera2App.this.textureViewPrepared();
    }

    @Override
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return true;
    }

    @Override
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int width, int height) {
        LogFilter.i("Camera2App", "onSurfaceTextureSizeChanged size : " + width + " x " + height);
    }

    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
};
    private SurfaceView mSurfaceView;
    private final Runnable mTakePictureVisibleRunnable = new Runnable() {
    @Override
    public void run() {
        if (Camera2App.this.mPreviewFrame != null) {
            Camera2App.this.mPreviewFrame.setVisibility(View.VISIBLE);
        }
    }
};
    private boolean mTemperatureHigh = false;
    private TextureViewEx mTextureView;
    private ThermalAlertReceiver mThermalAlertReceiver;
    private Bitmap mThumbnailBitmap;
    private String mThumbnailFilePath;
    private Uri mThumbnailUri;
    private final UpdateCameraInfoViewRunnable mUpdateCameraInfoViewRunnable = new UpdateCameraInfoViewRunnable();
    private boolean mUseCamera1;
    private boolean mUseCamera1Tmp;
    private View mView;
    private float mViewAngleH = 60.0f;
    private float mViewAngleV = 40.0f;
    private TextView mWarningTextView;
    private Point realPixelSize = new Point();

    // ======================================================================
    // Panorama state machine inner classes
    // ======================================================================

    // ===== PanoramaPreview =====
    // .super Lcom/sonyericsson/android/camera3d/base/PanoramaState;  accessFlags=0x2 (private, non-static inner class)
    /**
     * 全景拍攝：預覽階段（已建立 MorphoPanoramaGP2 引擎後，持續 attach 預覽影格、偵測方向與位置）。
     */
    private class PanoramaPreview extends PanoramaState {

        // 註：此欄位在整個 PanoramaPreview/DiffManager/UiUpdateRunnable/PreviewAttach/
        // PostAttachRunnable 群集與 PositionDetector 中都找不到任何讀取／寫入，
        // class 中也沒有 <clinit>，故無法從位元碼還原其原始數值；比照 JVM 對未賦值
        // static final 欄位的預設值保留為 0（判斷依據，詳見交付說明）。
        private static final int PREVIEW_SKIP_FRAME_NUM = 0;

        private final PositionDetector detector;
        private PreviewAttach mAttachRunnable;
        private final float mDrawPreviewFitScale;
        private final int mPreviewHeight;
        private final int mPreviewWidth;
        private int preview_skip_count;
        private final UiUpdateRunnable uiUpdateRunnable;

        public PanoramaPreview() {
            this(false);
        }

        public PanoramaPreview(boolean abort) {
            preview_skip_count = 0;
            uiUpdateRunnable = new UiUpdateRunnable();
            mAttachRunnable = null;
            if (abort) {
                abort();
            }

            DirectionFunction directionFunction = mDirectionFunction;
            int scale = directionFunction.getScale();
            Size previewSize = directionFunction.getPreviewSize();
            LogFilter.d("Camera2App", String.format(Locale.US, "previewSize %dx%d, scale %d",
                    previewSize.getWidth(), previewSize.getHeight(), scale));

            int direction = directionFunction.getDirection();
            if (direction == DirectionFunction.DIRECTION_DOWN || direction == DirectionFunction.DIRECTION_UP) {
                float ratio = (float) mMiniPreviewImageView.getHeight() / Math.round(previewSize.getWidth() * 1.0f);
                mPreviewWidth = mMiniPreviewImageView.getHeight();
                mPreviewHeight = Math.round(previewSize.getHeight() * ratio);
            } else {
                float ratio = (float) mMiniPreviewImageView.getHeight() / Math.round(previewSize.getHeight() * 1.0f);
                mPreviewWidth = Math.round(previewSize.getWidth() * ratio);
                mPreviewHeight = mMiniPreviewImageView.getHeight();
            }

            mPreviewBitmap = Bitmap.createBitmap(mPreviewWidth, mPreviewHeight, Bitmap.Config.ARGB_8888);
            int setPreviewRet = mMorphoPanoramaGP2.setPreviewImage(mPreviewWidth, mPreviewHeight);
            if (setPreviewRet != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US,
                        "MorphoSensorFusion.setPreviewImage error ret:0x%08X", setPreviewRet));
            }

            mDrawPreviewFitScale = 1.0f;

            Matrix rotateMatrix = new Matrix();
            rotateMatrix.setRotate(360 - mCurOrientation);
            rotateMatrix.postScale(mDrawPreviewFitScale, mDrawPreviewFitScale);
            mPreviewFitBitmap = Bitmap.createBitmap(mPreviewBitmap, 0, 0,
                    mPreviewBitmap.getWidth(), mPreviewBitmap.getHeight(), rotateMatrix, true);

            mPreviewFitBitmapCanvas = new Canvas(mPreviewFitBitmap);

            Paint fitPaint = new Paint();
            fitPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
            mPreviewFitBitmapPaint = fitPaint;

            Matrix fitMatrix = new Matrix();
            mPreviewFitMatrix = fitMatrix;
            int curOrientation = mCurOrientation;
            if (curOrientation == 90) {
                fitMatrix.setRotate(360 - curOrientation);
                fitMatrix.postTranslate(0.0f, mPreviewBitmap.getWidth());
            } else if (curOrientation == 270) {
                fitMatrix.setRotate(360 - curOrientation);
                fitMatrix.postTranslate(mPreviewBitmap.getHeight(), 0.0f);
            } else {
                fitMatrix.setRotate(curOrientation, mPreviewBitmap.getWidth() / 2.0f, mPreviewBitmap.getHeight() / 2.0f);
            }
            fitMatrix.postScale(mDrawPreviewFitScale, mDrawPreviewFitScale);

            detector = new PositionDetector(direction, mMaxWidth, mMaxHeight);

            if (PREVIEW_SPREAD_BOTH_SIDES) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(400L);
                mMiniPreviewImageView.startAnimation(alphaAnimation);
            } else {
                AnimationSet animationSet = new AnimationSet(true);
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                float toXValue = 0.0f;
                float toYValue = 0.0f;
                int outputRotation = mInitParam.output_rotation;
                if (outputRotation == 90 || outputRotation == 270) {
                    switch (direction) {
                        case DirectionFunction.DIRECTION_LEFT:
                            toXValue = 0.45f;
                            break;
                        case DirectionFunction.DIRECTION_RIGHT:
                            toXValue = -0.45f;
                            break;
                        case DirectionFunction.DIRECTION_UP:
                            toYValue = 0.45f;
                            break;
                        case DirectionFunction.DIRECTION_DOWN:
                            toYValue = -0.45f;
                            break;
                        default:
                            break;
                    }
                } else {
                    switch (direction) {
                        case DirectionFunction.DIRECTION_LEFT:
                            toYValue = 0.45f;
                            break;
                        case DirectionFunction.DIRECTION_RIGHT:
                            toYValue = -0.45f;
                            break;
                        case DirectionFunction.DIRECTION_UP:
                            toXValue = -0.45f;
                            break;
                        case DirectionFunction.DIRECTION_DOWN:
                            toXValue = 0.45f;
                            break;
                        default:
                            break;
                    }
                }
                TranslateAnimation translateAnimation = new TranslateAnimation(
                        Animation.RELATIVE_TO_PARENT, 0.0f, Animation.RELATIVE_TO_PARENT, toXValue,
                        Animation.RELATIVE_TO_PARENT, 0.0f, Animation.RELATIVE_TO_PARENT, toYValue);
                animationSet.setDuration(400L);
                animationSet.addAnimation(alphaAnimation);
                animationSet.addAnimation(translateAnimation);
                animationSet.setInterpolator(new AccelerateInterpolator());
                mMiniPreviewImageView.startAnimation(animationSet);
            }

            if (mAttachRunnable == null) {
                mAttachRunnable = new PreviewAttach();
                mExecutor.submit(mAttachRunnable);
            }
        }

        private void attachEnd(int resultCode) {
            initAttachQueue();
            listener.requestEnd(this, resultCode);
        }

        private void createPreviewImage(PerformanceCounter pc) {
            synchronized (PreviewImageSynchronizedObject) {
                pc.start();
                int ret = mMorphoPanoramaGP2.updatePreviewImage(mPreviewBitmap);
                pc.stop();
                pc.putLog("Camera2App", "mMorphoPanoramaGP2.updatePreviewImage");
                if (ret != 0) {
                    LogFilter.e("Camera2App", "mMorphoPanoramaGP2.updatePreviewImage error ret:" + ret);
                    return;
                }
                if (mPreviewFitBitmap != null) {
                    mPreviewFitBitmapCanvas.drawBitmap(mPreviewBitmap, mPreviewFitMatrix, mPreviewFitBitmapPaint);
                }
            }
        }

        @Override
        public boolean hasImage() {
            return true;
        }

        @Override
        public boolean isEnableTvAnalysis() {
            return detector.isEnableTvAnalysis();
        }

        @Override
        public void notifyTvAnalyzed() {
            detector.notifyTvAnalyzed();
        }

        @Override
        public boolean onSaveImage(CaptureImage image) {
            if (!isEngineRunning()) {
                LogFilter.e("Camera2App", "PanoramaPreview.onSaveImage mMorphoPanoramaGP2 is null!!");
                image.close();
                return false;
            }
            addAttachQueue(image);
            if (mAttachRunnable == null) {
                mAttachRunnable = new PreviewAttach();
                mExecutor.submit(mAttachRunnable);
            }
            return true;
        }

        @Override
        public void repeatTakePicture() {
            boolean result;
            switch (mInternalSettings.getCaptureMode()) {
                case 1:
                    result = mMorphoCamera.takePicture();
                    break;
                case 2:
                    result = mMorphoCamera.takePictureZSL();
                    break;
                case 3:
                    result = mMorphoCamera.takePictureBurst();
                    break;
                default:
                    result = true;
                    break;
            }
            if (!result) {
                onErrorCapture();
            }
        }

        // ===== DiffManager =====
        // .super Ljava/lang/Object;  accessFlags=0x2 (private, non-static inner class of PanoramaPreview)
        private class DiffManager {

            private static final int NUM = 5;

            private int add_num;
            private double ave;
            private int index;
            private final double[] pos = new double[NUM];

            public DiffManager() {
                clear();
            }

            private void calc() {
                double sum = 0.0;
                for (int i = 0; i < add_num; i++) {
                    sum += pos[i];
                }
                ave = sum / add_num;
            }

            public void add(double value) {
                pos[index] = value;
                index++;
                if (index >= NUM) {
                    index = 0;
                }
                if (add_num < NUM) {
                    add_num++;
                }
                calc();
            }

            public void clear() {
                for (int i = 0; i < NUM; i++) {
                    pos[i] = 0.0;
                }
                index = 0;
                add_num = 0;
            }

            public double getDiff() {
                return ave;
            }
        }

        // ===== UiUpdateRunnable =====
        // .super Ljava/lang/Object;  .implements Ljava/lang/Runnable;
        // accessFlags=0x2 (private, non-static inner class of PanoramaPreview)
        private class UiUpdateRunnable implements Runnable {

            private int mDetectResult;

            private UiUpdateRunnable() {
            }

            @Override
            public void run() {
                if (mTemperatureHigh) {
                    return;
                }

                // mDetectResult==2 -> "偵測到晃動過快" 提示；其餘所有數值（含界外值）都對應
                // 「請依方向移動」提示，原始 smali 中 pswitch_0 與 pswitch_2 兩個分支輸出相同字串。
                String message;
                if (mDetectResult == 2) {
                    message = getResources().getString(R.string.cam_strings_panorama_guide_too_fast_txt);
                } else {
                    message = getResources().getString(R.string.cam_strings_panorama_guide_direction_txt);
                }

                RectF frameRect = detector.getFrameRect();
                int warningWidth = mWarningTextView.getWidth();
                int warningHeight = mWarningTextView.getHeight();
                mWarningTextView.setText(message);
                if (isEngineRunning() && warningWidth > 0 && warningHeight > 0) {
                    mWarningTextView.setVisibility(View.VISIBLE);
                } else {
                    mWarningTextView.setVisibility(View.INVISIBLE);
                }

                if (mCurPreviewFrame.getVisibility() != View.VISIBLE && frameRect.width() > 0.0f) {
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(
                            Math.round(frameRect.width()), Math.round(frameRect.height()));
                    mCurPreviewFrame.setLayoutParams(layoutParams);
                    mCurPreviewFrame.setVisibility(View.VISIBLE);
                    mPreviewArrow.setVisibility(View.VISIBLE);
                    setMiniPreviewAndArrowsVisibility(false, false);
                }

                float left = frameRect.left;
                float top = frameRect.top;
                if (PREVIEW_SPREAD_BOTH_SIDES) {
                    left += detector.getPreviewCenteringMarginLeft();
                    top += detector.getPreviewCenteringMarginTop();
                    if (mPreviewImageView != null && mPreviewImageView.getWidth() > 0) {
                        mPreviewImageView.setTranslationX(detector.getPreviewCenteringMarginLeft());
                        mPreviewImageView.setTranslationY(detector.getPreviewCenteringMarginTop());
                    }
                }

                boolean isRtl = getResources().getConfiguration().getLayoutDirection() == View.LAYOUT_DIRECTION_RTL;
                if (isRtl) {
                    Point displaySize = new Point();
                    getWindowManager().getDefaultDisplay().getSize(displaySize);
                    left = left - displaySize.x + frameRect.width();
                }
                mCurPreviewFrame.setTranslationX(left);
                mCurPreviewFrame.setTranslationY(top);

                if (mMorphoPanoramaGP2 == null) {
                    return;
                }

                switch (mArrowDir) {
                    case 0:
                        if (isRtl) {
                            left -= frameRect.width();
                        } else {
                            left -= mPreviewArrow.getWidth();
                        }
                        top += (frameRect.height() - mPreviewArrow.getHeight()) / 2.0f;
                        break;
                    case 1:
                        if (isRtl) {
                            left += mPreviewArrow.getWidth();
                        } else {
                            left += frameRect.width();
                        }
                        top += (frameRect.height() - mPreviewArrow.getHeight()) / 2.0f;
                        break;
                    case 2:
                        left += (frameRect.width() - mPreviewArrow.getWidth()) / 2.0f;
                        top -= mPreviewArrow.getHeight();
                        break;
                    case 3:
                        left += (frameRect.width() - mPreviewArrow.getWidth()) / 2.0f;
                        top += frameRect.height();
                        break;
                    default:
                        break;
                }
                mPreviewArrow.setTranslationX(left);
                mPreviewArrow.setTranslationY(top);
            }

            public void setDetectResult(int detectResult) {
                mDetectResult = detectResult;
            }
        }

        // ===== PreviewAttach =====
        // .super Lcom/sonyericsson/android/camera3d/base/AttachRunnable;
        // accessFlags=0x2 (private, non-static inner class of PanoramaPreview)
        private class PreviewAttach extends AttachRunnable {

            private boolean mIsAttachEnd;
            private int mResultCode;
            private final PerformanceCounter pc;
            private final PostAttachRunnable postAttachRunnable;

            public PreviewAttach() {
                mIsAttachEnd = false;
                postAttachRunnable = new PostAttachRunnable();
                pc = PerformanceCounter.newInstance(false);
            }

            private boolean attach(double[] pos) {
                setSensorFusionValue();
                pc.start();
                int ret = mMorphoPanoramaGP2.attach(byteBuffer[0], byteBuffer[1], byteBuffer[2],
                        rowStride[0], rowStride[1], rowStride[2],
                        pixelStride[0], pixelStride[1], pixelStride[2], pos);
                pc.stop();
                pc.putLog("Camera2App", "mMorphoPanoramaGP2.attach");
                if (ret != 0) {
                    LogFilter.e("Camera2App", "mMorphoPanoramaGP2.attach error ret:" + ret);
                    return false;
                }
                return true;
            }

            private void checkAttachEnd(double[] pos) {
                int detectResult = detector.detect(pos[0], pos[1]);
                if (detectResult == 1 || detectResult == -1 || detectResult == -2) {
                    mResultCode = 0;
                    mIsAttachEnd = true;
                }
                uiUpdateRunnable.setDetectResult(detectResult);
                runOnUiThread(uiUpdateRunnable);
                if (mIsAttachEnd) {
                    return;
                }
                if (mDirectionFunction.isImageComplete()) {
                    mResultCode = 0;
                    mIsAttachEnd = true;
                }
            }

            @Override
            public void run() {
                double[] pos = new double[2];
                CaptureImage image = null;

                if (mInternalSettings.ui_control_mode == 2) {
                    while (true) {
                        try {
                            image = (CaptureImage) mAttachImageQueue.take();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                            mResultCode = -1;
                            break;
                        }
                        if (image == sAttachExit) {
                            break;
                        }
                        setImage(image);

                        boolean attachOk;
                        synchronized (CameraConstants.CameraSynchronizedObject) {
                            synchronized (CameraConstants.EngineSynchronizedObject) {
                                if (!isEngineRunning() || mEngineEnding) {
                                    LogFilter.d("Camera2App", "attach thread exit. (engine is stop.)");
                                    closeSrc();
                                    return;
                                }
                                attachOk = attach(pos);
                            }
                            closeSrc();
                            if (!attachOk) {
                                LogFilter.e("Camera2App", "PreviewAttach.run() attach error.");
                                mResultCode = -1;
                                break;
                            }
                            if (preview_skip_count <= 0) {
                                createPreviewImage(pc);
                                preview_skip_count = 0;
                            } else {
                                preview_skip_count--;
                            }
                            checkAttachEnd(pos);
                        }
                        if (mIsAttachEnd) {
                            break;
                        }
                        runOnUiThread(postAttachRunnable);
                        try {
                            Thread.sleep(SLEEP_MILLISEC, SLEEP_NANOSEC);
                        } catch (InterruptedException e) {
                            // 原始碼在此吞掉例外（不設定 mResultCode、不中斷迴圈），僅繼續下一輪。
                        }
                    }
                } else {
                    while (true) {
                        try {
                            image = (CaptureImage) mAttachImageQueue.take();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                            mResultCode = -1;
                            break;
                        }
                        if (image == sAttachExit) {
                            break;
                        }
                        setImage(image);

                        boolean attachOk;
                        synchronized (CameraConstants.EngineSynchronizedObject) {
                            if (!isEngineRunning() || mEngineEnding) {
                                LogFilter.d("Camera2App", "attach thread exit. (engine is stop.)");
                                closeSrc();
                                return;
                            }
                            attachOk = attach(pos);
                        }
                        closeSrc();
                        if (!attachOk) {
                            LogFilter.e("Camera2App", "PreviewAttach.run() attach error.");
                            mResultCode = -1;
                            break;
                        }
                        if (preview_skip_count <= 0) {
                            createPreviewImage(pc);
                            preview_skip_count = 0;
                        } else {
                            preview_skip_count--;
                        }
                        checkAttachEnd(pos);
                        if (mIsAttachEnd) {
                            break;
                        }
                        runOnUiThread(postAttachRunnable);
                    }
                }

                if (mAbort) {
                    LogFilter.d("Camera2App", "attach thread exit. (abort)");
                    onAttachEnd();
                    new SaveAsyncTask(new SavePictureState(false)).execute();
                    return;
                }

                if (image == sAttachExit) {
                    LogFilter.d("Camera2App", "attach thread exit. (request exit)");
                    return;
                }

                final int resultCode = mResultCode;
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        attachEnd(resultCode);
                    }
                });
                LogFilter.d("Camera2App", "attach thread exit.");
            }

            // ===== PostAttachRunnable =====
            // .super Ljava/lang/Object;  .implements Ljava/lang/Runnable;
            // accessFlags=0x2 (private, non-static inner class of PreviewAttach)
            private class PostAttachRunnable implements Runnable {

                private PostAttachRunnable() {
                }

                @Override
                public void run() {
                    if (mInternalSettings.ui_control_mode == 2) {
                        synchronized (CameraConstants.CameraSynchronizedObject) {
                            synchronized (PreviewImageSynchronizedObject) {
                                if (mPreviewBitmap == null) {
                                    setAttachExit();
                                    return;
                                }
                                if (mPreviewFitBitmap != null) {
                                    mPreviewImageView.setImageBitmap(mPreviewFitBitmap);
                                } else {
                                    mPreviewImageView.setImageBitmap(mPreviewBitmap);
                                }
                            }
                        }
                        return;
                    }

                    synchronized (PreviewImageSynchronizedObject) {
                        if (mPreviewBitmap == null) {
                            setAttachExit();
                            return;
                        }
                        if (mPreviewFitBitmap != null) {
                            mPreviewImageView.setImageBitmap(mPreviewFitBitmap);
                        } else {
                            mPreviewImageView.setImageBitmap(mPreviewBitmap);
                        }
                    }
                }
            }
        }

        /**
         * 依方向（水平／垂直）追蹤全景預覽的目前位置與峰值,判斷使用者是否已經平移
         * 足夠距離可拍下一張、是否停滯（idle）、是否反向平移、是否移動過快/過慢,
         * 並計算取景框（frame_rect）與置中邊界（centering margin）。
         */
        private class PositionDetector {

            // ---- static fields (exact smali values) ----
            private static final int CENTERING_MARGIN_DEFAULT = -0x1869f;
            public static final int COMPLETED = 1;
            public static final int ERROR_IDLE = -1;
            public static final int ERROR_REVERSE = -2;
            private static final int IDLE_THRES_RATIO = 2;
            private static final long IDLE_TIME = 0xb2d05e00L; // 3,000,000,000 ns = 3 秒
            public static final int OK = 0;
            private static final int REVERSE_THRES_RATIO = 1;
            private static final long REVERSE_TIME = 0xbebc200L; // 200,000,000 ns = 0.2 秒
            private static final int SPEED_CHECK_CONTINUOUSLY_TIMES = 5;
            private static final int SPEED_CHECK_IGNORE_TIMES = 15;
            private static final int SPEED_CHECK_MODE = 1;
            private static final int SPEED_CHECK_MODE_AVERAGE = 1;
            private static final int SPEED_CHECK_MODE_CONTINUOUSLY = 0;
            private static final double TOO_FAST_THRES_RATIO = 0.8;
            private static final double TOO_SLOW_THRES_RATIO = 0.1;
            private static final double TV_ANALYSIS_THRES_RATIO = 0.2;
            public static final int WARNING_TOO_FAST = 2;
            public static final int WARNING_TOO_SLOW = 3;

            // ---- instance fields (exact smali names/types/modifiers) ----
            private double base_x;
            private double base_y;
            private int centering_margin_left;
            private int centering_margin_top;
            private long count;
            private volatile double cur_x;
            private volatile double cur_y;
            private final int direction;
            private final RectF frame_rect;
            private RectF idle_rect;
            private long idle_start_time;
            private double idle_thres;
            private final DiffManager mDiffManager;
            private final int output_height;
            private final int output_width;
            private double peak;
            private boolean pre_is_reverse;
            private double prev_x;
            private double prev_y;
            private Rect preview_rect;
            private boolean reset_idle_timer;
            private long reverse_start_time;
            private double reverse_thres;
            private double reverse_thres2;
            private int too_fast_count;
            private double too_fast_thres;
            private int too_slow_count;
            private double too_slow_thres;
            private final double tv_analysis_thres;
            private volatile double tv_analyzed_pos;

            /**
             * @param direction     移動主軸：0/1 為水平（X 軸相反），2/3 為垂直（Y 軸相反）
             * @param output_width  輸出全景畫布寬度
             * @param output_height 輸出全景畫布高度
             */
            PositionDetector(int direction, int output_width, int output_height) {
                this.idle_rect = null;
                this.frame_rect = new RectF();
                this.mDiffManager = new DiffManager();
                this.preview_rect = null;
                this.count = 0L;
                this.direction = direction;
                this.output_width = output_width;
                this.output_height = output_height;
                this.reset_idle_timer = true;
                this.pre_is_reverse = false;
                this.too_fast_count = 0;
                this.too_slow_count = 0;
                this.prev_y = 0.0;
                this.prev_x = 0.0;
                this.cur_y = 0.0;
                this.cur_x = 0.0;
                this.centering_margin_top = CENTERING_MARGIN_DEFAULT;
                this.centering_margin_left = CENTERING_MARGIN_DEFAULT;

                double tvAnalysisThres;
                switch (direction) {
                    case 0: {
                        int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                        this.peak = (rot == 90 || rot == 180) ? (double) output_width : 0.0;
                        float ow = (float) output_width;
                        this.reverse_thres = (double) (0.01f * ow);
                        this.reverse_thres2 = (double) (0.7f * ow);
                        this.idle_thres = (double) (ow * 0.02f);
                        double dow = (double) output_width;
                        this.too_slow_thres = 0.001 * dow;
                        this.too_fast_thres = 0.008 * dow;
                        tvAnalysisThres = dow * 0.002;
                        break;
                    }
                    case 1: {
                        int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                        this.peak = (rot == 90 || rot == 180) ? 0.0 : (double) output_width;
                        float ow = (float) output_width;
                        this.reverse_thres = (double) (0.01f * ow);
                        this.reverse_thres2 = (double) (0.7f * ow);
                        this.idle_thres = (double) (ow * 0.02f);
                        double dow = (double) output_width;
                        this.too_slow_thres = 0.001 * dow;
                        this.too_fast_thres = 0.008 * dow;
                        tvAnalysisThres = dow * 0.002;
                        break;
                    }
                    case 2: {
                        int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                        this.peak = (rot == 90 || rot == 180) ? (double) output_height : 0.0;
                        float oh = (float) output_height;
                        this.reverse_thres = (double) (0.01f * oh);
                        this.reverse_thres2 = (double) (0.7f * oh);
                        this.idle_thres = (double) (oh * 0.02f);
                        double doh = (double) output_height;
                        this.too_slow_thres = 0.001 * doh;
                        this.too_fast_thres = 0.008 * doh;
                        tvAnalysisThres = doh * 0.002;
                        break;
                    }
                    case 3: {
                        int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                        this.peak = (rot == 90 || rot == 180) ? 0.0 : (double) output_height;
                        float oh = (float) output_height;
                        this.reverse_thres = (double) (0.01f * oh);
                        this.reverse_thres2 = (double) (0.7f * oh);
                        this.idle_thres = (double) (oh * 0.02f);
                        double doh = (double) output_height;
                        this.too_slow_thres = 0.001 * doh;
                        this.too_fast_thres = 0.008 * doh;
                        tvAnalysisThres = doh * 0.002;
                        break;
                    }
                    default:
                        // 原始 smali 對非 0~3 的 direction 直接跳過整個 switch,
                        // peak/reverse_thres/... 維持預設值 0.0,tv_analysis_thres 也是 0.0。
                        tvAnalysisThres = 0.0;
                        break;
                }
                this.tv_analysis_thres = tvAnalysisThres;
                this.tv_analyzed_pos = this.peak;
            }

            /**
             * 依過去 {@link #SPEED_CHECK_IGNORE_TIMES} 次之後的平均差值,判斷是否太快/太慢。
             */
            private int checkSpeed() {
                double diff = (direction == 2 || direction == 3) ? (cur_y - prev_y) : (cur_x - prev_x);
                diff = Math.abs(diff);
                mDiffManager.add(diff);

                int result = 0;
                if (count > SPEED_CHECK_IGNORE_TIMES) {
                    double avg = mDiffManager.getDiff();
                    if (avg < too_slow_thres) {
                        result = WARNING_TOO_SLOW;
                    } else {
                        double avg2 = mDiffManager.getDiff();
                        if (avg2 > too_fast_thres) {
                            result = WARNING_TOO_FAST;
                        }
                    }
                }
                // 註: too_slow_count / too_fast_count 在整支程式中從未被遞增,永遠為 0,
                // 故以下重置屬於死碼(SPEED_CHECK_MODE_CONTINUOUSLY 殘留邏輯),但依原始
                // smali 行為原封不動保留,避免日後被誤判為多餘而刪除。
                if (too_slow_count > 0) {
                    too_slow_count = 0;
                }
                if (too_fast_count > 0) {
                    too_fast_count = 0;
                }
                return result;
            }

            /**
             * 判斷目前位置是否已達到（依相機旋轉角度而定的）完成門檻。
             */
            private boolean isComplete() {
                double cur;
                int size;
                int half;
                if (direction == 2 || direction == 3) {
                    cur = cur_y;
                    size = output_height;
                    half = mPreviewHeight / 2;
                } else {
                    cur = cur_x;
                    size = output_width;
                    half = mPreviewWidth / 2;
                }

                int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                boolean useMaxCheck = (direction == 1 || direction == 3)
                        ? (rot == 90 || rot == 180)
                        : (rot == 0 || rot == 270);

                if (useMaxCheck) {
                    int max = size - half;
                    boolean result = cur > (double) max;
                    if (result) {
                        // 註: 原始 smali 這裡記錄的 "max=%d" 實際印出的是 size(輸出總尺寸),
                        // 並非真正用來比較的 max(=size-half)。這是原始程式既有的行為/筆誤,保留不修正。
                        LogFilter.d("Camera2App", String.format(Locale.US,
                                "isComplete cur=%f max=%d half_size=%d", cur, size, half));
                    }
                    return result;
                } else {
                    boolean result = cur < (double) half;
                    if (result) {
                        LogFilter.d("Camera2App", String.format(Locale.US,
                                "isComplete cur=%f half_size=%d", cur, half));
                    }
                    return result;
                }
            }

            /**
             * 判斷目前是否處於停滯狀態：位置維持在一個以 idle_thres 為邊長的方框內超過 IDLE_TIME。
             */
            private boolean isIdle() {
                long now = System.nanoTime();
                if (reset_idle_timer) {
                    reset_idle_timer = false;
                    idle_start_time = now;
                }
                if (idle_rect == null) {
                    double half = idle_thres / 2.0;
                    idle_rect = new RectF(
                            (float) (cur_x - half),
                            (float) (cur_y - half),
                            (float) (cur_x + half),
                            (float) (cur_y + half));
                }
                if (now - idle_start_time > IDLE_TIME) {
                    return true;
                }
                boolean contains = idle_rect.contains((float) cur_x, (float) cur_y);
                if (!contains) {
                    reset_idle_timer = true;
                    idle_rect = null;
                }
                return false;
            }

            /**
             * 判斷是否偵測到使用者反向平移（含防彈跳計時：需持續超過 REVERSE_TIME 才視為確認反向）。
             */
            private boolean isReverse() {
                double cur;
                double prev;
                int size;
                double crossBase;
                double crossCur;
                if (direction == 2 || direction == 3) {
                    cur = cur_y;
                    prev = prev_y;
                    size = output_height;
                    crossBase = base_x;
                    crossCur = cur_x;
                } else {
                    cur = cur_x;
                    prev = prev_x;
                    size = output_width;
                    crossBase = base_y;
                    crossCur = cur_y;
                }

                // 若垂直於主軸方向的偏移超過該軸的基準值,直接視為反向。
                if (Math.abs(crossBase - crossCur) > crossBase) {
                    return true;
                }

                int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                boolean notSpecialAngle = (direction == 1 || direction == 3)
                        ? !(rot == 90 || rot == 180)
                        : !(rot == 0 || rot == 270);

                boolean trendingReverse;
                if (notSpecialAngle) {
                    double diff = prev - cur;
                    if (diff > reverse_thres2) {
                        return true;
                    }
                    if (cur < peak) {
                        peak = cur;
                    }
                    if (cur <= (double) size) {
                        double diff2 = cur - peak;
                        trendingReverse = diff2 > reverse_thres;
                    } else {
                        trendingReverse = true;
                    }
                } else {
                    double diff = cur - prev;
                    if (diff > reverse_thres2) {
                        return true;
                    }
                    if (cur > peak) {
                        peak = cur;
                    }
                    if (cur < 0.0) {
                        trendingReverse = true;
                    } else {
                        double diff2 = peak - cur;
                        trendingReverse = diff2 > reverse_thres;
                    }
                }

                long now = System.nanoTime();
                if (trendingReverse) {
                    int half = (direction == 2 || direction == 3) ? (mPreviewHeight / 2) : (mPreviewWidth / 2);
                    // 註: 原始 smali 依 direction==1/3 與其餘 direction 分成兩條完全相同的計算分支,
                    // 此處合併為一,行為完全一致。
                    if (notSpecialAngle) {
                        if (cur > (double) (size + half)) {
                            return true;
                        }
                    } else {
                        if (cur < (double) (-half)) {
                            return true;
                        }
                    }

                    if (pre_is_reverse) {
                        if (now - reverse_start_time > REVERSE_TIME) {
                            return true;
                        }
                    } else {
                        reverse_start_time = now;
                    }
                }

                pre_is_reverse = trendingReverse;
                return false;
            }

            /**
             * 依相機輸出旋轉角度（0/90/180/270）、前後鏡頭、平移方向,將目前位置換算到預覽座標系,
             * 更新 frame_rect(取景框),並在啟用 PREVIEW_SPREAD_BOTH_SIDES 時同步更新置中邊界。
             *
             * 註: smali 原始碼中大量出現形如 "X * 0.0f / 2.0f" 及 "Y * 1.0f" 的浮點運算,
             * 這些倍率暫存器（v9=0.0f、v6=1.0f）在本方法整個執行期間從未被重新賦值成其他值
             * （已逐行核對確認）,因此「乘以 0」項恆為 0、「乘以 1」項恆為原值,以下逐一省略這些
             * 恆等於 0 或恆等於原值的死碼項,數值結果與原始 smali 逐位元相同。
             */
            private boolean updateFrame() {
                if (mPreviewBitmap == null) {
                    return true;
                }

                if (preview_rect == null) {
                    preview_rect = new Rect();
                    mPreviewFrame.getGlobalVisibleRect(preview_rect);
                    if (preview_rect.width() <= 0) {
                        preview_rect = null;
                        return true;
                    }
                }
                if (preview_rect.width() == preview_rect.height()) {
                    return false;
                }

                int pLeft = preview_rect.left;
                int pTop = preview_rect.top;

                float mapX;
                float mapY;
                float halfX;
                float halfY;

                if (mInitParam.output_rotation == 0 || mInitParam.output_rotation == 180) {
                    // ================= Branch Y: output_rotation == 0 or 180 =================
                    boolean flag2;
                    if (mIsFrontCamera) {
                        int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                        flag2 = (rot == 90 || rot == 270);
                    } else {
                        int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                        flag2 = (rot == 90);
                    }

                    if (direction == 2 || direction == 3) {
                        // ---- Y, direction 2/3 ----
                        float hFlavor;
                        float wFlavor;
                        if (flag2) {
                            hFlavor = (float) output_height - (float) cur_y;
                            wFlavor = (float) cur_x - ((float) (output_width - mInitParam.input_width)) / 2.0f;
                        } else {
                            hFlavor = (float) cur_y;
                            wFlavor = (float) output_width - (float) cur_x;
                        }
                        float ratio = output_width / (float) mInitParam.input_width;
                        if (Math.abs(output_width / 2.0f - ratio * wFlavor) <= 0f) {
                            wFlavor = mInitParam.input_width / 2.0f;
                        }

                        float scale = preview_rect.width() / (float) output_height;
                        float extentForW = (mInitParam.input_height / 2.0f) * scale; // -> halfX
                        float extentForH = preview_rect.height() / 2.0f;             // -> halfY
                        hFlavor *= scale;
                        wFlavor *= scale;

                        if (PREVIEW_SPREAD_BOTH_SIDES) {
                            double scaleD = (double) scale;
                            double halfInputHeightD = (double) ((float) mInitParam.input_height / 2.0f);
                            int margin;
                            if (direction == 2) {
                                margin = flag2
                                        ? (int) Math.round(((peak - halfInputHeightD) * scaleD) / 2.0)
                                        : (int) Math.round((((double) output_height - (peak + halfInputHeightD)) * scaleD) / 2.0);
                                if (margin < 0) {
                                    margin = 0;
                                }
                            } else { // direction == 3
                                margin = flag2
                                        ? -(int) Math.round((((double) output_height - (peak + halfInputHeightD)) * scaleD) / 2.0)
                                        : -(int) Math.round(((peak - halfInputHeightD) * scaleD) / 2.0);
                                if (margin > 0) {
                                    margin = 0;
                                }
                            }
                            // 註: 原始 smali 此處只把 margin 寫入 centering_margin_left,
                            // centering_margin_top 則無條件清零(非鏡射寫入),已逐位元核對確認。
                            centering_margin_left = margin;
                            centering_margin_top = 0;
                        }

                        // 註: 此旋轉分支(rotation 0/180)的原始 smali 在收尾時將
                        // hFlavor/wFlavor 對調寫回最終的 mapX/mapY(而非直接對應),
                        // 已逐行核對確認、非誤植,予以保留。
                        mapX = hFlavor;
                        mapY = wFlavor;
                        halfX = extentForW;
                        halfY = extentForH;
                    } else {
                        // ---- Y, direction 0/1 ----
                        float hFlavor;
                        float wFlavor;
                        if (flag2) {
                            hFlavor = (float) output_height - (float) cur_y
                                    - ((float) (output_height - mInitParam.input_height)) / 2.0f;
                            wFlavor = (float) cur_x;
                        } else {
                            hFlavor = (float) cur_y;
                            wFlavor = (float) output_width - (float) cur_x;
                        }
                        float ratio = output_height / (float) mInitParam.input_height;
                        if (Math.abs(output_height / 2.0f - ratio * hFlavor) <= 0f) {
                            hFlavor = mInitParam.input_height / 2.0f;
                        }

                        float scale = preview_rect.height() / (float) output_width;
                        float extentForH = (mInitParam.input_width / 2.0f) * scale; // -> halfY
                        float extentForW = preview_rect.width() / 2.0f;             // -> halfX
                        hFlavor *= scale;
                        wFlavor *= scale;

                        if (PREVIEW_SPREAD_BOTH_SIDES) {
                            double scaleD = (double) scale;
                            double halfInputWidthD = (double) ((float) mInitParam.input_width / 2.0f);
                            int margin;
                            if (direction == 1) {
                                margin = flag2
                                        ? (int) Math.round((((double) output_width - (peak + halfInputWidthD)) * scaleD) / 2.0)
                                        : (int) Math.round(((peak - halfInputWidthD) * scaleD) / 2.0);
                                if (margin < 0) {
                                    margin = 0;
                                }
                            } else { // direction == 0
                                margin = flag2
                                        ? -(int) Math.round(((peak - halfInputWidthD) * scaleD) / 2.0)
                                        : -(int) Math.round((((double) output_width - (peak + halfInputWidthD)) * scaleD) / 2.0);
                                if (margin > 0) {
                                    margin = 0;
                                }
                            }
                            // 註: 原始 smali 此處只把 margin 寫入 centering_margin_top,
                            // centering_margin_left 則無條件清零(非鏡射寫入),已逐位元核對確認。
                            centering_margin_top = margin;
                            centering_margin_left = 0;
                        }

                        mapX = hFlavor;
                        mapY = wFlavor;
                        halfX = extentForW;
                        halfY = extentForH;
                    }
                } else {
                    // ================= Branch X: output_rotation == 90 or 270 (or other) =================
                    boolean flag5;
                    if (mIsFrontCamera) {
                        int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                        flag5 = (rot == 180 || rot == 0);
                    } else {
                        int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                        flag5 = (rot == 180);
                    }

                    if (direction == 2 || direction == 3) {
                        // ---- X, direction 2/3 ----
                        if (flag5) {
                            mapX = (float) cur_x - ((float) (output_width - mInitParam.input_height)) / 2.0f;
                            mapY = (float) cur_y;
                        } else {
                            mapX = (float) output_width - (float) cur_x;
                            mapY = (float) output_height - (float) cur_y;
                        }
                        float ratio = output_width / (float) mInitParam.input_height;
                        if (Math.abs(output_width / 2.0f - ratio * mapX) <= 0f) {
                            mapX = mInitParam.input_height / 2.0f;
                        }

                        float scale = preview_rect.height() / (float) output_height;
                        halfX = preview_rect.width() / 2.0f;
                        halfY = (mInitParam.input_width / 2.0f) * scale;
                        mapX *= scale;
                        mapY *= scale;

                        if (PREVIEW_SPREAD_BOTH_SIDES) {
                            double scaleD = (double) scale;
                            double halfInputWidthD = (double) ((float) mInitParam.input_width / 2.0f);
                            int margin;
                            if (direction == 2) {
                                margin = flag5
                                        ? -(int) Math.round(((peak - halfInputWidthD) * scaleD) / 2.0)
                                        : -(int) Math.round((((double) output_height - (peak + halfInputWidthD)) * scaleD) / 2.0);
                                if (margin > 0) {
                                    margin = 0;
                                }
                            } else { // direction == 3
                                margin = flag5
                                        ? (int) Math.round((((double) output_height - (peak + halfInputWidthD)) * scaleD) / 2.0)
                                        : (int) Math.round(((peak - halfInputWidthD) * scaleD) / 2.0);
                                if (margin < 0) {
                                    margin = 0;
                                }
                            }
                            // 註: 原始 smali 此處只把 margin 寫入 centering_margin_top,
                            // centering_margin_left 則無條件清零(非鏡射寫入),已逐位元核對確認。
                            centering_margin_top = margin;
                            centering_margin_left = 0;
                        }
                    } else {
                        // ---- X, direction 0/1 ----
                        if (flag5) {
                            mapX = (float) cur_x;
                            mapY = (float) cur_y - ((float) (output_height - mInitParam.input_width)) / 2.0f;
                        } else {
                            mapX = (float) output_width - (float) cur_x;
                            mapY = (float) output_height - (float) cur_y;
                        }
                        float ratio = output_height / (float) mInitParam.input_width;
                        if (Math.abs(output_height / 2.0f - ratio * mapY) <= 0f) {
                            mapY = mInitParam.input_width / 2.0f;
                        }

                        float scale = preview_rect.width() / (float) output_width;
                        halfX = (mInitParam.input_height / 2.0f) * scale;
                        halfY = preview_rect.height() / 2.0f;
                        mapX *= scale;
                        mapY *= scale;

                        if (PREVIEW_SPREAD_BOTH_SIDES) {
                            double scaleD = (double) scale;
                            double halfInputHeightD = (double) ((float) mInitParam.input_height / 2.0f);
                            int margin;
                            if (direction == 0) {
                                margin = flag5
                                        ? -(int) Math.round(((peak - halfInputHeightD) * scaleD) / 2.0)
                                        : -(int) Math.round((((double) output_width - (peak + halfInputHeightD)) * scaleD) / 2.0);
                                if (margin > 0) {
                                    margin = 0;
                                }
                            } else { // direction == 1
                                margin = flag5
                                        ? (int) Math.round((((double) output_width - (peak + halfInputHeightD)) * scaleD) / 2.0)
                                        : (int) Math.round(((peak - halfInputHeightD) * scaleD) / 2.0);
                                if (margin < 0) {
                                    margin = 0;
                                }
                            }
                            // 註: 原始 smali 此處只把 margin 寫入 centering_margin_left,
                            // centering_margin_top 則無條件清零(非鏡射寫入),已逐位元核對確認。
                            centering_margin_left = margin;
                            centering_margin_top = 0;
                        }
                    }
                }

                float left = (float) pLeft + mapX - halfX;
                float top = (float) pTop + mapY - halfY;
                float right = (float) pLeft + mapX + halfX;
                float bottom = (float) pTop + mapY + halfY;
                frame_rect.set(left, top, right, bottom);
                return true;
            }

            /**
             * 以新的 sensor 位置更新內部狀態,並回傳偵測結果：
             * {@link #COMPLETED}、{@link #ERROR_REVERSE}、{@link #ERROR_IDLE}、
             * {@link #OK}、{@link #WARNING_TOO_FAST}、{@link #WARNING_TOO_SLOW} 之一。
             */
            public int detect(double x, double y) {
                count++;

                if (cur_x == 0.0 && prev_x == 0.0) {
                    base_x = x;
                    prev_x = x;
                    cur_x = x;
                } else {
                    prev_x = cur_x;
                    cur_x = x;
                }

                if (cur_y == 0.0 && prev_y == 0.0) {
                    base_y = y;
                    prev_y = y;
                    cur_y = y;
                } else {
                    prev_y = cur_y;
                    cur_y = y;
                }

                if (isReverse()) {
                    return ERROR_REVERSE;
                }
                if (isComplete()) {
                    return COMPLETED;
                }
                if (isIdle()) {
                    return ERROR_IDLE;
                }
                int speed = checkSpeed();
                if (!updateFrame()) {
                    return ERROR_REVERSE;
                }
                return speed;
            }

            public RectF getFrameRect() {
                return frame_rect;
            }

            public int getPreviewCenteringMarginLeft() {
                return centering_margin_left;
            }

            public int getPreviewCenteringMarginTop() {
                return centering_margin_top;
            }

            public boolean isEnableTvAnalysis() {
                int mode = mInternalSettings.ui_control_mode;
                if (mode == 1) {
                    double cur = (direction == 2 || direction == 3) ? cur_y : cur_x;
                    return Math.abs(cur - tv_analyzed_pos) > tv_analysis_thres;
                } else if (mode == 2) {
                    synchronized (CameraConstants.CameraSynchronizedObject) {
                        double cur = (direction == 2 || direction == 3) ? cur_y : cur_x;
                        return Math.abs(cur - tv_analyzed_pos) > tv_analysis_thres;
                    }
                } else {
                    synchronized (CameraConstants.EngineSynchronizedObject) {
                        double cur = (direction == 2 || direction == 3) ? cur_y : cur_x;
                        return Math.abs(cur - tv_analyzed_pos) > tv_analysis_thres;
                    }
                }
            }

            public void notifyTvAnalyzed() {
                tv_analyzed_pos = (direction == 2 || direction == 3) ? cur_y : cur_x;
            }
        }
    }

    /**
     * 全景拍攝：等待使用者依提示方向平移相機，透過 MorphoPanoramaGP2 判斷應繼續往哪個方向移動，
     * 直到方向判定完成為止，再切換至 PanoramaPreview 狀態。
     */
    private final class DecideDirection extends PanoramaState {
        private DecideDirectionAttach mAttachRunnable;
        private boolean mSaveResult;

        DecideDirection() {
            mAttachRunnable = null;
            mSaveResult = false;
            mAngle = mInitParam.output_rotation;
        }

        @Override
        public boolean onSaveImage(CaptureImage image) {
            if (!isEngineRunning()) {
                LogFilter.e("Camera2App", "DecideDirection.onSaveImage mMorphoPanoramaGP2 is null!!");
                image.close();
                return false;
            }
            addAttachQueue(image);
            if (mAttachRunnable == null) {
                mAttachRunnable = new DecideDirectionAttach();
                mExecutor.submit(mAttachRunnable);
            }
            return true;
        }

        @Override
        public void repeatTakePicture() {
            boolean result;
            switch (mInternalSettings.getCaptureMode()) {
                case 1:
                    result = mMorphoCamera.takePicture();
                    break;
                case 2:
                    result = mMorphoCamera.takePictureZSL();
                    break;
                case 3:
                    result = mMorphoCamera.takePictureBurst();
                    break;
                default:
                    result = true;
                    break;
            }
            if (!result) {
                onErrorCapture();
            }
        }

        /**
         * 全景拍攝：於背景執行緒接收 attach queue 的影像，交給 MorphoPanoramaGP2 判斷應該往哪個
         * 方向移動；一旦方向判定完成（DirectionFunction.enabled() 為 true）或收到結束訊號，
         * 就通知 UI 執行緒切換到下一個狀態。
         */
        private final class DecideDirectionAttach extends AttachRunnable {

            /**
             * 依 MorphoPanoramaGP2 判斷出的方向，建立對應的 DirectionFunction 並更新畫面上方向箭頭的
             * 旋轉角度。當輸出旋轉角度為 90 或 270 度時，水平／垂直方向的判定方式與其他角度不同
             * （水平／垂直互換使用 getScaleH()／getScaleV()，且箭頭方向改以新建立的 DirectionFunction
             * 本身的 getDirection() 為準，並依前置鏡頭再反轉一次），此處完整保留原始邏輯。
             */
            private void createDirection(int direction) {
                if (mIsPanoramaCancel) {
                    return;
                }
                CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
                int outputRotation = mInitParam.output_rotation;
                if (outputRotation != 90 && outputRotation != 270) {
                    switch (direction) {
                        case MorphoPanoramaGP2.DIRECTION_VERTICAL_UP: {
                            LogFilter.i("Camera2App", "direction : VERTICAL_UP");
                            int scale = getScaleH();
                            if (mCameraOrientation == 90) {
                                mDirectionFunction = new UpDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                                mArrowDir = 1;
                            } else {
                                mDirectionFunction = new DownDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                                mArrowDir = 0;
                            }
                            break;
                        }
                        case MorphoPanoramaGP2.DIRECTION_VERTICAL_DOWN: {
                            LogFilter.i("Camera2App", "direction : VERTICAL_DOWN");
                            int scale = getScaleH();
                            if (mCameraOrientation == 90) {
                                mDirectionFunction = new DownDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                                mArrowDir = 0;
                            } else {
                                mDirectionFunction = new UpDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                                mArrowDir = 1;
                            }
                            break;
                        }
                        case MorphoPanoramaGP2.DIRECTION_HORIZONTAL_LEFT: {
                            LogFilter.i("Camera2App", "direction : HORIZONTAL_LEFT");
                            int scale = getScaleV();
                            if (mCameraOrientation == 90) {
                                mDirectionFunction = new LeftDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                                mArrowDir = 2;
                            } else {
                                mDirectionFunction = new RightDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                                mArrowDir = 3;
                            }
                            break;
                        }
                        case MorphoPanoramaGP2.DIRECTION_HORIZONTAL_RIGHT: {
                            LogFilter.i("Camera2App", "direction : HORIZONTAL_RIGHT");
                            int scale = getScaleV();
                            if (mCameraOrientation == 90) {
                                mDirectionFunction = new RightDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                                mArrowDir = 3;
                            } else {
                                mDirectionFunction = new LeftDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                                mArrowDir = 2;
                            }
                            break;
                        }
                        default:
                            break;
                    }
                } else {
                    switch (direction) {
                        case MorphoPanoramaGP2.DIRECTION_VERTICAL_UP: {
                            LogFilter.i("Camera2App", "direction : VERTICAL_UP");
                            int scale = getScaleV();
                            if (mCameraOrientation == 90) {
                                mDirectionFunction = new RightDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            } else {
                                mDirectionFunction = new LeftDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            }
                            break;
                        }
                        case MorphoPanoramaGP2.DIRECTION_VERTICAL_DOWN: {
                            LogFilter.i("Camera2App", "direction : VERTICAL_DOWN");
                            int scale = getScaleV();
                            if (mCameraOrientation == 90) {
                                mDirectionFunction = new LeftDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            } else {
                                mDirectionFunction = new RightDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            }
                            break;
                        }
                        case MorphoPanoramaGP2.DIRECTION_HORIZONTAL_LEFT: {
                            LogFilter.i("Camera2App", "direction : HORIZONTAL_LEFT");
                            int scale = getScaleH();
                            if (mCameraOrientation == 90) {
                                mDirectionFunction = new UpDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            } else {
                                mDirectionFunction = new DownDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            }
                            break;
                        }
                        case MorphoPanoramaGP2.DIRECTION_HORIZONTAL_RIGHT: {
                            LogFilter.i("Camera2App", "direction : HORIZONTAL_RIGHT");
                            int scale = getScaleH();
                            if (mCameraOrientation == 90) {
                                mDirectionFunction = new DownDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            } else {
                                mDirectionFunction = new UpDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                        mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            }
                            break;
                        }
                        default:
                            break;
                    }
                    mArrowDir = mDirectionFunction.getDirection();
                    if (mIsFrontCamera) {
                        mArrowDir = DirectionFunction.reverseDirection(mArrowDir);
                    }
                }

                float rotation;
                switch (mArrowDir) {
                    case 0:
                        rotation = 180.0f;
                        break;
                    case 1:
                        rotation = 0.0f;
                        break;
                    case 2:
                        rotation = 270.0f;
                        break;
                    case 3:
                        rotation = 90.0f;
                        break;
                    default:
                        rotation = 0.0f;
                        break;
                }
                mPreviewArrow.setRotation(rotation);
            }

            // 注意：getScaleH()／getScaleV() 皆以 SurfaceView／TextureView 的「高度」計算縮放比例
            // （getScaleV() 也是除以高度，而非寬度）——這是原始程式碼既有寫法，忠實保留，非筆誤修正。

            private int getScaleH() {
                if (mSurfaceView != null && mSurfaceView.getVisibility() == View.VISIBLE) {
                    int height = mSurfaceView.getHeight();
                    return Math.max(1, (mMaxHeight + height - 1) / height);
                }
                int height = mTextureView.getHeight();
                return Math.max(1, (mMaxHeight + height - 1) / height);
            }

            private int getScaleV() {
                if (mSurfaceView != null && mSurfaceView.getVisibility() == View.VISIBLE) {
                    int height = mSurfaceView.getHeight();
                    return Math.max(1, (mMaxWidth + height - 1) / height);
                }
                int height = mTextureView.getHeight();
                return Math.max(1, (mMaxWidth + height - 1) / height);
            }

            @Override
            public void run() {
                try {
                    if (mInternalSettings.ui_control_mode == 2) {
                        // 簡易模式：僅執行 attach() 判斷方向，迴圈中不會另存中途影像。
                        while (true) {
                            CaptureImage image = (CaptureImage) mAttachImageQueue.take();
                            if (image == sAttachExit) {
                                LogFilter.d("Camera2App", "attach thread exit. (request exit)");
                                return;
                            }
                            setImage(image);
                            boolean decided = false;
                            int direction;
                            synchronized (CameraConstants.CameraSynchronizedObject) {
                                synchronized (CameraConstants.EngineSynchronizedObject) {
                                    if (!isEngineRunning() || mEngineEnding) {
                                        LogFilter.i("Camera2App", "attach thread exit. (engine is stop.)");
                                        closeSrc();
                                        return;
                                    }
                                    if (mMorphoPanoramaGP2.getAttachCount() % 5 == 0) {
                                        setInitialRotationByGravity();
                                        mIsSensorAverage = true;
                                    }
                                    setSensorFusionValue();
                                    int ret = mMorphoPanoramaGP2.attach(byteBuffer[0], byteBuffer[1], byteBuffer[2],
                                            rowStride[0], rowStride[1], rowStride[2],
                                            pixelStride[0], pixelStride[1], pixelStride[2], null);
                                    closeSrc();
                                    mIsInvalidDir = (ret == MorphoPanoramaGP2.ERROR_INVALID_DIR);
                                    if (ret != 0) {
                                        if (!mIsInvalidDir) {
                                            LogFilter.e("Camera2App", "mMorphoPanoramaGP2.attach error ret:" + ret);
                                        }
                                        runOnUiThread(new DecideFailRunnable());
                                        return;
                                    }
                                    direction = mMorphoPanoramaGP2.getDirection();
                                    if (direction != mInitParam.direction) {
                                        int[] outputImageSize = new int[2];
                                        int sizeRet = mMorphoPanoramaGP2.getOutputImageSize(outputImageSize);
                                        if (sizeRet != 0) {
                                            LogFilter.e("Camera2App", String.format(Locale.US,
                                                    "MorphoSensorFusion.getOutputImageSize error ret:0x%08X", sizeRet));
                                        }
                                        mMaxWidth = outputImageSize[0];
                                        mMaxHeight = outputImageSize[1];
                                    }
                                }
                                // 註: 原始 smali 在此處(建立方向後)就釋放了 CameraSynchronizedObject，
                                // enabled() 判定與 Thread.sleep() 是在「兩個鎖都已釋放」的狀態下執行的
                                // (逐行核對 monitor-exit 位置確認)；先前版本誤把整個 if 區塊(含 sleep)
                                // 都包在 CameraSynchronizedObject 內，等同在持鎖狀態下 sleep，可能造成
                                // 其他需要此鎖的執行緒(如取消/切換狀態)被長時間卡住,是本次修正的重點。
                                if (direction != mInitParam.direction) {
                                    createDirection(direction);
                                }
                            }
                            if (direction != mInitParam.direction) {
                                if (mDirectionFunction.enabled()) {
                                    decided = true;
                                } else {
                                    try {
                                        Thread.sleep(SLEEP_MILLISEC, SLEEP_NANOSEC);
                                    } catch (InterruptedException ignored) {
                                        // 原始 smali 對此處的 InterruptedException 直接吞掉並重試迴圈，忠實保留。
                                    }
                                }
                            }
                            if (decided) {
                                break;
                            }
                        }
                    } else {
                        // 一般模式：多一層取消處理——若全景拍攝已被取消，僅在「第一次」遇到取消時，
                        // 把目前影像另存為一般照片（建立存檔路徑失敗時則略過儲存，但仍會通知 UI 並清理
                        // 資源），之後的取消影像則直接丟棄不再重複儲存。
                        // 注意：此處使用的鎖是 mSyncCancelSave，而非其他 attach 迴圈慣用的
                        // CameraSynchronizedObject——這是原始程式碼既有寫法，忠實保留。此迴圈也沒有
                        // 第一個迴圈那樣的 Thread.sleep()，方向未判定完成時會立即進行下一輪 attach。
                        boolean pendingCancelSave = true;
                        while (true) {
                            CaptureImage image = (CaptureImage) mAttachImageQueue.take();
                            if (image == sAttachExit) {
                                LogFilter.d("Camera2App", "attach thread exit. (request exit)");
                                return;
                            }
                            setImage(image);
                            boolean decided = false;
                            // 註: 依 smali 的 monitor-exit 位置核對，enabled() 判定是在
                            // mSyncCancelSave 已釋放之後才執行(與第一個 attach 迴圈同一種寫法),
                            // 故用 directionChanged 記錄「本輪是否呼叫過 createDirection()」，
                            // 待離開 synchronized 區塊後再檢查。
                            boolean directionChanged = false;
                            synchronized (mSyncCancelSave) {
                                if (mIsPanoramaCancel) {
                                    if (pendingCancelSave) {
                                        String path = createNewFilePath();
                                        if (path != null) {
                                            CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
                                            int width = cameraInfo.getCaptureWidth();
                                            int height = cameraInfo.getCaptureHeight();
                                            double exposureTimeSec = mLatestCaptureResult.getExposureTime() / 1000.0 / 1000.0 / 1000.0;
                                            int iso = mLatestCaptureResult.getIsoValue();
                                            Location location = mSettings.isSaveLocation() ? mLocationManager.getLocation() : null;
                                            playSound(mStopSoundId);
                                            boolean saved;
                                            String[] actualPath = {path};
                                            if (Build.VERSION.SDK_INT >= 28 && isSaveDestinationExternal()) {
                                                String albumDirName = String.format(Locale.US, "%d%s", mSaveDirId, "ANDRO");
                                                saved = saveJpeg2Sd(getApplicationContext(), getContentResolver(),
                                                        mSettings.getSdCardGrantedUri(), path, albumDirName, width, height,
                                                        mInitParam.input_format, location, exposureTimeSec, iso, mCurOrientation);
                                            } else {
                                                saved = saveJpeg(getContentResolver(), path, width, height,
                                                        mInitParam.input_format, location, exposureTimeSec, iso, mCurOrientation,
                                                        actualPath);
                                            }
                                            mSaveResult = saved;
                                            // On Q+, MediaStore may have deduped/renamed away from the
                                            // requested `path` on insert (see saveJpeg()'s outActualPath
                                            // doc) -- use the real saved path so the thumbnail lookup in
                                            // getLatestImage() can actually find the row.
                                            mSavePanoramaPath = actualPath[0];
                                        }
                                        Camera2App.this.runOnUiThread(new Runnable() {
                                            @Override
                                            public void run() {
                                                Camera2App.this.getSavingProgressBar().setVisibility(View.INVISIBLE);
                                                if (Camera2App.this.mActive && !Camera2App.this.mSavingBackground
                                                        && !Camera2App.this.mTemperatureHigh) {
                                                    if (Camera2App.this.mIsNotifySave2Internal && mSaveResult) {
                                                        Camera2App.this.startRotatableToast(Camera2App.this.getResources().getString(
                                                                R.string.cam_strings_panorama_sd_permission_data_storage_info_txt), 3500, false);
                                                    }
                                                    // 註: 原始 smali 在此處呼叫 setViewsVisibility(VISIBLE)，將頁首/頁尾按鈕
                                                    // (含快門鍵)重新顯示；先前版本漏掉此呼叫，取消全景拍攝後頁尾按鈕可能
                                                    // 停留在隱藏/停用狀態，造成「卡快門」的外顯症狀，此為本次修正重點之一。
                                                    Camera2App.this.setViewsVisibility(View.VISIBLE);
                                                    Camera2App.this.mMorphoCamera.finishState();
                                                }
                                                Camera2App.this.mIsNotifySave2Internal = false;
                                                if (Camera2App.this.mSavingBackground) {
                                                    Camera2App.this.mMorphoCamera.cancelState();
                                                    Camera2App.this.mMorphoCamera.setDefaultCameraState();
                                                    Camera2App.this.mMorphoCamera.pause();
                                                    Camera2App.this.mMorphoCamera.exit();
                                                }
                                                if (Camera2App.this.isEngineRunning()) {
                                                    Camera2App.this.finishEngine();
                                                }
                                                Camera2App.this.mTemperatureHigh = false;
                                                Camera2App.this.mIsPanoramaCancel = false;
                                                if (Camera2App.this.mActive && !Camera2App.this.mTemperatureHigh) {
                                                    Camera2App.this.checkRemainingMemory(false);
                                                }
                                            }
                                        });
                                        pendingCancelSave = false;
                                    }
                                    closeSrc();
                                } else {
                                    int direction;
                                    synchronized (CameraConstants.EngineSynchronizedObject) {
                                        if (!isEngineRunning() || mEngineEnding) {
                                            LogFilter.i("Camera2App", "attach thread exit. (engine is stop.)");
                                            closeSrc();
                                            return;
                                        }
                                        if (mMorphoPanoramaGP2.getAttachCount() % 5 == 0) {
                                            setInitialRotationByGravity();
                                            mIsSensorAverage = true;
                                        }
                                        setSensorFusionValue();
                                        int ret = mMorphoPanoramaGP2.attach(byteBuffer[0], byteBuffer[1], byteBuffer[2],
                                                rowStride[0], rowStride[1], rowStride[2],
                                                pixelStride[0], pixelStride[1], pixelStride[2], null);
                                        closeSrc();
                                        mIsInvalidDir = (ret == MorphoPanoramaGP2.ERROR_INVALID_DIR);
                                        if (ret != 0) {
                                            if (!mIsInvalidDir) {
                                                LogFilter.e("Camera2App", "mMorphoPanoramaGP2.attach error ret:" + ret);
                                            }
                                            runOnUiThread(new DecideFailRunnable());
                                            return;
                                        }
                                        direction = mMorphoPanoramaGP2.getDirection();
                                        if (direction != mInitParam.direction) {
                                            int[] outputImageSize = new int[2];
                                            int sizeRet = mMorphoPanoramaGP2.getOutputImageSize(outputImageSize);
                                            if (sizeRet != 0) {
                                                LogFilter.e("Camera2App", String.format(Locale.US,
                                                        "MorphoSensorFusion.getOutputImageSize error ret:0x%08X", sizeRet));
                                            }
                                            mMaxWidth = outputImageSize[0];
                                            mMaxHeight = outputImageSize[1];
                                        }
                                    }
                                    if (direction != mInitParam.direction) {
                                        createDirection(direction);
                                        directionChanged = true;
                                    }
                                }
                            }
                            if (directionChanged) {
                                if (mDirectionFunction.enabled()) {
                                    decided = true;
                                }
                            }
                            if (decided) {
                                break;
                            }
                        }
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    runOnUiThread(new DecideFailRunnable());
                    return;
                }
                stopCaptureTimer();
                runOnUiThread(new DecideRunnable());
            }

            /**
             * 全景拍攝：方向已判定完成，切換到 PanoramaPreview 狀態並更新方向箭頭底圖，於 UI 執行緒執行。
             */
            private final class DecideRunnable implements Runnable {

                private void runMain() {
                    synchronized (CameraConstants.EngineSynchronizedObject) {
                        if (mMorphoPanoramaGP2 == null) {
                            mMorphoCamera.cancelState();
                            mMorphoCamera.startState();
                            return;
                        }
                        if ("Sony".equals(Build.MANUFACTURER)) {
                            mIsSensorAverage = false;
                            mSensorCnt = 0;
                        } else {
                            unregisterGravitySensorListener();
                        }
                        mAttachNumDirectionUndecided = mMorphoPanoramaGP2.getAttachCount();
                        boolean aborted = mPanoramaState.isAborted();
                        mPanoramaState = new PanoramaPreview(aborted);
                        mPanoramaState.setPanoramaStateEventListener(listener);
                        clearListener();
                        if (mArrowDir == 0 || mArrowDir == 3) {
                            findViewById(R.id.panoramagp2_preview_background)
                                    .setBackgroundResource(R.drawable.cam_addon_panorama_progress_bar_h_icn_left);
                        } else {
                            findViewById(R.id.panoramagp2_preview_background)
                                    .setBackgroundResource(R.drawable.cam_addon_panorama_progress_bar_h_icn_right);
                        }
                    }
                }

                @Override
                public void run() {
                    if (mInternalSettings.ui_control_mode == 2) {
                        synchronized (CameraConstants.CameraSynchronizedObject) {
                            runMain();
                        }
                    } else {
                        runMain();
                    }
                }
            }

            /**
             * 全景拍攝：attach() 失敗（含方向判定無效）時，恢復拍攝狀態並清除背景儲存通知旗標，於 UI
             * 執行緒執行。
             */
            private final class DecideFailRunnable implements Runnable {
                @Override
                public void run() {
                    mMorphoCamera.cancelState();
                    mMorphoCamera.startState();
                    mIsNotifySave2Internal = false;
                }
            }
        }
    }

    /**
     * 全景拍攝：拍下第一張影像後，初始化並啟動 MorphoPanoramaGP2 引擎的狀態。
     */
    private final class PanoramaFirst extends PanoramaState {

        @Override
        public boolean onSaveImage(CaptureImage image) {
            image.close();
            setNullDirectionFunction();
            if (!isEngineRunning()) {
                LogFilter.e("Camera2App", "PanoramaFirst.onSaveImage mMorphoPanoramaGP2 is null!!");
                return false;
            }

            CameraInfo cameraInfo = mMorphoCamera.cameraInfo();

            Point point = new Point();
            point.x = cameraInfo.getCaptureWidth() / 2;
            point.y = cameraInfo.getCaptureHeight() / 2;

            String name = createName(System.currentTimeMillis());
            mInputFolderPath = mFolderPath + File.separator + "input" + File.separator + name;

            if (mInternalSettings.save_input_images == 0) {
                mMorphoPanoramaGP2.disableSaveInputImages();
            } else {
                File inputDir = new File(mInputFolderPath);
                if (!inputDir.exists() && !inputDir.mkdirs()) {
                    return false;
                }
                switch (mInternalSettings.save_input_images) {
                    case 1:
                        mInternalSettings.initializeEncoder(mInputFolderPath, mInitParam.input_width, mInitParam.input_height);
                        break;
                    case 2:
                        mMorphoPanoramaGP2.enableSaveInputImages(mInputFolderPath);
                        break;
                    default:
                        break;
                }
            }

            int ret = mMorphoPanoramaGP2.setShrinkRatio(mInternalSettings.shrink_ratio);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setShrinkRatio error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.setCalcseamPixnum(mInternalSettings.calcseam_pixnum);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setCalcseamPixnum error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.setUseDeform(mInternalSettings.use_deform);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setUseDeform error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.setUseLuminanceCorrection(mInternalSettings.use_luminance_correction);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setUseLuminanceCorrection error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.setSeamsearchRatio(mInternalSettings.seamsearch_ratio);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setSeamsearchRatio error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.setZrotationCoeff(mInternalSettings.zrotation_coeff);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setZrotationCoeff error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.setDrawThreshold(mInternalSettings.draw_threshold);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setDrawThreshold error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.setUnsharpStrength(mInternalSettings.unsharp_strength);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setUnsharpStrength error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.setAovGain(mInternalSettings.aov_gain);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setAovGain error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.setDistortionCorrectionParam(mInternalSettings.distortion_k1, mInternalSettings.distortion_k2,
                    mInternalSettings.distortion_k3, mInternalSettings.distortion_k4);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setDistortionCorrectionParam error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.setRotationRatio(mInternalSettings.rotation_ratio);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setRotationRatio error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.setProjectionMode(mInternalSettings.projection_mode);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setProjectionMode error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.setMotionDetectionMode(mInternalSettings.motion_detection_mode);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setMotionDetectionMode error ret:0x%08X", ret));
            }

            ret = mMorphoPanoramaGP2.start(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight());
            if (ret != 0) {
                LogFilter.e("Camera2App", "mMorphoPanoramaGP2.start error ret:" + ret);
                onErrorCapture();
                return false;
            }

            mPanoramaState = new DecideDirection();
            mPanoramaState.setPanoramaStateEventListener(listener);
            clearListener();
            return true;
        }

        @Override
        public void repeatTakePicture() {
            boolean result;
            switch (mInternalSettings.getCaptureMode()) {
                case 1:
                    result = mMorphoCamera.takePicture();
                    break;
                case 2:
                    result = mMorphoCamera.takePictureZSL();
                    break;
                case 3:
                    result = mMorphoCamera.takePictureBurst();
                    break;
                default:
                    result = true;
                    break;
            }
            if (!result) {
                onErrorCapture();
            }
        }
    }

    /**
     * 全景拍攝：建立/確認 MorphoPanoramaGP2 引擎的初始狀態。
     */
    private final class PanoramaInit extends PanoramaState {

        @Override
        public boolean onSaveImage(CaptureImage image) {
            mImageFormat = image.getImageFormat();
            LogFilter.i("Camera2App", "ImageFormat :" + mImageFormat);

            EnumResultCreateEngine result = createEngine();
            switch (result) {
                case RESULT_NEWLY_CREATED: {
                    int ret = mMorphoPanoramaGP2.setInputImageFormat(mImageFormat);
                    if (ret != 0) {
                        LogFilter.e("Camera2App", "mMorphoPanoramaGP2.setImageFormat error ret:" + ret);
                    }
                    mPanoramaState = new PanoramaFirst();
                    mPanoramaState.setPanoramaStateEventListener(listener);
                    clearListener();
                    // 注意：原始 smali 呼叫委派後的 onSaveImage 但捨棄其回傳值，
                    // 這裡固定回傳 true，忠實保留此行為。
                    mPanoramaState.onSaveImage(image);
                    return true;
                }
                case RESULT_ALREADY_CREATED:
                    mPanoramaState = new PanoramaPreview();
                    mPanoramaState.setPanoramaStateEventListener(listener);
                    clearListener();
                    image.close();
                    return true;
                default:
                    onErrorCapture();
                    return false;
            }
        }

        @Override
        public void repeatTakePicture() {
            boolean result;
            switch (mInternalSettings.getCaptureMode()) {
                case 1:
                    result = mMorphoCamera.takePicture();
                    break;
                case 2:
                    result = mMorphoCamera.takePictureZSL();
                    break;
                case 3:
                    result = mMorphoCamera.takePictureBurst();
                    break;
                default:
                    result = true;
                    break;
            }
            if (!result) {
                onErrorCapture();
            }
        }
    }


    // ======================================================================
    // Helper inner classes
    // ======================================================================

    // ===== CameraCheckTimer =====
    // .super Landroid/os/CountDownTimer;  accessFlags=0x2 (private, non-static inner class)
    private class CameraCheckTimer extends CountDownTimer {

        public CameraCheckTimer(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override
        public void onFinish() {
            LogFilter.e("Camera2App", "CameraCheckTimer is timeout.");
            onErrorCamera();
        }

        @Override
        public void onTick(long millisUntilFinished) {
        }
    }


    // ===== CaptureResult =====
    // .super Ljava/lang/Object;  accessFlags=0xa (private static, NO outer instance - no this$0 field)
    private static class CaptureResult {
        private double mExposureTime;
        private int mIsoValue;

        CaptureResult(double exposureTime, int isoValue) {
            mExposureTime = exposureTime;
            mIsoValue = isoValue;
        }

        public double getExposureTime() {
            return mExposureTime;
        }

        public void setExposureTime(double exposureTime) {
            mExposureTime = exposureTime;
        }

        public int getIsoValue() {
            return mIsoValue;
        }

        public void setIsoValue(int isoValue) {
            mIsoValue = isoValue;
        }

        public void sets(double exposureTime, int isoValue) {
            setExposureTime(exposureTime);
            setIsoValue(isoValue);
        }
    }


    // ===== CaptureTimer =====
    // .super Landroid/os/CountDownTimer;  accessFlags=0x2 (private, non-static inner class)
    private class CaptureTimer extends CountDownTimer {

        public CaptureTimer(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override
        public void onFinish() {
            onClickShutter(null);
        }

        @Override
        public void onTick(long millisUntilFinished) {
        }
    }


    // ===== ContentInfo =====
    // .super Ljava/lang/Object;  accessFlags=0xa (private static, NO outer instance - no this$0 field)
    private static class ContentInfo {
        public long mId;
        public String mImageFileLocation;

        private ContentInfo() {
        }
    }


    // ===== EnumDialogType =====
    // .super Ljava/lang/Enum;  accessFlags=0x401a (private enum)
    private enum EnumDialogType {
        DIALOG_TYPE_NONE,
        DIALOG_TYPE_SELECT_SAVE_DST,
        DIALOG_TYPE_SELECT_CHANGE_LOCATION,
        DIALOG_TYPE_SELECT_VALIDATE_LOCATION,
        DIALOG_TYPE_ALERT_THERMAL_WARNING,
        DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN,
        DIALOG_TYPE_MEMORY_FULL_INTERNAL,
        DIALOG_TYPE_MEMORY_FULL_EXTERNAL,
        DIALOG_TYPE_ERROR_CAPTURE,
        DIALOG_TYPE_ERROR_SAVE,
        DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL,
        DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL,
        DIALOG_TYPE_ERROR_NOT_GRANTED_EXTERNAL,
        DIALOG_TYPE_ERROR_LAUNCH,
        DIALOG_TYPE_ERROR_CAMERA,
        DIALOG_TYPE_ERROR_CAMERA_SECURITY,
        DIALOG_TYPE_ERROR_CAMERA_LAUNCH,
        DIALOG_TYPE_LICENSE,
        DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION,
        DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE
    }


    // ===== EnumResultCreateEngine =====
    // .super Ljava/lang/Enum;  accessFlags=0x401a (private enum)
    private enum EnumResultCreateEngine {
        RESULT_NEWLY_CREATED,
        RESULT_ALREADY_CREATED,
        RESULT_ERROR
    }


    // ===== ExtendedOrientationEventListener =====
    // .super Landroid/view/OrientationEventListener;  accessFlags=0x2 (private, non-static inner class)
    private class ExtendedOrientationEventListener extends OrientationEventListener {

        public ExtendedOrientationEventListener(Context context) {
            super(context);
        }

        private void setViewsRotation(int rotation) {
            HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
            if (headerButtonsFragment != null) {
                headerButtonsFragment.rotateView(rotation);
            }
            FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
            if (footerButtonsFragment != null) {
                footerButtonsFragment.rotateView(rotation);
            }
            InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
            if (infoIconsFragment != null) {
                infoIconsFragment.rotateView(rotation);
            }
            if (mWarningTextView != null) {
                mWarningTextView.setRotation((float) rotation);
                if (rotation == 0 || rotation == 180) {
                    mWarningTextView.setGravity(0x11);
                    mWarningTextView.setTranslationY(0f);
                } else {
                    mWarningTextView.setGravity(0x800005);
                    mWarningTextView.setTranslationY((float) (-mWarningTextView.getWidth()) / 2f);
                }
            }
            if (isDialogShown()) {
                if (mDialogType == EnumDialogType.DIALOG_TYPE_LICENSE) {
                    dismissDialog(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OTHER);
                    mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
                    startDialog(EnumDialogType.DIALOG_TYPE_LICENSE);
                } else {
                    mDialog.setRotation((float) rotation);
                }
            }
            if (Util.isMarshmallow()) {
                if (mAlertOkDialog != null && mAlertOkDialog.isShowing()) {
                    mAlertOkDialog.dismiss();
                    showOkDialog(3);
                }
                if (mAlertSettingDialog != null && mAlertSettingDialog.isShowing()) {
                    mAlertSettingDialog.dismiss();
                    if (Util.checkPermissionGrant(PERMISSIONS_CAMERA_STORAGE, Camera2App.this)) {
                        showSettingDialog(3);
                    } else {
                        showSettingDialog(0);
                    }
                }
            }
            if (mRotatableToast.getRotatableToast()) {
                mRotatableToast.toggleRotatableToastVisibility(rotation);
            }
            if (rotation == 0 || rotation == 180) {
                mSettingList.setOrientation(0);
                mSettingSubListUseVolumeKey.setOrientation(0);
                mSettingSubListSaveDestination.setOrientation(0);
            } else {
                mSettingList.setOrientation(1);
                mSettingSubListUseVolumeKey.setOrientation(1);
                mSettingSubListSaveDestination.setOrientation(1);
            }
            if (mSettingSubListUseVolumeKey.getView().getVisibility() == View.VISIBLE) {
                translateSettingSubList(mSettingSubListUseVolumeKey.getView());
            }
            if (mSettingSubListSaveDestination.getView().getVisibility() == View.VISIBLE) {
                translateSettingSubList(mSettingSubListSaveDestination.getView());
            }
        }

        @Override
        public void onOrientationChanged(int orientation) {
            if (orientation == -1) {
                return;
            }
            updatedOrientation(orientation);
            int normalized = (orientation + getDisplayRotation()) % 360;
            if (normalized < 30 || normalized > 330) {
                if (mCurViewDegree != 0) {
                    mCurViewDegree = 0;
                    setViewsRotation(0);
                    if (mMorphoCamera != null && isEngineRunning() && !isPanoramaSaving()) {
                        onClickShutter(null);
                    }
                }
            } else if (normalized >= 60 && normalized < 300) {
                if (mCurViewDegree != 90) {
                    mCurViewDegree = 90;
                    setViewsRotation(90);
                    if (mMorphoCamera != null && isEngineRunning() && !isPanoramaSaving()) {
                        onClickShutter(null);
                    }
                }
            }
        }
    }


    // ===== GetLatestImageTask =====
    // .super Landroid/os/AsyncTask;  Signature: AsyncTask<Integer, Integer, Integer>
    // accessFlags=0x2 (private, non-static inner class)
    private class GetLatestImageTask extends AsyncTask<Integer, Integer, Integer> {

        private GetLatestImageTask() {
        }

        @Override
        protected Integer doInBackground(Integer... params) {
            synchronized (mSyncImageTask) {
                if (isCancelled()) {
                    return null;
                }
                getLatestImage();
                if (!mLocalCache.isEmpty()) {
                    mThumbnailBitmap = MediaStore.Images.Thumbnails.getThumbnail(
                            getContentResolver(), mImageId, MediaStore.Images.Thumbnails.MINI_KIND, null);
                    mThumbnailFilePath = mImageFileLocation;
                    mThumbnailUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI.buildUpon()
                            .appendPath(String.valueOf(mImageId))
                            .build();
                }
            }
            return Integer.valueOf(0);
        }

        @Override
        protected void onPostExecute(Integer result) {
            mGetLatestImageTask = null;
            if (result == null) {
                return;
            }
            if (!mActive) {
                return;
            }
            if (mShutdownView) {
                return;
            }
            if (isCapturing()) {
                return;
            }
            FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
            if (footerButtonsFragment == null) {
                return;
            }
            if (mLocalCache.isEmpty()) {
                footerButtonsFragment.clearThumbnail();
            } else {
                footerButtonsFragment.setThumbnailBitmap(mThumbnailBitmap, false);
                int rotation = mCurViewDegree;
                if (rotation < 0) {
                    rotation = 0;
                }
                footerButtonsFragment.rotateView(rotation);
            }
        }

        @Override
        protected void onPreExecute() {
            if (mActive && !mShutdownView && !isCapturing()) {
                FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
                if (footerButtonsFragment != null) {
                    footerButtonsFragment.showThumbnail();
                }
            }
        }
    }


    // ===== ModeSelectorButtonClickListener =====
    // .super Ljava/lang/Object;  .implements Landroid/view/View$OnClickListener;
    // accessFlags=0x2 (private, non-static inner class)
    private class ModeSelectorButtonClickListener implements View.OnClickListener {

        private ModeSelectorButtonClickListener() {
        }

        @Override
        public void onClick(View v) {
            modeFinish();
        }
    }


    // ===== ModeSelectorButtonTouchListener =====
    // .super Ljava/lang/Object;  .implements Landroid/view/View$OnTouchListener;
    // accessFlags=0x2 (private, non-static inner class)
    private class ModeSelectorButtonTouchListener implements View.OnTouchListener {

        private ModeSelectorButtonTouchListener() {
        }

        @Override
        public boolean onTouch(View v, MotionEvent event) {
            ImageView modeSelectorButton = getFooterButtonsFragment().getModeSelectorButton();
            modeSelectorButton.onTouchEvent(event);
            if (modeSelectorButton.isPressed()) {
                // 原始行為：直接把 resource id 當作顏色值傳入 setColorFilter(int)，並未透過
                // getResources().getColor() 解析，予以完整保留
                modeSelectorButton.setColorFilter(R.color.pressedColorFilter);
            } else {
                modeSelectorButton.clearColorFilter();
            }
            return true;
        }
    }


    // ===== MyCountDownTimer =====
    // .super Landroid/os/CountDownTimer;  accessFlags=0x2 (private, non-static inner class)
    private class MyCountDownTimer extends CountDownTimer {

        public MyCountDownTimer(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override
        public void onFinish() {
            setResult(2);
            finish();
        }

        @Override
        public void onTick(long millisUntilFinished) {
        }
    }


    // ===== SavePictureState =====
    // .super Lcom/sonyericsson/android/camera3d/camera_states/CameraState;
    // .implements Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;
    // accessFlags=0x2 (private, non-static inner class)
    private class SavePictureState extends CameraState implements SaveAsyncTask.ISaveAsyncTaskEventListener {

        private String imageFormat;
        private boolean mIsUpdateUi = true;

        public SavePictureState() {
        }

        public SavePictureState(boolean isUpdateUi) {
            this.mIsUpdateUi = isUpdateUi;
        }

        private void showSaveErrorDialog() {
            if (mIsUpdateUi) {
                startDialog(EnumDialogType.DIALOG_TYPE_ERROR_SAVE);
            }
        }

        @Override
        public boolean onFinish() {
            return true;
        }

        @Override
        public void onSaveFinish(boolean result) {
            LogFilter.d("Camera2App", "onSaveFinish result=" + result);

            if (mInternalSettings.save_input_images != 0) {
                mInternalSettings.saveSettings(mInputFolderPath, imageFormat, mMorphoCamera.cameraInfo(),
                        mMaxWidth, mMaxHeight, mDirectionFunction.getScale(), mAngle,
                        mDirectionFunction.getDirection(), mAttachNumDirectionUndecided);
            }

            if (mInternalSettings.save_input_images != 0) {
                mInternalSettings.putParamFile(mInputFolderPath, mMorphoCamera.cameraInfo(), imageFormat);
            }

            if (mIsUpdateUi) {
                getSavingProgressBar().setVisibility(View.GONE);
                if (mActive && !mSavingBackground && !mTemperatureHigh) {
                    setViewsVisibility(0);
                    if (result) {
                        if (mIsNotifySave2Internal) {
                            startRotatableToast(getResources().getString(
                                    R.string.cam_strings_panorama_sd_permission_data_storage_info_txt),
                                    0xdac, false);
                        }
                    } else {
                        mSavePanoramaPath = null;
                        showSaveErrorDialog();
                    }

                    CameraState nextState;
                    if (mUseCamera1) {
                        if (CameraConstants.AutoFocusType == 0) {
                            nextState = new Camera1PreviewState(mMorphoCamera.cameraState());
                        } else {
                            nextState = new Camera1UnlockFocusState(mMorphoCamera.cameraState());
                        }
                    } else {
                        if (CameraConstants.AutoFocusType == 0) {
                            nextState = new PreviewState();
                        } else {
                            nextState = new UnlockFocusState();
                        }
                    }
                    mMorphoCamera.updateCameraState(nextState);
                    mMorphoCamera.startState();

                    FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
                    if (footerButtonsFragment != null) {
                        footerButtonsFragment.clearThumbnail();
                    }
                    updateViews();
                }
            } else {
                if (!result) {
                    mSavePanoramaPath = null;
                }
                setThumbnail();
            }

            mIsNotifySave2Internal = false;
            if (isEngineRunning()) {
                finishEngine();
            }
            mSavingBackground = false;
            if (mActive && !mTemperatureHigh) {
                checkRemainingMemory(false);
            }
        }

        @Override
        public boolean requestSaveProcess() {
            if (mMorphoPanoramaGP2 == null) {
                LogFilter.e("Camera2App", "mMorphoPanoramaGP2 is null");
                return false;
            }

            Rect clippingRect = new Rect();
            int clippingRet = mMorphoPanoramaGP2.getClippingRect(clippingRect);
            if (clippingRet != 0) {
                LogFilter.e("Camera2App", "mMorphoPanoramaGP2.getClippingRect error ret:" + clippingRet);
                return false;
            }

            LogFilter.i("Camera2App", String.format(Locale.US, "ClippingRect(Save) (%d,%d)-(%d,%d) %dx%d",
                    clippingRect.left, clippingRect.top, clippingRect.right, clippingRect.bottom,
                    clippingRect.width(), clippingRect.height()));

            int width = clippingRect.width();
            int height = clippingRect.height();
            byte[] outputBytes = new byte[width * height * 3 / 2];

            int outputRet = mMorphoPanoramaGP2.getOutputImage(outputBytes, clippingRect);
            if (outputRet != 0) {
                LogFilter.e("Camera2App", "mMorphoPanoramaGP2.getOutputImage error ret:" + outputRet);
                return false;
            }

            imageFormat = mInitParam.output_format;

            finishEngine();

            ByteBuffer byteBuffer = NativeMemoryAllocator.allocateBuffer(outputBytes.length);
            byteBuffer.put(outputBytes);
            byteBuffer.clear();

            Location location = null;
            if (mSettings.isSaveLocation()) {
                location = mLocationManager.getLocation();
            }

            String newFilePath = createNewFilePath();
            boolean saveResult;
            if (newFilePath != null) {
                String fileName = newFilePath.substring(newFilePath.lastIndexOf(File.separator) + 1);
                saveResult = saveImage(getContentResolver(), newFilePath, fileName, fileName,
                        byteBuffer, width, height, location);
                mSavePanoramaPath = newFilePath;
            } else {
                saveResult = false;
            }

            NativeMemoryAllocator.freeBuffer(byteBuffer);

            if (!saveResult) {
                LogFilter.e("Camera2App", "FileWriteErr");
                return false;
            }
            return true;
        }
    }


    // ===== SensorSensitivityAverageManager =====
    // .super Ljava/lang/Object;  accessFlags=0x2 (private, non-static inner class)
    private class SensorSensitivityAverageManager {
        private int num;
        private int sum;

        private SensorSensitivityAverageManager() {
        }

        public void add(int value) {
            sum += value;
            num += 1;
        }

        public int get() {
            if (num == 0) {
                return 0;
            }
            return Math.round((float) (sum / num));
        }

        public void init() {
            num = 0;
            sum = 0;
        }
    }


    // ===== Settings =====
    // .super Ljava/lang/Object;  accessFlags=0x2 (private, non-static inner class)
    private class Settings {
        private boolean camera_sound;
        private boolean loaded;
        private boolean not_show_dialog_location;
        private boolean not_show_dialog_thermal;
        private boolean save_internal_storage;
        private boolean save_location;
        private String sd_card_grant_uri;
        private boolean sdcard_inserted;
        private String use_volume_key;

        public Settings() {
            loaded = false;
            save_location = false;
            use_volume_key = "HW_CAMERA_KEY";
            camera_sound = true;
            save_internal_storage = true;
            sdcard_inserted = false;
            sd_card_grant_uri = null;
            not_show_dialog_location = false;
            not_show_dialog_thermal = false;
        }

        public Uri getSdCardGrantedUri() {
            if (sd_card_grant_uri == null) {
                return null;
            }
            return Uri.parse(sd_card_grant_uri);
        }

        public String getUseVolumeKey() {
            return use_volume_key;
        }

        public boolean isCameraSound() {
            return camera_sound;
        }

        public boolean isSaveInternalStorage() {
            return save_internal_storage;
        }

        public boolean isSaveLocation() {
            return save_location;
        }

        public boolean isSdcardInserted() {
            return sdcard_inserted;
        }

        public boolean isShowDialogLocation() {
            return !not_show_dialog_location;
        }

        public boolean isShowDialogThermal() {
            return !not_show_dialog_thermal;
        }

        public void load() {
            loaded = true;
            SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
            Resources res = getResources();

            sdcard_inserted = prefs.getBoolean(res.getString(R.string.setting_key_sdcard_inserted), false);
            not_show_dialog_thermal = prefs.getBoolean(res.getString(R.string.setting_key_dialog_thermal), false);
            save_location = prefs.getBoolean(res.getString(R.string.setting_key_save_location), false);
            use_volume_key = prefs.getString(res.getString(R.string.setting_key_use_volume_key), "HW_CAMERA_KEY");
            camera_sound = prefs.getBoolean(res.getString(R.string.setting_key_camera_sound), true);
            save_internal_storage = prefs.getBoolean(res.getString(R.string.setting_key_save_internal_storage), true);
            sd_card_grant_uri = prefs.getString(res.getString(R.string.setting_key_sd_card_grant_uri), null);
            not_show_dialog_location = prefs.getBoolean(res.getString(R.string.setting_key_dialog_location), false);
        }

        public void save() {
            if (!loaded) {
                return;
            }
            SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(
                    getApplicationContext()).edit();
            Resources res = getResources();

            editor.putBoolean(res.getString(R.string.setting_key_sdcard_inserted), sdcard_inserted);
            editor.putBoolean(res.getString(R.string.setting_key_dialog_thermal), not_show_dialog_thermal);
            editor.putBoolean(res.getString(R.string.setting_key_save_location), save_location);
            editor.putString(res.getString(R.string.setting_key_use_volume_key), use_volume_key);
            editor.putBoolean(res.getString(R.string.setting_key_camera_sound), camera_sound);
            editor.putBoolean(res.getString(R.string.setting_key_save_internal_storage), save_internal_storage);
            editor.putString(res.getString(R.string.setting_key_sd_card_grant_uri), sd_card_grant_uri);
            editor.putBoolean(res.getString(R.string.setting_key_dialog_location), not_show_dialog_location);

            editor.apply();
        }

        public void setCameraSound(boolean cameraSound) {
            camera_sound = cameraSound;
        }

        public void setSaveInternalStorage(boolean saveInternalStorage) {
            save_internal_storage = saveInternalStorage;
        }

        public void setSaveLocation(boolean saveLocation) {
            save_location = saveLocation;
            save();
        }

        public void setSdCardGranted(Uri uri) {
            if (uri != null) {
                sd_card_grant_uri = uri.toString();
                LogFilter.d("Camera2App", "grantedUri:" + sd_card_grant_uri);
            }
        }

        public void setSdcardInserted(boolean sdcardInserted) {
            sdcard_inserted = sdcardInserted;
        }

        public void setShowDialogLocation(boolean showDialogLocation) {
            not_show_dialog_location = !showDialogLocation;
        }

        public void setShowDialogThermal(boolean showDialogThermal) {
            not_show_dialog_thermal = !showDialogThermal;
        }

        public void setUseVolumeKey(String useVolumeKey) {
            use_volume_key = useVolumeKey;
        }
    }


    // ===== ShotSettings =====
    // .super Ljava/lang/Object;  accessFlags=0x2 (private, non-static inner class)
    private class ShotSettings {
        public int noiseReductionStrength;

        private ShotSettings() {
        }
    }


    // ===== UpdateCameraInfoViewRunnable =====
    // .super Ljava/lang/Object;  .implements Ljava/lang/Runnable;
    // accessFlags=0x2 (private, non-static inner class)
    private class UpdateCameraInfoViewRunnable implements Runnable {
        private TotalCaptureResult mTotalCaptureResult;

        private UpdateCameraInfoViewRunnable() {
        }

        @Override
        public void run() {
            if (!mActive) {
                return;
            }
            Long exposureTime = (Long) mTotalCaptureResult.get(TotalCaptureResult.SENSOR_EXPOSURE_TIME);
            Integer sensitivity = (Integer) mTotalCaptureResult.get(TotalCaptureResult.SENSOR_SENSITIVITY);
            if (exposureTime != null && sensitivity != null) {
                if (mLatestCaptureResult == null) {
                    mLatestCaptureResult = new CaptureResult((double) exposureTime.longValue(), sensitivity.intValue());
                } else {
                    mLatestCaptureResult.sets((double) exposureTime.longValue(), sensitivity.intValue());
                }
                mInternalSettings.updateCameraInfoView(exposureTime.longValue(), sensitivity.intValue());
                if (isEngineRunning() && isAutoEdgeNR()) {
                    mSensorSensitivityAverageManager.add(sensitivity.intValue());
                }
            }
        }

        public void setTotalCaptureResult(TotalCaptureResult totalCaptureResult) {
            mTotalCaptureResult = totalCaptureResult;
        }
    }


    // ======================================================================
    // Method bodies
    // ======================================================================

    private void abortCamera() {
        if (mMorphoCamera != null) {
            mMorphoCamera.stopState();
            mMorphoCamera.cameraInfo().abortCaptures();
            if (isEngineRunning() && !isPanoramaSaving() && mDirectionFunction.enabled()) {
                LogFilter.d("Camera2App", "panorama is capturing.");
                playSound(mStopSoundId);
                mPanoramaState.abort();
                setAttachExit();
            } else if (isPanoramaSaving()) {
                LogFilter.d("Camera2App", "panorama is saving.");
                mSavingBackground = true;
                if (!mDirectionFunction.enabled()) {
                    return;
                }
            } else {
                LogFilter.d("Camera2App", "panorama is idling.");
                mMorphoCamera.cancelState();
            }
            mMorphoCamera.setDefaultCameraState();
            mMorphoCamera.pause();
            mMorphoCamera.exit();
        }
    }

    private void addAttachQueue(CaptureImage image) {
        mAttachImageQueue.offer(image);
        while (mAttachImageQueue.size() > 1) {
            CaptureImage polled = (CaptureImage) mAttachImageQueue.poll();
            if (polled != null) {
                polled.close();
            }
        }
    }

    private void addLocalCache(ContentInfo info) {
        if (mLocalCacheBackup != null) {
            mLocalCacheBackup.addFirst(info);
            if (mLocalCacheBackup.size() > MAX_LOCAL_CACHE_NUM) {
                mLocalCacheBackup.removeLast();
            }
        }
        mLocalCache.addFirst(info);
        if (mLocalCache.size() > MAX_LOCAL_CACHE_NUM) {
            mLocalCache.removeLast();
        }
    }

    private boolean autoFocus() {
        if (mActive && !mMorphoCamera.finishState() && checkRemainingMemory(false, false)) {
            CameraState state;
            if (mUseCamera1) {
                state = new Camera1AutoFocusState(mMorphoCamera.cameraState(), false);
            } else {
                state = new AutoFocusState(false);
            }
            mMorphoCamera.updateCameraState(state);
            state.onStart();
            mAutoFocusCircle.setImageResource(R.drawable.cam_auto_focus_circle_focusing_icn);
            mAutoFocusCircle.setVisibility(View.VISIBLE);
            mIsAutoFocusProcessing = true;
            return true;
        }
        return false;
    }

    private boolean checkLocationService() {
        if (!mStartTrackFlag) {
            return true;
        }
        if (mLocationManager.isValidLocationService()) {
            mLocationManager.requestLocation();
            InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
            if (infoIconsFragment != null) {
                infoIconsFragment.startGpsSearch();
            }
            if (!isActiveGpsSearchTimer()) {
                if (mGpsSearchTimerTask == null) {
                    mGpsSearchTimerTask = new TimerTask() {
        @Override
        public void run() {
            Camera2App.this.runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    InfoIconsFragment infoIconsFragment = Camera2App.this.getInfoIconsFragment();
                    if (Camera2App.this.isActiveGpsSearchTimer() && infoIconsFragment != null) {
                        infoIconsFragment.updateGpsSearch(false);
                    }
                }
            });
        }
    };
                }
                mGpsSearchTimer = new Timer();
                mGpsSearchTimer.scheduleAtFixedRate(mGpsSearchTimerTask, 500L, 500L);
            }
            mLocationManager.updateLocation(new PanoramaGP2LocationListener.IPanoramaGP2LocationListener() {
        @Override
        public void onLocationChanged(Location location) {
            if (location != null) {
                Camera2App.this.stopGpsSearchTimer();
            }
            InfoIconsFragment infoIconsFragment = Camera2App.this.getInfoIconsFragment();
            if (infoIconsFragment != null) {
                infoIconsFragment.updateGpsSearch(location != null);
            }
        }

        @Override
        public void onProviderDisabled() {
            Camera2App.this.stopGpsSearchTimer();
            Camera2App.this.mSettingList.setChecked(1, false);
        }
    });
            return true;
        }
        InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
        if (infoIconsFragment != null) {
            infoIconsFragment.stopGpsSearch();
        }
        startDialog(EnumDialogType.DIALOG_TYPE_SELECT_VALIDATE_LOCATION);
        return false;
    }

    private boolean checkRemainingMemory(boolean p1) {
        return checkRemainingMemory(p1, true);
    }

    private boolean checkRemainingMemory(boolean p1, boolean p2) {
        long internal = StorageMonitor.getAvailableInternalStorageSpace();
        long external = StorageMonitor.getAvailableExternalStorageSpace(this);
        boolean hasExternal = external >= 0;
        boolean internalOk = internal >= REMAINING_MEMORY_SIZE_MIN;
        boolean externalOk = external >= REMAINING_MEMORY_SIZE_MIN;
        boolean internalEnabled = !externalOk || internalOk;
        setEnabledSaveDestination(true, internalEnabled);
        setEnabledSaveDestination(false, externalOk);

        long remaining;
        boolean destExternal;
        boolean success;
        if (isSaveDestinationExternal()) {
            mSettings.setSdcardInserted(hasExternal);
            if (hasExternal) {
                remaining = external;
                destExternal = true;
                success = true;
            } else {
                if (p1 || p2) {
                    setSaveDestination(true);
                }
                if (!p1 && p2) {
                    startDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
                    return false;
                }
                if (p1) {
                    setOverlayDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
                    success = false;
                } else {
                    success = true;
                }
                remaining = internal;
                destExternal = false;
            }
        } else {
            if (p1) {
                mSettings.isSdcardInserted();
                if (!hasExternal) {
                    mSettings.setSdcardInserted(false);
                }
            }
            remaining = internal;
            destExternal = false;
            success = true;
        }

        LogFilter.d("Camera2App", String.format(Locale.US,
                "checkRemainingMemory Internal=%d External=%d Destination storage is %s.",
                internal, external, destExternal ? "external" : "internal"));

        if (remaining < 0) {
            if (p2) {
                if (destExternal) {
                    startDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
                } else {
                    startDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL);
                }
            } else if (p1) {
                if (destExternal) {
                    setOverlayDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
                } else {
                    setOverlayDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL);
                }
            }
            return false;
        }

        InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
        if (infoIconsFragment != null) {
            if (remaining < REMAINING_MEMORY_SIZE_RECOMMEND) {
                infoIconsFragment.showMemoryIcon();
            } else {
                infoIconsFragment.hideMemoryIcon();
            }
        }

        if (remaining < REMAINING_MEMORY_SIZE_MIN) {
            if (p2) {
                if (destExternal) {
                    startDialog(EnumDialogType.DIALOG_TYPE_MEMORY_FULL_EXTERNAL);
                } else {
                    startDialog(EnumDialogType.DIALOG_TYPE_MEMORY_FULL_INTERNAL);
                }
            } else if (p1) {
                if (destExternal) {
                    setOverlayDialog(EnumDialogType.DIALOG_TYPE_MEMORY_FULL_EXTERNAL);
                } else {
                    setOverlayDialog(EnumDialogType.DIALOG_TYPE_MEMORY_FULL_INTERNAL);
                }
            }
            return false;
        }

        return success;
    }

    private void clearLocalCache() {
        if (mLocalCache != null) {
            mLocalCache.clear();
        }
    }

    private void clearLocalCacheBackup() {
        if (mLocalCacheBackup != null) {
            mLocalCacheBackup.clear();
            mLocalCacheBackup = null;
        }
    }

    private void closeSettingDialog() {
        closeSettingDialog(true);
    }

    private void closeSettingDialog(boolean animate) {
        mSettingList.close(animate);
        mSettingSubListUseVolumeKey.close(false);
        mSettingSubListSaveDestination.close(false);
        getHeaderButtonsFragment().notifySettingDialogClosed();
        setMiniPreviewVisibility(true);
        mPreviewLine1.setVisibility(View.VISIBLE);
        mPreviewLine2.setVisibility(View.VISIBLE);
        showInfoIcons();
        requestToDimSystemUi();
    }

    private void closeSettingSubDialog() {
        mSettingSubListUseVolumeKey.close();
        mSettingSubListSaveDestination.close();
        mSettingList.setActive(true);
    }

    private void configureTransform() {
        if (mTextureView == null) {
            return;
        }
        CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
        int rotation = getWindowManager().getDefaultDisplay().getRotation();
        Matrix matrix = new Matrix();
        RectF viewRect = new RectF(0, 0, mTextureView.getWidth(), mTextureView.getHeight());
        RectF bufferRect = new RectF(0, 0, cameraInfo.getCaptureHeight(), cameraInfo.getCaptureWidth());
        float centerX = viewRect.centerX();
        float centerY = viewRect.centerY();
        if (rotation == 1 || rotation == 3) {
            bufferRect.offset(centerX - bufferRect.centerX(), centerY - bufferRect.centerY());
            matrix.setRectToRect(viewRect, bufferRect, Matrix.ScaleToFit.FILL);
            float scale = Math.max(
                    (float) mTextureView.getHeight() / (float) cameraInfo.getCaptureHeight(),
                    (float) mTextureView.getWidth() / (float) cameraInfo.getCaptureWidth());
            matrix.postScale(scale, scale, centerX, centerY);
            matrix.postRotate((rotation - 2) * 90, centerX, centerY);
        } else if (rotation == 2) {
            matrix.postRotate(180, centerX, centerY);
        }
        mTextureView.setTransform(matrix);

        View miniFrame = findViewById(R.id.mini_preview_frame);
        RectF miniViewRect = new RectF(0, 0, miniFrame.getWidth(), miniFrame.getHeight());
        float miniCenterX = miniViewRect.centerX();
        float miniCenterY = miniViewRect.centerY();
        if (rotation == 1 || rotation == 3) {
            bufferRect.offset(miniCenterX - bufferRect.centerX(), miniCenterY - bufferRect.centerY());
            matrix.setRectToRect(miniViewRect, bufferRect, Matrix.ScaleToFit.FILL);
            float scale = Math.max(
                    (float) miniFrame.getHeight() / (float) cameraInfo.getCaptureHeight(),
                    (float) miniFrame.getWidth() / (float) cameraInfo.getCaptureWidth());
            matrix.postScale(scale, scale, miniCenterX, miniCenterY);
            matrix.postRotate((rotation - 2) * 90, miniCenterX, miniCenterY);
        } else if (rotation == 2) {
            matrix.postRotate(180, miniCenterX, miniCenterY);
        }
        mMiniPreviewMatrix = new Matrix(matrix);
        if (mMiniPreviewImageView != null) {
            mMiniPreviewImageView.setImageMatrix(mMiniPreviewMatrix);
        }
    }

    private ContentInfo createContentinfo(Cursor cursor) {
        long id = cursor.getLong(cursor.getColumnIndex("_id"));
        String location = cursor.getString(cursor.getColumnIndex("_data"));
        ContentInfo info = new ContentInfo();
        info.mId = id;
        info.mImageFileLocation = location;
        return info;
    }

    private Intent createDefaultIntentView(String mimeType) {
        Intent intent = new Intent();
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setDataAndType(mThumbnailUri, mimeType);
        return intent;
    }

    private EnumResultCreateEngine createEngine() {
        if (mMorphoPanoramaGP2 != null) {
            return EnumResultCreateEngine.RESULT_ALREADY_CREATED;
        }
        mMorphoPanoramaGP2 = new MorphoPanoramaGP2();
        if ("YUV420_PLANAR".equals(mImageFormat)) {
            mInitParam.input_format = mImageFormat;
            mInitParam.output_format = "YUV420_SEMIPLANAR";
        } else {
            mInitParam.input_format = mImageFormat;
            mInitParam.output_format = mImageFormat;
        }
        if (mInternalSettings.aov_x != 0) {
            mViewAngleH = (float) mInternalSettings.aov_x;
        }
        if (mInternalSettings.aov_y != 0) {
            mViewAngleV = (float) mInternalSettings.aov_y;
        }
        CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
        int aspectIndex = getAspectTableIndex((float) cameraInfo.getCaptureWidth(), (float) cameraInfo.getCaptureHeight());
        float[] ratios = new float[2];
        getRatios(mSensorAspectIndex, aspectIndex, ratios);
        LogFilter.i("Camera2App", "createEngine mViewAngleH=" + mViewAngleH + " mViewAngleV=" + mViewAngleV
                + " ratiox=" + ratios[0] + " ratioy=" + ratios[1]);
        mInitParam.aovx = Math.atan(Math.tan(mViewAngleH * 0.5 * Math.PI / 180.0) * ratios[0]) * 2.0 * 180.0 / Math.PI;
        mInitParam.aovy = Math.atan(Math.tan(mViewAngleV * 0.5 * Math.PI / 180.0) * ratios[1]) * 2.0 * 180.0 / Math.PI;
        LogFilter.i("Camera2App", "createEngine aovx=" + mInitParam.aovx + " aovy=" + mInitParam.aovy);
        int rootViewWidth = getLiveViewWidth();
        double x = (double) (mInitParam.input_height * rootViewWidth) / (double) mMiniPreviewImageView.getWidth();
        LogFilter.i("Camera2App", "createEngine root_view width=" + rootViewWidth);
        LogFilter.i("Camera2App", "createEngine mMiniPreviewImageView width=" + mMiniPreviewImageView.getWidth()
                + " height=" + mMiniPreviewImageView.getHeight());
        mInitParam.goal_angle = x / mInitParam.input_height * mInitParam.aovy;
        LogFilter.i("Camera2App", "createEngine goal_angle=" + mInitParam.goal_angle);
        if (initializeEngine(mMorphoPanoramaGP2, mInitParam)) {
            mMorphoPanoramaGP2.setAttachEnabled(mInternalSettings.save_input_images == 0);
            return EnumResultCreateEngine.RESULT_NEWLY_CREATED;
        }
        mMorphoPanoramaGP2 = null;
        return EnumResultCreateEngine.RESULT_ERROR;
    }

    private static String createName(long time) {
        return DateFormat.format("yyyy-MM-dd_kk-mm-ss", time).toString();
    }

    private String createNewFilePath() {
        if (Build.VERSION.SDK_INT >= 28 && isSaveDestinationExternal()) {
            return createNewSDFilePath();
        }
        File dir = new File(mFolderPath);
        if (dir.exists()) {
            if (mSaveDirId < 0) {
                mSaveDirId = DIR_ID_MIN;
                dir.listFiles(new FileFilter() {
        @Override
        public boolean accept(File file) {
            if (!file.isDirectory()) {
                return false;
            }
            String name = file.getName();
            if (!name.endsWith("ANDRO")) {
                return false;
            }
            int idx = name.lastIndexOf("ANDRO");
            String prefix = name.substring(0, idx);
            try {
                int dirId = Integer.valueOf(prefix).intValue();
                if (dirId > Camera2App.this.mSaveDirId && dirId <= 0x3e7) {
                    Camera2App.this.mSaveDirId = dirId;
                    return true;
                }
                return false;
            } catch (NumberFormatException e) {
                return false;
            }
        }
    });
            }
        } else {
            mSaveDirId = DIR_ID_MIN;
            mSaveFileId = FILE_ID_MIN;
        }
        String dirPath = String.format(Locale.US, "%s%s%d%s", mFolderPath, File.separator, mSaveDirId, PREFIX_DIR);
        File dirFile = new File(dirPath);
        if (!dirFile.exists() && !dirFile.mkdirs()) {
            return null;
        }
        if (mSaveFileId < 0) {
            dirFile.listFiles(new FileFilter() {
        @Override
        public boolean accept(File file) {
            if (!file.isFile()) {
                return false;
            }
            String name = file.getName();
            String prefix;
            boolean isJpg;
            if (name.startsWith("DSC_")) {
                prefix = "DSC_";
                isJpg = true;
            } else if (name.startsWith("MOV_")) {
                prefix = "MOV_";
                isJpg = false;
            } else {
                return false;
            }
            int dotIndex = name.lastIndexOf(".");
            if (dotIndex < 0) {
                return false;
            }
            String ext = name.substring(dotIndex + 1);
            if (isJpg) {
                if (!ext.toUpperCase(Locale.US).matches("JPG")) {
                    return false;
                }
            } else {
                if (!ext.toUpperCase(Locale.US).matches("MP4")) {
                    return false;
                }
            }
            String numStr = name.substring(prefix.length(), dotIndex);
            try {
                int id = Integer.valueOf(numStr).intValue();
                if (id > Camera2App.this.mSaveFileId && id <= 0x270f) {
                    Camera2App.this.mSaveFileId = id;
                    return true;
                }
                return false;
            } catch (NumberFormatException e) {
                return false;
            }
        }
    });
            if (mSaveFileId < 0) {
                mSaveFileId = FILE_ID_MIN;
            } else {
                mSaveFileId = mSaveFileId + 1;
            }
        } else {
            mSaveFileId = mSaveFileId + 1;
        }
        if (mSaveFileId > FILE_ID_MAX) {
            mSaveDirId = mSaveDirId + 1;
            mSaveFileId = FILE_ID_MIN;
            dirPath = String.format(Locale.US, "%s%s%d%s", mFolderPath, File.separator, mSaveDirId, PREFIX_DIR);
            dirFile = new File(dirPath);
            if (!dirFile.exists() && !dirFile.mkdirs()) {
                return null;
            }
        }
        String filePath = String.format(Locale.US, "%s%s%s%04d.JPG", mFolderPath, File.separator, PREFIX_IMAGE, mSaveFileId);
        mSaveFileId = mSaveFileId + 1;
        return filePath;
    }

    private String createNewSDFilePath() {
        DocumentFile root = DocumentFile.fromTreeUri(this, mSettings.getSdCardGrantedUri());
        DocumentFile dcim;
        if (root.getName().matches("DCIM")) {
            dcim = root;
        } else {
            DocumentFile found = root.findFile("DCIM");
            if (found != null) {
                dcim = found;
            } else {
                DocumentFile created = root.createDirectory("DCIM");
                if (created == null) {
                    return null;
                }
                dcim = created;
            }
        }

        if (dcim.exists()) {
            if (mSaveDirId < 0) {
                mSaveDirId = DIR_ID_MIN;
                DocumentFile[] children = dcim.listFiles();
                for (int i = 0; i < children.length; i++) {
                    DocumentFile child = children[i];
                    if (!child.isDirectory()) {
                        continue;
                    }
                    String name = child.getName();
                    if (!name.endsWith(PREFIX_DIR)) {
                        continue;
                    }
                    String numStr = name.substring(0, name.lastIndexOf(PREFIX_DIR));
                    try {
                        Integer val = Integer.valueOf(numStr);
                        if (val.intValue() > mSaveDirId && DIR_ID_MAX >= val.intValue()) {
                            mSaveDirId = val.intValue();
                        }
                    } catch (NumberFormatException e) {
                    }
                }
            }
        } else {
            mSaveDirId = DIR_ID_MIN;
            mSaveFileId = FILE_ID_MIN;
        }

        String dirName = String.format(Locale.US, "%d%s", mSaveDirId, PREFIX_DIR);
        DocumentFile dirDoc = dcim.findFile(dirName);
        if (dirDoc == null) {
            dirDoc = dcim.createDirectory(dirName);
            if (dirDoc == null) {
                return null;
            }
        }

        if (mSaveFileId < 0) {
            File pathFile = new File(mFolderPath + File.separator + dirName);
            pathFile.list(new FilenameFilter() {
        @Override
        public boolean accept(File dir, String name) {
            try {
                if (name.length() != 12) {
                    return false;
                }
                String prefix;
                boolean isJpg;
                if (name.startsWith("DSC_")) {
                    prefix = "DSC_";
                    isJpg = true;
                } else if (name.startsWith("MOV_")) {
                    prefix = "MOV_";
                    isJpg = false;
                } else {
                    return false;
                }
                int dotIndex = name.lastIndexOf(".");
                if (dotIndex < 0) {
                    return false;
                }
                String ext = name.substring(dotIndex + 1);
                if (isJpg) {
                    if (!ext.toUpperCase(Locale.US).matches("JPG")) {
                        return false;
                    }
                } else {
                    if (!ext.toUpperCase(Locale.US).matches("MP4")) {
                        return false;
                    }
                }
                // 原始 smali：以 subSequence(prefix.length(), dotIndex) 取得 CharSequence 後 check-cast 為 String
                String numStr = (String) name.subSequence(prefix.length(), dotIndex);
                int id = Integer.parseInt(numStr);
                int saveFileId = Camera2App.this.mSaveFileId;
                // 注意：原始暫存器在 "startsWith(DSC_)" 判斷成立時被重新賦值為 1(TRUE)，
                // 因此這裡實際比較的是 "id < 1"，並非常見的長度上限 12（該暫存器已被覆寫，非筆誤）。
                if (id < saveFileId) {
                    return false;
                }
                if (id < 1) {
                    return false;
                }
                if (id > 0x270f) {
                    return false;
                }
                Camera2App.this.mSaveFileId = id;
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
    });
            if (mSaveFileId < 0) {
                mSaveFileId = FILE_ID_MIN;
            } else {
                mSaveFileId = mSaveFileId + 1;
            }
        } else {
            mSaveFileId = mSaveFileId + 1;
        }

        if (mSaveFileId > FILE_ID_MAX) {
            mSaveDirId = mSaveDirId + 1;
            mSaveFileId = FILE_ID_MIN;
            dirName = String.format(Locale.US, "%d%s", mSaveDirId, PREFIX_DIR);
            dirDoc = dcim.findFile(dirName);
            if (dirDoc == null) {
                dirDoc = dcim.createDirectory(dirName);
                if (dirDoc == null) {
                    return null;
                }
            }
        }

        String filePath = String.format(Locale.US, "%s%s%s%s%s%04d.JPG",
                mFolderPath, File.separator, dirName, File.separator, PREFIX_IMAGE, mSaveFileId);
        mSaveFileId = mSaveFileId + 1;
        return filePath;
    }

    public static void d_save_raw(byte[] data, String dirPath, String name) {
        PerformanceCounter counter = PerformanceCounter.newInstance(false);
        try {
            counter.start();
            FileOutputStream out = null;
            try {
                out = new FileOutputStream(String.format(Locale.US, "%s/%s.yuv", dirPath, name));
                out.write(data);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } finally {
                if (out != null) {
                    out.close();
                    counter.stop();
                    counter.putLog("Camera2App", "InputSave");
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void dismissDialog(RotatableDialogFragment.EnumDismissFactor factor) {
        if (mLicenseDialog != null) {
            mLicenseDialog.close();
            mLicenseDialog = null;
        }
        if (mDialog != null) {
            mDialog.dismiss(factor);
        }
    }

    private void dismissDialog(boolean positive, RotatableDialogFragment.EnumDismissFactor factor, boolean fromListener) {
        if (factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OVERLAY) {
            return;
        }
        setMiniPreviewVisibility(true);
        mPreviewLine1.setVisibility(View.VISIBLE);
        mPreviewLine2.setVisibility(View.VISIBLE);
        setButtonsEnabled(true);
        startCountDownTimer();
        requestToDimSystemUi();

        EnumDialogType dialogType = mDialogType;
        mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
        mDialog = null;
        mLicenseDialog = null;

        switch (dialogType) {
            case DIALOG_TYPE_SELECT_SAVE_DST:
                if (factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER) {
                    mSettings.setSdcardInserted(true);
                }
                if (positive) {
                    setSaveDestination(false);
                }
                break;
            case DIALOG_TYPE_ALERT_THERMAL_WARNING:
                if (factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER && fromListener) {
                    mSettings.setShowDialogThermal(false);
                }
                break;
            case DIALOG_TYPE_SELECT_CHANGE_LOCATION:
                if (factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER && fromListener) {
                    mSettings.setShowDialogLocation(false);
                }
                if (positive) {
                    if (!mLocationManager.isValidLocationService()) {
                        mOverlayDialogNum = 0;
                    }
                    mSettingList.setChecked(1, true);
                }
                break;
            case DIALOG_TYPE_SELECT_VALIDATE_LOCATION:
                if (positive) {
                    startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), REQUEST_SYSTEM_LOCATION_PERMISSION);
                    return;
                }
                if (factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER
                        || factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_BACK_KEY) {
                    mSettingList.setChecked(1, false);
                }
                break;
            case DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION:
            case DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE:
                if (positive) {
                    requestSdCardGranted();
                } else {
                    setSaveDestination(true);
                }
                break;
            default:
                break;
        }

        if (factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SUSPEND) {
            mOverlayDialogNum = 0;
            return;
        }
        if (mOverlayDialogNum > 0) {
            mOverlayDialogNum--;
            EnumDialogType next = mOverlayDialogType[mOverlayDialogNum];
            mOverlayDialogType[mOverlayDialogNum] = EnumDialogType.DIALOG_TYPE_NONE;
            if (next != EnumDialogType.DIALOG_TYPE_NONE) {
                startDialog(next);
            }
        }
    }

    private void excludeOverlayDialog(EnumDialogType type) {
        int i = 0;
        while (i < mOverlayDialogNum) {
            if (mOverlayDialogType[i] == type) {
                for (int j = i + 1; j < mOverlayDialogNum; j++) {
                    mOverlayDialogType[i] = mOverlayDialogType[j];
                    i++;
                }
                mOverlayDialogNum--;
                return;
            }
            i++;
        }
    }

    private void finalizeThermalAlert() {
        if (mThermalAlertReceiver != null) {
            unregisterReceiver(mThermalAlertReceiver);
            mThermalAlertReceiver = null;
        }
    }

    private void finishEngine() {
        LogFilter.d("Camera2App", "finishEngine");
        stopCaptureTimer();
        synchronized (CameraConstants.EngineSynchronizedObject) {
            mEngineEnding = false;
            if (mMorphoPanoramaGP2 == null) {
                return;
            }
            int ret = mMorphoPanoramaGP2.finish();
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.finish error ret:0x%08X", ret));
            }
            float fps = mMorphoPanoramaGP2.getAttachFps();
            float ave = mMorphoPanoramaGP2.getAttachAve();
            float std = mMorphoPanoramaGP2.getAttachStandardDeviation();
            mMorphoPanoramaGP2 = null;
            LogFilter.d("Camera2App", String.format(Locale.US, "attach %.02f fps (ave:%.02f, std:%.02f)", fps, ave, std));
        }
    }

    private static int getAspectTableIndex(float width, float height) {
        float ratio = height / width;
        int i = 0;
        while (i < ASPECT_TABLE.length) {
            float tableRatio = (float) ASPECT_TABLE[i][1] / (float) ASPECT_TABLE[i][0];
            if (Math.abs(ratio - tableRatio) < 0.1) {
                return i;
            }
            i++;
        }
        return 0;
    }

    private int getBaseAspect() {
        CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
        int physical = getAspectTableIndex(cameraInfo.getPhysicalWidth(), cameraInfo.getPhysicalHeight());
        int active = getAspectTableIndex((float) cameraInfo.getActiveArrayWidth(), (float) cameraInfo.getActiveArrayHeight());
        return (physical != active) ? active : physical;
    }

    private int getDisplayRotation() {
        int rotation = getWindowManager().getDefaultDisplay().getRotation();
        switch (rotation) {
            case 1:
                return 90;
            case 2:
                return 180;
            case 3:
                return 270;
            case 0:
            default:
                return 0;
        }
    }

    private FooterButtonsFragment getFooterButtonsFragment() {
        return (FooterButtonsFragment) getSupportFragmentManager().findFragmentById(R.id.footer_buttons);
    }

    private static int getGCD(int a, int b) {
        if (a > b) {
            int t = a;
            a = b;
            b = t;
        }
        while (a != 0) {
            int r = b % a;
            b = a;
            a = r;
        }
        return b;
    }

    private HeaderButtonsFragment getHeaderButtonsFragment() {
        return (HeaderButtonsFragment) getSupportFragmentManager().findFragmentById(R.id.header_buttons);
    }

    private InfoIconsFragment getInfoIconsFragment() {
        return (InfoIconsFragment) getSupportFragmentManager().findFragmentById(R.id.info_icons);
    }

    private static int getLCM(int a, int b) {
        int product = a * b;
        return product / getGCD(a, b);
    }

    private void getLatestImage() {
        LogFilter.v("Camera2App", "getLatestImage() IN");
        Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        String[] projection = {"_id", "_data"};
        if (mSavePanoramaPath != null) {
            LogFilter.v("Camera2App", "getLatestImage() mSavePanoramaPath:" + mSavePanoramaPath);
            String selection = "_data LIKE '%" + mSavePanoramaPath + "%'";
            mSavePanoramaPath = null;
            Cursor cursor = null;
            try {
                cursor = getContentResolver().query(uri, projection, selection, null, null);
                if (cursor != null && cursor.moveToFirst()) {
                    ContentInfo info = createContentinfo(cursor);
                    addLocalCache(info);
                    mImageId = info.mId;
                    mImageFileLocation = info.mImageFileLocation;
                }
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        } else {
            if (!mLocalCache.isEmpty()) {
                ContentInfo info = (ContentInfo) mLocalCache.getFirst();
                mImageId = info.mId;
                mImageFileLocation = info.mImageFileLocation;
            }
        }
        LogFilter.v("Camera2App", "getLatestImage() IN, mImageId = " + mImageId + " mImageFileLocation = " + mImageFileLocation);
    }

    private int getLiveViewHeight() {
        if (isDisplay18_9()) {
            return realPixelSize.y - getSettingButtonHeight() - getNavigationBarHeight();
        } else if (isDisplay21_9()) {
            if (isResolution16_9()) {
                return realPixelSize.x * 16 / 9;
            } else {
                return realPixelSize.x * 4 / 3;
            }
        } else {
            return realPixelSize.y;
        }
    }

    private int getLiveViewWidth() {
        if (isDisplay18_9()) {
            return (getLiveViewHeight() / 16) * 9;
        }
        return realPixelSize.x;
    }

    private void getMobilePhonePixels() {
        getWindowManager().getDefaultDisplay().getRealSize(realPixelSize);
        if (realPixelSize.x > realPixelSize.y) {
            int x = realPixelSize.x;
            realPixelSize.x = realPixelSize.y;
            realPixelSize.y = x;
        }
        LogFilter.i("Camera2App", "portrait orientation as base, realPixelSize size : " + realPixelSize.x + " x " + realPixelSize.y);
    }

    private int getNavigationBarHeight() {
        int resId = getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (resId > 0) {
            return getResources().getDimensionPixelSize(resId);
        }
        return getResources().getDimensionPixelSize(R.dimen.navigationbar_heght);
    }

    private static void getRatios(int idx0, int idx1, float[] out) {
        if (idx0 == idx1) {
            out[0] = 1.0f;
            out[1] = 1.0f;
            return;
        }
        float ratio0 = (float) ASPECT_TABLE[idx0][1] / (float) ASPECT_TABLE[idx0][0];
        float ratio1 = (float) ASPECT_TABLE[idx1][1] / (float) ASPECT_TABLE[idx1][0];
        int lcm = getLCM(ASPECT_TABLE[idx1][0], ASPECT_TABLE[idx0][0]);
        int mult0 = lcm / ASPECT_TABLE[idx0][0];
        int mult1 = lcm / ASPECT_TABLE[idx1][0];
        if (ratio1 >= ratio0) {
            out[0] = (float) (ASPECT_TABLE[idx0][1] * mult0) / (float) (ASPECT_TABLE[idx1][1] * mult1);
            out[1] = 1.0f;
        } else {
            out[0] = 1.0f;
            out[1] = (float) (ASPECT_TABLE[idx1][1] * mult1) / (float) (ASPECT_TABLE[idx0][1] * mult0);
        }
    }

    private boolean getSaveDestination() {
        return mSettings.isSaveInternalStorage();
    }

    private String getSaveDestinationRoot() throws IOException {
        boolean internal = getSaveDestination();
        String root = getSaveDestinationRoot(internal);
        if (root == null && internal) {
            throw new IOException();
        }
        return root;
    }

    private String getSaveDestinationRoot(boolean internal) {
        String path = internal ? StorageMonitor.getInternalStorageRootPath() : StorageMonitor.getExternalStorageRootPath(this);
        if (path != null) {
            path = path + File.separator + STORAGE_PATH_PREFIX;
        }
        return path;
    }

    private ProgressBar getSavingProgressBar() {
        if (!mIsInflateSavingProgress) {
            mIsInflateSavingProgress = true;
            ((ViewStub) findViewById(R.id.stubSavingProgressBar)).inflate();
        }
        return (ProgressBar) findViewById(R.id.SavingProgressBar);
    }

    private int getSettingButtonHeight() {
        return getResources().getDimensionPixelSize(R.dimen.header_icon_width);
    }

    private void getSettingValue() {
        mInternalSettings.getSettingValue((MorphoPanoramaGP2Application) getApplication());
    }

    private int getThumbnailRotation(String path) {
        if (path == null) {
            return 0;
        }
        try {
            ExifInterface exif = new ExifInterface(path);
            int orientation = exif.getAttributeInt("Orientation", 0);
            if (orientation == 6) {
                return 90;
            } else if (orientation == 3) {
                return 180;
            } else if (orientation == 8) {
                return 270;
            }
            return 0;
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        }
    }

    private int getViewPixelSize(int dimenResId) {
        int px = getResources().getDimensionPixelSize(dimenResId);
        int densityDpi = getResources().getDisplayMetrics().densityDpi;
        return px * DisplayMetrics.DENSITY_DEVICE_STABLE / densityDpi;
    }

    private void hideBlackScreen() {
        mCameraCheckTimer.cancel();
        findViewById(R.id.blackScreen).setVisibility(View.GONE);
    }

    private void hideInfoIcons() {
        ((LinearLayout) findViewById(R.id.info_icon_container)).setVisibility(View.GONE);
    }

    private void initAttachQueue() {
        while (mAttachImageQueue.size() > 0) {
            CaptureImage image = (CaptureImage) mAttachImageQueue.poll();
            if (image != null) {
                image.close();
            }
        }
    }

    private void initInternalSettingsViews() {
        initInternalSettingsViewsSync();
    }

    private void initInternalSettingsViewsAsync() {
        runOnUiThread(new Runnable() {
        @Override
        public void run() {
            Camera2App.this.initInternalSettingsViewsSync();
        }
    });
    }


    private void initInternalSettingsViewsSync() {
        mInternalSettings.initViews(mMorphoCamera, mHandler, ALWAYS_AUTO_MODE_AFTER_STARTUP);
    }

    private static boolean initializeEngine(MorphoPanoramaGP2 engine, MorphoPanoramaGP2.InitParam initParam) {
        int ret = engine.initialize(initParam);
        if (ret != 0) {
            LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.initialize error ret:0x%08X", ret));
            return false;
        }
        return true;
    }

    private void initializeLayoutObjects() {
        mTextureView = (TextureViewEx) findViewById(R.id.texture_view);
        mPreviewLine1 = findViewById(R.id.panoramagp2_preview_line1);
        mPreviewLine2 = findViewById(R.id.panoramagp2_preview_line2);
        mAutoFocusCircle = (ImageView) findViewById(R.id.panoramagp2_af_circle);
        mMiniPreviewImageView = (ImageView) findViewById(R.id.mini_preview);
        mMiniPreviewFrame = findViewById(R.id.mini_preview_frame);

        for (int i = 0; i < mIsMiniPreviewArrowsVisible.length; i++) {
            mIsMiniPreviewArrowsVisible[i] = true;
        }

        mSettingList = new SettingList(this, this, this);
        mSettingSubListUseVolumeKey = new SettingSubList(this, mSettingUseVolumeKeyList, this);
        mSettingSubListSaveDestination = new SettingSubList(this, mSettingSaveDestinationList, this);

        for (int i = 0; i < mSettingSaveDestinationList.length; i++) {
            if (mSettingSaveDestinationList[i] == R.string.cam_strings_panorama_save_destination_sd_txt) {
                mIndexSettingSaveDestinationSD = i;
            } else if (mSettingSaveDestinationList[i] == R.string.cam_strings_panorama_save_destination_ims_txt) {
                mIndexSettingSaveDestinationInternal = i;
            }
        }

        mSettingList.addSubList(mSettingSubListUseVolumeKey);
        mSettingList.addSubList(mSettingSubListSaveDestination);

        RelativeLayout rootView = (RelativeLayout) findViewById(R.id.root_view);
        rootView.setBackgroundColor(0xFF000000);

        View modeSelectorContainer = findViewById(R.id.modeselector_container);

        View settingListView0 = mSettingList.getView(0);
        rootView.addView(settingListView0, rootView.indexOfChild(modeSelectorContainer) - 1);

        View useVolumeKeyView0 = mSettingSubListUseVolumeKey.getView(0);
        rootView.addView(useVolumeKeyView0, rootView.indexOfChild(mSettingList.getView(0)) + 1);

        View saveDestinationView0 = mSettingSubListSaveDestination.getView(0);
        rootView.addView(saveDestinationView0, rootView.indexOfChild(mSettingList.getView(0)) + 1);

        View settingListView1 = mSettingList.getView(1);
        rootView.addView(settingListView1, rootView.indexOfChild(findViewById(R.id.modeselector_container)) - 1);

        View useVolumeKeyView1 = mSettingSubListUseVolumeKey.getView(1);
        rootView.addView(useVolumeKeyView1, rootView.indexOfChild(mSettingList.getView(1)) + 1);

        View saveDestinationView1 = mSettingSubListSaveDestination.getView(1);
        rootView.addView(saveDestinationView1, rootView.indexOfChild(mSettingList.getView(1)) + 1);

        rootView.setAccessibilityDelegate(new AccessibilityEventFilter());

        LinearLayout layoutFooter = (LinearLayout) findViewById(R.id.footer_icon_container);
        // 原始位元碼取得 LayoutParams 後未使用即被覆蓋，保留此呼叫以維持行為一致（含潛在 ClassCastException）。
        RelativeLayout.LayoutParams unusedFooterLayoutParams = (RelativeLayout.LayoutParams) layoutFooter.getLayoutParams();
        layoutFooter.post(new Runnable() {
        @Override
        public void run() {
            RelativeLayout.LayoutParams footerParams = (RelativeLayout.LayoutParams) layoutFooter.getLayoutParams();
            footerParams.bottomMargin = Camera2App.this.getResources().getDimensionPixelSize(
                    Camera2App.this.isDisplay18_9() ? 0x7f06005a : 0x7f060059);
            if (Camera2App.this.isDisplay18_9()) {
                int heightAvail = Camera2App.this.realPixelSize.y
                        - Camera2App.this.getSettingButtonHeight()
                        - Camera2App.this.getNavigationBarHeight();
                int previewHeight169 = (heightAvail / 16) * 9;
                int horizontalMargin = Camera2App.this.realPixelSize.x - previewHeight169;
                if (horizontalMargin % 2 != 0) {
                    horizontalMargin += 1;
                }
                DisplayMetrics metrics = Camera2App.this.getResources().getDisplayMetrics();
                int densityDpi = metrics.densityDpi;
                int densityDeviceStable = DisplayMetrics.DENSITY_DEVICE_STABLE;
                float marginBaseDp = Camera2App.this.getResources().getDimension(0x7f06005c);
                float scale = (float) densityDpi / (float) densityDeviceStable;
                float scaledMargin = marginBaseDp / scale;
                int half = horizontalMargin / 2;
                int margin = (int) (scaledMargin + (float) half + 0.5f);
                footerParams.leftMargin = margin;
                footerParams.rightMargin = margin;
                layoutFooter.setLayoutParams(footerParams);

                LogFilter.i("Camera2App", "leftMargin = "
                        + ((RelativeLayout.LayoutParams) layoutFooter.getLayoutParams()).leftMargin);
                LogFilter.i("Camera2App", "rightMargin = "
                        + ((RelativeLayout.LayoutParams) layoutFooter.getLayoutParams()).rightMargin);

                LinearLayout headerLayout = (LinearLayout) Camera2App.this.findViewById(0x7f08006a);
                RelativeLayout.LayoutParams headerParams = (RelativeLayout.LayoutParams) headerLayout.getLayoutParams();
                headerParams.leftMargin = margin;
                headerParams.rightMargin = margin;
                headerLayout.setLayoutParams(headerParams);
            }
        }
    });

        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        footerButtonsFragment.setShutterIcon();
        footerButtonsFragment.setTakePictureButtonOnTouchListener(new View.OnTouchListener() {
        @Override
        public boolean onTouch(View v, MotionEvent event) {
            int action = event.getAction();
            if (action == MotionEvent.ACTION_DOWN) {
                if (Camera2App.this.isCapturing()) {
                    return false;
                }
                if (Camera2App.this.isOpenedSettingDialog()) {
                    Camera2App.this.closeSettingDialog();
                    if (!Camera2App.this.checkRemainingMemory(false)) {
                        return false;
                    }
                }
                if (Camera2App.this.autoFocus()) {
                    Camera2App.this.mGuiCapturePressed = true;
                    Camera2App.this.setViewsVisibility(4);
                    Camera2App.this.requestToRemoveSystemUi();
                    Camera2App.this.getFooterButtonsFragment().setShutterIcon();
                    Camera2App.this.startCountDownTimer();
                }
            } else if (action == MotionEvent.ACTION_UP) {
                if (Camera2App.this.mGuiCapturePressed) {
                    Camera2App.this.mGuiCapturePressed = false;
                    Camera2App.this.requestToDimSystemUi();
                    Camera2App.this.onClickShutter(v);
                }
            } else if (action == MotionEvent.ACTION_MOVE) {
                Rect rect = new Rect();
                v.getDrawingRect(rect);
                if (!rect.contains((int) event.getX(), (int) event.getY()) && Camera2App.this.mGuiCapturePressed) {
                    Camera2App.this.mGuiCapturePressed = false;
                    Camera2App.this.setViewsVisibility(0);
                    Camera2App.this.requestToDimSystemUi();
                    Camera2App.this.updateViews();
                    Camera2App.this.unlockFocus();
                }
            } else if (action == MotionEvent.ACTION_CANCEL) {
                if (Camera2App.this.mGuiCapturePressed) {
                    Camera2App.this.mGuiCapturePressed = false;
                    Camera2App.this.setViewsVisibility(0);
                    Camera2App.this.requestToDimSystemUi();
                    Camera2App.this.updateViews();
                    Camera2App.this.unlockFocus();
                }
            }
            return false;
        }
    });
        footerButtonsFragment.setStopPictureButtonOnTouchListener(new View.OnTouchListener() {
        @Override
        public boolean onTouch(View v, MotionEvent event) {
            int action = event.getAction();
            if (action == MotionEvent.ACTION_DOWN) {
                if (!Camera2App.this.isCapturing()) {
                    return false;
                }
                Camera2App.this.mGuiCapturePressed = true;
            } else if (action == MotionEvent.ACTION_UP) {
                if (Camera2App.this.mGuiCapturePressed) {
                    Camera2App.this.mGuiCapturePressed = false;
                    Camera2App.this.onClickShutter(v);
                }
            } else if (action == MotionEvent.ACTION_MOVE) {
                Rect rect = new Rect();
                v.getDrawingRect(rect);
                if (!rect.contains((int) event.getX(), (int) event.getY()) && Camera2App.this.mGuiCapturePressed) {
                    Camera2App.this.mGuiCapturePressed = false;
                }
            } else if (action == MotionEvent.ACTION_CANCEL) {
                if (Camera2App.this.mGuiCapturePressed) {
                    Camera2App.this.mGuiCapturePressed = false;
                }
            }
            return false;
        }
    });

        ImageView modeSelectorButton = footerButtonsFragment.getModeSelectorButton();
        modeSelectorButton.setOnClickListener(new ModeSelectorButtonClickListener());
        modeSelectorButton.setOnTouchListener(new ModeSelectorButtonTouchListener());

        mRotatableToast = new RotatableToast(this);
        rootView.addView(mRotatableToast);

        if (isDisplay18_9()) {
            int height = realPixelSize.y - getSettingButtonHeight() - getNavigationBarHeight();
            int barHeight = (height / 16) * 9;

            View dummyLeftView = findViewById(R.id.dummyLeftView);
            View dummyRightView = findViewById(R.id.dummyRightView);
            dummyLeftView.setVisibility(View.VISIBLE);
            dummyRightView.setVisibility(View.VISIBLE);

            int halfWidth = (realPixelSize.x - barHeight) / 2;

            RelativeLayout.LayoutParams leftParams = (RelativeLayout.LayoutParams) dummyLeftView.getLayoutParams();
            int leftWidth = (halfWidth % 2 != 0) ? halfWidth + 1 : halfWidth;
            leftParams.width = leftWidth;
            leftParams.addRule(RelativeLayout.ALIGN_PARENT_START, RelativeLayout.TRUE);
            dummyLeftView.setLayoutParams(leftParams);
            int finalLeftWidth = leftParams.width;

            RelativeLayout.LayoutParams rightParams = (RelativeLayout.LayoutParams) dummyRightView.getLayoutParams();
            rightParams.width = halfWidth;
            rightParams.addRule(RelativeLayout.ALIGN_PARENT_END, RelativeLayout.TRUE);
            dummyRightView.setLayoutParams(rightParams);

            LinearLayout headerIconContainer = (LinearLayout) findViewById(R.id.header_icon_container);
            headerIconContainer.setPadding(finalLeftWidth, 0, 0, 0);
        }
    }

    private void initializeMiniPreviewTextureView() {
        mMiniPreviewTextureView = new TextureView(this);
        mMiniPreviewTextureView.setSurfaceTextureListener(mMiniPreviewSurfaceTextureListener);
        mMiniPreviewTextureView.setLayoutParams(mMiniPreviewImageView.getLayoutParams());

        RelativeLayout rootView = (RelativeLayout) findViewById(R.id.root_view);
        int index = rootView.indexOfChild(mMiniPreviewImageView) - 1;
        rootView.addView(mMiniPreviewTextureView, index);
    }

    private void initializeThermalAlert() {
        mThermalAlertReceiver = new ThermalAlertReceiver(this, this);

        IntentFilter filter = new IntentFilter();
        filter.addAction("com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL");
        filter.addAction("com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN");
        // PSM (thermal service) is a separate system process, not this app --
        // must be EXPORTED or its broadcasts can never reach this receiver.
        registerReceiver(mThermalAlertReceiver, filter, Context.RECEIVER_EXPORTED);
    }

    private boolean isActiveGpsSearchTimer() {
        return mGpsSearchTimer != null;
    }

    private boolean isCameraDisabled(Context context) {
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) context.getSystemService(Context.DEVICE_POLICY_SERVICE);
        return devicePolicyManager.getCameraDisabled(null);
    }

    private boolean isCapturing() {
        boolean capturing = isEngineRunning() || mKeyFocusPressed || mGuiCapturePressed;
        if (!capturing && mMorphoCamera != null) {
            CameraState state = mMorphoCamera.cameraState();
            if (mUseCamera1) {
                capturing = state != null && !(state instanceof Camera1PreviewState);
            } else if (state != null) {
                capturing = (state instanceof AutoFocusState) || (state instanceof UnlockFocusState)
                        || (state instanceof TakePictureState);
            }
        }
        return capturing;
    }

    private boolean isDialogShown() {
        if (mDialog != null && mDialog.isShowing()) {
            return true;
        }
        return mLicenseDialog != null && mLicenseDialog.isShowing();
    }

    private static boolean isDuringVoiceCall(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
        int callState = telephonyManager.getCallState();
        return callState == 1 || callState == 2;
    }

    private boolean isFirstLaunch() {
        return !getSharedPreferences(PREF_KEY, 0).getBoolean(PREF_KEY_FIRST_LAUNCH, false);
    }

    private boolean isFirstTimeLocation() {
        return !getSharedPreferences(PREF_KEY, 0).getBoolean(PREF_KEY_FIRST_TIME_LOCATION, false);
    }

    private boolean isInLockTaskMode() {
        ActivityManager activityManager = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
        if (Build.VERSION.SDK_INT >= 23) {
            return activityManager.getLockTaskModeState() != 0;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return activityManager.isInLockTaskMode();
        }
        return false;
    }

    private boolean isMainThread() {
        if (mMainThreadName == null) {
            mMainThreadName = getMainLooper().getThread().getName();
        }
        // 注意：原始位元碼使用 String.matches()（正規表示式比對）而非 equals()，此為原版既有寫法，予以保留。
        return Thread.currentThread().getName().matches(mMainThreadName);
    }

    private boolean isOpenedSettingDialog() {
        return mSettingList != null && mSettingList.getView().getVisibility() == View.VISIBLE;
    }

    private boolean isOpenedSettingSubDialog() {
        if (mSettingSubListUseVolumeKey != null && mSettingSubListUseVolumeKey.isOpened()) {
            return true;
        }
        return mSettingSubListSaveDestination != null && mSettingSubListSaveDestination.isOpened();
    }

    private boolean isPanoramaSaving() {
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.SavingProgressBar);
        return progressBar != null && progressBar.getVisibility() == View.VISIBLE;
    }

    private boolean isPreviewCentering() {
        return !isDisplay21_9();
    }

    private boolean isRemovedFromDataBase(ContentInfo contentInfo) {
        String[] projection = {"_id", "_data"};
        String selection = "_data LIKE '%" + contentInfo.mImageFileLocation + "%' AND " + "_id" + "=" + contentInfo.mId;

        Cursor cursor = null;
        try {
            cursor = getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, projection, selection, null, null);
            boolean notFound = (cursor == null) || !cursor.moveToFirst();
            if (!notFound) {
                return false;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }

        Bitmap thumbnail = MediaStore.Images.Thumbnails.getThumbnail(
                getContentResolver(), contentInfo.mId, MediaStore.Images.Thumbnails.MINI_KIND, null);
        return thumbnail == null;
    }

    private boolean isResolution16_9() {
        CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
        float ratio = (float) cameraInfo.getCaptureWidth() / (float) cameraInfo.getCaptureHeight();
        return Math.abs(ratio - (16.0f / 9.0f)) < 0.01f;
    }

    private boolean isSaveDestinationExternal() {
        return !mSettings.isSaveInternalStorage();
    }

    private boolean isTablet() {
        return getResources().getBoolean(R.bool.is_tablet);
    }

    private boolean isVisibleBlackScreen() {
        return findViewById(R.id.blackScreen).getVisibility() == View.VISIBLE;
    }

    public static String latitudeValueToNorS(double latitude) {
        return latitude > 0.0 ? "N" : "S";
    }

    private void loadLocalCache() {
        if (mLocalCacheBackup != null) {
            mLocalCache.clear();
            mLocalCache = new LinkedList(mLocalCacheBackup);
        }
    }

    public static String locationValueToString(double value) {
        long ticks = (long) Math.rint(360000.0 * Math.abs(value));
        long degrees = ticks / 360000L;
        long minutes = (ticks / 6000L) % 60L;
        long secondsHundredths = ticks % 6000L;
        return String.format(Locale.US, "%d/1,%d/1,%d/100", degrees, minutes, secondsHundredths);
    }

    public static String longitudeValueToEorW(double longitude) {
        return longitude > 0.0 ? "E" : "W";
    }

    private void makeEngineParam() {
        CameraInfo cameraInfo = mMorphoCamera.cameraInfo();

        mInitParam.direction = LIMIT_DIRECTION ? 1 : 0;
        mInitParam.input_width = cameraInfo.getCaptureWidth();
        mInitParam.input_height = cameraInfo.getCaptureHeight();

        if (mUseCamera1) {
            Size maxPictureSize = ((MorphoCamera1) mMorphoCamera).getMaxPictureSize();
            mSensorAspectIndex = getAspectTableIndex((float) maxPictureSize.getWidth(), (float) maxPictureSize.getHeight());
        } else if (cameraInfo.getPhysicalWidth() == cameraInfo.getPhysicalHeight()) {
            SizeF sizeF = new SizeF(
                    cameraInfo.getPhysicalWidth() * cameraInfo.getPixelArrayWidth() / 1000.0f,
                    cameraInfo.getPhysicalHeight() * cameraInfo.getPixelArrayHeight() / 1000.0f);

            mViewAngleH = (float) (Math.toDegrees(Math.atan(sizeF.getWidth() / (cameraInfo.getFocalLength() * 2.0f))) * 2.0);
            mViewAngleV = (float) (Math.toDegrees(Math.atan(sizeF.getHeight() / (cameraInfo.getFocalLength() * 2.0f))) * 2.0);
            mSensorAspectIndex = getAspectTableIndex(sizeF.getWidth(), sizeF.getHeight());
        } else {
            mSensorAspectIndex = getBaseAspect();
        }

        if (mAovs == null) {
            mAovs = new double[2];
            mAovs[0] = mViewAngleH;
            mAovs[1] = mViewAngleV;
        }

        Camera.CameraInfo camInfo = MorphoCamera1.getCameraInfo(mInternalSettings.camera_id);

        if (mIsFrontCamera) {
            mCameraOrientation = ((camInfo.orientation - 180) + 360) % 360;
        } else {
            mCameraOrientation = camInfo.orientation;
        }

        int displayRotation = getDisplayRotation();
        mInitParam.output_rotation = (mCameraOrientation + (displayRotation + mCurOrientation) + 360) % 360;

        if (mSensorFusion != null) {
            int rotationParam;
            switch (camInfo.orientation) {
                case 90:
                    rotationParam = 1;
                    break;
                case 180:
                    rotationParam = 2;
                    break;
                case 270:
                    rotationParam = 3;
                    break;
                default:
                    rotationParam = 0;
                    break;
            }
            int ret = mSensorFusion.setRotation(rotationParam);
            if (ret != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.setRotation error ret:0x%08X", ret));
            }
        }
    }

    private void modeFinish() {
        if (isOpenedSettingDialog()) {
            closeSettingDialog();
        }

        getFooterButtonsFragment().getModeSelectorButton().clearColorFilter();

        if (isInLockTaskMode()) {
            if (mPinToast != null) {
                mPinToast.cancel();
            }
            mPinToast = Toast.makeText(getApplicationContext(), R.string.cam_strings_panorama_screen_pinned_txt, Toast.LENGTH_LONG);
            mPinToast.show();
        } else {
            finish();
        }
    }

    private void onPreviewCaptureCompleted() {
        boolean mainThread = isMainThread();
        if (mainThread && mPreviewFrame != null) {
            mPreviewFrame.setVisibility(View.INVISIBLE);
            mCurPreviewFrame.setVisibility(View.INVISIBLE);
            mPreviewArrow.setVisibility(View.INVISIBLE);
        }

        if (PREVIEW_SPREAD_BOTH_SIDES && mPreviewImageView != null) {
            mPreviewImageView.setTranslationX(-999999.0f);
        }

        if (isEngineRunning()) {
            return;
        }

        if (mScreenCounter > 0) {
            mScreenCounter--;
            if (isVisibleBlackScreen() && mScreenCounter == 0) {
                runOnUiThread(mHideBlackScreenRunnable);
            }
        }

        if (mainThread) {
            if (mMiniPreviewImageView != null) {
                Bitmap bitmap = mTextureView.getBitmap(mMiniPreviewImageView.getWidth(), mMiniPreviewImageView.getHeight());
                mMiniPreviewImageView.setImageBitmap(bitmap);
            }
        } else {
            runOnUiThread(mPreviewFrameRunnable);
        }
    }

    private void onPreviewStartSub() {
        if (isMainThread()) {
            onPreviewStartSubSync();
        } else {
            onPreviewStartSubAsync();
        }
    }

    private void onPreviewStartSubAsync() {
        runOnUiThread(new Runnable() {
        @Override
        public void run() {
            if (Camera2App.this.mActive) {
                Camera2App.this.onPreviewStartSubSync();
            }
        }
    });
    }

    private void onPreviewStartSubSync() {
        setupUiAndCommonSettings();

        findViewById(R.id.panoramagp2_preview_background).setBackground(null);

        if (!mKeyFocusPressed && !mGuiCapturePressed) {
            updateViewsForPreview();
            if (mDialog != null) {
                requestToRecoverSystemUi();
                setMiniPreviewVisibility(false);
            }
        }

        mInternalSettings.updateViewsForPreviewStart();
    }

    private void openCamera() throws IllegalArgumentException {
        if (isCameraDisabled(this)) {
            return;
        }
        if (mTemperatureHigh) {
            return;
        }

        MorphoCamera morphoCamera = (MorphoCamera) mMorphoCamera;
        CameraInfo cameraInfo = morphoCamera.cameraInfo();
        if (!cameraInfo.isCameraEnabled()) {
            return;
        }

        if (cameraInfo.getOpenState() == 1) {
            return;
        }
        if (cameraInfo.getOpenState() == 2) {
            return;
        }

        if (!readViewAngle()) {
            if (Build.MODEL.equals("G3121") || Build.MODEL.equals("G3221")) {
                mViewAngleH = Float.intBitsToFloat(0x4290890b);
                mViewAngleV = Float.intBitsToFloat(0x426620e1);
            } else if (Build.MODEL.equals("EVA-TL00")) {
                mViewAngleH = Float.intBitsToFloat(0x428207e1);
                mViewAngleV = Float.intBitsToFloat(0x424c3810);
            } else {
                Camera camera = MorphoCamera1.open(mInternalSettings.camera_id);
                if (camera != null) {
                    Camera.Parameters parameters = camera.getParameters();
                    mViewAngleH = parameters.getHorizontalViewAngle();
                    mViewAngleV = parameters.getVerticalViewAngle();
                    camera.release();
                } else {
                    setViewsVisibility(4);
                    startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAMERA);
                    return;
                }
            }
            writeViewAngle(mInternalSettings.camera_id, mViewAngleH, mViewAngleV);
        }

        boolean opened = false;
        if (morphoCamera.prepareCamera(mTextureView, mMiniPreviewTextureView)) {
            mInternalSettings.initializeUI(cameraInfo);
            opened = morphoCamera.openCamera(true);
        }
        if (!opened) {
            setViewsVisibility(4);
            startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAMERA);
        }
    }

    private boolean openSettingDialog() {
        if (isCapturing() || isDialogShown()) {
            return false;
        }

        setMiniPreviewVisibility(false);
        mPreviewLine1.setVisibility(View.INVISIBLE);
        mPreviewLine2.setVisibility(View.INVISIBLE);
        mSettingList.open();
        hideInfoIcons();
        requestToRecoverSystemUi();
        return true;
    }

    private void playSound(int soundId) {
        if (mSoundPool != null && (!mCanDisableShutterSound || mSettings.isCameraSound())) {
            mSoundPool.play(soundId, 1.0f, 1.0f, 0, 0, 1.0f);
        }
    }

    private void prepareSound() {
        AudioAttributes audioAttributes;
        if (mCanDisableShutterSound) {
            audioAttributes = new AudioAttributes.Builder()
                    .setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)
                    .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)
                    .build();
        } else {
            audioAttributes = new AudioAttributes.Builder()
                    .setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)
                    .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)
                    .setFlags(AudioAttributes.FLAG_AUDIBILITY_ENFORCED)
                    .build();
        }

        mSoundPool = new SoundPool.Builder()
                .setAudioAttributes(audioAttributes)
                .setMaxStreams(1)
                .build();

        if (mSoundPool != null) {
            try {
                mFocusedSoundId = mSoundPool.load(this, R.raw.af_success, 1);
                mShutterSoundId = mSoundPool.load(this, R.raw.start_rec, 1);
                mStopSoundId = mSoundPool.load(this, R.raw.stop_rec, 1);
            } catch (Exception e) {
                e.printStackTrace();
                mSoundPool.release();
                mSoundPool = null;
            }
        }
    }

    private boolean readViewAngle() {
        SharedPreferences preferences = getSharedPreferences(PREF_KEY, 0);
        int savedCameraId = preferences.getInt(PREF_KEY_VIEW_ANGLE_CAMERA_ID, -1);
        if (savedCameraId != mInternalSettings.camera_id) {
            return false;
        }

        float angleH = preferences.getFloat(PREF_KEY_VIEW_ANGLE_H, 0.0f);
        float angleV = preferences.getFloat(PREF_KEY_VIEW_ANGLE_V, 0.0f);
        if (angleH != 0.0f && angleV != 0.0f) {
            mViewAngleH = angleH;
            mViewAngleV = angleV;
            return true;
        }
        return false;
    }

    private void reconstructLocalCache() {
        loadLocalCache();
        clearLocalCacheBackup();
        removeInvalidLocalCache();
    }

    private void registerGravitySensorListener() {
        mIsSensorAverage = false;
        mSensorCnt = 0;
        mGravities = new float[3];

        if (mInternalSettings.use_gravity_sensor && mSensorManager != null) {
            List<Sensor> sensors = mSensorManager.getSensorList(Sensor.TYPE_GRAVITY);
            if (sensors.size() > 0) {
                Sensor sensor = (Sensor) sensors.get(0);
                mSensorManager.registerListener(this, sensor, SensorManager.SENSOR_DELAY_UI);
            }
        }
    }

    private void releaseImageBitmap() {
        synchronized (PreviewImageSynchronizedObject) {
            if (!mTemperatureHigh && mPreviewImageView != null) {
                mPreviewImageView.setImageDrawable(null);
            }
            mPreviewBitmap = null;
            mPreviewFitBitmap = null;
        }
    }

    private void removeInvalidLocalCache() {
        Iterator it = mLocalCache.iterator();
        while (it.hasNext()) {
            ContentInfo contentInfo = (ContentInfo) it.next();
            File file = new File(contentInfo.mImageFileLocation);
            if (!file.exists()) {
                it.remove();
                continue;
            }
            if (isRemovedFromDataBase(contentInfo)) {
                it.remove();
            }
        }
    }

    private void requestToDimSystemUi() {
        View decorView = getWindow().getDecorView();
        if (decorView != null && !isTablet()) {
            decorView.setSystemUiVisibility(BASIC_SYSTEM_UI_FLAGS | 0x1);
            decorView.requestLayout();
        }
    }

    private void requestToRecoverSystemUi() {
        View decorView = getWindow().getDecorView();
        if (decorView != null && !isTablet()) {
            decorView.setSystemUiVisibility(BASIC_SYSTEM_UI_FLAGS);
            decorView.requestLayout();
        }
    }

    private void requestToRemoveSystemUi() {
        View decorView = getWindow().getDecorView();
        if (decorView != null && !isTablet()) {
            decorView.setSystemUiVisibility(BASIC_SYSTEM_UI_FLAGS);
            decorView.requestLayout();
        }
    }

    private boolean saveImage(ContentResolver resolver, String path, String title, String displayName,
            ByteBuffer buffer, int width, int height, Location location) {
        long fileSize = 0L;
        ParcelFileDescriptor pfd = null;
        int writeRet;

        if (Build.VERSION.SDK_INT >= 28 && isSaveDestinationExternal()) {
            String dirName = String.format(Locale.US, "%d%s", mSaveDirId, PREFIX_DIR);
            DocumentFile root = DocumentFile.fromTreeUri(this, mSettings.getSdCardGrantedUri());

            DocumentFile dcimDir;
            if (root.getName().matches("DCIM")) {
                dcimDir = root;
            } else {
                DocumentFile found = root.findFile("DCIM");
                if (found == null) {
                    DocumentFile created = root.createDirectory("DCIM");
                    if (created == null) {
                        return false;
                    }
                    dcimDir = created;
                } else {
                    dcimDir = found;
                }
            }

            DocumentFile subDir = dcimDir.findFile(dirName);
            DocumentFile targetFile = subDir.createFile("image/jpeg", displayName);

            try {
                ParcelFileDescriptor fd = resolver.openFileDescriptor(targetFile.getUri(), "rw");
                if (fd != null) {
                    writeRet = JpegIO.writeJPEG(buffer, width, height, fd.getFd(), mInitParam.output_format);
                    try {
                        fd.close();
                        if (writeRet == 0) {
                            fd = resolver.openFileDescriptor(targetFile.getUri(), "rw");
                        }
                        fileSize = targetFile.length();
                        pfd = fd;
                    } catch (FileNotFoundException e) {
                        throw e;
                    } catch (IOException e) {
                        e.printStackTrace();
                        pfd = null;
                    }
                } else {
                    writeRet = -0x7ffffff8;
                    pfd = null;
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                writeRet = -0x7ffffff0;
                pfd = null;
            } catch (IOException e) {
                e.printStackTrace();
                writeRet = 0;
                pfd = null;
            }
        } else {
            writeRet = JpegIO.writeJPEG(buffer, width, height, path, mInitParam.output_format);
            File savedFile = new File(path);
            fileSize = savedFile.length();
            pfd = null;
        }

        if (writeRet != 0) {
            LogFilter.e("PanoramaGP2", "writeJPEG ret = " + writeRet);
            return false;
        }

        long now = System.currentTimeMillis();

        ExifInterface exifInterface;
        if (pfd != null) {
            ExifInterface tmp;
            try {
                tmp = new ExifInterface(pfd.getFileDescriptor());
            } catch (IOException e) {
                e.printStackTrace();
                tmp = null;
            }
            exifInterface = tmp;
        } else {
            ExifInterface tmp;
            try {
                tmp = new ExifInterface(path);
            } catch (IOException e) {
                e.printStackTrace();
                tmp = null;
            }
            exifInterface = tmp;
        }

        if (exifInterface != null) {
            setInExif(exifInterface, location, mLatestCaptureResult);
        }

        if (pfd != null) {
            try {
                pfd.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        ContentValues values = new ContentValues(8);
        values.put("title", title);
        values.put("_display_name", displayName);
        values.put("datetaken", now);
        long nowSeconds = now / 1000;
        values.put("date_added", nowSeconds);
        values.put("date_modified", nowSeconds);
        values.put("mime_type", "image/jpeg");
        values.put("_data", path);
        values.put("_size", fileSize);

        resolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, values);
        return true;
    }

    private void saveLocalCache() {
        mLocalCacheBackup = new LinkedList(mLocalCache);
    }

    private void setAttachExit() {
        addAttachQueue(sAttachExit);
    }

    private void setButtonsEnabled(boolean enabled) {
        HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
        if (headerButtonsFragment != null) {
            headerButtonsFragment.setViewsEnabled(enabled);
        }

        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.setViewsEnabled(enabled);
        }
    }

    private void setEnabledSaveDestination(boolean condition, boolean enabled) {
        if (mSettingSubListSaveDestination != null) {
            if (condition) {
                mSettingSubListSaveDestination.setItemEnabled(mIndexSettingSaveDestinationInternal, enabled);
            } else {
                mSettingSubListSaveDestination.setItemEnabled(mIndexSettingSaveDestinationSD, enabled);
            }
        }
    }

    private static void setInExif(ExifInterface exifInterface, Location location, CaptureResult captureResult) {
        String dateTime = DateFormat.format("yyyy:MM:dd kk:mm:ss", System.currentTimeMillis()).toString();
        exifInterface.setAttribute("DateTime", dateTime);
        exifInterface.setAttribute("DateTimeOriginal", dateTime);
        exifInterface.setAttribute("DateTimeDigitized", dateTime);
        exifInterface.setAttribute("Make", Build.MANUFACTURER);
        exifInterface.setAttribute("Model", Build.MODEL);

        if (location != null) {
            double latitude = location.getLatitude();
            double longitude = location.getLongitude();

            String latitudeString = locationValueToString(latitude);
            String latitudeRef = latitudeValueToNorS(latitude);
            String longitudeString = locationValueToString(longitude);
            String longitudeRef = longitudeValueToEorW(longitude);

            exifInterface.setAttribute("GPSLatitude", latitudeString);
            exifInterface.setAttribute("GPSLatitudeRef", latitudeRef);
            exifInterface.setAttribute("GPSLongitude", longitudeString);
            exifInterface.setAttribute("GPSLongitudeRef", longitudeRef);
        }

        if (captureResult != null) {
            double exposureTime = captureResult.getExposureTime() / 1000.0 / 1000.0 / 1000.0;
            int iso = captureResult.getIsoValue();
            exifInterface.setAttribute("ExposureTime", String.valueOf(exposureTime));

            if (Build.VERSION.SDK_INT >= 24) {
                exifInterface.setAttribute("ISOSpeedRatings", String.valueOf(iso));
            } else {
                // 原始位元碼此分支與上方分支邏輯完全相同，屬原版既有的冗餘寫法，予以保留。
                exifInterface.setAttribute("ISOSpeedRatings", String.valueOf(iso));
            }
        }

        try {
            exifInterface.saveAttributes();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void setInitialRotationByGravity() {
        if (mInternalSettings.use_gravity_sensor && mMorphoPanoramaGP2 != null && mSensorCnt > 0) {
            float x = mGravities[0] / (float) mSensorCnt;
            float y = mGravities[1] / (float) mSensorCnt;
            float z = mGravities[2] / (float) mSensorCnt;

            LogFilter.d(LOG_TAG, String.format(Locale.US, "Gravity Sensor Value X=%f Y=%f Z=%f cnt=%d", x, y, z, mSensorCnt));

            int ret = mMorphoPanoramaGP2.setInitialRotationByGravity(x, y, z);
            if (ret != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setInitialRotationByGravity error ret:0x%08X", ret));
            }
        }
    }


    private void setMiniPreviewAndArrowsVisibility(boolean showMiniPreview, boolean showArrows) {
        setMiniPreviewVisibility(showMiniPreview);
        setMiniPreviewArrowsVisibility(showArrows);
    }

    private void setMiniPreviewArrowsVisibility(boolean visible) {
        View arrowLeft = findViewById(R.id.arrow_left);
        arrowLeft.setVisibility((visible && mIsMiniPreviewArrowsVisible[0]) ? View.VISIBLE : View.INVISIBLE);

        View arrowRight = findViewById(R.id.arrow_right);
        arrowRight.setVisibility((visible && mIsMiniPreviewArrowsVisible[1]) ? View.VISIBLE : View.INVISIBLE);

        View arrowUp = findViewById(R.id.arrow_up);
        arrowUp.setVisibility((visible && mIsMiniPreviewArrowsVisible[2]) ? View.VISIBLE : View.INVISIBLE);

        View arrowDown = findViewById(R.id.arrow_down);
        arrowDown.setVisibility((visible && mIsMiniPreviewArrowsVisible[3]) ? View.VISIBLE : View.INVISIBLE);
    }

    private void setMiniPreviewVisibility(boolean visible) {
        int visibility = visible ? View.VISIBLE : View.INVISIBLE;
        mMiniPreviewImageView.setVisibility(visibility);
        if (visibility == View.INVISIBLE) {
            mMiniPreviewImageView.setImageDrawable(null);
        }
        mMiniPreviewFrame.setVisibility(visibility);
    }

    private void setOverlayDialog(EnumDialogType type) {
        for (int i = 0; i < mOverlayDialogNum; i++) {
            if (mOverlayDialogType[i] == type) {
                return;
            }
        }
        mOverlayDialogType[mOverlayDialogNum] = type;
        mOverlayDialogNum = (mOverlayDialogNum + 1) % 3;
    }

    private void setPreviewSize() {
        int[][] table = {{0x500, 0x2d0}};

        // 原始位元碼會取得 DisplayMetrics 但之後完全未使用其內容，保留此行為（可能是原版殘留的無效程式碼）。
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);

        MorphoPanoramaGP2Application application = (MorphoPanoramaGP2Application) getApplication();
        Size[] supportedSizes = application.getSupportedPictureSizes();
        Size selected = supportedSizes[mInternalSettings.capture_size_index];
        for (int i = 0; i < supportedSizes.length; i++) {
            Size size = supportedSizes[i];
            if (size.getWidth() == table[0][0] && size.getHeight() == table[0][1]) {
                selected = size;
                break;
            }
        }
        application.setPreviewSize(selected);
    }

    private void setSaveDestination(boolean internal) {
        if (mSettingSubListSaveDestination != null) {
            int resId = internal
                    ? R.string.cam_strings_panorama_save_destination_ims_txt
                    : R.string.cam_strings_panorama_save_destination_sd_txt;
            mSettingSubListSaveDestination.setSelectedResourceId(resId);
        }
    }

    private void setSensorFusionValue() {
        if (mMorphoPanoramaGP2 == null || mSensorFusion == null || mInternalSettings.sensor_mode == -1) {
            return;
        }

        int ret = mSensorFusion.getSensorMatrix(mGyroMatrix, mRVMatrix, mACMatrix, null);
        if (ret != 0) {
            LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.getSensorMatrix error ret:0x%08X", ret));
        }

        ArrayList stockData = mSensorFusion.getStockData();

        if (mInternalSettings.sensor_mode == 1) {
            long attachCount = mMorphoPanoramaGP2.getAttachCount();
            ArrayList gyroList = (ArrayList) stockData.get(0);
            if (gyroList.size() > 0 && attachCount > 0L) {
                MorphoSensorFusion.SensorData[] gyroArray =
                        (MorphoSensorFusion.SensorData[]) gyroList.toArray(new MorphoSensorFusion.SensorData[gyroList.size()]);
                int gyroRet = mMorphoPanoramaGP2.setGyroscopeData(gyroArray);
                if (gyroRet != 0) {
                    LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setGyroscopeData error ret:0x%08X", gyroRet));
                }
            }
        } else if (mInternalSettings.sensor_mode == 4) {
            ArrayList rvList = (ArrayList) stockData.get(3);
            int size = rvList.size();
            if (size > 0) {
                MorphoSensorFusion.SensorData data = (MorphoSensorFusion.SensorData) rvList.get(size - 1);
                int rvRet = mMorphoPanoramaGP2.setRotationVector(data.mValues);
                if (rvRet != 0) {
                    LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setRotationVector error ret:0x%08X", rvRet));
                }
            }
        }

        mSensorFusion.clearStockData();
    }

    private void setSupportedCaptureSize() {
        int[] previewSizes = mMorphoCamera.getSupportedPreviewSizes();
        MorphoPanoramaGP2Application application = (MorphoPanoramaGP2Application) getApplication();
        application.setSupportedPictureSizes(previewSizes);
    }

    private void setThumbnail() {
        LogFilter.v(LOG_TAG, "setThumbnail() IN");
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment == null) {
            return;
        }
        if (mGetLatestImageTask != null) {
            if (mGetLatestImageTask.getStatus() == AsyncTask.Status.RUNNING) {
                LogFilter.v(LOG_TAG, "setThumbnail() cancel");
                mGetLatestImageTask.cancel(true);
            }
            mGetLatestImageTask = null;
        }
        mGetLatestImageTask = new GetLatestImageTask();
        mGetLatestImageTask.execute(new Integer[0]);
    }

    private void setViewsVisibility(int visibility) {
        if (mShutdownView && visibility == View.VISIBLE) {
            return;
        }

        if (visibility == View.VISIBLE || !isDialogShown()) {
            HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
            if (headerButtonsFragment != null) {
                headerButtonsFragment.setViewsVisibility(visibility);
            }
            FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
            if (footerButtonsFragment != null) {
                footerButtonsFragment.setViewsVisibility(visibility);
            }
            InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
            if (infoIconsFragment != null) {
                infoIconsFragment.setViewsVisibility(visibility);
                if (visibility == View.VISIBLE) {
                    showInfoIcons();
                } else {
                    hideInfoIcons();
                }
            }
        }

        if (visibility == View.VISIBLE) {
            if (LIMIT_DIRECTION) {
                if (getResources().getConfiguration().orientation == Configuration.ORIENTATION_PORTRAIT) {
                    mIsMiniPreviewArrowsVisible[0] = true;
                    mIsMiniPreviewArrowsVisible[1] = true;
                    mIsMiniPreviewArrowsVisible[2] = false;
                    mIsMiniPreviewArrowsVisible[3] = false;
                } else {
                    mIsMiniPreviewArrowsVisible[0] = false;
                    mIsMiniPreviewArrowsVisible[1] = false;
                    mIsMiniPreviewArrowsVisible[2] = true;
                    mIsMiniPreviewArrowsVisible[3] = true;
                }
            } else {
                mIsMiniPreviewArrowsVisible[0] = true;
                mIsMiniPreviewArrowsVisible[1] = true;
                mIsMiniPreviewArrowsVisible[2] = true;
                mIsMiniPreviewArrowsVisible[3] = true;
            }
            mAutoFocusCircle.setVisibility(View.INVISIBLE);
        } else {
            mIsMiniPreviewArrowsVisible[0] = false;
            mIsMiniPreviewArrowsVisible[1] = false;
            mIsMiniPreviewArrowsVisible[2] = false;
            mIsMiniPreviewArrowsVisible[3] = false;
            findViewById(R.id.panoramagp2_preview_background).setBackground(null);
        }

        if (mDialog != null) {
            return;
        }
        setMiniPreviewVisibility(visibility == View.VISIBLE);
        mPreviewLine1.setVisibility(visibility);
        mPreviewLine2.setVisibility(visibility);
    }

    private void setupUiAndCommonSettings() {
        if (mCreateSequence) {
            mCreateSequence = false;
            mSettings.load();
            try {
                mFolderPath = getSaveDestinationRoot();
            } catch (IOException e) {
                e.printStackTrace();
                finish();
            }
        }

        boolean resumeSequence = mResumeSequence;
        boolean permissionSequence = mPermissionSequence;
        mResumeSequence = false;
        mPermissionSequence = false;

        if (resumeSequence) {
            boolean sdMounted;
            if (!StorageMonitor.isExternalStorageMounted(this)) {
                LogFilter.d(LOG_TAG, "SD card is not mounted.");
                sdMounted = false;
            } else {
                LogFilter.d(LOG_TAG, "SD card is mounted.");
                sdMounted = true;
            }

            boolean sdCardPermissionMissing = sdMounted && isSaveDestinationExternal()
                    && !isSdCardGranted(mSettings.getSdCardGrantedUri());
            if (sdCardPermissionMissing) {
                mSettings.setSaveInternalStorage(true);
            }

            boolean insufficientMemory = !checkRemainingMemory(true, false);

            boolean locationDialogShown;
            if (!mSettings.isSaveLocation()) {
                mLocationManager.clearLocation();
                if (mSettings.isShowDialogLocation()) {
                    startDialog(EnumDialogType.DIALOG_TYPE_SELECT_CHANGE_LOCATION);
                    locationDialogShown = true;
                } else {
                    locationDialogShown = false;
                }
            } else {
                locationDialogShown = !checkLocationService();
            }

            if (!locationDialogShown && insufficientMemory) {
                mOverlayDialogNum -= 1;
                mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
                EnumDialogType overlaid = mOverlayDialogType[mOverlayDialogNum];
                mOverlayDialogType[mOverlayDialogNum] = EnumDialogType.DIALOG_TYPE_NONE;
                if (overlaid != EnumDialogType.DIALOG_TYPE_NONE) {
                    startDialog(overlaid);
                }
            }
            if (sdCardPermissionMissing) {
                startDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_GRANTED_EXTERNAL);
            }

            String volumeKey = mSettings.getUseVolumeKey();
            int volumeKeySummaryRes;
            switch (volumeKey) {
                case VALUE_VOLUME_KEY_ZOOM:
                    volumeKeySummaryRes = R.string.cam_strings_panorama_volumekey_zoom_txt;
                    break;
                case VALUE_VOLUME_KEY_VOLUME:
                    volumeKeySummaryRes = R.string.cam_strings_panorama_volumekey_volume_txt;
                    break;
                default:
                    volumeKeySummaryRes = R.string.cam_strings_panorama_volumekey_shutter_txt;
                    break;
            }
            mSettingSubListUseVolumeKey.setSelectedResourceId(volumeKeySummaryRes);
            mSettingSubListSaveDestination.setSelectedResourceId(
                    mSettings.isSaveInternalStorage()
                            ? R.string.cam_strings_panorama_save_destination_ims_txt
                            : R.string.cam_strings_panorama_save_destination_sd_txt);
            mSettingList.setSummary(2, volumeKeySummaryRes);
            mSettingList.setSummary(4,
                    mSettings.isSaveInternalStorage()
                            ? R.string.cam_strings_panorama_save_destination_ims_txt
                            : R.string.cam_strings_panorama_save_destination_sd_txt);
            mSettingList.setChecked(1, mSettings.isSaveLocation());
            mSettingList.setChecked(3, mSettings.isCameraSound());
        }

        if (resumeSequence) {
            mSettingList.setItemVisibility(3, mCanDisableShutterSound);
            mSettingList.setItemVisibility(4,
                    Util.checkPermissionGrant(new String[]{"android.permission.WRITE_MEDIA_STORAGE"}, this));
            mSettingList.setItemVisibility(5, !Util.isSystemApp(this));
        }

        if (resumeSequence || permissionSequence) {
            if (mStartTrackFlag) {
                setViewsVisibility(View.VISIBLE);
                updateViews();
            }
            if (mUseCamera1) {
                mMiniPreviewImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            } else {
                mMiniPreviewImageView.setScaleType(ImageView.ScaleType.MATRIX);
            }
            mMiniPreviewImageView.setImageMatrix(mMiniPreviewMatrix);
            configureTransform();
        }
    }

    private void showBlackScreen() {
        findViewById(R.id.blackScreen).setVisibility(View.VISIBLE);
    }

    private void showInfoIcons() {
        ((LinearLayout) findViewById(R.id.info_icon_container)).setVisibility(View.VISIBLE);
    }

    @TargetApi(23)
    private void showOkDialog(int requestCode) {
        mResumeAlertOkDialog = false;
        Bundle args = new Bundle();
        PackageManager packageManager = getPackageManager();

        PermissionGroupInfo storageGroup = null;
        PermissionGroupInfo cameraGroup = null;
        PermissionGroupInfo locationGroup = null;
        try {
            storageGroup = packageManager.getPermissionGroupInfo("android.permission-group.STORAGE", PackageManager.GET_META_DATA);
            cameraGroup = packageManager.getPermissionGroupInfo("android.permission-group.CAMERA", PackageManager.GET_META_DATA);
            locationGroup = packageManager.getPermissionGroupInfo("android.permission-group.LOCATION", PackageManager.GET_META_DATA);
        } catch (PackageManager.NameNotFoundException e) {
            LogFilter.w(LOG_TAG, "Package name cannot be found", e);
        }

        if (!isFirstLaunch() || isFirstTimeLocation()) {
            mAlertOkDialog = new AlertOkDialog();

            if (requestCode == REQUEST_LOCATION) {
                if (checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0
                        || checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0) {
                    if (locationGroup != null) {
                        args.putString("okBodyCaption1", String.valueOf(locationGroup.loadLabel(packageManager)));
                        args.putString("okBodyText1", getString(R.string.cam_strings_panorama_runtime_permission_rationale_location_txt));
                    }
                }
            } else {
                if (checkSelfPermission("android.permission.CAMERA") != 0 && cameraGroup != null) {
                    args.putString("okBodyCaption1", String.valueOf(cameraGroup.loadLabel(packageManager)));
                    args.putString("okBodyText1", getString(R.string.cam_strings_panorama_runtime_permission_rationale_camera_txt));
                }
                if (checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0 && storageGroup != null) {
                    args.putString("okBodyCaption2", String.valueOf(storageGroup.loadLabel(packageManager)));
                    args.putString("okBodyText2", getString(R.string.cam_strings_panorama_runtime_permission_rationale_storage_txt));
                }
            }

            int orientation;
            if (mCurViewDegree == -1 || mCurViewDegree == 0 || mCurViewDegree == 180) {
                orientation = 1;
            } else {
                orientation = 2;
            }
            args.putInt("DIALOG_ORIENTATION", orientation);

            mAlertOkDialog.setArguments(args);
            mAlertOkDialog.show(getSupportFragmentManager(), "Alert ok Dialog Fragment");
        }
    }

    private void showOkOrSettingDialog(String[] permissions, int requestCode) {
        List notGranted = Util.getPermissionNotGranted(permissions, this);
        if (Util.determineDialogType(notGranted, this)) {
            showOkDialog(requestCode);
        } else {
            showSettingDialog(requestCode);
        }
    }

    private void showPanoramaGuideDirection() {
        if (mWarningTextView == null) {
            return;
        }
        mWarningTextView.setText(R.string.cam_strings_panorama_guide_direction_txt);
        if (mWarningTextView.getWidth() == 0) {
            mHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (isCapturing()) {
                        showPanoramaGuideDirection();
                    }
                }
            }, 50L);
            return;
        }

        int degree = mCurViewDegree < 0 ? 0 : mCurViewDegree;
        mWarningTextView.setRotation((float) degree);
        if (degree == 0 || degree == 180) {
            mWarningTextView.setGravity(Gravity.CENTER);
            mWarningTextView.setTranslationY(0f);
        } else {
            mWarningTextView.setGravity(Gravity.END);
            mWarningTextView.setTranslationY((float) (-mWarningTextView.getWidth()) / 2.0f);
        }
        mWarningTextView.setVisibility(View.VISIBLE);
    }

    @TargetApi(23)
    private void showPermissionOrStartCamera() {
        if (Util.isMarshmallow()) {
            if (Util.checkPermissionGrant(PERMISSIONS_CAMERA_STORAGE, this)) {
                try {
                    startCamera();
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                    onErrorCamera();
                    return;
                }
                prepareSound();
            } else if (mStartTrackFlag) {
                requestPermissions(PERMISSIONS_CAMERA_STORAGE, REQUEST_CAMERA_STORAGE);
                changeTrackingFlag(false);
            }
        } else {
            try {
                startCamera();
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
                onErrorCamera();
                return;
            }
            prepareSound();
        }
    }

    @TargetApi(23)
    private void showPermissionOrValidateLocation() {
        if (Util.isMarshmallow()) {
            if (Util.checkPermissionGrant(PERMISSIONS_LOCATION, this)) {
                checkLocationService();
            } else if (mStartTrackFlag) {
                shutdownViews();
                if (mMorphoCamera != null) {
                    mMorphoCamera.stopState();
                    mMorphoCamera.cameraInfo().abortCaptures();
                    mMorphoCamera.cancelState();
                    mMorphoCamera.setDefaultCameraState();
                    mMorphoCamera.pause();
                }
                if (isFirstTimeLocation()) {
                    requestPermissions(PERMISSIONS_LOCATION, REQUEST_LOCATION);
                } else {
                    showOkOrSettingDialog(PERMISSIONS_LOCATION, REQUEST_LOCATION);
                }
                changeTrackingFlag(false);
            }
        } else {
            checkLocationService();
        }
    }

    private void showSavingProgressBar() {
        LogFilter.d(LOG_TAG, "showSavingProgressBar");
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.clearThumbnail();
        }
        setViewsVisibility(View.INVISIBLE);
        mWarningTextView.setVisibility(View.INVISIBLE);
        mPreviewFrame.setVisibility(View.INVISIBLE);
        mCurPreviewFrame.setVisibility(View.INVISIBLE);
        mPreviewArrow.setVisibility(View.INVISIBLE);
        setMiniPreviewAndArrowsVisibility(false, false);
        getSavingProgressBar().setVisibility(View.VISIBLE);
    }

    @TargetApi(23)
    private void showSettingDialog(int requestCode) {
        mResumeAlertSettingDialog = false;
        Bundle args = new Bundle();
        PackageManager packageManager = getPackageManager();

        PermissionGroupInfo storageGroup = null;
        PermissionGroupInfo cameraGroup = null;
        PermissionGroupInfo locationGroup = null;
        try {
            storageGroup = packageManager.getPermissionGroupInfo("android.permission-group.STORAGE", PackageManager.GET_META_DATA);
            cameraGroup = packageManager.getPermissionGroupInfo("android.permission-group.CAMERA", PackageManager.GET_META_DATA);
            locationGroup = packageManager.getPermissionGroupInfo("android.permission-group.LOCATION", PackageManager.GET_META_DATA);
        } catch (PackageManager.NameNotFoundException e) {
            LogFilter.w(LOG_TAG, "Package name cannot be found", e);
        }

        mAlertSettingDialog = new AlertSettingDialog();

        if (requestCode == REQUEST_LOCATION) {
            boolean bothGranted = checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0
                    && checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
            if (!bothGranted) {
                if (locationGroup != null) {
                    args.putString("settingBodyCaption1", String.valueOf(locationGroup.loadLabel(packageManager)));
                    args.putString("settingBodyText1", getString(R.string.cam_strings_panorama_runtime_permission_rationale_location_txt));
                }
                mAlertSettingDialog.setCancelWithFinish(false);
                mAlertSettingDialog.setCancelWithStartCamera(true);
            }
        } else {
            if (checkSelfPermission("android.permission.CAMERA") != 0 && cameraGroup != null) {
                args.putString("settingBodyCaption1", String.valueOf(cameraGroup.loadLabel(packageManager)));
                args.putString("settingBodyText1", getString(R.string.cam_strings_panorama_runtime_permission_rationale_camera_txt));
            }
            if (checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0 && storageGroup != null) {
                args.putString("settingBodyCaption2", String.valueOf(storageGroup.loadLabel(packageManager)));
                args.putString("settingBodyText2", getString(R.string.cam_strings_panorama_runtime_permission_rationale_storage_txt));
            }
            mAlertSettingDialog.setCancelWithFinish(true);
            mAlertSettingDialog.setCancelWithStartCamera(false);
        }

        int orientation;
        if (mCurViewDegree == -1 || mCurViewDegree == 0 || mCurViewDegree == 180) {
            orientation = 1;
        } else {
            orientation = 2;
        }
        args.putInt("DIALOG_ORIENTATION", orientation);

        mAlertSettingDialog.setArguments(args);
        mAlertSettingDialog.show(getSupportFragmentManager(), "Alert Setting Dialog Fragment");
    }

    private void shutdownViews() {
        mShutdownView = true;
        if (isOpenedSettingDialog()) {
            closeSettingDialog(false);
        }
        setViewsVisibility(View.INVISIBLE);
        setMiniPreviewAndArrowsVisibility(false, false);
        ((RelativeLayout) findViewById(R.id.root_view)).setBackgroundColor(0xFF000000);
        mView.setOnTouchListener(null);
        mTextureView.setVisibility(View.INVISIBLE);
        mTextureView.setOnTouchListener(null);
        if (mSurfaceView != null) {
            mSurfaceView.setVisibility(View.INVISIBLE);
            mSurfaceView.setOnTouchListener(null);
        }
        mSettingList.getView().setVisibility(View.INVISIBLE);
        mSettingSubListUseVolumeKey.getView().setVisibility(View.INVISIBLE);
        mSettingSubListSaveDestination.getView().setVisibility(View.INVISIBLE);
        if (mDialog != null) {
            mDialog.dismiss(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SHUTDOWN);
        }
        if (mPreviewFrame != null) {
            mPreviewFrame.setVisibility(View.INVISIBLE);
            mCurPreviewFrame.setVisibility(View.INVISIBLE);
            mPreviewArrow.setVisibility(View.INVISIBLE);
            mWarningTextView.setVisibility(View.INVISIBLE);
        }
        showBlackScreen();
    }

    private void startCamera() throws IllegalArgumentException {
        if (mTemperatureHigh) {
            return;
        }
        if (!mStartTrackFlag) {
            return;
        }

        setButtonsEnabled(true);

        mUseCamera1 = mInternalSettings.isUseCamera1(getApplication());
        mInternalSettings.settingCaptureMode(getApplication());

        if (mMorphoCamera == null
                || mUseCamera1Tmp != mUseCamera1
                || mCameraIdTmp != mInternalSettings.camera_id) {
            mAovs = null;
            mInternalSettings.removePreviewSize(getApplication());
            mInternalSettings.resetValues();
        }

        if (mUseCamera1) {
            mMorphoCamera = new MorphoCamera1(this, mInternalSettings.camera_id);
        } else {
            mMorphoCamera = new MorphoCamera(this, this, mInternalSettings.camera_id, mInternalSettings.getCaptureMode());
        }

        mIsFrontCamera = mMorphoCamera.isFrontCamera(mInternalSettings.camera_id);
        setNullDirectionFunction();
        mMorphoCamera.setMorphoPanoramaGP2Interface(this);

        if (mUseCamera1) {
            if (mSurfaceView == null) {
                ((ViewStub) findViewById(R.id.stub_camera1_surface_view)).inflate();
                mSurfaceView = (SurfaceView) findViewById(R.id.camera1_surface_view);
            }
            mTextureView.setVisibility(View.GONE);
            mSurfaceView.setVisibility(View.VISIBLE);
            SurfaceHolder holder = mSurfaceView.getHolder();
            holder.removeCallback(mSurfaceListener);
            holder.addCallback(mSurfaceListener);
            mTextureView.setOnTouchListener(null);
            mSurfaceView.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View v, MotionEvent event) {
                    if (isOpenedSettingDialog()) {
                        closeSettingDialog();
                        checkRemainingMemory(false);
                    }
                    return mScaleGestureDetector.onTouchEvent(event);
                }
            });
        } else {
            mTextureView.setVisibility(View.VISIBLE);
            mTextureView.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View v, MotionEvent event) {
                    if (isOpenedSettingDialog()) {
                        closeSettingDialog();
                        checkRemainingMemory(false);
                    }
                    return mScaleGestureDetector.onTouchEvent(event);
                }
            });
            if (mSurfaceView != null) {
                mSurfaceView.setVisibility(View.GONE);
                mSurfaceView.setOnTouchListener(null);
            }
        }

        if (mOrientationEventListener == null) {
            mOrientationEventListener = new ExtendedOrientationEventListener(this);
        }
        mOrientationEventListener.enable();
        updatedOrientation(getDisplayRotation());
        setSupportedCaptureSize();
        getSettingValue();
        setPreviewSize();

        MorphoPanoramaGP2Application application = (MorphoPanoramaGP2Application) getApplication();
        Size[] supportedSizes = application.getSupportedPictureSizes();
        Size captureSize = supportedSizes[mInternalSettings.capture_size_index];
        mMorphoCamera.resume(captureSize, application.getPreviewSize());

        if (mTextureView.isAvailable()) {
            textureViewPrepared();
        } else {
            mTextureView.setSurfaceTextureListener(mSurfaceTextureListener);
        }
    }

    private void startCaptureTimer() {
        mCaptureTimer.start();
    }

    private void startCountDownTimer() {
        if (!mTemperatureHigh) {
            mCountDownTimer.start();
        }
    }

    private void startDialog(EnumDialogType type) {
        if (!mStartTrackFlag) {
            return;
        }
        if (!mActive && type != EnumDialogType.DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE) {
            return;
        }
        if (mDialogType == type) {
            return;
        }

        if (mDialogType != EnumDialogType.DIALOG_TYPE_NONE && mOverlayDialogNum < 3) {
            switch (mDialogType) {
                case DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN:
                case DIALOG_TYPE_ERROR_CAMERA_SECURITY:
                    return;
                default:
                    if (type != EnumDialogType.DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN) {
                        setOverlayDialog(mDialogType);
                        if (isDialogShown()) {
                            dismissDialog(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OVERLAY);
                        }
                    }
                    break;
            }
        }

        Bundle args = new Bundle();
        int orientation;
        if (mCurViewDegree == -1 || mCurViewDegree == 0 || mCurViewDegree == 180) {
            orientation = 1;
        } else {
            orientation = 2;
        }
        args.putInt("DIALOG_ORIENTATION", orientation);

        switch (type) {
            case DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN:
                ErrorCaseHandler.setStatus(2);
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_dialog_high_temp_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_high_temp_shutting_down_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                break;
            case DIALOG_TYPE_ERROR_CAMERA_SECURITY:
                ErrorCaseHandler.setStatus(3);
                mDialog = new RotatableDialogFragment();
                args.putBoolean("USE_NATIVE_LAYOUT", true);
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_use_of_camera_not_authorized_txt));
                break;
            case DIALOG_TYPE_MEMORY_FULL_INTERNAL:
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_memory_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_memory_ims_full_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                break;
            case DIALOG_TYPE_MEMORY_FULL_EXTERNAL:
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_memory_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_memory_full_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                break;
            case DIALOG_TYPE_ERROR_SAVE:
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_memory_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_store_fail_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                break;
            case DIALOG_TYPE_ERROR_CAPTURE:
            case DIALOG_TYPE_ERROR_LAUNCH:
                ErrorCaseHandler.setStatus(6);
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_fatal_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                break;
            case DIALOG_TYPE_ERROR_CAMERA:
                ErrorCaseHandler.setStatus(3);
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_device_not_available_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                break;
            case DIALOG_TYPE_ERROR_CAMERA_LAUNCH:
                ErrorCaseHandler.setStatus(3);
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_launch_app_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                break;
            case DIALOG_TYPE_SELECT_SAVE_DST:
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_save_destination_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_change_storage_to_sd_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_change_txt));
                args.putString("NEGATIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_cancel_txt));
                break;
            case DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_memory_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_memory_unavailable_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                break;
            case DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL:
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_memory_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_memory_ims_unavailable_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                break;
            case DIALOG_TYPE_ERROR_NOT_GRANTED_EXTERNAL:
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_dialog_high_temp_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_sd_permission_info_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                break;
            case DIALOG_TYPE_ALERT_THERMAL_WARNING:
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_dialog_high_temp_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_high_temp_info_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                args.putString("CHECKBOX_MESSAGE", getString(R.string.cam_strings_panorama_do_not_show_again_txt));
                break;
            case DIALOG_TYPE_SELECT_CHANGE_LOCATION:
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_remember_geotag_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_remember_geotag_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_yes_txt));
                args.putString("NEGATIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_no_txt));
                args.putString("CHECKBOX_MESSAGE", getString(R.string.cam_strings_panorama_do_not_show_again_txt));
                break;
            case DIALOG_TYPE_SELECT_VALIDATE_LOCATION:
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_advanced_setting_geo_tag_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_advanced_setting_geo_tag_both_off_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                args.putString("NEGATIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_cancel_txt));
                break;
            case DIALOG_TYPE_LICENSE:
                mLicenseDialog = new LicenseDialog();
                break;
            case DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION:
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_dialog_high_temp_title_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_sd_permission_info_2_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                args.putString("NEGATIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_cancel_txt));
                break;
            case DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE:
                mDialog = new RotatableDialogFragment();
                args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_memory_unavailable_txt));
                args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_sd_permission_info_3_txt));
                args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
                args.putString("NEGATIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_cancel_txt));
                break;
            default:
                return;
        }

        mDialogType = type;

        if (isOpenedSettingDialog()) {
            closeSettingDialog();
            checkRemainingMemory(true, false);
        }
        setButtonsEnabled(false);
        setMiniPreviewVisibility(false);
        mPreviewLine1.setVisibility(View.INVISIBLE);
        mPreviewLine2.setVisibility(View.INVISIBLE);
        requestToRecoverSystemUi();

        if (mLicenseDialog != null) {
            mLicenseDialog.setArguments(args);
            mLicenseDialog.show(getSupportFragmentManager(), "License Dialog Fragment");
        } else {
            mDialog.setArguments(args);
            mDialog.show(getSupportFragmentManager(), "Dialog Fragment");
        }
    }

    private void startRotatableToast(String message, int arg2, boolean arg3) {
        if (mRotatableToast != null && !mRotatableToast.getRotatableToast()) {
            mRotatableToast.setRotatableToastMessage(message);
            mRotatableToast.startRotatableToast(arg2, arg3, mCurViewDegree);
        }
    }

    private void stopCaptureTimer() {
        mCaptureTimer.cancel();
    }

    private void stopGpsSearchTimer() {
        if (isActiveGpsSearchTimer()) {
            mGpsSearchTimer.cancel();
            mGpsSearchTimer.purge();
            mGpsSearchTimer = null;
            mGpsSearchTimerTask = null;
        }
    }

    private void textureViewPrepared() {
        try {
            openCamera();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            onErrorCamera();
            return;
        }
        makeEngineParam();
    }

    private void translateSettingSubList(View view) {
        Configuration configuration = getResources().getConfiguration();
        Rect rect = mSettingList.getGlobalRectOfSelectedItem();
        int padding = getResources().getDimensionPixelSize(R.dimen.setting_dialog_container_padding);

        float translationX;
        float translationY;
        if (mSettingList.getOrientation() != 0) {
            int x = rect.left + padding - view.getWidth()
                    - getResources().getDimensionPixelSize(R.dimen.setting_dialog_sub_list_top_margin);
            translationX = (float) x;
            if (configuration.getLayoutDirection() == 1) {
                translationY = (float) rect.top;
            } else {
                translationY = (float) (rect.top + (rect.height() - view.getHeight()));
            }
        } else {
            float x;
            if (configuration.getLayoutDirection() == 1) {
                x = (float) (rect.left - (rect.right - view.getWidth() + padding * 2));
            } else {
                x = (float) (rect.left - padding + (rect.right - view.getWidth() - padding * 2));
            }
            int y = rect.bottom - padding
                    + getResources().getDimensionPixelSize(R.dimen.setting_dialog_sub_list_top_margin);
            translationY = (float) y;
            translationX = x;
        }

        view.getGlobalVisibleRect(rect);
        if (mSettingList.getOrientation() == 1 && (float) rect.left + translationX < 0f) {
            translationX = (float) -rect.left;
        }
        if ((float) rect.top + translationY < 0f) {
            // 原始版本此處誤將 top 的修正值寫入 translationX（並非寫入 translationY），為原版既有行為，保留不修正。
            translationX = (float) -rect.top;
        }
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
    }

    private void unlockFocus() {
        if (mMorphoCamera != null) {
            CameraState state;
            if (mUseCamera1) {
                state = new Camera1UnlockFocusState(mMorphoCamera.cameraState());
            } else {
                state = new UnlockFocusState();
            }
            mMorphoCamera.updateCameraState(state);
            mMorphoCamera.startState();
        }
    }

    private void unregisterGravitySensorListener() {
        if (mInternalSettings.use_gravity_sensor && mSensorManager != null) {
            mSensorManager.unregisterListener(this);
        }
    }

    private void updateSaveDestination(boolean internal) {
        if (!internal) {
            Uri uri = mSettings.getSdCardGrantedUri();
            if (!isSdCardGranted(uri)) {
                startDialog(EnumDialogType.DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION);
                return;
            }
        }
        mSettings.setSaveInternalStorage(internal);
        mFolderPath = getSaveDestinationRoot(internal);
    }

    private void updateViews() {
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.updateViews();
            setThumbnail();
        }
    }

    private void updateViewsForCapture() {
        if (mPreviewFrame == null) {
            ((ViewStub) findViewById(R.id.stub_frame_panorama_preview)).inflate();
            ((ViewStub) findViewById(R.id.stub_preview_frame)).inflate();
            ((ViewStub) findViewById(R.id.stub_preview_arrow)).inflate();
            ((ViewStub) findViewById(R.id.stub_guide_text)).inflate();

            mPreviewFrame = (FrameLayout) findViewById(R.id.FramePanoramaPreview);
            mPreviewImageView = (ImageView) findViewById(R.id.ImagePanoramaPreview);
            mCurPreviewFrame = findViewById(R.id.panoramagp2_preview_frame);
            mPreviewArrow = (ImageView) findViewById(R.id.panoramagp2_preview_arrow);
            mWarningTextView = (TextView) findViewById(R.id.warning);
        }

        if (isDialogShown()) {
            return;
        }

        HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
        if (headerButtonsFragment != null) {
            headerButtonsFragment.setViewsVisibility(View.INVISIBLE);
        }
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.hideThumbnail();
            footerButtonsFragment.hideModeSelector();
        }

        boolean is16_9 = isResolution16_9();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) mPreviewImageView.getLayoutParams();
        Resources resources = getResources();
        int heightRes = is16_9 ? R.dimen.preview_height_16_9 : R.dimen.preview_height_4_3;
        layoutParams.height = resources.getDimensionPixelSize(heightRes);
        mPreviewImageView.setLayoutParams(layoutParams);

        setMiniPreviewAndArrowsVisibility(true, true);
        showPanoramaGuideDirection();
        hideInfoIcons();
        requestToRemoveSystemUi();
    }

    private void updateViewsForPreview() {
        if (mShutdownView) {
            return;
        }
        HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
        if (headerButtonsFragment != null) {
            headerButtonsFragment.setViewsVisibility(View.VISIBLE);
        }
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.showModeSelector();
            footerButtonsFragment.setShutterIcon();
        }
        setThumbnail();
        showInfoIcons();
        requestToDimSystemUi();
        if (mWarningTextView != null) {
            mWarningTextView.setVisibility(View.INVISIBLE);
        }
        setMiniPreviewAndArrowsVisibility(true, false);
    }

    private void updatedOrientation(int rotation) {
        int deviceOrientation = rotation + getDisplayRotation();
        boolean shouldUpdate;
        if (mCurOrientation == -1) {
            shouldUpdate = true;
        } else {
            int snappedCur = (mCurOrientation + 45) / 90 * 90 % 360;
            int snappedNew = (deviceOrientation + 45) / 90 * 90 % 360;
            if (snappedCur == snappedNew) {
                shouldUpdate = false;
            } else {
                shouldUpdate = Math.abs(deviceOrientation - snappedCur) > 60;
            }
        }
        if (shouldUpdate) {
            mCurOrientation = (deviceOrientation + 45) / 90 * 90 % 360;
        }
    }

    private void writeViewAngle(int cameraId, float angleH, float angleV) {
        SharedPreferences.Editor editor = getSharedPreferences(PREF_KEY, MODE_PRIVATE).edit();
        editor.putInt(PREF_KEY_VIEW_ANGLE_CAMERA_ID, cameraId);
        editor.putFloat(PREF_KEY_VIEW_ANGLE_H, angleH);
        editor.putFloat(PREF_KEY_VIEW_ANGLE_V, angleV);
        editor.apply();
    }

    public void changeTrackingFlag(boolean flag) {
        mStartTrackFlag = flag;
    }

    public int getAntiBanding() {
        return mInternalSettings.getAntiBanding();
    }

    public int getColorCorrectionMode() {
        return mInternalSettings.color_correction_mode;
    }

    public int getEdgeMode() {
        return mInternalSettings.edge_mode;
    }

    public int getNoiseReductionMode() {
        return mInternalSettings.noise_reduction_mode;
    }

    public Uri getSdCardGrantedUri() {
        return mSettings.getSdCardGrantedUri();
    }

    public int getShadingMode() {
        return mInternalSettings.shading_mode;
    }

    public int getTonemapMode() {
        return mInternalSettings.tonemap_mode;
    }

    public boolean isAutoAELock() {
        return mInternalSettings.auto_ae_lock;
    }

    public boolean isAutoEdgeNR() {
        return mInternalSettings.nr_auto;
    }

    public boolean isAutoWBLock() {
        return mInternalSettings.auto_wb_lock;
    }

    public boolean isDisplay18_9() {
        float ratio = (float) realPixelSize.y / (float) realPixelSize.x;
        return Math.abs(ratio - 2.0f) < 0.01f;
    }

    public boolean isDisplay21_9() {
        float ratio = (float) realPixelSize.y / (float) realPixelSize.x;
        return Math.abs(ratio - Float.intBitsToFloat(0x40155555)) < 0.01f;
    }

    public boolean isEngineRunning() {
        boolean panoramaSaving = isPanoramaSaving();
        return mMorphoPanoramaGP2 != null || panoramaSaving;
    }


    @Override
    public boolean isInfinityFocus() {
        return mInternalSettings.isInfinityFocus();
    }

    public boolean isSdCardGranted(Uri uri) {
        LogFilter.d("Camera2App", "isSdCardGranted():" + uri);
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.P) {
            return true;
        }
        if (uri == null) {
            LogFilter.w("Camera2App", "checkUri is null");
            return false;
        }
        Uri treeUri = DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri));
        boolean granted = false;
        try {
            Uri created = DocumentsContract.createDocument(getContentResolver(), treeUri, DUMMY_FILE_MIME_TYPE, DUMMY_FILE_NAME);
            if (created != null) {
                if (DocumentsContract.deleteDocument(getContentResolver(), created)) {
                    LogFilter.d("Camera2App", "SD Card is granted.");
                    granted = true;
                } else {
                    LogFilter.e("Camera2App", "SD Card is no granted for delete error.");
                }
            } else {
                LogFilter.d("Camera2App", "SD Card is no granted for createDocument failed.");
            }
        } catch (Exception e) {
            LogFilter.e("Camera2App", "file create failed");
        }
        LogFilter.d("Camera2App", "isSdCardGranted() result :" + granted);
        return granted;
    }

    @Override
    public boolean isTvLock() {
        return mInternalSettings.isTvLock();
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        LogFilter.d("Camera2App", "onActivityResult: requestCode: " + requestCode + ", resultCode: " + resultCode);
        super.onActivityResult(requestCode, resultCode, data);
        reconstructLocalCache();
        if (requestCode == REQUEST_SD_CARD_PERMISSION) {
            if (resultCode == RESULT_OK) {
                mSettings.setSdCardGranted(data.getData());
                mSettings.setSaveInternalStorage(false);
                mFolderPath = getSaveDestinationRoot(false);
            } else if (resultCode == RESULT_CANCELED) {
                startDialog(EnumDialogType.DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE);
            }
        }
    }

    @Override
    public void onAttachEnd() {
        synchronized (CameraConstants.EngineSynchronizedObject) {
            LogFilter.d("Camera2App", "onAttachEnd");
            mEngineEnding = true;
            if (mMorphoPanoramaGP2 != null) {
                mShotSettings.noiseReductionStrength = 0;
                if (isAutoEdgeNR()) {
                    int isoAve = mSensorSensitivityAverageManager.get();
                    LogFilter.d("Camera2App", "onAttachEnd isoAve=" + isoAve);
                    if (isoAve >= 300 && isoAve <= 400) {
                        mShotSettings.noiseReductionStrength = 8;
                    } else if (isoAve > 400) {
                        mShotSettings.noiseReductionStrength = Math.round(isoAve * 0.0375f);
                    } else {
                        mShotSettings.noiseReductionStrength = 0;
                    }
                } else {
                    mShotSettings.noiseReductionStrength = mInternalSettings.nr_strength;
                }
                int ret = mMorphoPanoramaGP2.setNoiseReductionParam(mShotSettings.noiseReductionStrength);
                if (ret != 0) {
                    LogFilter.e("Camera2App", "mMorphoPanoramaGP3.setNoiseReductionParam error ret:" + ret);
                }
                long start = System.currentTimeMillis();
                int endRet = mMorphoPanoramaGP2.end();
                LogFilter.d("Camera2App", "end time=" + (System.currentTimeMillis() - start));
                if (endRet != 0) {
                    LogFilter.e("Camera2App", "mMorphoPanoramaGP2.end error ret:" + endRet);
                }
            }
        }
        releaseImageBitmap();
    }

    @Override
    public void onAutoFocusFinish(boolean success) {
        mIsAutoFocusProcessing = false;
        if (success) {
            if (mGuiCapturePressed || mKeyFocusPressed) {
                playSound(mFocusedSoundId);
            }
            mAutoFocusCircle.setImageResource(R.drawable.cam_auto_focus_circle_focus_locked_icn);
        } else {
            mAutoFocusCircle.setVisibility(View.GONE);
        }
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
    }

    public void onCancelLocationSetting() {
        mShutdownView = false;
        mPermissionSequence = true;
        mSettingList.setChecked(SettingList.LIST_INDEX_SAVE_LOCATION, false);
        mScreenCounter = 3;
        showBlackScreen();
        try {
            startCamera();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            onErrorCamera();
        }
    }

    @Override
    public void onCaptureCompleted(CaptureRequest request, TotalCaptureResult result) {
        int hardwareLevel = mMorphoCamera.cameraInfo().getHardwareLevel();
        // 原始 smali 是 if-eq/if-eqz 跳到更新區塊「之後」的 :cond_0，亦即 LEGACY(2)
        // 與 LIMITED(0) 要「跳過」更新，只有其餘等級(本機為 FULL=1)才更新。
        if (hardwareLevel != 2 && hardwareLevel != 0) {
            mUpdateCameraInfoViewRunnable.setTotalCaptureResult(result);
            mUpdateCameraInfoViewRunnable.run();
        }
        if (!isEngineRunning()) {
            onPreviewCaptureCompleted();
        }
    }

    @Override
    public void onCheckedChanged(int index, boolean checked) {
        if (index == SettingList.LIST_INDEX_SAVE_LOCATION) {
            mSettings.setSaveLocation(checked);
            if (checked) {
                showPermissionOrValidateLocation();
            } else {
                stopGpsSearchTimer();
                getInfoIconsFragment().stopGpsSearch();
            }
        } else if (index == SettingList.LIST_INDEX_CAMERA_SOUND) {
            mSettings.setCameraSound(checked);
        }
    }

    public void onClickCameraSetting(View view) {
        mInternalSettings.revertCamera2ParamsFragmentMode();
        if (!isEngineRunning()) {
            mInternalSettings.toggleVisibilityCameraParamFrame();
        }
    }

    public void onClickSetting(View view) {
        mInternalSettings.revertCamera2ParamsFragmentMode();
        if (!isEngineRunning()) {
            LogFilter.i("Camera2App", "onClickSetting " + mAovs[0] + " " + mAovs[1]);
            String aspect = "" + ASPECT_TABLE[mSensorAspectIndex][0] + ":" + ASPECT_TABLE[mSensorAspectIndex][1];
            mInternalSettings.startSettingActivity(this, mAovs, aspect, mCamera2ImageQualitySettings,
                    mMorphoCamera.getAllCameras());
        }
    }

    public void onClickShutter(View view) {
        synchronized (mSyncCancelSave) {
            if (mActive && !mIsPanoramaCancel) {
                mSavingBackground = false;
                if (isOpenedSettingDialog()) {
                    closeSettingDialog();
                }
                mInternalSettings.revertCamera2ParamsFragmentMode();
                if (isSaveDestinationExternal() && !isSdCardGranted(mSettings.getSdCardGrantedUri())) {
                    mIsNotifySave2Internal = true;
                    setSaveDestination(true);
                }
                if (!checkRemainingMemory(false)) {
                    mAutoFocusCircle.setVisibility(View.GONE);
                    setViewsVisibility(0);
                    return;
                }
                if (mIsAutoFocusProcessing) {
                    CameraState state = mMorphoCamera.cameraState();
                    if (state instanceof AutoFocusState) {
                        ((AutoFocusState) state).setToNext(true);
                        return;
                    }
                    if (state instanceof Camera1AutoFocusState) {
                        ((Camera1AutoFocusState) state).setToNext(true);
                        return;
                    }
                }
                if (mDirectionFunction.enabled()) {
                    if (mMorphoCamera.finishState()) {
                        return;
                    }
                } else if (isEngineRunning() && !mIsInvalidDir) {
                    showSavingProgressBar();
                    mIsPanoramaCancel = true;
                    return;
                }
                mIsPanoramaCancel = false;
                mMorphoCamera.startTakePictureState();
            }
        }
    }

    public void onClickThumbnail(View view) {
        if (isCapturing()) {
            return;
        }
        LogFilter.d("Camera2App", "Thumbnail click!");
        String mimeType = MimeTypeMap.getSingleton().getMimeTypeFromExtension(
                MimeTypeMap.getFileExtensionFromUrl(mThumbnailFilePath.toLowerCase()));

        Intent reviewIntent = createDefaultIntentView(mimeType);
        reviewIntent.setAction("com.android.camera.action.REVIEW");
        if (reviewIntent.resolveActivity(getPackageManager()) != null) {
            startActivityForResult(reviewIntent, REQUEST_VIEW);
            return;
        }

        Intent viewIntent = createDefaultIntentView(mimeType);
        viewIntent.setAction(Intent.ACTION_VIEW);
        if (viewIntent.resolveActivity(getPackageManager()) != null) {
            startActivityForResult(viewIntent, REQUEST_VIEW);
            return;
        }

        setThumbnail();
        Toast.makeText(this, R.string.no_image_viewer, Toast.LENGTH_LONG).show();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LogFilter.i("Camera2App", String.format(Locale.US, "%s, BuildVersion:%d", Build.MODEL, Build.VERSION.SDK_INT));

        getMobilePhonePixels();

        setContentView(R.layout.camera2);

        requestToDimSystemUi();

        mCountDownTimer = new MyCountDownTimer(START_TIME, INTERVAL);
        mCaptureTimer = new CaptureTimer(0xbb8L, INTERVAL);
        mCameraCheckTimer = new CameraCheckTimer(0x1388L, INTERVAL);
        mCameraCheckTimer.start();

        mView = findViewById(R.id.fullView);
        mView.setFocusable(true);
        mView.setOnTouchListener(new View.OnTouchListener() {
        @Override
        public boolean onTouch(View v, MotionEvent event) {
            Camera2App.this.startCountDownTimer();
            return false;
        }
    });

        initializeLayoutObjects();

        mLocationManager = new PanoramaGP2LocationManager((LocationManager) getSystemService(LOCATION_SERVICE));

        mSensorManager = (SensorManager) getSystemService(SENSOR_SERVICE);
        for (Sensor sensor : mSensorManager.getSensorList(-1)) {
            if (sensor.getType() == Sensor.TYPE_GYROSCOPE) {
                mGyroscope = mSensorManager.getDefaultSensor(Sensor.TYPE_GYROSCOPE);
            }
            if (sensor.getType() == Sensor.TYPE_ACCELEROMETER) {
                mAccelerometer = mSensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
            }
            if (sensor.getType() == Sensor.TYPE_ROTATION_VECTOR) {
                mRotationVector = mSensorManager.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR);
            }
        }

        mSensorFusion = new SensorFusion(true);
        mSensorFusionMode = 4;
        int ret = mSensorFusion.setMode(mSensorFusionMode);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "SensorFusion.setMode error ret:0x%08X", ret));
        }
        ret = mSensorFusion.setOffsetMode(0);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "SensorFusion.setOffsetMode error ret:0x%08X", ret));
        }
        ret = mSensorFusion.setAppState(1);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "SensorFusion.setAppState error ret:0x%08X", ret));
        }

        for (int i = 0; i < mCamera2ImageQualitySettings.length; i++) {
            mCamera2ImageQualitySettings[i] = new Camera2ImageQualitySettings();
        }

        mScaleGestureDetector = new ScaleGestureDetector(this, new ScaleGestureDetector.OnScaleGestureListener() {
        @Override
        public boolean onScale(ScaleGestureDetector detector) {
            return false;
        }

        @Override
        public boolean onScaleBegin(ScaleGestureDetector detector) {
            return false;
        }

        @Override
        public void onScaleEnd(ScaleGestureDetector detector) {
        }
    });

        getHeaderButtonsFragment().setOnSettingDialogStateChangedListener(new HeaderButtonsFragment.OnSettingDialogStateChangedListener() {
        @Override
        public boolean openSettingDialog() {
            return Camera2App.this.openSettingDialog();
        }

        @Override
        public void closeSettingDialog() {
            Camera2App.this.closeSettingDialog();
            Camera2App.this.checkRemainingMemory(false);
        }

        @Override
        public boolean isOpened() {
            return Camera2App.this.isOpenedSettingDialog();
        }
    });

        ErrorCaseHandler.setStatus(0);
        mCreateSequence = true;
        mSavePanoramaPath = null;
    }

    @Override
    public void onDestroy() {
        LogFilter.d("Camera2App", "onDestroy");
        super.onDestroy();

        clearLocalCacheBackup();
        clearLocalCache();

        mSavePanoramaPath = null;
        mBroadcastReceiver = null;
        mRotatableToast = null;

        releaseImageBitmap();

        if (mThumbnailBitmap != null) {
            mThumbnailBitmap.recycle();
            mThumbnailBitmap = null;
        }

        if (mSensorFusion != null) {
            mSensorFusion.release();
        }

        changeTrackingFlag(true);

        mExecutor.shutdown();
        try {
            mExecutor.awaitTermination(0x64L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            mExecutor.shutdownNow();
            Thread.currentThread().interrupt();
        }

        mPinToast = null;
    }

    public void onDismissDialog(boolean positive, RotatableDialogFragment.EnumDismissFactor factor, boolean checked) {
        int status = ErrorCaseHandler.getStatus();
        switch (status) {
            case 2:
            case 3:
            case 5:
            case 6:
                finish();
                return;
            case 7:
                ErrorCaseHandler.setStatus(0);
                dismissDialog(positive, factor, checked);
                onRestart();
                onResume();
                return;
            default:
                dismissDialog(positive, factor, checked);
                setThumbnail();
                return;
        }
    }

    public void onDismissLicenseDialog() {
        dismissDialog(true, RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OTHER, false);
    }

    @Override
    public void onError() {
        runOnUiThread(new Runnable() {
        @Override
        public void run() {
            Camera2App.this.hideBlackScreen();
            Camera2App.this.setViewsVisibility(4);
            Camera2App.this.startDialog(Camera2App.EnumDialogType.DIALOG_TYPE_ERROR_CAMERA);
        }
    });
    }

    @Override
    public void onErrorCamera() {
        if (mMorphoCamera != null) {
            mMorphoCamera.cancelState();
        }
        runOnUiThread(new Runnable() {
        @Override
        public void run() {
            Camera2App.this.hideBlackScreen();
            Camera2App.this.shutdownViews();
            Camera2App.this.startDialog(Camera2App.EnumDialogType.DIALOG_TYPE_ERROR_CAMERA_LAUNCH);
        }
    });
    }

    @Override
    public void onErrorCapture() {
        if (mMorphoCamera != null) {
            mMorphoCamera.cancelState();
        }
        runOnUiThread(new Runnable() {
        @Override
        public void run() {
            Camera2App.this.hideBlackScreen();
            if (!Camera2App.this.isDialogShown()) {
                Camera2App.this.startDialog(Camera2App.EnumDialogType.DIALOG_TYPE_ERROR_CAPTURE);
            }
        }
    });
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            startCountDownTimer();
            if (isOpenedSettingDialog()) {
                return true;
            }
            if (mInternalSettings.onBackKeyDown()) {
                return true;
            }
            return super.onKeyDown(keyCode, event);
        }

        if (keyCode == KeyEvent.KEYCODE_FOCUS) {
            if (isVisibleBlackScreen()) {
                return true;
            }
            if (isDialogShown()) {
                return true;
            }
            if (isCapturing()) {
                return true;
            }
            if (event.getRepeatCount() == 0) {
                if (isOpenedSettingDialog()) {
                    closeSettingDialog();
                }
                if (autoFocus()) {
                    mKeyFocusPressed = true;
                    setViewsVisibility(0);
                    requestToRemoveSystemUi();
                    startCountDownTimer();
                }
            }
            return super.onKeyDown(keyCode, event);
        }

        if (keyCode != KeyEvent.KEYCODE_CAMERA) {
            if (keyCode == KeyEvent.KEYCODE_VOLUME_UP || keyCode == KeyEvent.KEYCODE_VOLUME_DOWN) {
                String useVolumeKey = mSettings.getUseVolumeKey();
                if ("ZOOM".equals(useVolumeKey)) {
                    startCountDownTimer();
                    if (!isDialogShown() && !isCapturing() && !isOpenedSettingDialog()) {
                        startRotatableToast(getString(R.string.cam_strings_panorama_zoom_not_suported_txt),
                                RotatableToast.TOAST_DURATION_LONG, false);
                    }
                    return true;
                }
                if ("VOLUME".equals(useVolumeKey)) {
                    startCountDownTimer();
                    return super.onKeyDown(keyCode, event);
                }
                if (mKeyFocusPressed) {
                    return true;
                }
                // HW_CAMERA_KEY: 落入下方與實體相機鍵共用的快門邏輯
            } else {
                return super.onKeyDown(keyCode, event);
            }
        }

        if (isVisibleBlackScreen()) {
            return true;
        }
        if (isDialogShown()) {
            return true;
        }
        if (mGuiCapturePressed) {
            return true;
        }
        if (event.getRepeatCount() > 0) {
            return true;
        }
        mKeyFocusPressed = false;
        if (!isCapturing() && keyCode != KeyEvent.KEYCODE_CAMERA) {
            if (isOpenedSettingDialog()) {
                closeSettingDialog();
            }
            if (autoFocus()) {
                setViewsVisibility(4);
                requestToRemoveSystemUi();
            }
        }
        startCountDownTimer();
        onClickShutter(null);
        return true;
    }

    @Override
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            if (isCapturing()) {
                if (isEngineRunning()) {
                    onClickShutter(null);
                }
                return true;
            }
            if (mMorphoCamera != null && !mMorphoCamera.canExitState()) {
                mMorphoCamera.cancelState();
                mMorphoCamera.startState();
                return true;
            }
            if (isOpenedSettingSubDialog()) {
                closeSettingSubDialog();
            } else if (isOpenedSettingDialog()) {
                closeSettingDialog();
                checkRemainingMemory(false);
            }
            return super.onKeyUp(keyCode, event);
        }

        if (keyCode == KeyEvent.KEYCODE_FOCUS) {
            if (mKeyFocusPressed) {
                mKeyFocusPressed = false;
                if (!isDialogShown()) {
                    setViewsVisibility(0);
                    requestToDimSystemUi();
                }
                updateViews();
                unlockFocus();
            }
        }

        return super.onKeyUp(keyCode, event);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    @Override
    public void onOpened() {
        mCamera2ImageQualitySettings[0].entries = mMorphoCamera.getAvailableColorCorrectionMode();
        mCamera2ImageQualitySettings[0].entryValues = mMorphoCamera.getAvailableColorCorrectionModeValues();
        mCamera2ImageQualitySettings[0].defaultValues = mMorphoCamera.getColorCorrectionModeDefaultValues();

        mCamera2ImageQualitySettings[1].entries = mMorphoCamera.getAvailableEdgeMode();
        mCamera2ImageQualitySettings[1].entryValues = mMorphoCamera.getAvailableEdgeModeValues();
        mCamera2ImageQualitySettings[1].defaultValues = mMorphoCamera.getEdgeModeDefaultValues();

        mCamera2ImageQualitySettings[2].entries = mMorphoCamera.getAvailableNoiseReductionMode();
        mCamera2ImageQualitySettings[2].entryValues = mMorphoCamera.getAvailableNoiseReductionModeValues();
        mCamera2ImageQualitySettings[2].defaultValues = mMorphoCamera.getNoiseReductionModeDefaultValues();

        mCamera2ImageQualitySettings[3].entries = mMorphoCamera.getAvailableShadingMode();
        mCamera2ImageQualitySettings[3].entryValues = mMorphoCamera.getAvailableShadingModeValues();
        mCamera2ImageQualitySettings[3].defaultValues = mMorphoCamera.getShadingModeDefaultValues();

        mCamera2ImageQualitySettings[4].entries = mMorphoCamera.getAvailableTonemapMode();
        mCamera2ImageQualitySettings[4].entryValues = mMorphoCamera.getAvailableTonemapModeValues();
        mCamera2ImageQualitySettings[4].defaultValues = mMorphoCamera.getTonemapModeDefaultValues();

        mInternalSettings.updateCamera2ImageQualitySettings(getApplicationContext(), mCamera2ImageQualitySettings);

        initInternalSettingsViews();
    }

    @Override
    protected void onPause() {
        LogFilter.d("Camera2App", "onPause 92417");
        mActive = false;

        synchronized (mSyncImageTask) {
            if (mGetLatestImageTask != null) {
                mGetLatestImageTask.cancel(false);
                mGetLatestImageTask = null;
            }
        }

        if (mAlertOkDialog != null && mAlertOkDialog.isShowing()) {
            mAlertOkDialog.dismiss();
            mAlertOkDialog = null;
            mResumeAlertOkDialog = true;
        }

        if (mAlertSettingDialog != null && mAlertSettingDialog.isShowing()) {
            mAlertSettingDialog.dismiss();
            mAlertSettingDialog = null;
            mResumeAlertSettingDialog = true;
        }

        if (isOpenedSettingDialog()) {
            closeSettingDialog(false);
        }

        if (isDialogShown()) {
            dismissDialog(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SHUTDOWN);
            dismissDialog(false, RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SUSPEND, false);
            mDialog = null;
        }

        setViewsVisibility(4);
        setButtonsEnabled(false);

        mCountDownTimer.cancel();
        stopCaptureTimer();
        mCameraCheckTimer.cancel();

        if (mBroadcastReceiver != null) {
            unregisterReceiver(mBroadcastReceiver);
            mBroadcastReceiver = null;
        }

        mThermalAlertReceiver.unbindThermalService();

        if (mPreviewFrame != null) {
            mPreviewFrame.setVisibility(View.INVISIBLE);
            mCurPreviewFrame.setVisibility(View.INVISIBLE);
            mPreviewArrow.setVisibility(View.INVISIBLE);
        }

        mSaveDirId = -1;
        mSaveFileId = -1;

        abortCamera();

        mLocationManager.removeUpdates();

        releaseImageBitmap();

        saveLocalCache();
        clearLocalCache();

        unregisterGravitySensorListener();
        mSensorManager.unregisterListener(mSensorFusion);

        mUseCamera1Tmp = mUseCamera1;
        mCameraIdTmp = mInternalSettings.camera_id;

        stopGpsSearchTimer();

        if (mStartTrackFlag) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(-1);
        }

        InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
        if (infoIconsFragment != null) {
            infoIconsFragment.hideTemperatureIcon();
        }

        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.clearThumbnail();
        }

        mScreenCounter = 3;
        showBlackScreen();
        getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);

        if (mSoundPool != null) {
            mSoundPool.release();
        }

        if (mRotatableToast != null) {
            mRotatableToast.invisibleRotatableToast();
        }

        mKeyFocusPressed = false;
        mGuiCapturePressed = false;
        mShutdownView = false;

        super.onPause();

        if (mTemperatureHigh) {
            finish();
        }
    }

    @Override
    public boolean onPictureTaken(CaptureImage image) {
        if (mInternalSettings.save_input_images == 1) {
            mInternalSettings.encodeFrame(image.image());
        }

        runOnUiThread(mTakePictureVisibleRunnable);

        double gain = 0.0;
        boolean tvAnalysisEnabled = false;
        if (mInternalSettings.tv() && !mInternalSettings.isTvLock()) {
            if (mPanoramaState.isEnableTvAnalysis()) {
                tvAnalysisEnabled = true;
                gain = MorphoPanoramaGP2.getGain(image.image());
            }
        }

        if (!mPanoramaState.onSaveImage(image)) {
            mPanoramaState = new PanoramaState();
            mMorphoCamera.cancelState();
        }

        if (isDialogShown()) {
            onClickShutter(null);
        }

        if (tvAnalysisEnabled) {
            MorphoCamera morphoCamera = (MorphoCamera) mMorphoCamera;
            morphoCamera.calculateNewRequest(gain);
            if (!morphoCamera.startTakePictureNewRequest(mInternalSettings.getCaptureMode())) {
                onErrorCapture();
                return false;
            }
            mPanoramaState.notifyTvAnalyzed();
        }

        switch (mInternalSettings.getCaptureMode()) {
            case 1:
            case 2:
                mPanoramaState.repeatTakePicture();
                break;
            case 3:
                if (mMorphoCamera.burstRemaining() > 1) {
                    mMorphoCamera.setBurstRemaining(mMorphoCamera.burstRemaining() - 1);
                } else {
                    mPanoramaState.repeatTakePicture();
                }
                break;
            default:
                break;
        }
        return true;
    }

    @Override
    public void onPreviewImage(byte[] data) {
        if (mPreviewFrame != null) {
            mPreviewFrame.setVisibility(View.INVISIBLE);
            mCurPreviewFrame.setVisibility(View.INVISIBLE);
            mPreviewArrow.setVisibility(View.INVISIBLE);
        }

        if (PREVIEW_SPREAD_BOTH_SIDES && mPreviewImageView != null) {
            mPreviewImageView.setTranslationX(-999999.0f);
        }

        if (isEngineRunning()) {
            return;
        }

        if (mMiniPreviewImageView != null) {
            Camera.CameraInfo cameraInfo = MorphoCamera1.getCameraInfo(mInternalSettings.camera_id);
            int displayRotation = getDisplayRotation();
            int rotation = (cameraInfo.orientation + displayRotation + 360) % 360;

            if (mMiniPreviewBitmapForCamera1 == null
                    || mMiniPreviewBitmapForCamera1.getWidth() != (mMiniPreviewImageView.getWidth() & ~1)
                    || mMiniPreviewBitmapForCamera1.getHeight() != (mMiniPreviewImageView.getHeight() & ~1)) {
                mMiniPreviewBitmapForCamera1 = Bitmap.createBitmap(
                        mMiniPreviewImageView.getWidth() & ~1,
                        mMiniPreviewImageView.getHeight() & ~1,
                        Bitmap.Config.ARGB_8888);
            }

            CameraInfo captureCameraInfo = mMorphoCamera.cameraInfo();
            int captureWidth = captureCameraInfo.getCaptureWidth();
            int captureHeight = captureCameraInfo.getCaptureHeight();
            int ret;
            if ("YUV420_PLANAR".equals(mImageFormat)) {
                ret = MorphoPanoramaGP2.yuv2Bitmap8888(data, captureWidth, captureHeight, mMiniPreviewBitmapForCamera1, rotation);
                if (ret != 0) {
                    LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.yuv2Bitmap8888 error ret:0x%08X", ret));
                }
            } else {
                ret = MorphoPanoramaGP2.yvu2Bitmap8888(data, captureWidth, captureHeight, mMiniPreviewBitmapForCamera1, rotation);
                if (ret != 0) {
                    LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.yvu2Bitmap8888 error ret:0x%08X", ret));
                }
            }

            if (mIsFrontCamera) {
                Matrix flip = new Matrix();
                flip.preScale(-1.0f, 1.0f);
                Bitmap flipped = Bitmap.createBitmap(mMiniPreviewBitmapForCamera1, 0, 0,
                        mMiniPreviewBitmapForCamera1.getWidth(), mMiniPreviewBitmapForCamera1.getHeight(), flip, true);
                mMiniPreviewImageView.setImageBitmap(flipped);
            } else {
                mMiniPreviewImageView.setImageBitmap(mMiniPreviewBitmapForCamera1);
            }
        }

        if (isVisibleBlackScreen()) {
            hideBlackScreen();
        }
    }

    @Override
    public boolean onPreviewImageAvailable() {
        return true;
    }

    @Override
    public void onPreviewStart() {
        if (!mStartTrackFlag) {
            return;
        }
        if (mTemperatureHigh) {
            return;
        }
        onPreviewStartSub();
        if (mOrientationEventListener != null) {
            mOrientationEventListener.enable();
        }
        if (mSensorFusion != null) {
            mSensorFusion.clearStockData();
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        reconstructLocalCache();

        if (grantResults.length > 0) {
            if (requestCode == REQUEST_CAMERA) {
                if (Util.checkPermissionsResult(grantResults)) {
                    changeTrackingFlag(true);
                } else {
                    showSettingDialog(requestCode);
                }
            } else if (requestCode == REQUEST_STORAGE) {
                if (Util.checkPermissionsResult(grantResults)) {
                    changeTrackingFlag(true);
                } else {
                    showSettingDialog(requestCode);
                }
            } else if (requestCode == REQUEST_CAMERA_STORAGE) {
                if (Util.checkPermissionsResult(grantResults)) {
                    changeTrackingFlag(true);
                } else {
                    showSettingDialog(requestCode);
                }
            } else if (requestCode == REQUEST_LOCATION) {
                if (Util.checkPermissionsResult(grantResults)) {
                    changeTrackingFlag(true);
                } else {
                    showSettingDialog(requestCode);
                }
                SharedPreferences.Editor locationEditor = getSharedPreferences(PREF_KEY, 0).edit();
                locationEditor.putBoolean(PREF_KEY_FIRST_TIME_LOCATION, true);
                locationEditor.apply();
            }
            SharedPreferences.Editor editor = getSharedPreferences(PREF_KEY, 0).edit();
            editor.putBoolean(PREF_KEY_FIRST_LAUNCH, true);
            editor.apply();
        } else {
            changeTrackingFlag(true);
        }
    }

    @Override
    protected void onResume() {
        LogFilter.d("Camera2App", "onResume");
        super.onResume();
        mActive = true;

        if (mTemperatureHigh) {
            return;
        }

        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        setRequestedOrientation(1);

        startCountDownTimer();

        if (!mStartTrackFlag) {
            if (mResumeAlertSettingDialog) {
                if (Util.checkPermissionGrant(PERMISSIONS_CAMERA_STORAGE, this)) {
                    showSettingDialog(REQUEST_LOCATION);
                } else {
                    showSettingDialog(REQUEST_CAMERA_STORAGE);
                }
            }
            if (mResumeAlertOkDialog) {
                showOkDialog(REQUEST_LOCATION);
            }
        }

        showBlackScreen();
        setViewsVisibility(4);
        setMiniPreviewArrowsVisibility(false);

        registerGravitySensorListener();

        if (mInternalSettings.sensor_mode != -1) {
            mSensorFusionMode = mInternalSettings.sensor_mode;
            mSensorFusion.setMode(mSensorFusionMode);
        }

        if (mGyroscope != null && mInternalSettings.sensor_mode != -1) {
            mSensorManager.registerListener(mSensorFusion, mGyroscope, SensorManager.SENSOR_DELAY_FASTEST);
        }

        if (mAccelerometer != null && mInternalSettings.sensor_mode == 2) {
            mSensorManager.registerListener(mSensorFusion, mAccelerometer, SensorManager.SENSOR_DELAY_FASTEST);
        }

        if (mRotationVector != null && mInternalSettings.sensor_mode == 4) {
            mSensorManager.registerListener(mSensorFusion, mRotationVector, SensorManager.SENSOR_DELAY_FASTEST);
        }

        mBroadcastReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Uri data = intent.getData();
            if (data == null) {
                return;
            }
            if (action.matches("android.intent.action.MEDIA_MOUNTED")) {
                LogFilter.d("Camera2App", "SD card is inserted:" + data.getPath());
                Camera2App.this.checkRemainingMemory(!Camera2App.this.isCapturing());
                return;
            }
            if (!action.matches("android.intent.action.MEDIA_UNMOUNTED")) {
                return;
            }
            LogFilter.d("Camera2App", "SD card is ejected:" + data.getPath());
            if (Camera2App.this.isDialogShown()
                    && Camera2App.this.mDialogType == Camera2App.EnumDialogType.DIALOG_TYPE_SELECT_SAVE_DST) {
                Camera2App.this.mDialog.dismiss(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OTHER);
            } else {
                Camera2App.this.excludeOverlayDialog(Camera2App.EnumDialogType.DIALOG_TYPE_SELECT_SAVE_DST);
            }
            if (Camera2App.this.isSaveDestinationExternal()) {
                if (Camera2App.this.isCapturing() && Camera2App.this.mMorphoCamera != null) {
                    Camera2App.this.mMorphoCamera.cancelState();
                    Camera2App.this.mMorphoCamera.startState();
                }
                Camera2App.this.setSaveDestination(true);
                Camera2App.this.startDialog(Camera2App.EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
            }
            Camera2App.this.setEnabledSaveDestination(false, false);
            Camera2App.this.mSettings.setSdcardInserted(false);
            Camera2App.this.setThumbnail();
        }
    };

        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_MEDIA_MOUNTED);
        intentFilter.addAction(Intent.ACTION_MEDIA_UNMOUNTED);
        intentFilter.addDataScheme("file");
        // Sent by the system storage service, not this app -- must be
        // EXPORTED or mount/unmount events can never reach this receiver.
        registerReceiver(mBroadcastReceiver, intentFilter, Context.RECEIVER_EXPORTED);

        mThermalAlertReceiver.bindThermalService();

        mResumeSequence = true;

        if (isCameraDisabled(this)) {
            mCameraCheckTimer.cancel();
            startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAMERA_SECURITY);
            return;
        }

        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(mInternalSettings.camera_id, cameraInfo);
        mCanDisableShutterSound = cameraInfo.canDisableShutterSound;

        if (!mCanDisableShutterSound) {
            AudioManager audioManager = (AudioManager) getSystemService(AUDIO_SERVICE);
            audioManager.requestAudioFocus(new AudioManager.OnAudioFocusChangeListener() {
        @Override
        public void onAudioFocusChange(int focusChange) {
            audioManager.abandonAudioFocus(this);
        }
    }, AudioManager.STREAM_MUSIC, AudioManager.AUDIOFOCUS_GAIN);
        }

        showPermissionOrStartCamera();
    }

    @Override
    public void onSelected(SettingListBase list, int index) {
        if (mSettingList.equals(list)) {
            boolean useVolumeKeyVisible = mSettingSubListUseVolumeKey.getView().getVisibility() == View.VISIBLE;
            boolean saveDestinationVisible = mSettingSubListSaveDestination.getView().getVisibility() == View.VISIBLE;
            if (!useVolumeKeyVisible && !saveDestinationVisible) {
                switch (index) {
                    case SettingList.LIST_INDEX_SAVE_LOCATION:
                        mSettingList.setChecked(SettingList.LIST_INDEX_SAVE_LOCATION, !mSettings.isSaveLocation());
                        break;
                    case SettingList.LIST_INDEX_USE_VOLUME_KEY:
                        translateSettingSubList(mSettingSubListUseVolumeKey.getView());
                        mSettingSubListUseVolumeKey.open();
                        mSettingList.setActive(false);
                        break;
                    case SettingList.LIST_INDEX_CAMERA_SOUND:
                        mSettingList.setChecked(SettingList.LIST_INDEX_CAMERA_SOUND, !mSettings.isCameraSound());
                        if (mSettings.isCameraSound() && mSoundPool != null) {
                            mSoundPool.play(mShutterSoundId, 1.0f, 1.0f, 0, 0, 1.0f);
                        }
                        break;
                    case SettingList.LIST_INDEX_SAVE_DESTINATION:
                        translateSettingSubList(mSettingSubListSaveDestination.getView());
                        mSettingSubListSaveDestination.open();
                        mSettingList.setActive(false);
                        break;
                    case SettingList.LIST_INDEX_LICENSE:
                        startDialog(EnumDialogType.DIALOG_TYPE_LICENSE);
                        break;
                    default:
                        break;
                }
            } else {
                closeSettingDialog();
                checkRemainingMemory(false);
            }
        } else if (mSettingSubListUseVolumeKey.equals(list)) {
            String useVolumeKey;
            int stringRes = mSettingUseVolumeKeyList[index];
            if (stringRes == R.string.cam_strings_panorama_volumekey_volume_txt) {
                useVolumeKey = "VOLUME";
            } else if (stringRes == R.string.cam_strings_panorama_volumekey_zoom_txt) {
                useVolumeKey = "ZOOM";
            } else {
                useVolumeKey = "HW_CAMERA_KEY";
            }
            mSettings.setUseVolumeKey(useVolumeKey);
            closeSettingSubDialog();
            mSettingList.setSummary(SettingList.LIST_INDEX_USE_VOLUME_KEY, mSettingUseVolumeKeyList[index]);
        } else if (mSettingSubListSaveDestination.equals(list)) {
            boolean isInternal = mSettingSaveDestinationList[index]
                    == R.string.cam_strings_panorama_save_destination_ims_txt;
            updateSaveDestination(isInternal);
            checkRemainingMemory(false, false);
            closeSettingSubDialog();
            int summaryRes = mSettings.isSaveInternalStorage()
                    ? R.string.cam_strings_panorama_save_destination_ims_txt
                    : R.string.cam_strings_panorama_save_destination_sd_txt;
            mSettingList.setSummary(SettingList.LIST_INDEX_SAVE_DESTINATION, summaryRes);
        }
    }

    @Override
    public void onSensorChanged(SensorEvent event) {
        if (mIsSensorAverage) {
            mGravities[0] += event.values[0];
            mGravities[1] += event.values[1];
            mGravities[2] += event.values[2];
            mSensorCnt++;
        } else {
            mGravities[0] = event.values[0];
            mGravities[1] = event.values[1];
            mGravities[2] = event.values[2];
            mSensorCnt = 1;
        }
    }

    @Override
    public void onStart() {
        LogFilter.d("Camera2App", "onStart");
        super.onStart();
        requestToDimSystemUi();
        mOrientationEventListener = new ExtendedOrientationEventListener(this);
        mOrientationEventListener.enable();
        initializeThermalAlert();
        mScreenCounter = 2;
        mInternalSettings.loadValues();
    }

    @Override
    protected void onStop() {
        LogFilter.d("Camera2App", "onStop");
        mOrientationEventListener.disable();
        mOrientationEventListener = null;
        finalizeThermalAlert();
        mSettings.save();
        mInternalSettings.saveValues();
        if (isDialogShown()) {
            mDialog.dismiss(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SHUTDOWN);
        }
        ErrorCaseHandler.setStatus(0);
        mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
        mOverlayDialogNum = 0;
        mDialog = null;
        mTemperatureHigh = false;
        super.onStop();
    }

    @Override
    public void onTakePictureCancel() {
        if (mInternalSettings.save_input_images == 1) {
            mInternalSettings.finalizeEncoder();
        }
        mGuiCapturePressed = false;
        finishEngine();
        setAttachExit();
        mPanoramaState = new PanoramaState();
        if (mOrientationEventListener != null) {
            mOrientationEventListener.enable();
        }
    }

    @Override
    public boolean onTakePictureFinish() {
        if (mDirectionFunction.enabled()) {
            mDirectionFunction.requestQuit();
            return true;
        }
        return false;
    }

    @Override
    public void onTakePictureFinish2NextState(int resultCode) {
        if (mInternalSettings.save_input_images == 1) {
            mInternalSettings.finalizeEncoder();
        }
        mGuiCapturePressed = false;

        if (resultCode == 0) {
            if (mPanoramaState.hasImage()) {
                playSound(mStopSoundId);
                SavePictureState savePictureState = new SavePictureState();
                mMorphoCamera.setDefaultCameraState();
                mPanoramaState = new PanoramaState();
                runOnUiThread(new Runnable() {
        @Override
        public void run() {
            Camera2App.this.showSavingProgressBar();
        }
    });
                new SaveAsyncTask(savePictureState).execute();
                return;
            }
            mPanoramaState = new PanoramaState();
        } else if (resultCode == -2 || resultCode == -1) {
            runOnUiThread(new Runnable() {
        @Override
        public void run() {
            Camera2App.this.startDialog(Camera2App.EnumDialogType.DIALOG_TYPE_ERROR_SAVE);
        }
    });
        }

        finishEngine();
        setAttachExit();
        mMorphoCamera.startState();
    }

    @Override
    public void onTakePicturePreprocess() {
        Camera.CameraInfo cameraInfo = MorphoCamera1.getCameraInfo(mInternalSettings.camera_id);
        int displayRotation = getDisplayRotation();
        int orientation = cameraInfo.orientation;
        if (mIsFrontCamera && mCurOrientation == cameraInfo.orientation) {
            mInitParam.output_rotation = 0;
        } else {
            mInitParam.output_rotation = (orientation + displayRotation + mCurOrientation + 360) % 360;
        }
    }

    @Override
    public void onTakePictureStart(PanoramaState.IPanoramaStateEventListener listener) {
        runOnUiThread(new Runnable() {
        @Override
        public void run() {
            Camera2App.this.setViewsVisibility(0);
            Camera2App.this.updateViewsForCapture();
            if (!Camera2App.this.isDialogShown()) {
                Camera2App.this.getFooterButtonsFragment().setPauseIcon();
            }
        }
    });
        mInternalSettings.updateViewsForTakePictureStart();
        mSensorSensitivityAverageManager.init();
        playSound(mShutterSoundId);
        mPanoramaState = new PanoramaInit();
        mPanoramaState.setPanoramaStateEventListener(listener);
        initAttachQueue();
        startCaptureTimer();
    }

    @Override
    public void onTemperatureAlreadyHigh() {
        mTemperatureHigh = true;
        shutdownViews();
        startRotatableToast(getString(R.string.cam_strings_panorama_error_high_temp_info_txt),
                RotatableToast.TOAST_DURATION_LONG, true);
    }

    @Override
    public void onTemperatureReachedHigh() {
        if (mActive && !mTemperatureHigh) {
            mTemperatureHigh = true;
            shutdownViews();
            abortCamera();
            startDialog(EnumDialogType.DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN);
        }
    }

    @Override
    public void onTemperatureReachingHigh() {
        if (!mActive) {
            return;
        }
        InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
        if (infoIconsFragment != null) {
            infoIconsFragment.showTemperatureIcon();
        }
        if (mStartTrackFlag && mSettings.isShowDialogThermal()) {
            if (isCapturing()) {
                if (isEngineRunning()) {
                    onClickShutter(null);
                }
                setViewsVisibility(0);
                updateViewsForPreview();
            }
            startDialog(EnumDialogType.DIALOG_TYPE_ALERT_THERMAL_WARNING);
        }
    }

    @TargetApi(23)
    public void requestPermissionForCamera() {
        if (!Util.checkPermissionGrant(PERMISSION_CAMERA, this)
                && !Util.checkPermissionGrant(PERMISSIONS_STORAGE, this)) {
            requestPermissions(PERMISSIONS_CAMERA_STORAGE, REQUEST_CAMERA_STORAGE);
        } else if (!Util.checkPermissionGrant(PERMISSION_CAMERA, this)) {
            requestPermissions(PERMISSION_CAMERA, REQUEST_CAMERA);
        } else if (!Util.checkPermissionGrant(PERMISSIONS_STORAGE, this)) {
            requestPermissions(PERMISSIONS_STORAGE, REQUEST_STORAGE);
        } else if (!Util.checkPermissionGrant(PERMISSIONS_LOCATION, this)) {
            requestPermissions(PERMISSIONS_LOCATION, REQUEST_LOCATION);
        }
    }

    public void requestSdCardGranted() {
        Intent intent = new Intent(this, RequestPermissionSdCardActivity.class);
        intent.setData(mSettings.getSdCardGrantedUri());
        startActivityForResult(intent, REQUEST_SD_CARD_PERMISSION);
    }

    @Override
    public void requestUiRunnable(Runnable runnable) {
        runOnUiThread(runnable);
    }

    @Override
    public void setGravitySensorListener(boolean enable) {
        if (enable) {
            registerGravitySensorListener();
        } else {
            unregisterGravitySensorListener();
        }
    }

    @Override
    public void setNullDirectionFunction() {
        CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
        mDirectionFunction = new DirectionFunction(
                cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), 1, 1, 1, 0);
    }

    public void setSdCardGranted(Uri uri) {
        mSettings.setSdCardGranted(uri);
    }

    @Override
    public void updateCameraState(CameraState state) {
        mMorphoCamera.updateCameraState(state);
    }

    @Override
    public void updateTvValue() {
        mInternalSettings.updateTvValue();
    }
}
