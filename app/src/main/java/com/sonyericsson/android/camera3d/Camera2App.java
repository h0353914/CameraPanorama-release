package com.sonyericsson.android.camera3d;

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
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.hardware.Camera;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.location.Location;
import android.location.LocationManager;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.ExifInterface;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.preference.PreferenceManager;
import android.provider.MediaStore;
import android.text.format.DateFormat;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.util.Size;
import android.util.SizeF;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.ScaleGestureDetector;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.FragmentActivity;
import com.sonyericsson.android.camera3d.base.AttachRunnable;
import com.sonyericsson.android.camera3d.base.DirectionFunction;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;
import com.sonyericsson.android.camera3d.base.PanoramaState;
import com.sonyericsson.android.camera3d.base.SettingListBase;
import com.sonyericsson.android.camera3d.camera_states.AutoFocusState;
import com.sonyericsson.android.camera3d.camera_states.Camera1AutoFocusState;
import com.sonyericsson.android.camera3d.camera_states.Camera1PreviewState;
import com.sonyericsson.android.camera3d.camera_states.Camera1UnlockFocusState;
import com.sonyericsson.android.camera3d.camera_states.CameraState;
import com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback;
import com.sonyericsson.android.camera3d.camera_states.PreviewState;
import com.sonyericsson.android.camera3d.camera_states.TakePictureState;
import com.sonyericsson.android.camera3d.camera_states.UnlockFocusState;
import com.sonyericsson.android.camera3d.core.Error;
import com.sonyericsson.android.camera3d.core.JpegIO;
import com.sonyericsson.android.camera3d.core.MorphoSensorFusion;
import com.sonyericsson.android.camera3d.dialog.AlertOkDialog;
import com.sonyericsson.android.camera3d.dialog.AlertSettingDialog;
import com.sonyericsson.android.camera3d.dialog.LicenseDialog;
import com.sonyericsson.android.camera3d.dialog.RotatableDialogFragment;
import com.sonyericsson.android.camera3d.utils.AccessibilityUtil;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import com.sonyericsson.android.camera3d.utils.NativeMemoryAllocator;
import com.sonyericsson.android.camera3d.utils.io.StorageMonitor;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public class Camera2App extends FragmentActivity implements SensorEventListener, IMorphoPanoramaGP2Callback, MorphoCameraBase.IMorphoCameraListener, ThermalAlertReceiver.ThermalAlertInterface, SettingListBase.OnSelectedListener, SettingList.OnCheckedChangeListener {
    private static final boolean ALWAYS_AUTO_MODE_AFTER_STARTUP;
    private static final int[][] ASPECT_TABLE;
    private static final int BASIC_SYSTEM_UI_FLAGS = 1792;
    private static final int BLACK_SCREEN_COUNTER_FOR_LAUNCH = 2;
    private static final int BLACK_SCREEN_COUNTER_FOR_SUSPEND = 3;
    public static final boolean DEBUG_CAMERA_PARAM = false;
    private static final boolean DEBUG_HIDE_MINI_PREVIEW = false;
    private static final int DEBUG_VERSION = 92417;
    private static final boolean DEFAULT_SETTING_CAMERA_SOUND = true;
    private static final boolean DEFAULT_SETTING_SAVE_INTERNAL_STORAGE = true;
    private static final boolean DEFAULT_SETTING_SAVE_LOCATION = false;
    private static final String DEFAULT_SETTING_USE_VOLUME_KEY = "HW_CAMERA_KEY";
    private static final boolean DO_BACKGROUND_OPEN_CAMERA = true;
    private static final String FILE_NAME_DATE_FORMAT = "yyyyMMdd_HHmmssSSS";
    private static final boolean GET_PREVIEW_IMAGE_EVERY_FRAME = false;
    private static final long INTERVAL = 1000;
    private static final String LOG_TAG = "Camera2App";
    private static final int MAX_LOCAL_CACHE_NUM = 100;
    private static final int OVERLAY_DIALOG_NUM_MAX = 3;
    private static final String[] PERMISSIONS_CAMERA_STORAGE;
    private static final String[] PERMISSIONS_LOCATION;
    private static final String[] PERMISSIONS_STORAGE;
    private static final String[] PERMISSION_CAMERA;
    private static final String PREFIX_DIR = "Camera";
    private static final String PREF_KEY = "ApplicationPreference";
    private static final String PREF_KEY_FIRST_LAUNCH = "First Launch";
    private static final String PREF_KEY_FIRST_TIME_LOCATION = "First Time Location";
    private static final String PREF_KEY_VIEW_ANGLE_CAMERA_ID = "VIEW_ANGLE_CAMERA_ID";
    private static final String PREF_KEY_VIEW_ANGLE_H = "VIEW_ANGLE_H";
    private static final String PREF_KEY_VIEW_ANGLE_V = "VIEW_ANGLE_V";
    private static final float PREVIEW_LONG_SIDE_CROP_RATIO = 1.0f;
    private static final boolean PRINT_PROCESSING_TIME = false;
    private static final Object PreviewImageSynchronizedObject;
    private static final long REMAINING_MEMORY_SIZE_MIN = 62914560;
    private static final long REMAINING_MEMORY_SIZE_RECOMMEND = 157286400;
    private static final int REQUEST_CAMERA = 1;
    private static final int REQUEST_CAMERA_STORAGE = 0;
    private static final int REQUEST_LOCATION = 3;
    private static final int REQUEST_STORAGE = 2;
    private static final int REQUEST_SYSTEM_LOCATION_PERMISSION = 40;
    private static final int REQUEST_VIEW = 30;
    private static final boolean SAVE_DESTINATION_EXTERNAL = false;
    private static final boolean SAVE_DESTINATION_INTERNAL = true;
    private static final boolean SHOW_DUAL_STORAGE_AVAILABLE_DIALOG = false;
    private static final int SLEEP_MICROSEC;
    private static final long SLEEP_MILLISEC;
    private static final int SLEEP_NANOSEC;
    private static final boolean STABILIZE_PREVIEW_FRAME = true;
    private static final long START_TIME = 180000;
    private static final String STORAGE_PATH_PREFIX;
    private static final String THREAD_NAME_GET_LATEST_IMAGE = "GetLatestImage";
    private static final String THREAD_NAME_SAVE_TASK = "SaveTask";
    private static final boolean USE_TEXTURE_VIEW_FOR_MINI_PREVIEW = false;
    private static final String VALUE_VOLUME_KEY_CAMERA = "HW_CAMERA_KEY";
    private static final String VALUE_VOLUME_KEY_VOLUME = "VOLUME";
    private static final String VALUE_VOLUME_KEY_ZOOM = "ZOOM";
    private static final CaptureImage sAttachExit;
    private AlertOkDialog mAlertOkDialog;
    private AlertSettingDialog mAlertSettingDialog;
    private int mAngle;
    private double[] mAovs;
    private int mArrowDir;
    private long mAttachNumDirectionUndecided;
    private ImageView mAutoFocusCircle;
    private BroadcastReceiver mBroadcastReceiver;
    private CountDownTimer mCameraCheckTimer;
    private int mCameraIdTmp;
    private int mCameraOrientation;
    private boolean mCanDisableShutterSound;
    private CountDownTimer mCaptureTimer;
    private CountDownTimer mCountDownTimer;
    private View mCurPreviewFrame;
    private RotatableDialogFragment mDialog;
    private DirectionFunction mDirectionFunction;
    private int mFocusedSoundId;
    private Timer mGpsSearchTimer;
    private TimerTask mGpsSearchTimerTask;
    private float[] mGravities;
    private String mImageFormat;
    private int mIndexSettingSaveDestinationInternal;
    private int mIndexSettingSaveDestinationSD;
    private int mIndexTexture;
    private String mInputFolderPath;
    private boolean mIsFrontCamera;
    private boolean mIsInvalidDir;
    private boolean mIsSensorAverage;
    private CaptureResult mLatestCaptureResult;
    private LicenseDialog mLicenseDialog;
    private LinkedList<ContentInfo> mLocalCacheBackup;
    private PanoramaGP2LocationManager mLocationManager;
    private RelativeLayout.LayoutParams mLpTextureView;
    private int mMaxHeight;
    private int mMaxWidth;
    private Bitmap mMiniPreviewBitmapForCamera1;
    private View mMiniPreviewFrame;
    private ImageView mMiniPreviewImageView;
    private Matrix mMiniPreviewMatrix;
    private TextureView mMiniPreviewTextureView;
    private MorphoPanoramaGP2 mMorphoPanoramaGP2;
    private PanoramaState mPanoramaState;
    private ImageView mPreviewArrow;
    private Canvas mPreviewFitBitmapCanvas;
    private Paint mPreviewFitBitmapPaint;
    private Matrix mPreviewFitMatrix;
    private FrameLayout mPreviewFrame;
    private ImageView mPreviewImageView;
    private View mPreviewLine1;
    private View mPreviewLine2;
    private RotatableToast mRotatableToast;
    private String mSavePanoramaPath;
    private ScaleGestureDetector mScaleGestureDetector;
    private int mSensorCnt;
    private int mSensorFusionMode;
    private SensorManager mSensorManager;
    private final SensorSensitivityAverageManager mSensorSensitivityAverageManager;
    private SettingList mSettingList;
    private SettingSubList mSettingSubListSaveDestination;
    private SettingSubList mSettingSubListUseVolumeKey;
    private final ShotSettings mShotSettings;
    private int mShutterSoundId;
    private SoundPool mSoundPool;
    private int mStopSoundId;
    private View mStubFramePanoramaPreview;
    private SurfaceView mSurfaceView;
    private TextureViewEx mTextureView;
    private ThermalAlertReceiver mThermalAlertReceiver;
    private Bitmap mThumbnailBitmap;
    private Uri mThumbnailUri;
    private final UpdateCameraInfoViewRunnable mUpdateCameraInfoViewRunnable;
    private boolean mUseCamera1;
    private boolean mUseCamera1Tmp;
    private View mView;
    private TextView mWarningTextView;
    private static final Object mSyncImageTask = new Object();
    private static final Object mSyncCancelSave = new Object();
    private static final ExecutorService GET_LATEST_IMAGE_EXECUTOR = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.sonyericsson.android.camera3d.Camera2App.1
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(Camera2App.THREAD_NAME_GET_LATEST_IMAGE);
            thread.setPriority(5);
            return thread;
        }
    });
    private static final ExecutorService SAVE_TASK_EXECUTOR = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.sonyericsson.android.camera3d.Camera2App.2
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(Camera2App.THREAD_NAME_SAVE_TASK);
            thread.setPriority(5);
            return thread;
        }
    });
    private static final boolean LIMIT_DIRECTION = Build.MANUFACTURER.equals("Sony");
    private static final boolean PREVIEW_SPREAD_BOTH_SIDES = Build.MANUFACTURER.equals("Sony");
    private boolean mCreateSequence = false;
    private boolean mResumeSequence = false;
    private boolean mPermissionSequence = false;
    private Future<?> mGetLatestImageTask = null;
    private boolean mIsInflateSavingProgress = false;
    private String mMainThreadName = null;
    private final MorphoPanoramaGP2.InitParam mInitParam = new MorphoPanoramaGP2.InitParam();
    private boolean mEngineEnding = false;
    private Sensor mGyroscope = null;
    private Sensor mAccelerometer = null;
    private Sensor mRotationVector = null;
    private final double[] mGyroMatrix = new double[9];
    private final double[] mRVMatrix = new double[9];
    private final double[] mACMatrix = new double[9];
    private SensorFusion mSensorFusion = null;
    private final Camera2ImageQualitySettings[] mCamera2ImageQualitySettings = new Camera2ImageQualitySettings[5];
    private MorphoCameraBase mMorphoCamera = null;
    private final LinkedBlockingQueue<CaptureImage> mAttachImageQueue = new LinkedBlockingQueue<>();
    private LinkedList<ContentInfo> mLocalCache = new LinkedList<>();
    private final int[] mSettingUseVolumeKeyList = {R.string.cam_strings_panorama_volumekey_volume_txt, R.string.cam_strings_panorama_volumekey_shutter_txt};
    private final int[] mSettingSaveDestinationList = {R.string.cam_strings_panorama_save_destination_ims_txt, R.string.cam_strings_panorama_save_destination_sd_txt};
    private long mImageId = -1;
    private String mImageFileLocation = null;
    private String mImageMimeType = null;
    private boolean mStartTrackFlag = true;
    private boolean mKeyFocusPressed = false;
    private boolean mGuiCapturePressed = false;
    private boolean mIsAutoFocusProcessing = false;
    private boolean mResumeAlertOkDialog = false;
    private boolean mResumeAlertSettingDialog = false;
    private boolean mActive = false;
    private boolean mShutdownView = false;
    private boolean mSavingBackground = false;
    private boolean mIsPanoramaCancel = false;
    private int mScreenCounter = 2;
    private EnumDialogType mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
    private final EnumDialogType[] mOverlayDialogType = new EnumDialogType[3];
    private int mOverlayDialogNum = 0;
    private boolean mTemperatureHigh = false;
    private Toast mPinToast = null;
    private AccessibilityManager.TouchExplorationStateChangeListener mTouchExplorationStateChangeListener = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: com.sonyericsson.android.camera3d.Camera2App$$ExternalSyntheticLambda2
        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public final void onTouchExplorationStateChanged(boolean z) {
            Camera2App.this.m6lambda$new$0$comsonyericssonandroidcamera3dCamera2App(z);
        }
    };
    private final ExecutorService mExecutor = Executors.newCachedThreadPool();
    private int mCurOrientation = -1;
    private int mCurViewDegree = -1;
    private ExtendedOrientationEventListener mOrientationEventListener = null;
    private int mSensorAspectIndex = 0;
    private Bitmap mPreviewBitmap = null;
    private Bitmap mPreviewFitBitmap = null;
    private float mViewAngleH = 60.0f;
    private float mViewAngleV = 40.0f;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final boolean[] mIsMiniPreviewArrowsVisible = new boolean[4];
    private final InternalSettings mInternalSettings = new InternalSettings(this);
    private final Settings mSettings = new Settings();
    private final TextureView.SurfaceTextureListener mSurfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.sonyericsson.android.camera3d.Camera2App.3
        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            int dimensionPixelSize;
            LogFilter.i(Camera2App.LOG_TAG, "onSurfaceTextureAvailable size : " + i + " x " + i2);
            if (Camera2App.this.mStartTrackFlag && Camera2App.this.mActive) {
                int liveViewHeight = Camera2App.this.getLiveViewHeight();
                int liveViewWidth = Camera2App.this.getLiveViewWidth();
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(liveViewWidth, liveViewHeight);
                LogFilter.i(Camera2App.LOG_TAG, "display size : " + liveViewWidth + " x " + liveViewHeight);
                if (Camera2App.this.isDisplayEighteenToNine()) {
                    layoutParams.addRule(13, -1);
                } else if (Camera2App.this.isDisplayNineteenPointFiveToNine()) {
                    layoutParams.addRule(3, R.id.header_setting);
                    layoutParams.addRule(2, R.id.footer_mode);
                } else {
                    layoutParams.addRule(10, -1);
                }
                Camera2App.this.mTextureView.setLayoutParams(layoutParams);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) Camera2App.this.mAutoFocusCircle.getLayoutParams();
                if (Camera2App.this.isDisplayEighteenToNine()) {
                    layoutParams2.addRule(13, -1);
                } else if (Camera2App.this.isDisplayNineteenPointFiveToNine()) {
                    layoutParams2.addRule(3, R.id.header_setting);
                    layoutParams2.addRule(2, R.id.footer_mode);
                    layoutParams2.addRule(13, -1);
                } else {
                    Drawable drawable = Camera2App.this.getDrawable(R.drawable.cam_auto_focus_circle_focusing_icn);
                    layoutParams2.topMargin = (liveViewHeight - (drawable != null ? drawable.getMinimumHeight() : 0)) / 2;
                    layoutParams2.addRule(14, -1);
                }
                Camera2App.this.mAutoFocusCircle.setLayoutParams(layoutParams2);
                if (!Camera2App.this.isDisplayNineteenPointFiveToNine()) {
                    dimensionPixelSize = ((int) (((double) Camera2App.this.realPixelSize.y) * 0.3d)) - (Camera2App.this.findViewById(R.id.capture_button).getLayoutParams().width + Camera2App.this.getResources().getDimensionPixelSize(Camera2App.this.isDisplayEighteenToNine() ? R.dimen.footer_bottom_margin_18_9 : R.dimen.footer_bottom_margin_16_9));
                } else {
                    dimensionPixelSize = Camera2App.this.getResources().getDimensionPixelSize(R.dimen.preview_margin_bottom);
                }
                boolean zIsResolution16_9 = Camera2App.this.isResolution16_9();
                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) Camera2App.this.findViewById(R.id.panoramagp2_preview_background).getLayoutParams();
                Resources resources = Camera2App.this.getResources();
                int i3 = R.dimen.preview_background_height_16_9;
                layoutParams3.height = resources.getDimensionPixelSize(zIsResolution16_9 ? R.dimen.preview_background_height_16_9 : R.dimen.preview_background_height_4_3);
                layoutParams3.bottomMargin = dimensionPixelSize;
                Camera2App.this.findViewById(R.id.panoramagp2_preview_background).setLayoutParams(layoutParams3);
                RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) Camera2App.this.mPreviewLine1.getLayoutParams();
                layoutParams4.width = liveViewWidth;
                layoutParams4.bottomMargin = dimensionPixelSize;
                layoutParams4.addRule(14, -1);
                Camera2App.this.mPreviewLine1.setLayoutParams(layoutParams4);
                RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) Camera2App.this.mPreviewLine2.getLayoutParams();
                Resources resources2 = Camera2App.this.getResources();
                if (!zIsResolution16_9) {
                    i3 = R.dimen.preview_background_height_4_3;
                }
                layoutParams5.bottomMargin = resources2.getDimensionPixelSize(i3);
                layoutParams5.width = liveViewWidth;
                layoutParams5.addRule(14, -1);
                Camera2App.this.mPreviewLine2.setLayoutParams(layoutParams5);
                RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) Camera2App.this.mMiniPreviewImageView.getLayoutParams();
                Resources resources3 = Camera2App.this.getResources();
                int i4 = R.dimen.preview_height_16_9;
                layoutParams6.height = resources3.getDimensionPixelSize(zIsResolution16_9 ? R.dimen.preview_height_16_9 : R.dimen.preview_height_4_3);
                layoutParams6.bottomMargin = dimensionPixelSize;
                Camera2App.this.mMiniPreviewImageView.setLayoutParams(layoutParams6);
                RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) Camera2App.this.mMiniPreviewFrame.getLayoutParams();
                layoutParams7.height = Camera2App.this.getResources().getDimensionPixelSize(zIsResolution16_9 ? R.dimen.preview_height_16_9 : R.dimen.preview_height_4_3);
                layoutParams7.bottomMargin = dimensionPixelSize;
                Camera2App.this.mMiniPreviewFrame.setLayoutParams(layoutParams7);
                RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) Camera2App.this.findViewById(R.id.arrow_layout_adjuster).getLayoutParams();
                Resources resources4 = Camera2App.this.getResources();
                if (!zIsResolution16_9) {
                    i4 = R.dimen.preview_height_4_3;
                }
                layoutParams8.bottomMargin = resources4.getDimensionPixelSize(i4) / 2;
                layoutParams8.bottomMargin -= Camera2App.this.getResources().getDimensionPixelSize(R.dimen.arrow_height) / 2;
                Camera2App.this.findViewById(R.id.arrow_layout_adjuster).setLayoutParams(layoutParams8);
                if (Camera2App.this.findViewById(R.id.stub_frame_panorama_preview) == null) {
                    RelativeLayout.LayoutParams layoutParams9 = (RelativeLayout.LayoutParams) Camera2App.this.mStubFramePanoramaPreview.getLayoutParams();
                    layoutParams9.bottomMargin = dimensionPixelSize;
                    Camera2App.this.mStubFramePanoramaPreview.setLayoutParams(layoutParams9);
                } else {
                    RelativeLayout.LayoutParams layoutParams10 = (RelativeLayout.LayoutParams) Camera2App.this.findViewById(R.id.stub_frame_panorama_preview).getLayoutParams();
                    layoutParams10.bottomMargin = dimensionPixelSize;
                    Camera2App.this.findViewById(R.id.stub_frame_panorama_preview).setLayoutParams(layoutParams10);
                }
                Camera2App.this.mMiniPreviewImageView.setVisibility(0);
                Camera2App.this.mMiniPreviewTextureView = null;
                Camera2App.this.textureViewPrepared();
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            LogFilter.i(Camera2App.LOG_TAG, "onSurfaceTextureSizeChanged size : " + i + " x " + i2);
        }
    };
    private final TextureView.SurfaceTextureListener mMiniPreviewSurfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.sonyericsson.android.camera3d.Camera2App.4
        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            if (Camera2App.this.mTextureView.isAvailable()) {
                Camera2App.this.textureViewPrepared();
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            Camera2App.this.mMiniPreviewTextureView = null;
            return false;
        }
    };
    private final SurfaceHolder.Callback mSurfaceListener = new SurfaceHolder.Callback() { // from class: com.sonyericsson.android.camera3d.Camera2App.5
        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            MorphoCamera1 morphoCamera1 = (MorphoCamera1) Camera2App.this.mMorphoCamera;
            if (!morphoCamera1.openCamera(surfaceHolder)) {
                Camera2App.this.setViewsVisibility(4);
                Camera2App.this.startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAMERA);
                return;
            }
            Camera2App.this.mViewAngleH = morphoCamera1.viewAngleH;
            Camera2App.this.mViewAngleV = morphoCamera1.viewAngleV;
            Camera2App.this.mInternalSettings.initializeUI(morphoCamera1.cameraInfo());
            Camera2App.this.makeEngineParam();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            ((MorphoCamera1) Camera2App.this.mMorphoCamera).startPreview(Camera2App.this.getDisplayRotation());
        }
    };
    private final Runnable mHideBlackScreenRunnable = new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.14
        @Override // java.lang.Runnable
        public void run() {
            if (Camera2App.this.mActive) {
                Camera2App.this.hideBlackScreen();
            }
        }
    };
    private final Runnable mPreviewFrameRunnable = new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.15
        @Override // java.lang.Runnable
        public void run() {
            if (Camera2App.this.mActive) {
                if (Camera2App.this.mPreviewFrame != null) {
                    Camera2App.this.mPreviewFrame.setVisibility(4);
                    Camera2App.this.mCurPreviewFrame.setVisibility(4);
                    Camera2App.this.mPreviewArrow.setVisibility(4);
                }
                if (Camera2App.this.mMiniPreviewImageView != null) {
                    Camera2App.this.mMiniPreviewImageView.setImageBitmap(Camera2App.this.mTextureView.getBitmap(Camera2App.this.mMiniPreviewImageView.getWidth(), Camera2App.this.mMiniPreviewImageView.getHeight()));
                }
            }
        }
    };
    private final Runnable mTakePictureVisibleRunnable = new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.16
        @Override // java.lang.Runnable
        public void run() {
            if (Camera2App.this.mPreviewFrame != null) {
                Camera2App.this.mPreviewFrame.setVisibility(0);
            }
        }
    };
    private Point realPixelSize = new Point();

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
        DIALOG_TYPE_ERROR_LAUNCH,
        DIALOG_TYPE_ERROR_CAMERA,
        DIALOG_TYPE_ERROR_CAMERA_SECURITY,
        DIALOG_TYPE_ERROR_CAMERA_LAUNCH,
        DIALOG_TYPE_LICENSE
    }

    private enum EnumResultCreateEngine {
        RESULT_NEWLY_CREATED,
        RESULT_ALREADY_CREATED,
        RESULT_ERROR
    }

    private static int convertToDialogOrientation(int i) {
        if (i == -1 || i == 0 || i == 180) {
            return 1;
        }
        return i == 90 ? 3 : 2;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase.IMorphoCameraListener
    public boolean onPreviewImageAvailable() {
        return true;
    }

    public Camera2App() {
        this.mShotSettings = new ShotSettings();
        this.mSensorSensitivityAverageManager = new SensorSensitivityAverageManager();
        this.mUpdateCameraInfoViewRunnable = new UpdateCameraInfoViewRunnable();
    }

    static {
        ALWAYS_AUTO_MODE_AFTER_STARTUP = Build.MODEL.equals("Nexus 5X") || Build.MODEL.equals("Robin");
        int i = Build.MANUFACTURER.equals("Sony") ? 5000 : 1000;
        SLEEP_MICROSEC = i;
        SLEEP_MILLISEC = i / 1000;
        SLEEP_NANOSEC = (i % 1000) * 1000;
        sAttachExit = new Camera2Image(null);
        STORAGE_PATH_PREFIX = Environment.DIRECTORY_DCIM;
        PERMISSIONS_CAMERA_STORAGE = getCameraStoragePermissionList();
        PERMISSIONS_STORAGE = getStoragePermissionList();
        PERMISSION_CAMERA = new String[]{"android.permission.CAMERA"};
        PERMISSIONS_LOCATION = new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};
        PreviewImageSynchronizedObject = new Object();
        ASPECT_TABLE = new int[][]{new int[]{16, 9}, new int[]{4, 3}, new int[]{1, 1}};
    }

    /* synthetic */ void m6lambda$new$0$comsonyericssonandroidcamera3dCamera2App(boolean z) {
        if (z) {
            getFooterButtonsFragment().getTakePictureButton().sendAccessibilityEvent(128);
            getFooterButtonsFragment().getTakePictureButton().requestFocus();
        }
    }

    private static class CaptureResult {
        private double mExposureTime;
        private int mIsoValue;

        CaptureResult(double d, int i) {
            this.mExposureTime = d;
            this.mIsoValue = i;
        }

        public void sets(double d, int i) {
            setExposureTime(d);
            setIsoValue(i);
        }

        public double getExposureTime() {
            return this.mExposureTime;
        }

        public void setExposureTime(double d) {
            this.mExposureTime = d;
        }

        public int getIsoValue() {
            return this.mIsoValue;
        }

        public void setIsoValue(int i) {
            this.mIsoValue = i;
        }
    }

    public void initAttachQueue() {
        while (this.mAttachImageQueue.size() > 0) {
            CaptureImage captureImagePoll = this.mAttachImageQueue.poll();
            if (captureImagePoll != null) {
                captureImagePoll.close();
            }
        }
    }

    public void addAttachQueue(CaptureImage captureImage) {
        this.mAttachImageQueue.offer(captureImage);
        while (1 < this.mAttachImageQueue.size()) {
            CaptureImage captureImagePoll = this.mAttachImageQueue.poll();
            if (captureImagePoll != null) {
                captureImagePoll.close();
            }
        }
    }

    public void setAttachExit() {
        addAttachQueue(sAttachExit);
    }

    private class Settings {
        private boolean loaded = false;
        private boolean save_location = false;
        private String use_volume_key = "HW_CAMERA_KEY";
        private boolean camera_sound = true;
        private boolean save_internal_storage = true;
        private boolean sdcard_inserted = false;
        private boolean not_show_dialog_location = false;
        private boolean not_show_dialog_thermal = false;

        public Settings() {
        }

        public void load() {
            this.loaded = true;
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(Camera2App.this.getApplicationContext());
            this.sdcard_inserted = defaultSharedPreferences.getBoolean(Camera2App.this.getResources().getString(R.string.setting_key_sdcard_inserted), false);
            this.not_show_dialog_thermal = defaultSharedPreferences.getBoolean(Camera2App.this.getResources().getString(R.string.setting_key_dialog_thermal), false);
            this.save_location = defaultSharedPreferences.getBoolean(Camera2App.this.getResources().getString(R.string.setting_key_save_location), false);
            this.use_volume_key = defaultSharedPreferences.getString(Camera2App.this.getResources().getString(R.string.setting_key_use_volume_key), "HW_CAMERA_KEY");
            this.camera_sound = defaultSharedPreferences.getBoolean(Camera2App.this.getResources().getString(R.string.setting_key_camera_sound), true);
            this.save_internal_storage = defaultSharedPreferences.getBoolean(Camera2App.this.getResources().getString(R.string.setting_key_save_internal_storage), true);
            this.not_show_dialog_location = defaultSharedPreferences.getBoolean(Camera2App.this.getResources().getString(R.string.setting_key_dialog_location), false);
        }

        public void save() {
            if (this.loaded) {
                SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(Camera2App.this.getApplicationContext()).edit();
                editorEdit.putBoolean(Camera2App.this.getResources().getString(R.string.setting_key_sdcard_inserted), this.sdcard_inserted);
                editorEdit.putBoolean(Camera2App.this.getResources().getString(R.string.setting_key_dialog_thermal), this.not_show_dialog_thermal);
                editorEdit.putBoolean(Camera2App.this.getResources().getString(R.string.setting_key_save_location), this.save_location);
                editorEdit.putString(Camera2App.this.getResources().getString(R.string.setting_key_use_volume_key), this.use_volume_key);
                editorEdit.putBoolean(Camera2App.this.getResources().getString(R.string.setting_key_camera_sound), this.camera_sound);
                editorEdit.putBoolean(Camera2App.this.getResources().getString(R.string.setting_key_save_internal_storage), this.save_internal_storage);
                editorEdit.putBoolean(Camera2App.this.getResources().getString(R.string.setting_key_dialog_location), this.not_show_dialog_location);
                editorEdit.apply();
            }
        }

        public boolean isSaveLocation() {
            return this.save_location;
        }

        public void setSaveLocation(boolean z) {
            this.save_location = z;
            save();
        }

        public String getUseVolumeKey() {
            return this.use_volume_key;
        }

        public void setUseVolumeKey(String str) {
            this.use_volume_key = str;
        }

        public boolean isCameraSound() {
            return this.camera_sound;
        }

        public void setCameraSound(boolean z) {
            this.camera_sound = z;
        }

        public boolean isSaveInternalStorage() {
            return this.save_internal_storage;
        }

        public void setSaveInternalStorage(boolean z) {
            this.save_internal_storage = z;
        }

        public boolean isSdcardInserted() {
            return this.sdcard_inserted;
        }

        public void setSdcardInserted(boolean z) {
            this.sdcard_inserted = z;
        }

        public boolean isShowDialogLocation() {
            return !this.not_show_dialog_location;
        }

        public void setShowDialogLocation(boolean z) {
            this.not_show_dialog_location = !z;
        }

        public boolean isShowDialogThermal() {
            return !this.not_show_dialog_thermal;
        }

        public void setShowDialogThermal(boolean z) {
            this.not_show_dialog_thermal = !z;
        }
    }

    private class ShotSettings {
        public int noiseReductionStrength;

        private ShotSettings() {
        }
    }

    private class SensorSensitivityAverageManager {
        private int num;
        private int sum;

        private SensorSensitivityAverageManager() {
        }

        public void init() {
            this.num = 0;
            this.sum = 0;
        }

        public void add(int i) {
            this.sum += i;
            this.num++;
        }

        public int get() {
            int i = this.num;
            if (i == 0) {
                return 0;
            }
            return Math.round(this.sum / i);
        }
    }

    public HeaderButtonsFragment getHeaderButtonsFragment() {
        return (HeaderButtonsFragment) getSupportFragmentManager().findFragmentById(R.id.header_buttons);
    }

    public FooterButtonsFragment getFooterButtonsFragment() {
        return (FooterButtonsFragment) getSupportFragmentManager().findFragmentById(R.id.footer_buttons);
    }

    public InfoIconsFragment getInfoIconsFragment() {
        return (InfoIconsFragment) getSupportFragmentManager().findFragmentById(R.id.info_icons);
    }

    private void updateViewsForPreview() {
        if (this.mShutdownView) {
            return;
        }
        HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
        if (headerButtonsFragment != null) {
            headerButtonsFragment.setViewsVisibility(0);
        }
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.showModeSelector();
            footerButtonsFragment.setShutterIcon();
        }
        setThumbnail();
        showInfoIcons();
        TextView textView = this.mWarningTextView;
        if (textView != null) {
            textView.setVisibility(4);
        }
        setMiniPreviewAndArrowsVisibility(true, false);
        setPreviewContentDescription();
    }

    public void updateViewsForCapture() {
        if (this.mPreviewFrame == null) {
            this.mStubFramePanoramaPreview = ((ViewStub) findViewById(R.id.stub_frame_panorama_preview)).inflate();
            ((ViewStub) findViewById(R.id.stub_preview_frame)).inflate();
            ((ViewStub) findViewById(R.id.stub_preview_arrow)).inflate();
            ((ViewStub) findViewById(R.id.stub_guide_text)).inflate();
            this.mPreviewFrame = (FrameLayout) findViewById(R.id.FramePanoramaPreview);
            this.mPreviewImageView = (ImageView) findViewById(R.id.ImagePanoramaPreview);
            this.mCurPreviewFrame = findViewById(R.id.panoramagp2_preview_frame);
            this.mPreviewArrow = (ImageView) findViewById(R.id.panoramagp2_preview_arrow);
            this.mWarningTextView = (TextView) findViewById(R.id.warning);
        }
        if (isDialogShown()) {
            return;
        }
        HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
        if (headerButtonsFragment != null) {
            headerButtonsFragment.setViewsVisibility(4);
        }
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.hideThumbnail();
            footerButtonsFragment.hideModeSelector();
        }
        boolean zIsResolution16_9 = isResolution16_9();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPreviewImageView.getLayoutParams();
        layoutParams.height = getResources().getDimensionPixelSize(zIsResolution16_9 ? R.dimen.preview_height_16_9 : R.dimen.preview_height_4_3);
        this.mPreviewImageView.setLayoutParams(layoutParams);
        setMiniPreviewAndArrowsVisibility(true, true);
        showPanoramaGuideDirection();
        hideInfoIcons();
        setPreviewContentDescription();
    }

    private void setButtonsEnabled(boolean z) {
        HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
        if (headerButtonsFragment != null) {
            headerButtonsFragment.setViewsEnabled(z);
        }
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.setViewsEnabled(z);
        }
    }

    public void textureViewPrepared() {
        try {
            openCamera();
            makeEngineParam();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            onErrorCamera();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LogFilter.i(LOG_TAG, String.format(Locale.US, "%s, BuildVersion:%d", Build.MODEL, Integer.valueOf(Build.VERSION.SDK_INT)));
        getMobilePhonePixels();
        setContentView(R.layout.camera2);
        this.mCountDownTimer = new MyCountDownTimer(START_TIME, INTERVAL);
        this.mCaptureTimer = new CaptureTimer(3000L, INTERVAL);
        CameraCheckTimer cameraCheckTimer = new CameraCheckTimer(5000L, INTERVAL);
        this.mCameraCheckTimer = cameraCheckTimer;
        cameraCheckTimer.start();
        View viewFindViewById = findViewById(R.id.fullView);
        this.mView = viewFindViewById;
        viewFindViewById.setOnTouchListener(new View.OnTouchListener() { // from class: com.sonyericsson.android.camera3d.Camera2App.6
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                Camera2App.this.startCountDownTimer();
                return false;
            }
        });
        initializeLayoutObjects();
        this.mLocationManager = new PanoramaGP2LocationManager((LocationManager) getSystemService("location"));
        SensorManager sensorManager = (SensorManager) getSystemService("sensor");
        this.mSensorManager = sensorManager;
        for (Sensor sensor : sensorManager.getSensorList(-1)) {
            if (sensor.getType() == 4) {
                this.mGyroscope = this.mSensorManager.getDefaultSensor(4);
            }
            if (sensor.getType() == 1) {
                this.mAccelerometer = this.mSensorManager.getDefaultSensor(1);
            }
            if (sensor.getType() == 11) {
                this.mRotationVector = this.mSensorManager.getDefaultSensor(11);
            }
        }
        SensorFusion sensorFusion = new SensorFusion(true);
        this.mSensorFusion = sensorFusion;
        this.mSensorFusionMode = 4;
        int mode = sensorFusion.setMode(4);
        if (mode != 0) {
            LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.setMode error ret:0x%08X", Integer.valueOf(mode)));
        }
        int offsetMode = this.mSensorFusion.setOffsetMode(0);
        if (offsetMode != 0) {
            LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.setOffsetMode error ret:0x%08X", Integer.valueOf(offsetMode)));
        }
        int appState = this.mSensorFusion.setAppState(1);
        if (appState != 0) {
            LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.setAppState error ret:0x%08X", Integer.valueOf(appState)));
        }
        int i = 0;
        while (true) {
            Camera2ImageQualitySettings[] camera2ImageQualitySettingsArr = this.mCamera2ImageQualitySettings;
            if (i < camera2ImageQualitySettingsArr.length) {
                camera2ImageQualitySettingsArr[i] = new Camera2ImageQualitySettings();
                i++;
            } else {
                this.mScaleGestureDetector = new ScaleGestureDetector(this, new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.sonyericsson.android.camera3d.Camera2App.7
                    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
                    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                        return false;
                    }

                    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
                    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                        return false;
                    }

                    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
                    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                    }
                });
                getHeaderButtonsFragment().setOnSettingDialogStateChangedListener(new HeaderButtonsFragment.OnSettingDialogStateChangedListener() { // from class: com.sonyericsson.android.camera3d.Camera2App.8
                    @Override // com.sonyericsson.android.camera3d.HeaderButtonsFragment.OnSettingDialogStateChangedListener
                    public boolean openSettingDialog() {
                        return Camera2App.this.openSettingDialog();
                    }

                    @Override // com.sonyericsson.android.camera3d.HeaderButtonsFragment.OnSettingDialogStateChangedListener
                    public void closeSettingDialog() {
                        Camera2App.this.closeSettingDialog();
                        Camera2App.this.checkRemainingMemory(false);
                    }

                    @Override // com.sonyericsson.android.camera3d.HeaderButtonsFragment.OnSettingDialogStateChangedListener
                    public boolean isOpened() {
                        return Camera2App.this.isOpenedSettingDialog();
                    }
                });
                AccessibilityUtil.getInstance(this).registerTouchExplorationStateChangeListener(this.mTouchExplorationStateChangeListener);
                ErrorCaseHandler.setStatus(0);
                this.mCreateSequence = true;
                this.mSavePanoramaPath = null;
                return;
            }
        }
    }

    public boolean openSettingDialog() {
        if (isCapturing() || isDialogShown()) {
            return false;
        }
        setMiniPreviewVisibility(false);
        this.mPreviewLine1.setVisibility(4);
        this.mPreviewLine2.setVisibility(4);
        this.mSettingList.open();
        hideInfoIcons();
        return true;
    }

    private void closeSettingDialog(boolean z) {
        this.mSettingList.close(z);
        this.mSettingSubListUseVolumeKey.close(false);
        this.mSettingSubListSaveDestination.close(false);
        getHeaderButtonsFragment().notifySettingDialogClosed();
        setMiniPreviewVisibility(true);
        this.mPreviewLine1.setVisibility(0);
        this.mPreviewLine2.setVisibility(0);
        showInfoIcons();
    }

    public void closeSettingDialog() {
        closeSettingDialog(true);
    }

    public boolean isOpenedSettingDialog() {
        SettingList settingList = this.mSettingList;
        return settingList != null && settingList.getView().getVisibility() == 0;
    }

    private void closeSettingSubDialog() {
        this.mSettingSubListUseVolumeKey.close();
        this.mSettingSubListSaveDestination.close();
        this.mSettingList.setActive(true);
    }

    private boolean isOpenedSettingSubDialog() {
        SettingSubList settingSubList;
        SettingSubList settingSubList2 = this.mSettingSubListUseVolumeKey;
        return (settingSubList2 != null && settingSubList2.isOpened()) || ((settingSubList = this.mSettingSubListSaveDestination) != null && settingSubList.isOpened());
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        LogFilter.d(LOG_TAG, "onDestroy");
        super.onDestroy();
        clearLocalCacheBackup();
        clearLocalCache();
        this.mSavePanoramaPath = null;
        this.mBroadcastReceiver = null;
        this.mRotatableToast = null;
        releaseImageBitmap();
        Bitmap bitmap = this.mThumbnailBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.mThumbnailBitmap = null;
        }
        SensorFusion sensorFusion = this.mSensorFusion;
        if (sensorFusion != null) {
            sensorFusion.release();
        }
        changeTrackingFlag(true);
        this.mExecutor.shutdown();
        try {
            this.mExecutor.awaitTermination(100L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            this.mExecutor.shutdownNow();
            Thread.currentThread().interrupt();
        }
        AccessibilityUtil.getInstance(this).unregisterTouchExplorationStateChangeListener(this.mTouchExplorationStateChangeListener);
        AccessibilityUtil.getInstance(this).release();
        this.mPinToast = null;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        LogFilter.d(LOG_TAG, "onStart");
        super.onStart();
        ExtendedOrientationEventListener extendedOrientationEventListener = new ExtendedOrientationEventListener(this);
        this.mOrientationEventListener = extendedOrientationEventListener;
        extendedOrientationEventListener.enable();
        initializeThermalAlert();
        this.mScreenCounter = 2;
        this.mInternalSettings.loadValues();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        LogFilter.d(LOG_TAG, "onResume");
        super.onResume();
        this.mActive = true;
        if (this.mTemperatureHigh) {
            return;
        }
        getWindow().addFlags(128);
        setRequestedOrientation(1);
        startCountDownTimer();
        if (!this.mStartTrackFlag) {
            if (this.mResumeAlertSettingDialog) {
                if (Util.checkPermissionGrant(PERMISSIONS_CAMERA_STORAGE, this)) {
                    showSettingDialog(3);
                } else {
                    showSettingDialog(0);
                }
            }
            if (this.mResumeAlertOkDialog) {
                showOkDialog(3);
            }
        }
        showBlackScreen();
        setViewsVisibility(4);
        setMiniPreviewArrowsVisibility(false);
        registerGravitySensorListener();
        if (this.mInternalSettings.sensor_mode != -1) {
            int i = this.mInternalSettings.sensor_mode;
            this.mSensorFusionMode = i;
            this.mSensorFusion.setMode(i);
        }
        if (this.mGyroscope != null && this.mInternalSettings.sensor_mode != -1) {
            this.mSensorManager.registerListener(this.mSensorFusion, this.mGyroscope, 0);
        }
        if (this.mAccelerometer != null && this.mInternalSettings.sensor_mode == 2) {
            this.mSensorManager.registerListener(this.mSensorFusion, this.mAccelerometer, 0);
        }
        if (this.mRotationVector != null && this.mInternalSettings.sensor_mode == 4) {
            this.mSensorManager.registerListener(this.mSensorFusion, this.mRotationVector, 0);
        }
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.sonyericsson.android.camera3d.Camera2App.9
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                Uri data = intent.getData();
                if (data != null) {
                    if (action.matches("android.intent.action.MEDIA_MOUNTED")) {
                        LogFilter.d(Camera2App.LOG_TAG, "SD card is inserted:" + data.getPath());
                        Camera2App camera2App = Camera2App.this;
                        camera2App.checkRemainingMemory(!camera2App.isCapturing());
                        return;
                    }
                    if (action.matches("android.intent.action.MEDIA_UNMOUNTED")) {
                        LogFilter.d(Camera2App.LOG_TAG, "SD card is ejected:" + data.getPath());
                        if (!Camera2App.this.isDialogShown() || Camera2App.this.mDialogType != EnumDialogType.DIALOG_TYPE_SELECT_SAVE_DST) {
                            Camera2App.this.excludeOverlayDialog(EnumDialogType.DIALOG_TYPE_SELECT_SAVE_DST);
                        } else {
                            Camera2App.this.mDialog.dismiss(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OTHER);
                        }
                        if (Camera2App.this.isSaveDestinationExternal()) {
                            if (Camera2App.this.isCapturing() && Camera2App.this.mMorphoCamera != null) {
                                Camera2App.this.mMorphoCamera.cancelState();
                                Camera2App.this.mMorphoCamera.startState();
                            }
                            Camera2App.this.setSaveDestination(true);
                            Camera2App.this.startDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
                        }
                        Camera2App.this.setEnabledSaveDestination(false, false);
                        Camera2App.this.mSettings.setSdcardInserted(false);
                        Camera2App.this.setThumbnail();
                    }
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addDataScheme("file");
        registerReceiver(this.mBroadcastReceiver, intentFilter);
        this.mThermalAlertReceiver.bindThermalService();
        this.mResumeSequence = true;
        if (isCameraDisabled(this)) {
            this.mCameraCheckTimer.cancel();
            startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAMERA_SECURITY);
            return;
        }
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(this.mInternalSettings.camera_id, cameraInfo);
        boolean z = cameraInfo.canDisableShutterSound;
        this.mCanDisableShutterSound = z;
        if (!z) {
            final AudioManager audioManager = (AudioManager) getSystemService("audio");
            audioManager.requestAudioFocus(new AudioManager.OnAudioFocusChangeListener() { // from class: com.sonyericsson.android.camera3d.Camera2App.10
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public void onAudioFocusChange(int i2) {
                    audioManager.abandonAudioFocus(this);
                }
            }, 3, 1);
        }
        showPermissionOrStartCamera();
        AccessibilityHelper.onResume();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        LogFilter.d(LOG_TAG, "onPause 92417");
        this.mActive = false;
        synchronized (mSyncImageTask) {
            Future<?> future = this.mGetLatestImageTask;
            if (future != null) {
                future.cancel(false);
                this.mGetLatestImageTask = null;
            }
        }
        AlertOkDialog alertOkDialog = this.mAlertOkDialog;
        if (alertOkDialog != null && alertOkDialog.isShowing()) {
            this.mAlertOkDialog.dismiss();
            this.mAlertOkDialog = null;
            this.mResumeAlertOkDialog = true;
        }
        AlertSettingDialog alertSettingDialog = this.mAlertSettingDialog;
        if (alertSettingDialog != null && alertSettingDialog.isShowing()) {
            this.mAlertSettingDialog.dismiss();
            this.mAlertSettingDialog = null;
            this.mResumeAlertSettingDialog = true;
        }
        if (isOpenedSettingDialog()) {
            closeSettingDialog(false);
        }
        if (isDialogShown()) {
            dismissDialog(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SHUTDOWN);
            dismissDialog(false, RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SUSPEND, false);
            this.mDialog = null;
        }
        setViewsVisibility(4);
        setButtonsEnabled(false);
        this.mCountDownTimer.cancel();
        stopCaptureTimer();
        this.mCameraCheckTimer.cancel();
        BroadcastReceiver broadcastReceiver = this.mBroadcastReceiver;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
            this.mBroadcastReceiver = null;
        }
        this.mThermalAlertReceiver.unbindThermalService();
        FrameLayout frameLayout = this.mPreviewFrame;
        if (frameLayout != null) {
            frameLayout.setVisibility(4);
            this.mCurPreviewFrame.setVisibility(4);
            this.mPreviewArrow.setVisibility(4);
        }
        synchronized (CameraConstants.CameraSynchronizedObject) {
            TextureViewEx textureViewEx = this.mTextureView;
            if (textureViewEx != null && textureViewEx.getParent() != null) {
                this.mLpTextureView = (RelativeLayout.LayoutParams) this.mTextureView.getLayoutParams();
                RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.root_view);
                this.mIndexTexture = ((ViewGroup) this.mTextureView.getParent()).indexOfChild(this.mTextureView);
                relativeLayout.removeView(this.mTextureView);
            }
        }
        abortCamera();
        this.mLocationManager.removeUpdates();
        releaseImageBitmap();
        saveLocalCache();
        clearLocalCache();
        unregisterGravitySensorListener();
        this.mSensorManager.unregisterListener(this.mSensorFusion);
        this.mUseCamera1Tmp = this.mUseCamera1;
        this.mCameraIdTmp = this.mInternalSettings.camera_id;
        stopGpsSearchTimer();
        if (this.mStartTrackFlag) {
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
        this.mScreenCounter = 3;
        showBlackScreen();
        getWindow().clearFlags(128);
        SoundPool soundPool = this.mSoundPool;
        if (soundPool != null) {
            soundPool.release();
        }
        RotatableToast rotatableToast = this.mRotatableToast;
        if (rotatableToast != null) {
            rotatableToast.invisibleRotatableToast();
        }
        this.mKeyFocusPressed = false;
        this.mGuiCapturePressed = false;
        this.mShutdownView = false;
        super.onPause();
        if (this.mTemperatureHigh) {
            finish();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        LogFilter.d(LOG_TAG, "onStop");
        this.mOrientationEventListener.disable();
        this.mOrientationEventListener = null;
        finalizeThermalAlert();
        this.mSettings.save();
        this.mInternalSettings.saveValues();
        if (isDialogShown()) {
            this.mDialog.dismiss(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SHUTDOWN);
        }
        ErrorCaseHandler.setStatus(0);
        this.mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
        this.mOverlayDialogNum = 0;
        this.mDialog = null;
        this.mTemperatureHigh = false;
        super.onStop();
    }

    public void onClickShutter(View view) {
        synchronized (mSyncCancelSave) {
            if (this.mActive && !this.mIsPanoramaCancel) {
                this.mSavingBackground = false;
                if (isOpenedSettingDialog()) {
                    closeSettingDialog();
                }
                this.mInternalSettings.revertCamera2ParamsFragmentMode();
                if (!checkRemainingMemory(false)) {
                    this.mAutoFocusCircle.setVisibility(4);
                    setViewsVisibility(0);
                    return;
                }
                if (this.mIsAutoFocusProcessing) {
                    CameraState cameraState = this.mMorphoCamera.cameraState();
                    if (cameraState instanceof AutoFocusState) {
                        ((AutoFocusState) cameraState).setToNext(true);
                        return;
                    } else if (cameraState instanceof Camera1AutoFocusState) {
                        ((Camera1AutoFocusState) cameraState).setToNext(true);
                        return;
                    }
                }
                if (this.mDirectionFunction.enabled()) {
                    if (this.mMorphoCamera.finishState()) {
                        return;
                    }
                } else if (isEngineRunning() && !this.mIsInvalidDir) {
                    showSavingProgressBar();
                    this.mIsPanoramaCancel = true;
                    return;
                }
                this.mIsPanoramaCancel = false;
                this.mMorphoCamera.startTakePictureState();
            }
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            startCountDownTimer();
            if (isOpenedSettingDialog() || this.mInternalSettings.onBackKeyDown()) {
                return true;
            }
        } else {
            if (i != 27) {
                if (i != 80) {
                    if (i == 24 || i == 25) {
                        String useVolumeKey = this.mSettings.getUseVolumeKey();
                        useVolumeKey.hashCode();
                        if (useVolumeKey.equals(VALUE_VOLUME_KEY_VOLUME)) {
                            startCountDownTimer();
                            return super.onKeyDown(i, keyEvent);
                        }
                        if (useVolumeKey.equals(VALUE_VOLUME_KEY_ZOOM)) {
                            startCountDownTimer();
                            if (!isDialogShown() && !isCapturing() && !isOpenedSettingDialog()) {
                                startRotatableToast(getResources().getString(R.string.cam_strings_panorama_zoom_not_suported_txt), RotatableToast.TOAST_DURATION_LONG, false);
                            }
                            return true;
                        }
                        if (this.mKeyFocusPressed) {
                            return true;
                        }
                    }
                } else {
                    if (isVisibleBlackScreen() || isDialogShown() || isCapturing()) {
                        return true;
                    }
                    if (keyEvent.getRepeatCount() == 0) {
                        if (isOpenedSettingDialog()) {
                            closeSettingDialog();
                        }
                        if (autoFocus()) {
                            this.mKeyFocusPressed = true;
                            setViewsVisibility(4);
                            startCountDownTimer();
                        }
                    }
                }
            }
            if (isVisibleBlackScreen() || isDialogShown() || this.mGuiCapturePressed || keyEvent.getRepeatCount() > 0) {
                return true;
            }
            this.mKeyFocusPressed = false;
            if (!isCapturing() && i != 27) {
                if (isOpenedSettingDialog()) {
                    closeSettingDialog();
                }
                if (autoFocus()) {
                    setViewsVisibility(4);
                }
            }
            startCountDownTimer();
            onClickShutter(null);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (isCapturing()) {
                if (isEngineRunning()) {
                    onClickShutter(null);
                }
                return true;
            }
            MorphoCameraBase morphoCameraBase = this.mMorphoCamera;
            if (morphoCameraBase != null && !morphoCameraBase.canExitState()) {
                this.mMorphoCamera.cancelState();
                this.mMorphoCamera.startState();
                return true;
            }
            if (isOpenedSettingSubDialog()) {
                closeSettingSubDialog();
            } else if (isOpenedSettingDialog()) {
                closeSettingDialog();
                checkRemainingMemory(false);
            }
        } else if (i == 80 && this.mKeyFocusPressed) {
            this.mKeyFocusPressed = false;
            if (!isDialogShown()) {
                setViewsVisibility(0);
            }
            updateViews();
            unlockFocus();
        }
        return super.onKeyUp(i, keyEvent);
    }

    public boolean autoFocus() {
        CameraState autoFocusState;
        if (!this.mActive || this.mMorphoCamera.finishState() || !checkRemainingMemory(false, false)) {
            return false;
        }
        if (this.mUseCamera1) {
            autoFocusState = new Camera1AutoFocusState(this.mMorphoCamera.cameraState(), false);
        } else {
            autoFocusState = new AutoFocusState(false);
        }
        this.mMorphoCamera.updateCameraState(autoFocusState);
        autoFocusState.onStart();
        this.mAutoFocusCircle.setImageResource(R.drawable.cam_auto_focus_circle_focusing_icn);
        this.mAutoFocusCircle.setVisibility(0);
        this.mIsAutoFocusProcessing = true;
        return true;
    }

    public void unlockFocus() {
        CameraState unlockFocusState;
        if (this.mMorphoCamera != null) {
            if (this.mUseCamera1) {
                unlockFocusState = new Camera1UnlockFocusState(this.mMorphoCamera.cameraState());
            } else {
                unlockFocusState = new UnlockFocusState();
            }
            this.mMorphoCamera.updateCameraState(unlockFocusState);
            this.mMorphoCamera.startState();
        }
    }

    private static boolean initializeEngine(MorphoPanoramaGP2 morphoPanoramaGP2, MorphoPanoramaGP2.InitParam initParam) {
        int iInitialize = morphoPanoramaGP2.initialize(initParam);
        if (iInitialize == 0) {
            return true;
        }
        LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.initialize error ret:0x%08X", Integer.valueOf(iInitialize)));
        return false;
    }

    public EnumResultCreateEngine createEngine() {
        if (this.mMorphoPanoramaGP2 != null) {
            return EnumResultCreateEngine.RESULT_ALREADY_CREATED;
        }
        this.mMorphoPanoramaGP2 = new MorphoPanoramaGP2();
        if (PanoramaGP2ImageFormat.YUV420_PLANAR.equals(this.mImageFormat)) {
            this.mInitParam.input_format = this.mImageFormat;
            this.mInitParam.output_format = PanoramaGP2ImageFormat.YUV420_SEMIPLANAR;
        } else {
            this.mInitParam.input_format = this.mImageFormat;
            this.mInitParam.output_format = this.mImageFormat;
        }
        if (this.mInternalSettings.aov_x != 0.0d) {
            this.mViewAngleH = (float) this.mInternalSettings.aov_x;
        }
        if (this.mInternalSettings.aov_y != 0.0d) {
            this.mViewAngleV = (float) this.mInternalSettings.aov_y;
        }
        CameraInfo cameraInfo = this.mMorphoCamera.cameraInfo();
        float[] fArr = new float[2];
        getRatios(this.mSensorAspectIndex, getAspectTableIndex(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight()), fArr);
        LogFilter.i(LOG_TAG, "createEngine mViewAngleH=" + this.mViewAngleH + " mViewAngleV=" + this.mViewAngleV + " ratiox=" + fArr[0] + " ratioy=" + fArr[1]);
        this.mInitParam.aovx = ((Math.atan(Math.tan(((((double) this.mViewAngleH) * 0.5d) * 3.141592653589793d) / 180.0d) * ((double) fArr[0])) * 2.0d) * 180.0d) / 3.141592653589793d;
        this.mInitParam.aovy = ((Math.atan(Math.tan(((((double) this.mViewAngleV) * 0.5d) * 3.141592653589793d) / 180.0d) * ((double) fArr[1])) * 2.0d) * 180.0d) / 3.141592653589793d;
        LogFilter.i(LOG_TAG, "createEngine aovx=" + this.mInitParam.aovx + " aovy=" + this.mInitParam.aovy);
        int liveViewWidth = getLiveViewWidth();
        double width = ((double) (this.mInitParam.input_height * liveViewWidth)) / ((double) this.mMiniPreviewImageView.getWidth());
        LogFilter.i(LOG_TAG, "createEngine root_view width=" + liveViewWidth);
        LogFilter.i(LOG_TAG, "createEngine mMiniPreviewImageView width=" + this.mMiniPreviewImageView.getWidth() + " height=" + this.mMiniPreviewImageView.getHeight());
        MorphoPanoramaGP2.InitParam initParam = this.mInitParam;
        initParam.goal_angle = (width / ((double) initParam.input_height)) * this.mInitParam.aovy;
        LogFilter.i(LOG_TAG, "createEngine goal_angle=" + this.mInitParam.goal_angle);
        if (initializeEngine(this.mMorphoPanoramaGP2, this.mInitParam)) {
            this.mMorphoPanoramaGP2.setAttachEnabled(this.mInternalSettings.save_input_images == 0);
            return EnumResultCreateEngine.RESULT_NEWLY_CREATED;
        }
        this.mMorphoPanoramaGP2 = null;
        return EnumResultCreateEngine.RESULT_ERROR;
    }

    public void finishEngine() {
        LogFilter.d(LOG_TAG, "finishEngine");
        stopCaptureTimer();
        synchronized (CameraConstants.EngineSynchronizedObject) {
            this.mEngineEnding = false;
            MorphoPanoramaGP2 morphoPanoramaGP2 = this.mMorphoPanoramaGP2;
            if (morphoPanoramaGP2 == null) {
                return;
            }
            int iFinish = morphoPanoramaGP2.finish();
            if (iFinish != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.finish error ret:0x%08X", Integer.valueOf(iFinish)));
            }
            float attachFps = this.mMorphoPanoramaGP2.getAttachFps();
            float attachAve = this.mMorphoPanoramaGP2.getAttachAve();
            float attachStandardDeviation = this.mMorphoPanoramaGP2.getAttachStandardDeviation();
            this.mMorphoPanoramaGP2 = null;
            LogFilter.d(LOG_TAG, String.format(Locale.US, "attach %.02f fps (ave:%.02f, std:%.02f)", Float.valueOf(attachFps), Float.valueOf(attachAve), Float.valueOf(attachStandardDeviation)));
        }
    }

    public void makeEngineParam() {
        CameraInfo cameraInfo = this.mMorphoCamera.cameraInfo();
        int i = 1;
        if (LIMIT_DIRECTION) {
            this.mInitParam.direction = 1;
        } else {
            this.mInitParam.direction = 0;
        }
        this.mInitParam.input_width = cameraInfo.getCaptureWidth();
        this.mInitParam.input_height = cameraInfo.getCaptureHeight();
        if (this.mUseCamera1) {
            Size maxPictureSize = ((MorphoCamera1) this.mMorphoCamera).getMaxPictureSize();
            this.mSensorAspectIndex = getAspectTableIndex(maxPictureSize.getWidth(), maxPictureSize.getHeight());
        } else if (cameraInfo.getPhysicalWidth() == cameraInfo.getPhysicalHeight()) {
            SizeF sizeF = new SizeF((cameraInfo.getPhysicalWidth() * cameraInfo.getPixelArrayWidth()) / 1000.0f, (cameraInfo.getPhysicalHeight() * cameraInfo.getPixelArrayHeight()) / 1000.0f);
            this.mViewAngleH = (float) (Math.toDegrees(Math.atan(sizeF.getWidth() / (cameraInfo.getFocalLength() * 2.0f))) * 2.0d);
            this.mViewAngleV = (float) (Math.toDegrees(Math.atan(sizeF.getHeight() / (cameraInfo.getFocalLength() * 2.0f))) * 2.0d);
            this.mSensorAspectIndex = getAspectTableIndex(sizeF.getWidth(), sizeF.getHeight());
        } else {
            this.mSensorAspectIndex = getBaseAspect();
        }
        if (this.mAovs == null) {
            this.mAovs = new double[]{this.mViewAngleH, this.mViewAngleV};
        }
        Camera.CameraInfo cameraInfo2 = MorphoCamera1.getCameraInfo(this.mInternalSettings.camera_id);
        if (this.mIsFrontCamera) {
            this.mCameraOrientation = (cameraInfo2.orientation + 180) % 360;
        } else {
            this.mCameraOrientation = cameraInfo2.orientation;
        }
        this.mInitParam.output_rotation = ((this.mCameraOrientation + (getDisplayRotation() + this.mCurOrientation)) + 360) % 360;
        if (this.mSensorFusion != null) {
            int i2 = cameraInfo2.orientation;
            if (i2 != 90) {
                if (i2 != 180) {
                    i = i2 != 270 ? 0 : 3;
                } else {
                    i = 2;
                }
            }
            int rotation = this.mSensorFusion.setRotation(i);
            if (rotation != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.setRotation error ret:0x%08X", Integer.valueOf(rotation)));
            }
        }
    }

    public void onClickSetting(View view) {
        this.mInternalSettings.revertCamera2ParamsFragmentMode();
        if (isEngineRunning()) {
            return;
        }
        LogFilter.i(LOG_TAG, "onClickSetting " + this.mAovs[0] + " " + this.mAovs[1]);
        InternalSettings internalSettings = this.mInternalSettings;
        double[] dArr = this.mAovs;
        StringBuilder sb = new StringBuilder("");
        int[][] iArr = ASPECT_TABLE;
        internalSettings.startSettingActivity(this, dArr, sb.append(iArr[this.mSensorAspectIndex][0]).append(InternalSettings.SETTING_SEPARATOR).append(iArr[this.mSensorAspectIndex][1]).toString(), this.mCamera2ImageQualitySettings, this.mMorphoCamera.getAllCameras());
    }

    public void onClickCameraSetting(View view) {
        this.mInternalSettings.revertCamera2ParamsFragmentMode();
        if (isEngineRunning()) {
            return;
        }
        this.mInternalSettings.toggleVisibilityCameraParamFrame();
    }

    private void getSettingValue() {
        this.mInternalSettings.getSettingValue((MorphoPanoramaGP2Application) getApplication());
    }

    private Intent createDefaultIntentView(String str) {
        Intent intent = new Intent();
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setDataAndType(this.mThumbnailUri, str);
        return intent;
    }

    public void onClickThumbnail(View view) {
        if (isCapturing()) {
            return;
        }
        LogFilter.d(LOG_TAG, "Thumbnail click!");
        Intent intentCreateDefaultIntentView = createDefaultIntentView(this.mImageMimeType);
        intentCreateDefaultIntentView.setAction("com.android.camera.action.REVIEW");
        if (intentCreateDefaultIntentView.resolveActivity(getPackageManager()) != null) {
            startActivityForResult(intentCreateDefaultIntentView, 30);
            return;
        }
        Intent intentCreateDefaultIntentView2 = createDefaultIntentView(this.mImageMimeType);
        intentCreateDefaultIntentView2.setAction("android.intent.action.VIEW");
        if (intentCreateDefaultIntentView2.resolveActivity(getPackageManager()) != null) {
            startActivityForResult(intentCreateDefaultIntentView2, 30);
        } else {
            setThumbnail();
            Toast.makeText(this, R.string.no_image_viewer, 1).show();
        }
    }

    private void configureTransform() {
        if (this.mTextureView == null) {
            return;
        }
        CameraInfo cameraInfo = this.mMorphoCamera.cameraInfo();
        int rotation = getDisplay().getRotation();
        Matrix matrix = new Matrix();
        RectF rectF = new RectF(0.0f, 0.0f, this.mTextureView.getWidth(), this.mTextureView.getHeight());
        RectF rectF2 = new RectF(0.0f, 0.0f, cameraInfo.getCaptureHeight(), cameraInfo.getCaptureWidth());
        float fCenterX = rectF.centerX();
        float fCenterY = rectF.centerY();
        if (1 == rotation || 3 == rotation) {
            rectF2.offset(fCenterX - rectF2.centerX(), fCenterY - rectF2.centerY());
            matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            float fMax = Math.max(((float) this.mTextureView.getHeight()) / ((float) cameraInfo.getCaptureHeight()), ((float) this.mTextureView.getWidth()) / ((float) cameraInfo.getCaptureWidth()));
            matrix.postScale(fMax, fMax, fCenterX, fCenterY);
            matrix.postRotate((rotation - 2) * 90, fCenterX, fCenterY);
        } else if (2 == rotation) {
            matrix.postRotate(180.0f, fCenterX, fCenterY);
        }
        this.mTextureView.setTransform(matrix);
        View viewFindViewById = findViewById(R.id.mini_preview_frame);
        RectF rectF3 = new RectF(0.0f, 0.0f, viewFindViewById.getWidth(), viewFindViewById.getHeight());
        float fCenterX2 = rectF3.centerX();
        float fCenterY2 = rectF3.centerY();
        if (1 == rotation || 3 == rotation) {
            rectF2.offset(fCenterX2 - rectF2.centerX(), fCenterY2 - rectF2.centerY());
            matrix.setRectToRect(rectF3, rectF2, Matrix.ScaleToFit.FILL);
            float fMax2 = Math.max(((float) viewFindViewById.getHeight()) / ((float) cameraInfo.getCaptureHeight()), ((float) viewFindViewById.getWidth()) / ((float) cameraInfo.getCaptureWidth()));
            matrix.postScale(fMax2, fMax2, fCenterX2, fCenterY2);
            matrix.postRotate((rotation - 2) * 90, fCenterX2, fCenterY2);
        } else if (2 == rotation) {
            matrix.postRotate(180.0f, fCenterX2, fCenterY2);
        }
        Matrix matrix2 = new Matrix(matrix);
        this.mMiniPreviewMatrix = matrix2;
        ImageView imageView = this.mMiniPreviewImageView;
        if (imageView != null) {
            imageView.setImageMatrix(matrix2);
        }
    }

    private void openCamera() throws IllegalArgumentException {
        if (isCameraDisabled(this) || this.mTemperatureHigh) {
            return;
        }
        MorphoCamera morphoCamera = (MorphoCamera) this.mMorphoCamera;
        CameraInfo cameraInfo = morphoCamera.cameraInfo();
        if (!cameraInfo.isCameraEnabled() || cameraInfo.getOpenState() == 1 || cameraInfo.getOpenState() == 2) {
            return;
        }
        if (!readViewAngle()) {
            if (Build.MODEL.equals("G3121") || Build.MODEL.equals("G3221")) {
                this.mViewAngleH = 72.26766f;
                this.mViewAngleV = 57.53211f;
            } else if (Build.MODEL.equals("EVA-TL00")) {
                this.mViewAngleH = 65.01539f;
                this.mViewAngleV = 51.05475f;
            } else {
                Camera cameraOpen = MorphoCamera1.open(this.mInternalSettings.camera_id);
                if (cameraOpen != null) {
                    Camera.Parameters parameters = cameraOpen.getParameters();
                    this.mViewAngleH = parameters.getHorizontalViewAngle();
                    this.mViewAngleV = parameters.getVerticalViewAngle();
                    cameraOpen.release();
                } else {
                    setViewsVisibility(4);
                    startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAMERA);
                    return;
                }
            }
            writeViewAngle(this.mInternalSettings.camera_id, this.mViewAngleH, this.mViewAngleV);
        }
        boolean zPrepareCamera = morphoCamera.prepareCamera(this.mTextureView, this.mMiniPreviewTextureView);
        if (zPrepareCamera) {
            this.mInternalSettings.initializeUI(cameraInfo);
            zPrepareCamera = morphoCamera.openCamera(true);
        }
        if (zPrepareCamera) {
            return;
        }
        setViewsVisibility(4);
        startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAMERA);
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void setNullDirectionFunction() {
        CameraInfo cameraInfo = this.mMorphoCamera.cameraInfo();
        this.mDirectionFunction = new DirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), 1, 1, 1, 0);
    }

    private void setSupportedCaptureSize() {
        ((MorphoPanoramaGP2Application) getApplication()).setSupportedPictureSizes(this.mMorphoCamera.getSupportedPreviewSizes());
    }

    private void setPreviewSize() {
        int[][] iArr = {new int[]{1280, 720}};
        MorphoPanoramaGP2Application morphoPanoramaGP2Application = (MorphoPanoramaGP2Application) getApplication();
        Size[] supportedPictureSizes = morphoPanoramaGP2Application.getSupportedPictureSizes();
        Size size = supportedPictureSizes[this.mInternalSettings.capture_size_index];
        for (Size size2 : supportedPictureSizes) {
            if (size2.getWidth() == iArr[0][0] && size2.getHeight() == iArr[0][1]) {
                size = size2;
                break;
            }
        }
        morphoPanoramaGP2Application.setPreviewSize(size);
    }

    public boolean isPanoramaSaving() {
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.SavingProgressBar);
        return progressBar != null && progressBar.getVisibility() == 0;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public boolean isEngineRunning() {
        return this.mMorphoPanoramaGP2 != null || isPanoramaSaving();
    }

    private class UpdateCameraInfoViewRunnable implements Runnable {
        private TotalCaptureResult mTotalCaptureResult;

        private UpdateCameraInfoViewRunnable() {
        }

        public void setTotalCaptureResult(TotalCaptureResult totalCaptureResult) {
            this.mTotalCaptureResult = totalCaptureResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Camera2App.this.mActive) {
                Long l = (Long) this.mTotalCaptureResult.get(TotalCaptureResult.SENSOR_EXPOSURE_TIME);
                Integer num = (Integer) this.mTotalCaptureResult.get(TotalCaptureResult.SENSOR_SENSITIVITY);
                if (l == null || num == null) {
                    return;
                }
                if (Camera2App.this.mLatestCaptureResult != null) {
                    Camera2App.this.mLatestCaptureResult.sets(l.longValue(), num.intValue());
                } else {
                    Camera2App.this.mLatestCaptureResult = new CaptureResult(l.longValue(), num.intValue());
                }
                Camera2App.this.mInternalSettings.updateCameraInfoView(l.longValue(), num.intValue());
                if (Camera2App.this.isEngineRunning() && Camera2App.this.isAutoEdgeNR()) {
                    Camera2App.this.mSensorSensitivityAverageManager.add(num.intValue());
                }
            }
        }
    }

    private class SavePictureState extends CameraState implements SaveTask.ISaveTaskEventListener {
        private String imageFormat;
        private boolean mIsUpdateUi;

        @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
        public boolean onFinish() {
            return true;
        }

        public SavePictureState() {
            this.mIsUpdateUi = true;
        }

        public SavePictureState(boolean z) {
            this.mIsUpdateUi = z;
        }

        private void showSaveErrorDialog() {
            if (this.mIsUpdateUi) {
                Camera2App.this.startDialog(EnumDialogType.DIALOG_TYPE_ERROR_SAVE);
            }
        }

        @Override // com.sonyericsson.android.camera3d.SaveTask.ISaveTaskEventListener
        public boolean requestSaveProcess() {
            boolean zBooleanValue;
            if (Camera2App.this.mMorphoPanoramaGP2 == null) {
                LogFilter.e(Camera2App.LOG_TAG, "mMorphoPanoramaGP2 is null");
                return false;
            }
            Rect rect = new Rect();
            int clippingRect = Camera2App.this.mMorphoPanoramaGP2.getClippingRect(rect);
            if (clippingRect != 0) {
                LogFilter.e(Camera2App.LOG_TAG, "mMorphoPanoramaGP2.getClippingRect error ret:" + clippingRect);
                return false;
            }
            LogFilter.i(Camera2App.LOG_TAG, String.format(Locale.US, "ClippingRect(Save) (%d,%d)-(%d,%d) %dx%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom), Integer.valueOf(rect.width()), Integer.valueOf(rect.height())));
            int iWidth = rect.width();
            int iHeight = rect.height();
            int i = ((iWidth * iHeight) * 3) / 2;
            byte[] bArr = new byte[i];
            int outputImage = Camera2App.this.mMorphoPanoramaGP2.getOutputImage(bArr, rect);
            if (outputImage == 0) {
                this.imageFormat = Camera2App.this.mInitParam.output_format;
                Camera2App.this.finishEngine();
                ByteBuffer byteBufferAllocateBuffer = NativeMemoryAllocator.allocateBuffer(i);
                byteBufferAllocateBuffer.put(bArr);
                byteBufferAllocateBuffer.clear();
                Location location = Camera2App.this.mSettings.isSaveLocation() ? Camera2App.this.mLocationManager.getLocation() : null;
                String strCreateNewFilePath = Camera2App.this.createNewFilePath();
                if (strCreateNewFilePath != null) {
                    Pair pairSaveImage = Camera2App.this.saveImage(strCreateNewFilePath, byteBufferAllocateBuffer, iWidth, iHeight, location);
                    zBooleanValue = ((Boolean) pairSaveImage.first).booleanValue();
                    Camera2App.this.mSavePanoramaPath = (String) pairSaveImage.second;
                } else {
                    zBooleanValue = false;
                }
                NativeMemoryAllocator.freeBuffer(byteBufferAllocateBuffer);
                if (zBooleanValue) {
                    return true;
                }
                LogFilter.e(Camera2App.LOG_TAG, "FileWriteErr");
                return false;
            }
            LogFilter.e(Camera2App.LOG_TAG, "mMorphoPanoramaGP2.getOutputImage error ret:" + outputImage);
            return false;
        }

        @Override // com.sonyericsson.android.camera3d.SaveTask.ISaveTaskEventListener
        public void onSaveFinish(boolean z) {
            CameraState unlockFocusState;
            LogFilter.d(Camera2App.LOG_TAG, "onSaveFinish result=" + z);
            if (Camera2App.this.mInternalSettings.save_input_images != 0) {
                Camera2App.this.mInternalSettings.saveSettings(Camera2App.this.mInputFolderPath, this.imageFormat, Camera2App.this.mMorphoCamera.cameraInfo(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, Camera2App.this.mDirectionFunction.getScale(), Camera2App.this.mAngle, Camera2App.this.mDirectionFunction.getDirection(), Camera2App.this.mAttachNumDirectionUndecided);
            }
            if (Camera2App.this.mInternalSettings.save_input_images != 0) {
                Camera2App.this.mInternalSettings.putParamFile(Camera2App.this.mInputFolderPath, Camera2App.this.mMorphoCamera.cameraInfo(), this.imageFormat);
            }
            if (!this.mIsUpdateUi) {
                if (!z) {
                    Camera2App.this.mSavePanoramaPath = null;
                }
                Camera2App.this.setThumbnail();
            } else {
                Camera2App.this.getSavingProgressBar().setVisibility(4);
                if (Camera2App.this.mActive && !Camera2App.this.mSavingBackground && !Camera2App.this.mTemperatureHigh) {
                    Camera2App.this.setViewsVisibility(0);
                    if (!z) {
                        Camera2App.this.mSavePanoramaPath = null;
                        showSaveErrorDialog();
                    }
                    if (Camera2App.this.mUseCamera1) {
                        if (CameraConstants.AutoFocusType == 0) {
                            unlockFocusState = new Camera1PreviewState(Camera2App.this.mMorphoCamera.cameraState());
                        } else {
                            unlockFocusState = new Camera1UnlockFocusState(Camera2App.this.mMorphoCamera.cameraState());
                        }
                    } else if (CameraConstants.AutoFocusType == 0) {
                        unlockFocusState = new PreviewState();
                    } else {
                        unlockFocusState = new UnlockFocusState();
                    }
                    Camera2App.this.mMorphoCamera.updateCameraState(unlockFocusState);
                    Camera2App.this.mMorphoCamera.startState();
                    FooterButtonsFragment footerButtonsFragment = Camera2App.this.getFooterButtonsFragment();
                    if (footerButtonsFragment != null) {
                        footerButtonsFragment.clearThumbnail();
                    }
                    Camera2App.this.updateViews();
                }
            }
            if (Camera2App.this.isEngineRunning()) {
                Camera2App.this.finishEngine();
            }
            Camera2App.this.mSavingBackground = false;
            if (!Camera2App.this.mActive || Camera2App.this.mTemperatureHigh) {
                return;
            }
            Camera2App.this.checkRemainingMemory(false);
        }
    }

    private class PanoramaInit extends PanoramaState {
        private PanoramaInit() {
        }

        @Override // com.sonyericsson.android.camera3d.base.PanoramaState
        public boolean onSaveImage(CaptureImage captureImage) {
            Camera2App.this.mImageFormat = captureImage.getImageFormat();
            LogFilter.i(Camera2App.LOG_TAG, "ImageFormat :" + Camera2App.this.mImageFormat);
            int i = AnonymousClass30.$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumResultCreateEngine[Camera2App.this.createEngine().ordinal()];
            if (i != 1) {
                if (i == 2) {
                    Camera2App.this.mPanoramaState = new PanoramaPreview(Camera2App.this);
                    Camera2App.this.mPanoramaState.setPanoramaStateEventListener(this.listener);
                    clearListener();
                    captureImage.close();
                    return true;
                }
                Camera2App.this.onErrorCapture();
                return false;
            }
            int inputImageFormat = Camera2App.this.mMorphoPanoramaGP2.setInputImageFormat(Camera2App.this.mImageFormat);
            if (inputImageFormat != 0) {
                LogFilter.e(Camera2App.LOG_TAG, "mMorphoPanoramaGP2.setImageFormat error ret:" + inputImageFormat);
            }
            Camera2App.this.mPanoramaState = new PanoramaFirst();
            Camera2App.this.mPanoramaState.setPanoramaStateEventListener(this.listener);
            clearListener();
            Camera2App.this.mPanoramaState.onSaveImage(captureImage);
            return true;
        }

        @Override // com.sonyericsson.android.camera3d.base.PanoramaState
        public void repeatTakePicture() {
            boolean zTakePicture;
            int captureMode = Camera2App.this.mInternalSettings.getCaptureMode();
            if (captureMode == 1) {
                zTakePicture = Camera2App.this.mMorphoCamera.takePicture();
            } else if (captureMode == 2) {
                zTakePicture = Camera2App.this.mMorphoCamera.takePictureZSL();
            } else if (captureMode != 3) {
                return;
            } else {
                zTakePicture = Camera2App.this.mMorphoCamera.takePictureBurst();
            }
            if (zTakePicture) {
                return;
            }
            Camera2App.this.onErrorCapture();
        }
    }

    private class PanoramaFirst extends PanoramaState {
        private PanoramaFirst() {
        }

        @Override // com.sonyericsson.android.camera3d.base.PanoramaState
        public boolean onSaveImage(CaptureImage captureImage) {
            captureImage.close();
            Camera2App.this.setNullDirectionFunction();
            if (Camera2App.this.isEngineRunning()) {
                CameraInfo cameraInfo = Camera2App.this.mMorphoCamera.cameraInfo();
                Point point = new Point();
                point.x = cameraInfo.getCaptureWidth() / 2;
                point.y = cameraInfo.getCaptureHeight() / 2;
                Camera2App.this.mInputFolderPath = Camera2App.this.getExternalFilesDir(null) + File.separator + Camera2App.STORAGE_PATH_PREFIX + File.separator + "input" + File.separator + Camera2App.createName(System.currentTimeMillis());
                if (Camera2App.this.mInternalSettings.save_input_images == 0) {
                    Camera2App.this.mMorphoPanoramaGP2.disableSaveInputImages();
                } else {
                    File file = new File(Camera2App.this.mInputFolderPath);
                    if (!file.exists() && !file.mkdirs()) {
                        return false;
                    }
                    int i = Camera2App.this.mInternalSettings.save_input_images;
                    if (i == 1) {
                        Camera2App.this.mInternalSettings.initializeEncoder(Camera2App.this.mInputFolderPath, Camera2App.this.mInitParam.input_width, Camera2App.this.mInitParam.input_height);
                    } else if (i == 2) {
                        Camera2App.this.mMorphoPanoramaGP2.enableSaveInputImages(Camera2App.this.mInputFolderPath);
                    }
                }
                int shrinkRatio = Camera2App.this.mMorphoPanoramaGP2.setShrinkRatio(Camera2App.this.mInternalSettings.shrink_ratio);
                if (shrinkRatio != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setShrinkRatio error ret:0x%08X", Integer.valueOf(shrinkRatio)));
                }
                int calcseamPixnum = Camera2App.this.mMorphoPanoramaGP2.setCalcseamPixnum(Camera2App.this.mInternalSettings.calcseam_pixnum);
                if (calcseamPixnum != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setCalcseamPixnum error ret:0x%08X", Integer.valueOf(calcseamPixnum)));
                }
                int useDeform = Camera2App.this.mMorphoPanoramaGP2.setUseDeform(Camera2App.this.mInternalSettings.use_deform);
                if (useDeform != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setUseDeform error ret:0x%08X", Integer.valueOf(useDeform)));
                }
                int useLuminanceCorrection = Camera2App.this.mMorphoPanoramaGP2.setUseLuminanceCorrection(Camera2App.this.mInternalSettings.use_luminance_correction);
                if (useLuminanceCorrection != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setUseLuminanceCorrection error ret:0x%08X", Integer.valueOf(useLuminanceCorrection)));
                }
                int seamsearchRatio = Camera2App.this.mMorphoPanoramaGP2.setSeamsearchRatio(Camera2App.this.mInternalSettings.seamsearch_ratio);
                if (seamsearchRatio != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setSeamsearchRatio error ret:0x%08X", Integer.valueOf(seamsearchRatio)));
                }
                int zrotationCoeff = Camera2App.this.mMorphoPanoramaGP2.setZrotationCoeff(Camera2App.this.mInternalSettings.zrotation_coeff);
                if (zrotationCoeff != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setZrotationCoeff error ret:0x%08X", Integer.valueOf(zrotationCoeff)));
                }
                int drawThreshold = Camera2App.this.mMorphoPanoramaGP2.setDrawThreshold(Camera2App.this.mInternalSettings.draw_threshold);
                if (drawThreshold != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setDrawThreshold error ret:0x%08X", Integer.valueOf(drawThreshold)));
                }
                int unsharpStrength = Camera2App.this.mMorphoPanoramaGP2.setUnsharpStrength(Camera2App.this.mInternalSettings.unsharp_strength);
                if (unsharpStrength != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setUnsharpStrength error ret:0x%08X", Integer.valueOf(unsharpStrength)));
                }
                int aovGain = Camera2App.this.mMorphoPanoramaGP2.setAovGain(Camera2App.this.mInternalSettings.aov_gain);
                if (aovGain != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setAovGain error ret:0x%08X", Integer.valueOf(aovGain)));
                }
                int distortionCorrectionParam = Camera2App.this.mMorphoPanoramaGP2.setDistortionCorrectionParam(Camera2App.this.mInternalSettings.distortion_k1, Camera2App.this.mInternalSettings.distortion_k2, Camera2App.this.mInternalSettings.distortion_k3, Camera2App.this.mInternalSettings.distortion_k4);
                if (distortionCorrectionParam != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setDistortionCorrectionParam error ret:0x%08X", Integer.valueOf(distortionCorrectionParam)));
                }
                int rotationRatio = Camera2App.this.mMorphoPanoramaGP2.setRotationRatio(Camera2App.this.mInternalSettings.rotation_ratio);
                if (rotationRatio != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setRotationRatio error ret:0x%08X", Integer.valueOf(rotationRatio)));
                }
                int projectionMode = Camera2App.this.mMorphoPanoramaGP2.setProjectionMode(Camera2App.this.mInternalSettings.projection_mode);
                if (projectionMode != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setProjectionMode error ret:0x%08X", Integer.valueOf(projectionMode)));
                }
                int motionDetectionMode = Camera2App.this.mMorphoPanoramaGP2.setMotionDetectionMode(Camera2App.this.mInternalSettings.motion_detection_mode);
                if (motionDetectionMode != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setMotionDetectionMode error ret:0x%08X", Integer.valueOf(motionDetectionMode)));
                }
                int iStart = Camera2App.this.mMorphoPanoramaGP2.start(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight());
                if (iStart != 0) {
                    LogFilter.e(Camera2App.LOG_TAG, "mMorphoPanoramaGP2.start error ret:" + iStart);
                    Camera2App.this.onErrorCapture();
                    return false;
                }
                Camera2App.this.mPanoramaState = Camera2App.this.new DecideDirection();
                Camera2App.this.mPanoramaState.setPanoramaStateEventListener(this.listener);
                clearListener();
                return true;
            }
            LogFilter.e(Camera2App.LOG_TAG, "PanoramaFirst.onSaveImage mMorphoPanoramaGP2 is null!!");
            return false;
        }

        @Override // com.sonyericsson.android.camera3d.base.PanoramaState
        public void repeatTakePicture() {
            boolean zTakePicture;
            int captureMode = Camera2App.this.mInternalSettings.getCaptureMode();
            if (captureMode == 1) {
                zTakePicture = Camera2App.this.mMorphoCamera.takePicture();
            } else if (captureMode == 2) {
                zTakePicture = Camera2App.this.mMorphoCamera.takePictureZSL();
            } else if (captureMode != 3) {
                return;
            } else {
                zTakePicture = Camera2App.this.mMorphoCamera.takePictureBurst();
            }
            if (zTakePicture) {
                return;
            }
            Camera2App.this.onErrorCapture();
        }
    }

    private class DecideDirection extends PanoramaState {
        private DecideDirectionAttach mAttachRunnable = null;

        public DecideDirection() {
            Camera2App.this.mAngle = Camera2App.this.mInitParam.output_rotation;
        }

        private class DecideDirectionAttach extends AttachRunnable {
            public DecideDirectionAttach() {
            }

            private int getScaleV() {
                return (Camera2App.this.mSurfaceView == null || Camera2App.this.mSurfaceView.getVisibility() != 0) ? Math.max(1, ((Camera2App.this.mMaxWidth + Camera2App.this.mTextureView.getHeight()) - 1) / Camera2App.this.mTextureView.getHeight()) : Math.max(1, ((Camera2App.this.mMaxWidth + Camera2App.this.mSurfaceView.getHeight()) - 1) / Camera2App.this.mSurfaceView.getHeight());
            }

            private int getScaleH() {
                return (Camera2App.this.mSurfaceView == null || Camera2App.this.mSurfaceView.getVisibility() != 0) ? Math.max(1, ((Camera2App.this.mMaxHeight + Camera2App.this.mTextureView.getHeight()) - 1) / Camera2App.this.mTextureView.getHeight()) : Math.max(1, ((Camera2App.this.mMaxHeight + Camera2App.this.mSurfaceView.getHeight()) - 1) / Camera2App.this.mSurfaceView.getHeight());
            }

            // 對照 smali（Camera2App$DecideDirection$DecideDirectionAttach.run()，
            // 991 instruction units）手動重建：jadx 完全反編譯失敗，原本只留下
            // `throw new UnsupportedOperationException("Method not decompiled: ...")`
            // 的 stub。原始 smali 依 `mInternalSettings.ui_control_mode` 分成兩個
            // 幾乎平行、但鎖與收尾語意不同的迴圈：
            //   - ui_control_mode == 2：雙鎖（CameraSynchronizedObject 外、
            //     EngineSynchronizedObject 內），每輪 attach 完若方向還沒決定就
            //     `Thread.sleep(SLEEP_MILLISEC, SLEEP_NANOSEC)` 再取下一張；
            //     sleep 的 InterruptedException（smali `:catch_0`，catch label
            //     直接就是迴圈頂端 `:goto_0`）被靜默吞掉並繼續迴圈。
            //   - ui_control_mode != 2：外層鎖是 `mSyncCancelSave`，先判斷
            //     `mIsPanoramaCancel`：為真就（第一次進來時）存檔 + 送出
            //     DecideDirectionAttach$1 這個 UI Runnable 並把 z 設為 false，
            //     為假才進 EngineSynchronizedObject 做 attach；本迴圈沒有 sleep。
            // 兩個迴圈共用同一段收尾（smali `:goto_c`/`:cond_18`），抽成
            // finishDecideThread()。take()/synchronized 區段的
            // InterruptedException（smali `:catch_1`）→ printStackTrace +
            // runOnUiThread(new DecideFailRunnable())。
            @Override // java.lang.Runnable
            public void run() {
                if (Camera2App.this.mInternalSettings.ui_control_mode == 2) {
                    while (true) {
                        CaptureImage captureImage;
                        try {
                            captureImage = (CaptureImage) Camera2App.this.mAttachImageQueue.take();
                            if (captureImage == Camera2App.sAttachExit) {
                                finishDecideThread(captureImage);
                                return;
                            }
                            setImage(captureImage);
                            synchronized (CameraConstants.CameraSynchronizedObject) {
                                int direction;
                                synchronized (CameraConstants.EngineSynchronizedObject) {
                                    if (!Camera2App.this.isEngineRunning() || Camera2App.this.mEngineEnding) {
                                        LogFilter.i(Camera2App.LOG_TAG, "attach thread exit. (engine is stop.)");
                                        closeSrc();
                                        return;
                                    }
                                    if (Camera2App.this.mMorphoPanoramaGP2.getAttachCount() % 5 == 0) {
                                        Camera2App.this.setInitialRotationByGravity();
                                        Camera2App.this.mIsSensorAverage = true;
                                    }
                                    Camera2App.this.setSensorFusionValue();
                                    int attach = Camera2App.this.mMorphoPanoramaGP2.attach(this.byteBuffer[0], this.byteBuffer[1], this.byteBuffer[2], this.rowStride[0], this.rowStride[1], this.rowStride[2], this.pixelStride[0], this.pixelStride[1], this.pixelStride[2], null);
                                    closeSrc();
                                    Camera2App.this.mIsInvalidDir = attach == MorphoPanoramaGP2.ERROR_INVALID_DIR;
                                    if (attach != 0) {
                                        if (!Camera2App.this.mIsInvalidDir) {
                                            LogFilter.e(Camera2App.LOG_TAG, "mMorphoPanoramaGP2.attach error ret:" + attach);
                                        }
                                        Camera2App.this.runOnUiThread(new DecideFailRunnable());
                                        return;
                                    }
                                    direction = Camera2App.this.mMorphoPanoramaGP2.getDirection();
                                    if (direction == Camera2App.this.mInitParam.direction) {
                                        continue;
                                    }
                                    int[] iArr = new int[2];
                                    int outputImageSize = Camera2App.this.mMorphoPanoramaGP2.getOutputImageSize(iArr);
                                    if (outputImageSize != 0) {
                                        LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoSensorFusion.getOutputImageSize error ret:0x%08X", Integer.valueOf(outputImageSize)));
                                    }
                                    Camera2App.this.mMaxWidth = iArr[0];
                                    Camera2App.this.mMaxHeight = iArr[1];
                                }
                                createDirection(direction);
                            }
                            if (Camera2App.this.mDirectionFunction.enabled()) {
                                finishDecideThread(captureImage);
                                return;
                            }
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                            Camera2App.this.runOnUiThread(new DecideFailRunnable());
                            return;
                        }
                        try {
                            Thread.sleep(Camera2App.SLEEP_MILLISEC, Camera2App.SLEEP_NANOSEC);
                        } catch (InterruptedException unused) {
                            // 原始 smali 的 :catch_0 直接回到迴圈頂端，例外物件未被使用
                        }
                    }
                }
                boolean z = true;
                while (true) {
                    try {
                        CaptureImage captureImage2 = (CaptureImage) Camera2App.this.mAttachImageQueue.take();
                        if (captureImage2 == Camera2App.sAttachExit) {
                            finishDecideThread(captureImage2);
                            return;
                        }
                        setImage(captureImage2);
                        synchronized (Camera2App.mSyncCancelSave) {
                            if (Camera2App.this.mIsPanoramaCancel) {
                                if (z) {
                                    String strCreateNewFilePath = Camera2App.this.createNewFilePath();
                                    if (strCreateNewFilePath != null) {
                                        int captureWidth = Camera2App.this.mMorphoCamera.cameraInfo().getCaptureWidth();
                                        int captureHeight = Camera2App.this.mMorphoCamera.cameraInfo().getCaptureHeight();
                                        double exposureTime = ((Camera2App.this.mLatestCaptureResult.getExposureTime() / 1000.0d) / 1000.0d) / 1000.0d;
                                        int isoValue = Camera2App.this.mLatestCaptureResult.getIsoValue();
                                        Location location = Camera2App.this.mSettings.isSaveLocation() ? Camera2App.this.mLocationManager.getLocation() : null;
                                        Camera2App.this.playSound(Camera2App.this.mStopSoundId);
                                        Camera2App.this.mSavePanoramaPath = saveJpeg(Camera2App.this.isSaveDestinationExternal(), Camera2App.this.getApplicationContext(), Camera2App.this.getContentResolver(), strCreateNewFilePath, captureWidth, captureHeight, Camera2App.this.mInitParam.input_format, location, exposureTime, isoValue, Camera2App.this.mCurOrientation);
                                    }
                                    Camera2App.this.runOnUiThread(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.DecideDirection.DecideDirectionAttach.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            Camera2App.this.getSavingProgressBar().setVisibility(4);
                                            if (Camera2App.this.mActive && !Camera2App.this.mSavingBackground && !Camera2App.this.mTemperatureHigh) {
                                                Camera2App.this.setViewsVisibility(0);
                                                Camera2App.this.mMorphoCamera.finishState();
                                            }
                                            if (Camera2App.this.mSavingBackground) {
                                                Camera2App.this.mMorphoCamera.cancelState();
                                                Camera2App.this.mMorphoCamera.setDefaultCameraState();
                                                Camera2App.this.mMorphoCamera.pause();
                                                Camera2App.this.mMorphoCamera.exit();
                                            }
                                            if (Camera2App.this.isEngineRunning()) {
                                                Camera2App.this.finishEngine();
                                            }
                                            Camera2App.this.mSavingBackground = false;
                                            Camera2App.this.mIsPanoramaCancel = false;
                                            if (Camera2App.this.mActive && !Camera2App.this.mTemperatureHigh) {
                                                Camera2App.this.checkRemainingMemory(false);
                                            }
                                        }
                                    });
                                    z = false;
                                }
                                closeSrc();
                                continue;
                            }
                            int direction2;
                            synchronized (CameraConstants.EngineSynchronizedObject) {
                                if (!Camera2App.this.isEngineRunning() || Camera2App.this.mEngineEnding) {
                                    LogFilter.i(Camera2App.LOG_TAG, "attach thread exit. (engine is stop.)");
                                    closeSrc();
                                    return;
                                }
                                if (Camera2App.this.mMorphoPanoramaGP2.getAttachCount() % 5 == 0) {
                                    Camera2App.this.setInitialRotationByGravity();
                                    Camera2App.this.mIsSensorAverage = true;
                                }
                                Camera2App.this.setSensorFusionValue();
                                int attach2 = Camera2App.this.mMorphoPanoramaGP2.attach(this.byteBuffer[0], this.byteBuffer[1], this.byteBuffer[2], this.rowStride[0], this.rowStride[1], this.rowStride[2], this.pixelStride[0], this.pixelStride[1], this.pixelStride[2], null);
                                closeSrc();
                                Camera2App.this.mIsInvalidDir = attach2 == MorphoPanoramaGP2.ERROR_INVALID_DIR;
                                if (attach2 != 0) {
                                    if (!Camera2App.this.mIsInvalidDir) {
                                        LogFilter.e(Camera2App.LOG_TAG, "mMorphoPanoramaGP2.attach error ret:" + attach2);
                                    }
                                    Camera2App.this.runOnUiThread(new DecideFailRunnable());
                                    return;
                                }
                                direction2 = Camera2App.this.mMorphoPanoramaGP2.getDirection();
                                if (direction2 == Camera2App.this.mInitParam.direction) {
                                    continue;
                                }
                                int[] iArr2 = new int[2];
                                int outputImageSize2 = Camera2App.this.mMorphoPanoramaGP2.getOutputImageSize(iArr2);
                                if (outputImageSize2 != 0) {
                                    LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoSensorFusion.getOutputImageSize error ret:0x%08X", Integer.valueOf(outputImageSize2)));
                                }
                                Camera2App.this.mMaxWidth = iArr2[0];
                                Camera2App.this.mMaxHeight = iArr2[1];
                            }
                            createDirection(direction2);
                        }
                        if (Camera2App.this.mDirectionFunction.enabled()) {
                            finishDecideThread(captureImage2);
                            return;
                        }
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                        Camera2App.this.runOnUiThread(new DecideFailRunnable());
                        return;
                    }
                }
            }

            // 對照 smali 的共用收尾區塊（`:cond_18`/`:goto_c`）：兩個迴圈的
            // 「取到 sAttachExit」與「方向已決定」路徑都收斂到這裡。
            private void finishDecideThread(CaptureImage captureImage) {
                if (captureImage == Camera2App.sAttachExit) {
                    LogFilter.d(Camera2App.LOG_TAG, "attach thread exit. (request exit)");
                    return;
                }
                Camera2App.this.stopCaptureTimer();
                Camera2App.this.runOnUiThread(new DecideRunnable());
            }

            private void createDirection(int i) {
                float f;
                if (Camera2App.this.mIsPanoramaCancel) {
                    return;
                }
                CameraInfo cameraInfo = Camera2App.this.mMorphoCamera.cameraInfo();
                if (Camera2App.this.mInitParam.output_rotation == 90 || Camera2App.this.mInitParam.output_rotation == 270) {
                    if (i == 3) {
                        LogFilter.i(Camera2App.LOG_TAG, "direction : VERTICAL_UP");
                        int scaleV = getScaleV();
                        if (Camera2App.this.mCameraOrientation == 90) {
                            Camera2App.this.mDirectionFunction = new RightDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleV, Camera2App.this.mInitParam.output_rotation);
                        } else {
                            Camera2App.this.mDirectionFunction = new LeftDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleV, Camera2App.this.mInitParam.output_rotation);
                        }
                    } else if (i == 4) {
                        LogFilter.i(Camera2App.LOG_TAG, "direction : VERTICAL_DOWN");
                        int scaleV2 = getScaleV();
                        if (Camera2App.this.mCameraOrientation == 90) {
                            Camera2App.this.mDirectionFunction = new LeftDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleV2, Camera2App.this.mInitParam.output_rotation);
                        } else {
                            Camera2App.this.mDirectionFunction = new RightDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleV2, Camera2App.this.mInitParam.output_rotation);
                        }
                    } else if (i == 5) {
                        LogFilter.i(Camera2App.LOG_TAG, "direction : HORIZONTAL_LEFT");
                        int scaleH = getScaleH();
                        if (Camera2App.this.mCameraOrientation == 90) {
                            Camera2App.this.mDirectionFunction = new UpDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleH, Camera2App.this.mInitParam.output_rotation);
                        } else {
                            Camera2App.this.mDirectionFunction = new DownDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleH, Camera2App.this.mInitParam.output_rotation);
                        }
                    } else if (i == 6) {
                        LogFilter.i(Camera2App.LOG_TAG, "direction : HORIZONTAL_RIGHT");
                        int scaleH2 = getScaleH();
                        if (Camera2App.this.mCameraOrientation == 90) {
                            Camera2App.this.mDirectionFunction = new DownDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleH2, Camera2App.this.mInitParam.output_rotation);
                        } else {
                            Camera2App.this.mDirectionFunction = new UpDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleH2, Camera2App.this.mInitParam.output_rotation);
                        }
                    }
                    Camera2App.this.mArrowDir = Camera2App.this.mDirectionFunction.getDirection();
                    if (Camera2App.this.mIsFrontCamera) {
                        Camera2App.this.mArrowDir = DirectionFunction.reverseDirection(Camera2App.this.mArrowDir);
                    }
                } else if (i == 3) {
                    LogFilter.i(Camera2App.LOG_TAG, "direction : VERTICAL_UP");
                    int scaleH3 = getScaleH();
                    if (Camera2App.this.mCameraOrientation == 90) {
                        Camera2App.this.mDirectionFunction = new UpDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleH3, Camera2App.this.mInitParam.output_rotation);
                        Camera2App.this.mArrowDir = 1;
                    } else {
                        Camera2App.this.mDirectionFunction = new DownDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleH3, Camera2App.this.mInitParam.output_rotation);
                        Camera2App.this.mArrowDir = 0;
                    }
                } else if (i == 4) {
                    LogFilter.i(Camera2App.LOG_TAG, "direction : VERTICAL_DOWN");
                    int scaleH4 = getScaleH();
                    if (Camera2App.this.mCameraOrientation == 90) {
                        Camera2App.this.mDirectionFunction = new DownDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleH4, Camera2App.this.mInitParam.output_rotation);
                        Camera2App.this.mArrowDir = 0;
                    } else {
                        Camera2App.this.mDirectionFunction = new UpDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleH4, Camera2App.this.mInitParam.output_rotation);
                        Camera2App.this.mArrowDir = 1;
                    }
                } else if (i == 5) {
                    LogFilter.i(Camera2App.LOG_TAG, "direction : HORIZONTAL_LEFT");
                    int scaleV3 = getScaleV();
                    if (Camera2App.this.mCameraOrientation == 90) {
                        Camera2App.this.mDirectionFunction = new LeftDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleV3, Camera2App.this.mInitParam.output_rotation);
                        Camera2App.this.mArrowDir = 2;
                    } else {
                        Camera2App.this.mDirectionFunction = new RightDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleV3, Camera2App.this.mInitParam.output_rotation);
                        Camera2App.this.mArrowDir = 3;
                    }
                } else if (i == 6) {
                    LogFilter.i(Camera2App.LOG_TAG, "direction : HORIZONTAL_RIGHT");
                    int scaleV4 = getScaleV();
                    if (Camera2App.this.mCameraOrientation == 90) {
                        Camera2App.this.mDirectionFunction = new RightDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleV4, Camera2App.this.mInitParam.output_rotation);
                        Camera2App.this.mArrowDir = 3;
                    } else {
                        Camera2App.this.mDirectionFunction = new LeftDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight, scaleV4, Camera2App.this.mInitParam.output_rotation);
                        Camera2App.this.mArrowDir = 2;
                    }
                }
                int i2 = Camera2App.this.mArrowDir;
                if (i2 != 0) {
                    f = 0.0f;
                    if (i2 != 1) {
                        if (i2 == 2) {
                            f = 270.0f;
                        } else if (i2 == 3) {
                            f = 90.0f;
                        }
                    }
                } else {
                    f = 180.0f;
                }
                Camera2App.this.mPreviewArrow.setRotation(f);
            }

            private class DecideRunnable implements Runnable {
                private DecideRunnable() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (Camera2App.this.mInternalSettings.ui_control_mode == 2) {
                        synchronized (CameraConstants.CameraSynchronizedObject) {
                            runMain();
                        }
                        return;
                    }
                    runMain();
                }

                private void runMain() {
                    synchronized (CameraConstants.EngineSynchronizedObject) {
                        if (Camera2App.this.mMorphoPanoramaGP2 == null) {
                            Camera2App.this.mMorphoCamera.cancelState();
                            Camera2App.this.mMorphoCamera.startState();
                            return;
                        }
                        if (Build.MANUFACTURER.equals("Sony")) {
                            Camera2App.this.mIsSensorAverage = false;
                            Camera2App.this.mSensorCnt = 0;
                        } else {
                            Camera2App.this.unregisterGravitySensorListener();
                        }
                        Camera2App.this.mAttachNumDirectionUndecided = Camera2App.this.mMorphoPanoramaGP2.getAttachCount();
                        boolean zIsAborted = Camera2App.this.mPanoramaState.isAborted();
                        Camera2App.this.mPanoramaState = Camera2App.this.new PanoramaPreview(zIsAborted);
                        Camera2App.this.mPanoramaState.setPanoramaStateEventListener(DecideDirection.this.listener);
                        DecideDirection.this.clearListener();
                        if (Camera2App.this.mArrowDir == 0 || Camera2App.this.mArrowDir == 3) {
                            Camera2App.this.findViewById(R.id.panoramagp2_preview_background).setBackgroundResource(R.drawable.cam_addon_panorama_progress_bar_h_icn_left);
                        } else {
                            Camera2App.this.findViewById(R.id.panoramagp2_preview_background).setBackgroundResource(R.drawable.cam_addon_panorama_progress_bar_h_icn_right);
                        }
                    }
                }
            }

            private class DecideFailRunnable implements Runnable {
                private DecideFailRunnable() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    Camera2App.this.mMorphoCamera.cancelState();
                    Camera2App.this.mMorphoCamera.startState();
                }
            }
        }

        @Override // com.sonyericsson.android.camera3d.base.PanoramaState
        public boolean onSaveImage(CaptureImage captureImage) {
            if (Camera2App.this.isEngineRunning()) {
                Camera2App.this.addAttachQueue(captureImage);
                if (this.mAttachRunnable != null) {
                    return true;
                }
                this.mAttachRunnable = new DecideDirectionAttach();
                Camera2App.this.mExecutor.submit(this.mAttachRunnable);
                return true;
            }
            LogFilter.e(Camera2App.LOG_TAG, "DecideDirection.onSaveImage mMorphoPanoramaGP2 is null!!");
            captureImage.close();
            return false;
        }

        @Override // com.sonyericsson.android.camera3d.base.PanoramaState
        public void repeatTakePicture() {
            boolean zTakePicture;
            int captureMode = Camera2App.this.mInternalSettings.getCaptureMode();
            if (captureMode == 1) {
                zTakePicture = Camera2App.this.mMorphoCamera.takePicture();
            } else if (captureMode == 2) {
                zTakePicture = Camera2App.this.mMorphoCamera.takePictureZSL();
            } else if (captureMode != 3) {
                return;
            } else {
                zTakePicture = Camera2App.this.mMorphoCamera.takePictureBurst();
            }
            if (zTakePicture) {
                return;
            }
            Camera2App.this.onErrorCapture();
        }
    }

    private class PanoramaPreview extends PanoramaState {
        private static final int PREVIEW_SKIP_FRAME_NUM = 0;
        private final PositionDetector detector;
        private PreviewAttach mAttachRunnable;
        private final float mDrawPreviewFitScale;
        private final int mPreviewHeight;
        private final int mPreviewWidth;
        private int preview_skip_count;
        private final UiUpdateRunnable uiUpdateRunnable;

        @Override // com.sonyericsson.android.camera3d.base.PanoramaState
        public boolean hasImage() {
            return true;
        }

        /* synthetic */ int access$9810() {
            int i = this.preview_skip_count;
            this.preview_skip_count = i - 1;
            return i;
        }

        private class PreviewAttach extends AttachRunnable {
            private int mResultCode;
            private boolean mIsAttachEnd = false;
            private final PostAttachRunnable postAttachRunnable = new PostAttachRunnable();
            private final PerformanceCounter pc = PerformanceCounter.newInstance(false);

            public PreviewAttach() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0 */
            /* JADX WARN: Type inference failed for: r0v1 */
            /* JADX WARN: Type inference failed for: r0v10 */
            /* JADX WARN: Type inference failed for: r0v15, types: [com.sonyericsson.android.camera3d.CaptureImage] */
            /* JADX WARN: Type inference failed for: r0v16 */
            /* JADX WARN: Type inference failed for: r0v2 */
            /* JADX WARN: Type inference failed for: r0v21, types: [com.sonyericsson.android.camera3d.CaptureImage] */
            /* JADX WARN: Type inference failed for: r0v22 */
            /* JADX WARN: Type inference failed for: r0v23 */
            /* JADX WARN: Type inference failed for: r0v24 */
            /* JADX WARN: Type inference failed for: r0v25 */
            /* JADX WARN: Type inference failed for: r0v26 */
            /* JADX WARN: Type inference failed for: r0v27 */
            /* JADX WARN: Type inference failed for: r4v0 */
            /* JADX WARN: Type inference failed for: r4v1 */
            /* JADX WARN: Type inference failed for: r4v16 */
            /* JADX WARN: Type inference failed for: r4v2 */
            /* JADX WARN: Type inference failed for: r4v24 */
            /* JADX WARN: Type inference failed for: r4v25 */
            /* JADX WARN: Type inference failed for: r4v26 */
            /* JADX WARN: Type inference failed for: r4v27 */
            /* JADX WARN: Type inference failed for: r4v28 */
            /* JADX WARN: Type inference failed for: r4v29 */
            /* JADX WARN: Type inference failed for: r4v3 */
            /* JADX WARN: Type inference failed for: r7v0, types: [com.sonyericsson.android.camera3d.Camera2App$PanoramaPreview$PreviewAttach] */
            // 對照 smali（Camera2App$PanoramaPreview$PreviewAttach.run()）手動重建：
            // 原本 jadx 把兩段完全不同涵蓋範圍的 try/catch(InterruptedException)
            // （smali :catch_2 只包住 mAttachImageQueue.take() 呼叫本身；:catch_1
            // 包住 take() 之後、直到 postAttachRunnable 送出為止的其餘處理）
            // 硬併成「外層 try 整個包住內層 try」的巢狀結構，導致外層 catch
            // 變成永遠不可達（內層已經把所有 InterruptedException 攔截光）。
            // 也因為 v0/v4 暫存器在不同分支承載不同型別，jadx 直接放棄推斷型別。
            //
            // 這裡改成每輪迴圈各自用兩段獨立 try/catch 對應 smali 的兩個 catch
            // range，並把方法尾端「檢查 mAbort / r0==sAttachExit / 呼叫
            // attachEnd()」的收尾邏輯抽成 finishAttachThread()，讓兩種例外情境
            // 都能各自帶正確的「新 r0 值」呼叫收尾、不必用 goto。
            //
            // r0/r4 語意（對照 smali v0/v4）：
            // - r0：目前處理中的圖片（或收尾時代表「這輪是否等於 sAttachExit」
            //   的比較對象），只在方法尾端用參照比較，用 Object 就不需要轉型。
            // - r4：緊跟在每次 take() 成功之後就被重設為 sAttachExit
            //   （在該次迭代其餘處理中途都不會再被動到，直到下一次 take()
            //   之前），所以「在 take() 呼叫當下 r4 的值」等價於
            //   「若非第一次呼叫 take()，恆為 sAttachExit；第一次呼叫則為
            //   初始值 null」——因此 :catch_2（take() 被中斷）可以直接把
            //   目前的 r4 當作新的 r0 傳給收尾。
            @Override // java.lang.Runnable
            public void run() {
                double[] dArr = new double[2];
                if (Camera2App.this.mInternalSettings.ui_control_mode != 2) {
                    Object r4 = null;
                    while (true) {
                        CaptureImage r1;
                        try {
                            r1 = (CaptureImage) Camera2App.this.mAttachImageQueue.take();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                            this.mResultCode = -1;
                            finishAttachThread(r4);
                            return;
                        }
                        CaptureImage captureImage = Camera2App.sAttachExit;
                        Object r0 = r1;
                        r4 = captureImage;
                        if (r1 == captureImage) {
                            finishAttachThread(r0);
                            return;
                        }
                        // 注意：smali 這裡對應到 :catch_1（InterruptedException），
                        // 但 setImage()/attach()/closeSrc()/checkAttachEnd()/
                        // runOnUiThread() 都不會拋出 InterruptedException——這是
                        // 原始位元碼裡就不可達的保留 catch 區塊（同一類「恆假」
                        // catch table，dex 驗證器不像 javac 會檢查可達性），
                        // 拿掉不影響行為。
                        setImage(r1);
                        synchronized (CameraConstants.EngineSynchronizedObject) {
                            if (Camera2App.this.isEngineRunning() && !Camera2App.this.mEngineEnding) {
                                boolean zAttach = attach(dArr);
                                closeSrc();
                                if (zAttach) {
                                    if (PanoramaPreview.this.preview_skip_count <= 0) {
                                        PanoramaPreview.this.createPreviewImage(this.pc);
                                        PanoramaPreview.this.preview_skip_count = 0;
                                    } else {
                                        PanoramaPreview.this.access$9810();
                                    }
                                    checkAttachEnd(dArr);
                                    if (this.mIsAttachEnd) {
                                        finishAttachThread(r1);
                                        return;
                                    }
                                    Camera2App.this.runOnUiThread(this.postAttachRunnable);
                                } else {
                                    LogFilter.e(Camera2App.LOG_TAG, "PreviewAttach.run() attach error.");
                                    this.mResultCode = -1;
                                    finishAttachThread(r1);
                                    return;
                                }
                            } else {
                                LogFilter.d(Camera2App.LOG_TAG, "attach thread exit. (engine is stop.)");
                                closeSrc();
                                return;
                            }
                        }
                    }
                }
                Object r4b = null;
                while (true) {
                    CaptureImage r1b;
                    try {
                        r1b = (CaptureImage) Camera2App.this.mAttachImageQueue.take();
                    } catch (InterruptedException e3) {
                        e3.printStackTrace();
                        this.mResultCode = -1;
                        finishAttachThread(r4b);
                        return;
                    }
                    CaptureImage captureImage2 = Camera2App.sAttachExit;
                    Object r0b = r1b;
                    r4b = captureImage2;
                    if (r1b == captureImage2) {
                        finishAttachThread(r0b);
                        return;
                    }
                    // 同上，這裡也拿掉不可達的外層 InterruptedException catch
                    // （Thread.sleep() 那個內層 try/catch 才是真的會拋出的地方，保留）。
                    setImage(r1b);
                    synchronized (CameraConstants.CameraSynchronizedObject) {
                        synchronized (CameraConstants.EngineSynchronizedObject) {
                            if (Camera2App.this.isEngineRunning() && !Camera2App.this.mEngineEnding) {
                                boolean zAttach2 = attach(dArr);
                                closeSrc();
                                if (zAttach2) {
                                    if (PanoramaPreview.this.preview_skip_count <= 0) {
                                        PanoramaPreview.this.createPreviewImage(this.pc);
                                        PanoramaPreview.this.preview_skip_count = 0;
                                    } else {
                                        PanoramaPreview.this.access$9810();
                                    }
                                    checkAttachEnd(dArr);
                                    if (this.mIsAttachEnd) {
                                        finishAttachThread(r1b);
                                        return;
                                    }
                                    Camera2App.this.runOnUiThread(this.postAttachRunnable);
                                    try {
                                        Thread.sleep(Camera2App.SLEEP_MILLISEC, Camera2App.SLEEP_NANOSEC);
                                    } catch (InterruptedException unused) {
                                    }
                                } else {
                                    LogFilter.e(Camera2App.LOG_TAG, "PreviewAttach.run() attach error.");
                                    this.mResultCode = -1;
                                    finishAttachThread(r1b);
                                    return;
                                }
                            } else {
                                LogFilter.d(Camera2App.LOG_TAG, "attach thread exit. (engine is stop.)");
                                closeSrc();
                                return;
                            }
                        }
                    }
                }
            }

            private void finishAttachThread(Object r0) {
                if (!PanoramaPreview.this.mAbort) {
                    if (r0 == Camera2App.sAttachExit) {
                        LogFilter.d(Camera2App.LOG_TAG, "attach thread exit. (request exit)");
                        return;
                    }
                    final int i = this.mResultCode;
                    Camera2App.this.runOnUiThread(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.PanoramaPreview.PreviewAttach.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PanoramaPreview.this.attachEnd(i);
                        }
                    });
                    LogFilter.d(Camera2App.LOG_TAG, "attach thread exit.");
                    return;
                }
                LogFilter.d(Camera2App.LOG_TAG, "attach thread exit. (abort)");
                Camera2App.this.onAttachEnd();
                Camera2App.SAVE_TASK_EXECUTOR.execute(new SaveTask(Camera2App.this.new SavePictureState(false)));
            }

            private class PostAttachRunnable implements Runnable {
                private PostAttachRunnable() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (Camera2App.this.mInternalSettings.ui_control_mode != 2) {
                        synchronized (Camera2App.PreviewImageSynchronizedObject) {
                            if (Camera2App.this.mPreviewBitmap == null) {
                                Camera2App.this.setAttachExit();
                                return;
                            }
                            if (Camera2App.this.mPreviewFitBitmap != null) {
                                Camera2App.this.mPreviewImageView.setImageBitmap(Camera2App.this.mPreviewFitBitmap);
                            } else {
                                Camera2App.this.mPreviewImageView.setImageBitmap(Camera2App.this.mPreviewBitmap);
                            }
                            return;
                        }
                    }
                    synchronized (CameraConstants.CameraSynchronizedObject) {
                        synchronized (Camera2App.PreviewImageSynchronizedObject) {
                            if (Camera2App.this.mPreviewBitmap == null) {
                                Camera2App.this.setAttachExit();
                                return;
                            }
                            if (Camera2App.this.mPreviewFitBitmap != null) {
                                Camera2App.this.mPreviewImageView.setImageBitmap(Camera2App.this.mPreviewFitBitmap);
                            } else {
                                Camera2App.this.mPreviewImageView.setImageBitmap(Camera2App.this.mPreviewBitmap);
                            }
                        }
                    }
                }
            }

            private boolean attach(double[] dArr) {
                Camera2App.this.setSensorFusionValue();
                this.pc.start();
                int iAttach = Camera2App.this.mMorphoPanoramaGP2.attach(this.byteBuffer[0], this.byteBuffer[1], this.byteBuffer[2], this.rowStride[0], this.rowStride[1], this.rowStride[2], this.pixelStride[0], this.pixelStride[1], this.pixelStride[2], dArr);
                this.pc.stop();
                this.pc.putLog(Camera2App.LOG_TAG, "mMorphoPanoramaGP2.attach");
                if (iAttach == 0) {
                    return true;
                }
                LogFilter.e(Camera2App.LOG_TAG, "mMorphoPanoramaGP2.attach error ret:" + iAttach);
                return false;
            }

            private void checkAttachEnd(double[] dArr) {
                int iDetect = PanoramaPreview.this.detector.detect(dArr[0], dArr[1]);
                if (iDetect == -2 || iDetect == -1 || iDetect == 1) {
                    this.mResultCode = 0;
                    this.mIsAttachEnd = true;
                }
                PanoramaPreview.this.uiUpdateRunnable.setDetectResult(iDetect);
                Camera2App.this.runOnUiThread(PanoramaPreview.this.uiUpdateRunnable);
                if (!this.mIsAttachEnd && Camera2App.this.mDirectionFunction.isImageComplete()) {
                    this.mResultCode = 0;
                    this.mIsAttachEnd = true;
                }
            }
        }

        private class UiUpdateRunnable implements Runnable {
            private int mDetectResult;

            private UiUpdateRunnable() {
            }

            public void setDetectResult(int i) {
                this.mDetectResult = i;
            }

            // 對照 smali（Camera2App$PanoramaPreview$UiUpdateRunnable.run()）手動重建
            // 方法尾端的 mArrowDir switch：jadx 把「i2==0（未知方向以外的預設值）」
            // 分支的計算與 mPreviewArrow.setTranslationX/Y() 呼叫誤判成方法結尾
            // 一段「無條件」執行的收尾程式碼，同時把它跟「i2 != 0」整個 if 區塊
            // 分開重複render 了一次；又在 i2==1 分支裡漏掉套用高度差到
            // previewCenteringMarginTop（算出 fHeight/height 後沒有使用）。
            // 對照 smali 的 :goto_5/:goto_2/:goto_6 全部共用同一份收尾，且
            // mPreviewArrow 的 setTranslationX/Y 全程式只呼叫一次（在 switch 之後、
            // 涵蓋全部 4 個分支）。以下改成單一 if/else-if 鏈 + 一次收尾呼叫。
            @Override // java.lang.Runnable
            public void run() {
                String string;
                if (Camera2App.this.mTemperatureHigh) {
                    return;
                }
                int i = this.mDetectResult;
                if (i == -2 || i == -1 || i == 1) {
                    string = Camera2App.this.getResources().getString(R.string.cam_strings_panorama_guide_direction_txt);
                } else if (i == 2) {
                    string = Camera2App.this.getResources().getString(R.string.cam_strings_panorama_guide_too_fast_txt);
                } else if (i == 3) {
                    string = Camera2App.this.getResources().getString(R.string.cam_strings_panorama_guide_direction_txt);
                } else {
                    string = Camera2App.this.getResources().getString(R.string.cam_strings_panorama_guide_direction_txt);
                }
                RectF frameRect = PanoramaPreview.this.detector.getFrameRect();
                int width = Camera2App.this.mWarningTextView.getWidth();
                int height2 = Camera2App.this.mWarningTextView.getHeight();
                Camera2App.this.mWarningTextView.setText(string);
                Camera2App.this.mWarningTextView.setContentDescription(string);
                if (!Camera2App.this.isEngineRunning() || width <= 0 || height2 <= 0) {
                    Camera2App.this.mWarningTextView.setVisibility(4);
                } else {
                    Camera2App.this.mWarningTextView.setVisibility(0);
                }
                if (Camera2App.this.mCurPreviewFrame.getVisibility() != 0 && frameRect.width() > 0.0f) {
                    Camera2App.this.mCurPreviewFrame.setLayoutParams(new RelativeLayout.LayoutParams(Math.round(frameRect.width()), Math.round(frameRect.height())));
                    Camera2App.this.mCurPreviewFrame.setVisibility(0);
                    Camera2App.this.mPreviewArrow.setVisibility(0);
                    Camera2App.this.setMiniPreviewAndArrowsVisibility(false, false);
                }
                float fWidth2 = frameRect.left;
                float previewCenteringMarginTop = frameRect.top;
                if (Camera2App.PREVIEW_SPREAD_BOTH_SIDES) {
                    fWidth2 += PanoramaPreview.this.detector.getPreviewCenteringMarginLeft();
                    previewCenteringMarginTop += PanoramaPreview.this.detector.getPreviewCenteringMarginTop();
                    if (Camera2App.this.mPreviewImageView != null && Camera2App.this.mPreviewImageView.getWidth() > 0) {
                        Camera2App.this.mPreviewImageView.setTranslationX(PanoramaPreview.this.detector.getPreviewCenteringMarginLeft());
                        Camera2App.this.mPreviewImageView.setTranslationY(PanoramaPreview.this.detector.getPreviewCenteringMarginTop());
                    }
                }
                boolean z = Camera2App.this.getResources().getConfiguration().getLayoutDirection() == 1;
                if (z) {
                    fWidth2 = (fWidth2 - Util.getDisplayRectSize(Camera2App.this.getBaseContext()).width()) + frameRect.width();
                }
                Camera2App.this.mCurPreviewFrame.setTranslationX(fWidth2);
                Camera2App.this.mCurPreviewFrame.setTranslationY(previewCenteringMarginTop);
                if (Camera2App.this.mMorphoPanoramaGP2 == null) {
                    return;
                }
                int i2 = Camera2App.this.mArrowDir;
                if (i2 == 0) {
                    float f = z ? -frameRect.width() : -Camera2App.this.mPreviewArrow.getWidth();
                    fWidth2 += f;
                    previewCenteringMarginTop += (frameRect.height() - Camera2App.this.mPreviewArrow.getHeight()) / 2.0f;
                } else if (i2 == 1) {
                    float fWidth = z ? Camera2App.this.mPreviewArrow.getWidth() : frameRect.width();
                    fWidth2 += fWidth;
                    previewCenteringMarginTop += (frameRect.height() - Camera2App.this.mPreviewArrow.getHeight()) / 2.0f;
                } else if (i2 == 2) {
                    fWidth2 += (frameRect.width() - Camera2App.this.mPreviewArrow.getWidth()) / 2.0f;
                    previewCenteringMarginTop += -Camera2App.this.mPreviewArrow.getHeight();
                } else if (i2 == 3) {
                    fWidth2 += (frameRect.width() - Camera2App.this.mPreviewArrow.getWidth()) / 2.0f;
                    previewCenteringMarginTop += frameRect.height();
                }
                Camera2App.this.mPreviewArrow.setTranslationX(fWidth2);
                Camera2App.this.mPreviewArrow.setTranslationY(previewCenteringMarginTop);
            }
        }

        private class DiffManager {
            private static final int NUM = 5;
            private int add_num;
            private double ave;
            private int index;
            private final double[] pos = new double[5];

            public DiffManager() {
                clear();
            }

            public void clear() {
                for (int i = 0; i < 5; i++) {
                    this.pos[i] = 0.0d;
                }
                this.index = 0;
                this.add_num = 0;
            }

            public void add(double d) {
                double[] dArr = this.pos;
                int i = this.index;
                dArr[i] = d;
                int i2 = i + 1;
                this.index = i2;
                if (i2 >= 5) {
                    this.index = 0;
                }
                int i3 = this.add_num;
                if (i3 < 5) {
                    this.add_num = i3 + 1;
                }
                calc();
            }

            private void calc() {
                double d = 0.0d;
                int i = 0;
                while (true) {
                    int i2 = this.add_num;
                    if (i < i2) {
                        d += this.pos[i];
                        i++;
                    } else {
                        this.ave = d / ((double) i2);
                        return;
                    }
                }
            }

            public double getDiff() {
                return this.ave;
            }
        }

        private class PositionDetector {
            private static final int CENTERING_MARGIN_DEFAULT = -99999;
            public static final int COMPLETED = 1;
            public static final int ERROR_IDLE = -1;
            public static final int ERROR_REVERSE = -2;
            private static final int IDLE_THRES_RATIO = 2;
            private static final long IDLE_TIME = 3000000000L;
            public static final int OK = 0;
            private static final int REVERSE_THRES_RATIO = 1;
            private static final long REVERSE_TIME = 200000000;
            private static final int SPEED_CHECK_CONTINUOUSLY_TIMES = 5;
            private static final int SPEED_CHECK_IGNORE_TIMES = 15;
            private static final int SPEED_CHECK_MODE = 1;
            private static final int SPEED_CHECK_MODE_AVERAGE = 1;
            private static final int SPEED_CHECK_MODE_CONTINUOUSLY = 0;
            private static final double TOO_FAST_THRES_RATIO = 0.8d;
            private static final double TOO_SLOW_THRES_RATIO = 0.1d;
            private static final double TV_ANALYSIS_THRES_RATIO = 0.2d;
            public static final int WARNING_TOO_FAST = 2;
            public static final int WARNING_TOO_SLOW = 3;
            private double base_x;
            private double base_y;
            private final int direction;
            private long idle_start_time;
            private double idle_thres;
            private final DiffManager mDiffManager;
            private final int output_height;
            private final int output_width;
            private double peak;
            private long reverse_start_time;
            private double reverse_thres;
            private double reverse_thres2;
            private double too_fast_thres;
            private double too_slow_thres;
            private final double tv_analysis_thres;
            private volatile double tv_analyzed_pos;
            private RectF idle_rect = null;
            private final RectF frame_rect = new RectF();
            private Rect preview_rect = null;
            private long count = 0;
            private boolean reset_idle_timer = true;
            private boolean pre_is_reverse = false;
            private int too_fast_count = 0;
            private int too_slow_count = 0;
            private double prev_y = 0.0d;
            private double prev_x = 0.0d;
            private volatile double cur_y = 0.0d;
            private volatile double cur_x = 0.0d;
            private int centering_margin_top = CENTERING_MARGIN_DEFAULT;
            private int centering_margin_left = CENTERING_MARGIN_DEFAULT;

            // 對照 smali 建構子：i 不等於 0/1/2/3（未知方向）時，:goto_9 直接把
            // tv_analysis_thres 設成常數 0.0，不會走 d*0.002 那條計算路徑。
            // 這裡讓 d 預設 0.0d、只有合法的 0/1/2/3 分支才會覆寫它，最後統一
            // 用 `d * 0.002d` 收尾——因為 0.0 * 0.002 == 0.0，兩種路徑殊途同歸，
            // 不需要額外的旗標變數就能同時滿足 final 欄位只能指派一次的限制。
            public PositionDetector(int i, int i2, int i3) {
                double d = 0.0d;
                this.mDiffManager = PanoramaPreview.this.new DiffManager();
                this.direction = i;
                this.output_width = i2;
                this.output_height = i3;
                if (i == 0) {
                    if ((Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 90 || (Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 180) {
                        this.peak = i2;
                    } else {
                        this.peak = 0.0d;
                    }
                    float f = i2;
                    this.reverse_thres = f * 0.01f;
                    this.reverse_thres2 = 0.7f * f;
                    this.idle_thres = f * 0.02f;
                    d = i2;
                    this.too_slow_thres = 0.001d * d;
                    this.too_fast_thres = 0.008d * d;
                } else if (i == 1) {
                    if ((Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 90 || (Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 180) {
                        this.peak = 0.0d;
                    } else {
                        this.peak = i2;
                    }
                    float f2 = i2;
                    this.reverse_thres = f2 * 0.01f;
                    this.reverse_thres2 = 0.7f * f2;
                    this.idle_thres = f2 * 0.02f;
                    d = i2;
                    this.too_slow_thres = 0.001d * d;
                    this.too_fast_thres = 0.008d * d;
                } else if (i == 2) {
                    if ((Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 90 || (Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 180) {
                        this.peak = i3;
                    } else {
                        this.peak = 0.0d;
                    }
                    float f3 = i3;
                    this.reverse_thres = f3 * 0.01f;
                    this.reverse_thres2 = 0.7f * f3;
                    this.idle_thres = f3 * 0.02f;
                    d = i3;
                    this.too_slow_thres = 0.001d * d;
                    this.too_fast_thres = 0.008d * d;
                } else if (i == 3) {
                    if ((Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 90 || (Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 180) {
                        this.peak = 0.0d;
                    } else {
                        this.peak = i3;
                    }
                    float f4 = i3;
                    this.reverse_thres = f4 * 0.01f;
                    this.reverse_thres2 = 0.7f * f4;
                    this.idle_thres = f4 * 0.02f;
                    d = i3;
                    this.too_slow_thres = 0.001d * d;
                    this.too_fast_thres = 0.008d * d;
                }
                this.tv_analysis_thres = d * 0.002d;
                this.tv_analyzed_pos = this.peak;
            }

            public int detect(double d, double d2) {
                this.count++;
                if (this.cur_x == 0.0d && this.prev_x == 0.0d) {
                    this.base_x = d;
                    this.prev_x = d;
                    this.cur_x = d;
                } else {
                    this.prev_x = this.cur_x;
                    this.cur_x = d;
                }
                if (this.cur_y == 0.0d && this.prev_y == 0.0d) {
                    this.base_y = d2;
                    this.prev_y = d2;
                    this.cur_y = d2;
                } else {
                    this.prev_y = this.cur_y;
                    this.cur_y = d2;
                }
                if (isReverse()) {
                    return -2;
                }
                if (isComplete()) {
                    return 1;
                }
                if (isIdle()) {
                    return -1;
                }
                int iCheckSpeed = checkSpeed();
                if (updateFrame()) {
                    return iCheckSpeed;
                }
                return -2;
            }

            public int getPreviewCenteringMarginLeft() {
                return this.centering_margin_left;
            }

            public int getPreviewCenteringMarginTop() {
                return this.centering_margin_top;
            }

            public RectF getFrameRect() {
                return this.frame_rect;
            }

            public boolean isEnableTvAnalysis() {
                if (Camera2App.this.mInternalSettings.ui_control_mode != 1) {
                    if (Camera2App.this.mInternalSettings.ui_control_mode == 2) {
                        synchronized (CameraConstants.CameraSynchronizedObject) {
                            int i = this.direction;
                            if (i != 2 && i != 3) {
                                return Math.abs(this.cur_x - this.tv_analyzed_pos) > this.tv_analysis_thres;
                            }
                            return Math.abs(this.cur_y - this.tv_analyzed_pos) > this.tv_analysis_thres;
                        }
                    }
                    synchronized (CameraConstants.EngineSynchronizedObject) {
                        int i2 = this.direction;
                        if (i2 != 2 && i2 != 3) {
                            return Math.abs(this.cur_x - this.tv_analyzed_pos) > this.tv_analysis_thres;
                        }
                        return Math.abs(this.cur_y - this.tv_analyzed_pos) > this.tv_analysis_thres;
                    }
                }
                int i3 = this.direction;
                if (i3 == 2 || i3 == 3) {
                    return Math.abs(this.cur_y - this.tv_analyzed_pos) > this.tv_analysis_thres;
                }
                return Math.abs(this.cur_x - this.tv_analyzed_pos) > this.tv_analysis_thres;
            }

            public void notifyTvAnalyzed() {
                double d;
                int i = this.direction;
                if (i != 2 && i != 3) {
                    d = this.cur_x;
                } else {
                    d = this.cur_y;
                }
                this.tv_analyzed_pos = d;
            }

            /* JADX WARN: Code duplicated, block: B:134:0x04f9  */
            /* JADX WARN: Code duplicated, block: B:163:0x064e  */
            /* JADX WARN: Code duplicated, block: B:60:0x01fc A[PHI: r16
              0x01fc: PHI (r16v5 int) = (r16v4 int), (r4v1 int) binds: [B:58:0x01f6, B:51:0x01ad] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:90:0x0358  */
            private boolean updateFrame() {
                float f;
                float f2;
                float f3;
                float f4;
                float f5;
                float fHeight;
                float fWidth;
                float f6;
                int i;
                float f7;
                float f8;
                float f9;
                int i2;
                int i3;
                float f10;
                float f11;
                float f12;
                int i4;
                float f13;
                float f14;
                float f15;
                float f16;
                int i5;
                int i6;
                if (Camera2App.this.mPreviewBitmap == null) {
                    return true;
                }
                if (this.preview_rect == null) {
                    this.preview_rect = new Rect();
                    Camera2App.this.mPreviewFrame.getGlobalVisibleRect(this.preview_rect);
                    if (this.preview_rect.width() <= 0) {
                        this.preview_rect = null;
                        return true;
                    }
                    if (this.preview_rect.width() == this.preview_rect.height()) {
                        return false;
                    }
                }
                int i7 = this.preview_rect.left;
                int i8 = this.preview_rect.top;
                if (Camera2App.this.mInitParam.output_rotation == 0 || Camera2App.this.mInitParam.output_rotation == 180) {
                    i8 = i8;
                    // 對照 smali（PositionDetector.updateFrame() 的 :cond_18/:goto_c 區塊，
                    // :cond_1b→`if-ne v2, v3(=90), :cond_19`）：條件「不等於 90」才跳到
                    // :cond_19 把旗標設成 0，也就是「等於 90」時旗標為 1。jadx 把整個
                    // 判斷式的正負號反了，前置鏡頭那條也一樣多了一個 `!`。
                    boolean z = !Camera2App.this.mIsFrontCamera ? (Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 90 : ((i3 = (Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360) == 90 || i3 == 270);
                    int i9 = this.direction;
                    if (i9 != 2 && i9 != 3) {
                        if (z) {
                            f7 = ((this.output_height - ((float) this.cur_y)) - ((Camera2App.this.mInitParam.input_height * 0.0f) / 2.0f)) - ((this.output_height - Camera2App.this.mInitParam.input_height) / 2.0f);
                            f8 = (float) this.cur_x;
                        } else {
                            f7 = ((float) this.cur_y) - ((Camera2App.this.mInitParam.input_height * 0.0f) / 2.0f);
                            f8 = this.output_width - ((float) this.cur_x);
                        }
                        int i10 = this.output_height;
                        float f17 = (i10 * 0.0f) / 2.0f;
                        float f18 = (i10 * Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO) / 2.0f;
                        float f19 = (((float) i10) / ((float) Camera2App.this.mInitParam.input_height)) * f7;
                        if (f17 < Math.abs(f18 - f19)) {
                            f9 = f19 < f18 ? f7 + ((Camera2App.this.mInitParam.input_height * 0.0f) / 2.0f) : f7 - ((Camera2App.this.mInitParam.input_height * 0.0f) / 2.0f);
                        } else {
                            f9 = (Camera2App.this.mInitParam.input_height * Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO) / 2.0f;
                        }
                        float fHeight2 = ((float) this.preview_rect.height()) / ((float) this.output_width);
                        float f20 = (Camera2App.this.mInitParam.input_width / 2.0f) * fHeight2;
                        float fWidth2 = this.preview_rect.width() / 2.0f;
                        float f21 = f9 * fHeight2;
                        float f22 = f8 * fHeight2;
                        if (Camera2App.PREVIEW_SPREAD_BOTH_SIDES) {
                            if (this.direction == 1) {
                                if (z) {
                                    this.centering_margin_top = (int) Math.round(((((double) this.output_width) - (this.peak + ((double) (Camera2App.this.mInitParam.input_width / 2.0f)))) * ((double) fHeight2)) / 2.0d);
                                } else {
                                    this.centering_margin_top = (int) Math.round(((this.peak - ((double) (Camera2App.this.mInitParam.input_width / 2.0f))) * ((double) fHeight2)) / 2.0d);
                                }
                                if (this.centering_margin_top < 0) {
                                    i2 = 0;
                                    this.centering_margin_top = 0;
                                } else {
                                    i2 = 0;
                                }
                            } else {
                                if (z) {
                                    this.centering_margin_top = -((int) Math.round(((this.peak - ((double) (Camera2App.this.mInitParam.input_width / 2.0f))) * ((double) fHeight2)) / 2.0d));
                                } else {
                                    this.centering_margin_top = -((int) Math.round(((((double) this.output_width) - (this.peak + ((double) (Camera2App.this.mInitParam.input_width / 2.0f)))) * ((double) fHeight2)) / 2.0d));
                                }
                                if (this.centering_margin_top > 0) {
                                    i2 = 0;
                                    this.centering_margin_top = 0;
                                } else {
                                    i2 = 0;
                                }
                            }
                            this.centering_margin_left = i2;
                        }
                        fHeight = f20;
                        fWidth = fWidth2;
                        f6 = f21;
                        f5 = f22;
                    } else {
                        if (z) {
                            f = this.output_height - ((float) this.cur_y);
                            f2 = ((float) this.cur_x) - ((Camera2App.this.mInitParam.input_width * 0.0f) / 2.0f);
                            f3 = this.output_width - Camera2App.this.mInitParam.input_width;
                        } else {
                            f = (float) this.cur_y;
                            f2 = this.output_width - ((float) this.cur_x);
                            f3 = Camera2App.this.mInitParam.input_width * 0.0f;
                        }
                        float f23 = f2 - (f3 / 2.0f);
                        int i11 = this.output_width;
                        float f24 = (i11 * 0.0f) / 2.0f;
                        float f25 = (i11 * Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO) / 2.0f;
                        float f26 = (((float) i11) / ((float) Camera2App.this.mInitParam.input_width)) * f23;
                        if (f24 < Math.abs(f25 - f26)) {
                            f4 = f26 < f25 ? f23 + ((Camera2App.this.mInitParam.input_width * 0.0f) / 2.0f) : f23 - ((Camera2App.this.mInitParam.input_width * 0.0f) / 2.0f);
                        } else {
                            f4 = (Camera2App.this.mInitParam.input_width * Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO) / 2.0f;
                        }
                        float fWidth3 = ((float) this.preview_rect.width()) / ((float) this.output_height);
                        float f27 = (Camera2App.this.mInitParam.input_height / 2.0f) * fWidth3;
                        float fHeight3 = this.preview_rect.height() / 2.0f;
                        float f28 = f * fWidth3;
                        float f29 = f4 * fWidth3;
                        if (Camera2App.PREVIEW_SPREAD_BOTH_SIDES) {
                            if (this.direction == 2) {
                                if (z) {
                                    this.centering_margin_left = (int) Math.round(((this.peak - ((double) (Camera2App.this.mInitParam.input_height / 2.0f))) * ((double) fWidth3)) / 2.0d);
                                } else {
                                    this.centering_margin_left = (int) Math.round(((((double) this.output_height) - (this.peak + ((double) (Camera2App.this.mInitParam.input_height / 2.0f)))) * ((double) fWidth3)) / 2.0d);
                                }
                                if (this.centering_margin_left < 0) {
                                    i = 0;
                                    this.centering_margin_left = 0;
                                } else {
                                    i = 0;
                                }
                            } else {
                                if (z) {
                                    this.centering_margin_left = -((int) Math.round(((((double) this.output_height) - (this.peak + ((double) (Camera2App.this.mInitParam.input_height / 2.0f)))) * ((double) fWidth3)) / 2.0d));
                                } else {
                                    this.centering_margin_left = -((int) Math.round(((this.peak - ((double) (Camera2App.this.mInitParam.input_height / 2.0f))) * ((double) fWidth3)) / 2.0d));
                                }
                                if (this.centering_margin_left > 0) {
                                    i = 0;
                                    this.centering_margin_left = 0;
                                } else {
                                    i = 0;
                                }
                            }
                            this.centering_margin_top = i;
                        }
                        f5 = f29;
                        fHeight = fHeight3;
                        fWidth = f27;
                        f6 = f28;
                    }
                } else {
                    // 同上，對照 smali 的 :cond_3 區塊（:cond_6→`if-ne v5, v13(=180), :cond_4`）：
                    // 「等於 180」時旗標才為 1，jadx 同樣把正負號反了。
                    boolean z2 = !Camera2App.this.mIsFrontCamera ? (Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 180 : ((i6 = (Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360) == 180 || i6 == 0);
                    int i12 = this.direction;
                    if (i12 != 2 && i12 != 3) {
                        if (z2) {
                            f13 = (float) this.cur_x;
                            float f30 = (float) this.cur_y;
                            int i13 = this.output_height;
                            f14 = f30 - ((i13 * 0.0f) / 2.0f);
                            f15 = i13 - Camera2App.this.mInitParam.input_width;
                        } else {
                            f13 = this.output_width - ((float) this.cur_x);
                            f14 = this.output_height - ((float) this.cur_y);
                            f15 = Camera2App.this.mInitParam.input_width * 0.0f;
                        }
                        float f31 = f14 - (f15 / 2.0f);
                        int i14 = this.output_height;
                        float f32 = (i14 * 0.0f) / 2.0f;
                        float f33 = (i14 * Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO) / 2.0f;
                        float f34 = (((float) i14) / ((float) Camera2App.this.mInitParam.input_width)) * f31;
                        if (f32 < Math.abs(f33 - f34)) {
                            f16 = f34 < f33 ? f31 + ((Camera2App.this.mInitParam.input_width * 0.0f) / 2.0f) : f31 - ((Camera2App.this.mInitParam.input_width * 0.0f) / 2.0f);
                        } else {
                            f16 = (Camera2App.this.mInitParam.input_width * Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO) / 2.0f;
                        }
                        float fWidth4 = ((float) this.preview_rect.width()) / ((float) this.output_width);
                        fWidth = (Camera2App.this.mInitParam.input_height / 2.0f) * fWidth4;
                        fHeight = this.preview_rect.height() / 2.0f;
                        f6 = f13 * fWidth4;
                        f5 = f16 * fWidth4;
                        if (Camera2App.PREVIEW_SPREAD_BOTH_SIDES) {
                            if (this.direction == 0) {
                                if (z2) {
                                    this.centering_margin_left = -((int) Math.round(((this.peak - ((double) (Camera2App.this.mInitParam.input_height / 2.0f))) * ((double) fWidth4)) / 2.0d));
                                } else {
                                    this.centering_margin_left = -((int) Math.round(((((double) this.output_width) - (this.peak + ((double) (Camera2App.this.mInitParam.input_height / 2.0f)))) * ((double) fWidth4)) / 2.0d));
                                }
                                if (this.centering_margin_left > 0) {
                                    i5 = 0;
                                    this.centering_margin_left = 0;
                                } else {
                                    i5 = 0;
                                }
                            } else {
                                i8 = i8;
                                if (z2) {
                                    this.centering_margin_left = (int) Math.round(((((double) this.output_width) - (this.peak + ((double) (Camera2App.this.mInitParam.input_height / 2.0f)))) * ((double) fWidth4)) / 2.0d);
                                } else {
                                    this.centering_margin_left = (int) Math.round(((this.peak - ((double) (Camera2App.this.mInitParam.input_height / 2.0f))) * ((double) fWidth4)) / 2.0d);
                                }
                                if (this.centering_margin_left < 0) {
                                    i5 = 0;
                                    this.centering_margin_left = 0;
                                } else {
                                    i5 = 0;
                                }
                            }
                            this.centering_margin_top = i5;
                        } else {
                            i8 = i8;
                        }
                    } else {
                        i8 = i8;
                        if (z2) {
                            f10 = (((float) this.cur_x) - ((Camera2App.this.mInitParam.input_height * 0.0f) / 2.0f)) - ((this.output_width - Camera2App.this.mInitParam.input_height) / 2.0f);
                            f11 = (float) this.cur_y;
                        } else {
                            f10 = (this.output_width - ((float) this.cur_x)) - ((Camera2App.this.mInitParam.input_height * 0.0f) / 2.0f);
                            f11 = this.output_height - ((float) this.cur_y);
                        }
                        int i15 = this.output_width;
                        float f35 = (i15 * 0.0f) / 2.0f;
                        float f36 = (i15 * Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO) / 2.0f;
                        float f37 = (((float) i15) / ((float) Camera2App.this.mInitParam.input_height)) * f10;
                        if (f35 < Math.abs(f36 - f37)) {
                            f12 = f37 < f36 ? f10 + ((Camera2App.this.mInitParam.input_height * 0.0f) / 2.0f) : f10 - ((Camera2App.this.mInitParam.input_height * 0.0f) / 2.0f);
                        } else {
                            f12 = (Camera2App.this.mInitParam.input_height * Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO) / 2.0f;
                        }
                        float fHeight4 = ((float) this.preview_rect.height()) / ((float) this.output_height);
                        fHeight = (Camera2App.this.mInitParam.input_width / 2.0f) * fHeight4;
                        fWidth = this.preview_rect.width() / 2.0f;
                        float f38 = f12 * fHeight4;
                        f5 = f11 * fHeight4;
                        if (Camera2App.PREVIEW_SPREAD_BOTH_SIDES) {
                            if (this.direction == 3) {
                                if (z2) {
                                    this.centering_margin_top = (int) Math.round(((((double) this.output_height) - (this.peak + ((double) (Camera2App.this.mInitParam.input_width / 2.0f)))) * ((double) fHeight4)) / 2.0d);
                                } else {
                                    this.centering_margin_top = (int) Math.round(((this.peak - ((double) (Camera2App.this.mInitParam.input_width / 2.0f))) * ((double) fHeight4)) / 2.0d);
                                }
                                if (this.centering_margin_top < 0) {
                                    i4 = 0;
                                    this.centering_margin_top = 0;
                                } else {
                                    i4 = 0;
                                }
                            } else {
                                if (z2) {
                                    this.centering_margin_top = -((int) Math.round(((this.peak - ((double) (Camera2App.this.mInitParam.input_width / 2.0f))) * ((double) fHeight4)) / 2.0d));
                                } else {
                                    this.centering_margin_top = -((int) Math.round(((((double) this.output_height) - (this.peak + ((double) (Camera2App.this.mInitParam.input_width / 2.0f)))) * ((double) fHeight4)) / 2.0d));
                                }
                                if (this.centering_margin_top > 0) {
                                    i4 = 0;
                                    this.centering_margin_top = 0;
                                } else {
                                    i4 = 0;
                                }
                            }
                            this.centering_margin_left = i4;
                        }
                        f6 = f38;
                    }
                }
                float f39 = i7 + f6;
                float f40 = i8 + f5;
                this.frame_rect.set(f39 - fWidth, f40 - fHeight, f39 + fWidth, f40 + fHeight);
                return true;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x003f  */
            private int checkSpeed() {
                double d;
                double d2;
                int i = this.direction;
                int i2 = 3;
                if (i != 2 && i != 3) {
                    d = this.cur_x;
                    d2 = this.prev_x;
                } else {
                    d = this.cur_y;
                    d2 = this.prev_y;
                }
                this.mDiffManager.add(Math.abs(d - d2));
                if (15 >= this.count) {
                    i2 = 0;
                } else if (!(this.mDiffManager.getDiff() < this.too_slow_thres)) {
                    // 對照 smali：原始為 `cmpg-double; if-gez`，即 javac 對
                    // `if (diff < too_slow_thres)` 產生的碼型；寫成 `>=` 會變成
                    // `cmpl-double`，NaN 時語意相反（NaN 會被當成 too slow）。
                    if (this.mDiffManager.getDiff() > this.too_fast_thres) {
                        i2 = 2;
                    } else {
                        i2 = 0;
                    }
                }
                if (this.too_slow_count > 0) {
                    this.too_slow_count = 0;
                }
                if (this.too_fast_count > 0) {
                    this.too_fast_count = 0;
                }
                return i2;
            }

            private boolean isIdle() {
                long jNanoTime = System.nanoTime();
                if (this.reset_idle_timer) {
                    this.reset_idle_timer = false;
                    this.idle_start_time = jNanoTime;
                }
                if (this.idle_rect == null) {
                    double d = this.idle_thres / 2.0d;
                    this.idle_rect = new RectF((float) (this.cur_x - d), (float) (this.cur_y - d), (float) (this.cur_x + d), (float) (this.cur_y + d));
                }
                if (IDLE_TIME < jNanoTime - this.idle_start_time) {
                    return true;
                }
                if (!this.idle_rect.contains((float) this.cur_x, (float) this.cur_y)) {
                    this.reset_idle_timer = true;
                    this.idle_rect = null;
                }
                return false;
            }

            private boolean isComplete() {
                double d;
                int i;
                int i2;
                int i3 = this.direction;
                if (i3 != 2 && i3 != 3) {
                    d = this.cur_x;
                    i = this.output_width;
                    i2 = PanoramaPreview.this.mPreviewWidth / 2;
                } else {
                    d = this.cur_y;
                    i = this.output_height;
                    i2 = PanoramaPreview.this.mPreviewHeight / 2;
                }
                int i4 = this.direction;
                if (i4 == 1 || i4 == 3) {
                    if ((Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 90 || (Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 180) {
                        double d2 = i - i2;
                        if (d > d2) {
                            LogFilter.d(Camera2App.LOG_TAG, String.format(Locale.US, "isComplete cur=%f max=%d half_size=%d", Double.valueOf(d), Integer.valueOf(i), Integer.valueOf(i2)));
                        }
                        return d > d2;
                    }
                    double d3 = i2;
                    if (d < d3) {
                        LogFilter.d(Camera2App.LOG_TAG, String.format(Locale.US, "isComplete cur=%f half_size=%d", Double.valueOf(d), Integer.valueOf(i2)));
                    }
                    return d < d3;
                }
                if ((Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 0 || (Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 270) {
                    double d4 = i - i2;
                    if (d > d4) {
                        LogFilter.d(Camera2App.LOG_TAG, String.format(Locale.US, "isComplete cur=%f max=%d half_size=%d", Double.valueOf(d), Integer.valueOf(i), Integer.valueOf(i2)));
                    }
                    return d > d4;
                }
                double d5 = i2;
                if (d < d5) {
                    LogFilter.d(Camera2App.LOG_TAG, String.format(Locale.US, "isComplete cur=%f half_size=%d", Double.valueOf(d), Integer.valueOf(i2)));
                }
                return d < d5;
            }

            /* JADX WARN: Code duplicated, block: B:49:0x00e2  */
            /* JADX WARN: Code duplicated, block: B:53:0x00ee  */
            /* JADX WARN: Code duplicated, block: B:7:0x001f A[PHI: r0 r5 r7
              0x001f: PHI (r0v20 int) = (r0v1 int), (r0v21 int) binds: [B:10:0x0036, B:6:0x001d] A[DONT_GENERATE, DONT_INLINE]
              0x001f: PHI (r5v3 double) = (r5v0 double), (r5v4 double) binds: [B:10:0x0036, B:6:0x001d] A[DONT_GENERATE, DONT_INLINE]
              0x001f: PHI (r7v24 double) = (r7v0 double), (r7v25 double) binds: [B:10:0x0036, B:6:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:8:0x0021 A[PHI: r0 r5 r7
              0x0021: PHI (r0v2 int) = (r0v1 int), (r0v21 int) binds: [B:10:0x0036, B:6:0x001d] A[DONT_GENERATE, DONT_INLINE]
              0x0021: PHI (r5v1 double) = (r5v0 double), (r5v4 double) binds: [B:10:0x0036, B:6:0x001d] A[DONT_GENERATE, DONT_INLINE]
              0x0021: PHI (r7v1 double) = (r7v0 double), (r7v25 double) binds: [B:10:0x0036, B:6:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
            private boolean isReverse() {
                double d;
                double d2;
                int i;
                boolean z;
                boolean z2;
                int i2 = this.direction;
                if (i2 != 2 && i2 != 3) {
                    d = this.cur_x;
                    d2 = this.prev_x;
                    i = this.output_width;
                    if (Math.abs(this.base_y - this.cur_y) > this.base_y) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    d = this.cur_y;
                    d2 = this.prev_y;
                    i = this.output_height;
                    if (Math.abs(this.base_x - this.cur_x) > this.base_x) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    return true;
                }
                int i3 = this.direction;
                boolean z3 = i3 == 1 || i3 == 3 ? !((Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 90 || (Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 180) : !((Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 0 || (Camera2App.this.mInitParam.output_rotation + Camera2App.this.mCameraOrientation) % 360 == 270);
                if (z3) {
                    if (d2 - d > this.reverse_thres2) {
                        return true;
                    }
                    if (d < this.peak) {
                        this.peak = d;
                    }
                    // 對照 smali：原始是 `if (d > i) z2 = true; else if (d - peak >
                    // reverse_thres) z2 = true; else z2 = false;`（兩個都是
                    // `cmpl-double`）。寫成 `d <= i && ... <= reverse_thres` 會變成
                    // `cmpg-double`，NaN 時語意相反。
                    if (d > i) {
                        z2 = true;
                    } else if (d - this.peak > this.reverse_thres) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                } else {
                    if (d - d2 > this.reverse_thres2) {
                        return true;
                    }
                    if (d > this.peak) {
                        this.peak = d;
                    }
                    // 對照 smali：原始是 `if (d < 0.0) z2 = true;`（`cmpg-double`）
                    // `else if (peak - d > reverse_thres) z2 = true;`（`cmpl-double`）
                    // `else z2 = false;`。
                    if (d < 0.0d) {
                        z2 = true;
                    } else if (this.peak - d > this.reverse_thres) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                }
                long jNanoTime = System.nanoTime();
                if (z2) {
                    int i4 = this.direction;
                    int i5 = (i4 == 2 || i4 == 3) ? PanoramaPreview.this.mPreviewHeight / 2 : PanoramaPreview.this.mPreviewWidth / 2;
                    int i6 = this.direction;
                    if (i6 == 1 || i6 == 3) {
                        if (z3) {
                            if (d > i + i5) {
                                return true;
                            }
                        } else if (d < (-i5)) {
                            return true;
                        }
                    } else if (z3) {
                        if (d > i + i5) {
                            return true;
                        }
                    } else if (d < (-i5)) {
                        return true;
                    }
                    if (!this.pre_is_reverse) {
                        this.reverse_start_time = jNanoTime;
                    } else if (REVERSE_TIME < jNanoTime - this.reverse_start_time) {
                        return true;
                    }
                }
                this.pre_is_reverse = z2;
                return false;
            }
        }

        public PanoramaPreview(Camera2App camera2App) {
            this(false);
        }

        /* JADX WARN: Code duplicated, block: B:37:0x0211  */
        /* JADX WARN: Code duplicated, block: B:38:0x0216  */
        /* JADX WARN: Code duplicated, block: B:39:0x021b  */
        /* JADX WARN: Code duplicated, block: B:40:0x0220  */
        /* JADX WARN: Code duplicated, block: B:41:0x0225  */
        public PanoramaPreview(boolean z) {
            float f;
            float f2;
            this.preview_skip_count = 0;
            this.uiUpdateRunnable = new UiUpdateRunnable();
            this.mAttachRunnable = null;
            if (z) {
                abort();
            }
            int scale = Camera2App.this.mDirectionFunction.getScale();
            Size previewSize = Camera2App.this.mDirectionFunction.getPreviewSize();
            LogFilter.d(Camera2App.LOG_TAG, String.format(Locale.US, "previewSize %dx%d, scale %d", Integer.valueOf(previewSize.getWidth()), Integer.valueOf(previewSize.getHeight()), Integer.valueOf(scale)));
            int direction = Camera2App.this.mDirectionFunction.getDirection();
            if (direction == 3 || direction == 2) {
                float height = ((float) Camera2App.this.mMiniPreviewImageView.getHeight()) / ((float) Math.round(previewSize.getWidth() * Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO));
                this.mPreviewWidth = Camera2App.this.mMiniPreviewImageView.getHeight();
                this.mPreviewHeight = Math.round(previewSize.getHeight() * height);
            } else {
                this.mPreviewWidth = Math.round(previewSize.getWidth() * (((float) Camera2App.this.mMiniPreviewImageView.getHeight()) / ((float) Math.round(previewSize.getHeight() * Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO))));
                this.mPreviewHeight = Camera2App.this.mMiniPreviewImageView.getHeight();
            }
            Camera2App.this.mPreviewBitmap = Bitmap.createBitmap(this.mPreviewWidth, this.mPreviewHeight, Bitmap.Config.ARGB_8888);
            int previewImage = Camera2App.this.mMorphoPanoramaGP2.setPreviewImage(this.mPreviewWidth, this.mPreviewHeight);
            if (previewImage != 0) {
                LogFilter.e(Camera2App.LOG_TAG, String.format(Locale.US, "MorphoSensorFusion.setPreviewImage error ret:0x%08X", Integer.valueOf(previewImage)));
            }
            this.mDrawPreviewFitScale = Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO;
            Matrix matrix = new Matrix();
            matrix.setRotate(360 - Camera2App.this.mCurOrientation);
            matrix.postScale(Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO, Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO);
            Camera2App.this.mPreviewFitBitmap = Bitmap.createBitmap(Camera2App.this.mPreviewBitmap, 0, 0, Camera2App.this.mPreviewBitmap.getWidth(), Camera2App.this.mPreviewBitmap.getHeight(), matrix, true);
            Camera2App.this.mPreviewFitBitmapCanvas = new Canvas(Camera2App.this.mPreviewFitBitmap);
            Camera2App.this.mPreviewFitBitmapPaint = new Paint();
            Camera2App.this.mPreviewFitBitmapPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
            Camera2App.this.mPreviewFitMatrix = new Matrix();
            int i = Camera2App.this.mCurOrientation;
            if (i == 90) {
                Camera2App.this.mPreviewFitMatrix.setRotate(360 - Camera2App.this.mCurOrientation);
                Camera2App.this.mPreviewFitMatrix.postTranslate(0.0f, Camera2App.this.mPreviewBitmap.getWidth());
            } else if (i != 270) {
                Camera2App.this.mPreviewFitMatrix.setRotate(Camera2App.this.mCurOrientation, Camera2App.this.mPreviewBitmap.getWidth() / 2.0f, Camera2App.this.mPreviewBitmap.getHeight() / 2.0f);
            } else {
                Camera2App.this.mPreviewFitMatrix.setRotate(360 - Camera2App.this.mCurOrientation);
                Camera2App.this.mPreviewFitMatrix.postTranslate(Camera2App.this.mPreviewBitmap.getHeight(), 0.0f);
            }
            Camera2App.this.mPreviewFitMatrix.postScale(Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO, Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO);
            this.detector = new PositionDetector(direction, Camera2App.this.mMaxWidth, Camera2App.this.mMaxHeight);
            ImageView imageView = Camera2App.this.mMiniPreviewImageView;
            if (Camera2App.PREVIEW_SPREAD_BOTH_SIDES) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO, 0.0f);
                alphaAnimation.setDuration(400L);
                imageView.startAnimation(alphaAnimation);
            } else {
                AnimationSet animationSet = new AnimationSet(true);
                AlphaAnimation alphaAnimation2 = new AlphaAnimation(Camera2App.PREVIEW_LONG_SIDE_CROP_RATIO, 0.0f);
                if (Camera2App.this.mInitParam.output_rotation == 90 || Camera2App.this.mInitParam.output_rotation == 270) {
                    if (direction == 0) {
                        f2 = 0.0f;
                        f = 0.45f;
                    } else if (direction == 1) {
                        f2 = 0.0f;
                        f = -0.45f;
                    } else if (direction == 2) {
                        f = 0.0f;
                        f2 = 0.45f;
                    } else if (direction != 3) {
                        f = 0.0f;
                        f2 = 0.0f;
                    } else {
                        f = 0.0f;
                        f2 = -0.45f;
                    }
                } else if (direction == 0) {
                    f = 0.0f;
                    f2 = 0.45f;
                } else if (direction == 1) {
                    f = 0.0f;
                    f2 = -0.45f;
                } else if (direction == 2) {
                    f2 = 0.0f;
                    f = -0.45f;
                } else if (direction != 3) {
                    f = 0.0f;
                    f2 = 0.0f;
                } else {
                    f2 = 0.0f;
                    f = 0.45f;
                }
                TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, f, 2, 0.0f, 2, f2);
                animationSet.setDuration(400L);
                animationSet.addAnimation(alphaAnimation2);
                animationSet.addAnimation(translateAnimation);
                animationSet.setInterpolator(new AccelerateInterpolator());
                imageView.startAnimation(animationSet);
            }
            if (this.mAttachRunnable == null) {
                this.mAttachRunnable = new PreviewAttach();
                Camera2App.this.mExecutor.submit(this.mAttachRunnable);
            }
        }

        public void createPreviewImage(PerformanceCounter performanceCounter) {
            synchronized (Camera2App.PreviewImageSynchronizedObject) {
                performanceCounter.start();
                int iUpdatePreviewImage = Camera2App.this.mMorphoPanoramaGP2.updatePreviewImage(Camera2App.this.mPreviewBitmap);
                performanceCounter.stop();
                performanceCounter.putLog(Camera2App.LOG_TAG, "mMorphoPanoramaGP2.updatePreviewImage");
                if (iUpdatePreviewImage == 0) {
                    if (Camera2App.this.mPreviewFitBitmap != null) {
                        Camera2App.this.mPreviewFitBitmapCanvas.drawBitmap(Camera2App.this.mPreviewBitmap, Camera2App.this.mPreviewFitMatrix, Camera2App.this.mPreviewFitBitmapPaint);
                    }
                } else {
                    LogFilter.e(Camera2App.LOG_TAG, "mMorphoPanoramaGP2.updatePreviewImage error ret:" + iUpdatePreviewImage);
                }
            }
        }

        @Override // com.sonyericsson.android.camera3d.base.PanoramaState
        public boolean onSaveImage(CaptureImage captureImage) {
            if (Camera2App.this.isEngineRunning()) {
                Camera2App.this.addAttachQueue(captureImage);
                if (this.mAttachRunnable != null) {
                    return true;
                }
                this.mAttachRunnable = new PreviewAttach();
                Camera2App.this.mExecutor.submit(this.mAttachRunnable);
                return true;
            }
            LogFilter.e(Camera2App.LOG_TAG, "PanoramaPreview.onSaveImage mMorphoPanoramaGP2 is null!!");
            captureImage.close();
            return false;
        }

        public void attachEnd(int i) {
            Camera2App.this.initAttachQueue();
            this.listener.requestEnd(this, i);
        }

        @Override // com.sonyericsson.android.camera3d.base.PanoramaState
        public void repeatTakePicture() {
            boolean zTakePicture;
            int captureMode = Camera2App.this.mInternalSettings.getCaptureMode();
            if (captureMode == 1) {
                zTakePicture = Camera2App.this.mMorphoCamera.takePicture();
            } else if (captureMode == 2) {
                zTakePicture = Camera2App.this.mMorphoCamera.takePictureZSL();
            } else if (captureMode != 3) {
                return;
            } else {
                zTakePicture = Camera2App.this.mMorphoCamera.takePictureBurst();
            }
            if (zTakePicture) {
                return;
            }
            Camera2App.this.onErrorCapture();
        }

        @Override // com.sonyericsson.android.camera3d.base.PanoramaState
        public boolean isEnableTvAnalysis() {
            return this.detector.isEnableTvAnalysis();
        }

        @Override // com.sonyericsson.android.camera3d.base.PanoramaState
        public void notifyTvAnalyzed() {
            this.detector.notifyTvAnalyzed();
        }
    }

    private void releaseImageBitmap() {
        ImageView imageView;
        synchronized (PreviewImageSynchronizedObject) {
            if (!this.mTemperatureHigh && (imageView = this.mPreviewImageView) != null) {
                imageView.setImageDrawable(null);
            }
            this.mPreviewBitmap = null;
            this.mPreviewFitBitmap = null;
        }
    }

    // 對照 smali（Camera2App.d_save_raw()，debug 用途）手動重建：jadx 把
    // 建構 FileOutputStream 失敗（外層 try）跟寫入失敗（內層 try）兩種
    // FileNotFoundException/Throwable catch 分開對應到兩層 try/catch，
    // 但外層兩個 catch 區塊只留下對不存在變數 e/th 的賦值，內容被丟失。
    // 對照 smali 的 :catch_1/:catchall_1 -> :goto_1/:goto_2 共用邏輯：
    // 外層建構失敗時 fileOutputStream 必為 null，因此清理（close/stop/
    // putLog）一定被跳過，只需 printStackTrace()（FileNotFoundException）
    // 或原樣往外拋（Throwable）。
    public static void d_save_raw(byte[] bArr, String str, String str2) {
        PerformanceCounter performanceCounterNewInstance = PerformanceCounter.newInstance(false);
        try {
            performanceCounterNewInstance.start();
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(String.format(Locale.US, "%s/%s.yuv", str, str2));
                try {
                    fileOutputStream2.write(bArr);
                    fileOutputStream2.close();
                    performanceCounterNewInstance.stop();
                } catch (FileNotFoundException e) {
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                        performanceCounterNewInstance.stop();
                    }
                } catch (Throwable th) {
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                        performanceCounterNewInstance.stop();
                        performanceCounterNewInstance.putLog(LOG_TAG, "InputSave");
                    }
                    throw th;
                }
            } catch (FileNotFoundException e2) {
                // 對照 smali：`new FileOutputStream()` 就失敗（fileOutputStream 仍為
                // null）時原始碼直接返回，不會呼叫 putLog()——原始 smali 的
                // `if-eqz v3, :cond_1` 在 v3 為 null 時跳過 putLog 直接 return。
                e2.printStackTrace();
                return;
            }
            performanceCounterNewInstance.putLog(LOG_TAG, "InputSave");
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    private static int getAspectTableIndex(float f, float f2) {
        float f3 = f2 / f;
        int i = 0;
        while (true) {
            int[][] iArr = ASPECT_TABLE;
            if (i >= iArr.length) {
                return 0;
            }
            int[] iArr2 = iArr[i];
            if (Math.abs(f3 - (((float) iArr2[1]) / ((float) iArr2[0]))) < 0.1d) {
                return i;
            }
            i++;
        }
    }

    private static void getRatios(int i, int i2, float[] fArr) {
        if (i == i2) {
            fArr[0] = 1.0f;
            fArr[1] = 1.0f;
            return;
        }
        int[][] iArr = ASPECT_TABLE;
        int[] iArr2 = iArr[i];
        float f = iArr2[1];
        int i3 = iArr2[0];
        float f2 = f / i3;
        int[] iArr3 = iArr[i2];
        float f3 = iArr3[1];
        int i4 = iArr3[0];
        float f4 = f3 / i4;
        int lcm = getLCM(i4, i3);
        int[] iArr4 = iArr[i];
        int i5 = lcm / iArr4[0];
        int[] iArr5 = iArr[i2];
        int i6 = lcm / iArr5[0];
        if (f4 < f2) {
            fArr[0] = 1.0f;
            fArr[1] = ((float) (iArr5[1] * i6)) / ((float) (iArr4[1] * i5));
        } else {
            fArr[0] = ((float) (iArr4[1] * i5)) / ((float) (iArr5[1] * i6));
            fArr[1] = 1.0f;
        }
    }

    private static int getGCD(int i, int i2) {
        if (i > i2) {
            int iTmp = i2;
            i2 = i;
            i = iTmp;
        }
        while (i != 0) {
            int i3 = i2 % i;
            i2 = i;
            i = i3;
        }
        return i2;
    }

    private static int getLCM(int i, int i2) {
        return (i * i2) / getGCD(i, i2);
    }

    private int getBaseAspect() {
        CameraInfo cameraInfo = this.mMorphoCamera.cameraInfo();
        int aspectTableIndex = getAspectTableIndex(cameraInfo.getPhysicalWidth(), cameraInfo.getPhysicalHeight());
        int aspectTableIndex2 = getAspectTableIndex(cameraInfo.getActiveArrayWidth(), cameraInfo.getActiveArrayHeight());
        return aspectTableIndex == aspectTableIndex2 ? aspectTableIndex : aspectTableIndex2;
    }

    public static String createName(long j) {
        return DateFormat.format("yyyy-MM-dd_kk-mm-ss", j).toString();
    }

    public String createNewFilePath() {
        return String.format(Locale.US, "%s%s%s%s%s.JPG", File.separator + STORAGE_PATH_PREFIX, File.separator, PREFIX_DIR, File.separator, new SimpleDateFormat(FILE_NAME_DATE_FORMAT, Locale.US).format(new Date(System.currentTimeMillis())));
    }

    // 對照 smali（Camera2App.saveImage()）手動重建：jadx 把開檔/寫入/關檔/
    // 重開取檔案大小整段共用同一組 catch handler（見 smali :catch_0/:catch_1/
    // :catch_2 跟外層 :catch_3/:catch_4 全部收斂到同一個 :goto_1~:goto_5 尾端）
    // 誤判成兩條分開路徑，其中一條（IOException 分支）意外把整段「寫 EXIF +
    // ContentResolver.update() + return」的收尾邏輯錯放在 catch 區塊內、
    // 另一條又在方法最下面重複一份幾乎一樣的收尾邏輯。也如同
    // AttachRunnable.saveJpeg() 的狀況，insertPhotoMedia(ContentResolver,String)
    // 本身不拋出 checked FileNotFoundException/IOException，外層對應的
    // catch 在 javac 是恆不可達、必須移除。
    //
    // 這裡整理成單一路徑：inner try 涵蓋 open+write+close+(必要時)重開+
    // getStatSize()（對照 smali try_start_1~try_end_2），任何一步失敗都
    // 統一導向共用收尾（printStackTrace + iWriteJPEG 對應錯誤碼 + fd/pair 清空）；
    // 收尾（EXIF 讀寫、ContentResolver.update、組回傳值）只寫一份，無論走
    // try 成功路徑還是任一 catch，都會執行到。
    public Pair<Boolean, String> saveImage(String str, ByteBuffer byteBuffer, int i, int i2, Location location) {
        int iWriteJPEG;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        long statSize;
        ContentResolver contentResolver = getContentResolver();
        Pair<Uri, String> pairInsertPhotoMedia = insertPhotoMedia(contentResolver, str);
        if (pairInsertPhotoMedia != null) {
            try {
                parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor((Uri) pairInsertPhotoMedia.first, "rw", null);
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    iWriteJPEG = JpegIO.writeJPEG(byteBuffer, i, i2, parcelFileDescriptorOpenFileDescriptor.getFd(), this.mInitParam.output_format);
                    // 對照 smali try_start_2（:catch_1/:catch_2）：close+重開+getStatSize()
                    // 是獨立的內層 try，跟外層 open+writeJPEG() 的 try_start_1
                    // （:catch_0/:catch_1）不是同一段——這段的 IOException 處理
                    // *不會*把 iWriteJPEG 重設為 0（維持 writeJPEG() 原本的回傳碼），
                    // 跟外層 open+writeJPEG() 那段 IOException 會重設為 0 不一樣，
                    // 不可以合併成同一個 catch。
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                        if (iWriteJPEG == 0) {
                            parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor((Uri) pairInsertPhotoMedia.first, "rw", null);
                        }
                        // 對照 smali :cond_1：無論 writeJPEG 是否成功都會呼叫
                        // getStatSize()（寫入失敗時用的是剛剛已經 close() 過的
                        // 原始 fd，原始行為即是如此，不是這裡的翻譯錯誤）。
                        statSize = parcelFileDescriptorOpenFileDescriptor.getStatSize();
                    } catch (FileNotFoundException e) {
                        e.printStackTrace();
                        iWriteJPEG = Error.ERROR_UNSUPPORTED;
                        parcelFileDescriptorOpenFileDescriptor = null;
                        statSize = 0;
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        parcelFileDescriptorOpenFileDescriptor = null;
                        statSize = 0;
                    }
                } else {
                    iWriteJPEG = Error.ERROR_IO;
                    statSize = 0;
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                iWriteJPEG = Error.ERROR_UNSUPPORTED;
                parcelFileDescriptorOpenFileDescriptor = null;
                statSize = 0;
            } catch (IOException e2) {
                e2.printStackTrace();
                iWriteJPEG = 0;
                parcelFileDescriptorOpenFileDescriptor = null;
                statSize = 0;
            }
        } else {
            iWriteJPEG = Error.ERROR_IO;
            parcelFileDescriptorOpenFileDescriptor = null;
            statSize = 0;
        }
        if (iWriteJPEG != 0) {
            LogFilter.e("PanoramaGP2", "writeJPEG ret = " + iWriteJPEG);
            return new Pair<>(false, null);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ExifInterface exifInterface = null;
        if (parcelFileDescriptorOpenFileDescriptor != null) {
            try {
                exifInterface = new ExifInterface(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        } else {
            try {
                exifInterface = new ExifInterface(str);
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        if (exifInterface != null) {
            setInExif(exifInterface, location, this.mLatestCaptureResult);
        }
        if (parcelFileDescriptorOpenFileDescriptor != null) {
            try {
                parcelFileDescriptorOpenFileDescriptor.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }
        if (pairInsertPhotoMedia != null && pairInsertPhotoMedia.first != null) {
            int i3 = this.mCurOrientation;
            int i4 = 180;
            if (i3 != 90) {
                if (i3 != 180) {
                    i4 = 270;
                } else if (i3 != 270) {
                    i4 = 90;
                } else {
                    i4 = 0;
                }
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("datetaken", Long.valueOf(jCurrentTimeMillis));
            long j = jCurrentTimeMillis / INTERVAL;
            contentValues.put("date_added", Long.valueOf(j));
            contentValues.put("date_modified", Long.valueOf(j));
            contentValues.put("_size", Long.valueOf(statSize));
            contentValues.put("orientation", Integer.valueOf(i4));
            contentValues.put("is_pending", (Integer) 0);
            contentResolver.update((Uri) pairInsertPhotoMedia.first, contentValues, null, null);
        }
        return new Pair<>(true, (String) pairInsertPhotoMedia.second);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x00bb  */
    private Pair<Uri, String> insertPhotoMedia(ContentResolver contentResolver, String str) {
        String str2;
        String volume = StorageMonitor.getVolume(isSaveDestinationExternal(), this);
        if (volume == null) {
            return null;
        }
        ContentValues contentValues = new ContentValues();
        String strSubstring = str.substring(1, str.lastIndexOf(File.separator) + 1);
        String strSubstring2 = str.substring(str.lastIndexOf(File.separator) + 1);
        contentValues.put("_display_name", strSubstring2);
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("relative_path", strSubstring);
        contentValues.put("is_pending", (Integer) 1);
        Uri uriInsert = contentResolver.insert(MediaStore.Images.Media.getContentUri(volume), contentValues);
        Cursor cursorQuery = contentResolver.query(uriInsert, new String[]{"_display_name", "bucket_display_name"}, null, null, null);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.moveToFirst()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("bucket_display_name"));
                    if (cursorQuery.getString(cursorQuery.getColumnIndex("_display_name")).equals(strSubstring2) || !string.endsWith(PREFIX_DIR)) {
                        str2 = str;
                    } else {
                        str2 = File.separator + Environment.DIRECTORY_DCIM + File.separator + PREFIX_DIR + File.separator + strSubstring2;
                        contentResolver.delete(uriInsert, null, null);
                        uriInsert = (Uri) insertPhotoMedia(contentResolver, str2).first;
                    }
                } else {
                    str2 = str;
                }
            } finally {
                cursorQuery.close();
            }
        } else {
            str2 = str;
        }
        return new Pair<>(uriInsert, str2);
    }

    private static void setInExif(ExifInterface exifInterface, Location location, CaptureResult captureResult) {
        String string = DateFormat.format("yyyy:MM:dd kk:mm:ss", System.currentTimeMillis()).toString();
        exifInterface.setAttribute("DateTime", string);
        exifInterface.setAttribute("DateTimeOriginal", string);
        exifInterface.setAttribute("DateTimeDigitized", string);
        exifInterface.setAttribute("Make", Build.MANUFACTURER);
        exifInterface.setAttribute("Model", Build.MODEL);
        if (location != null) {
            double latitude = location.getLatitude();
            double longitude = location.getLongitude();
            String strLocationValueToString = locationValueToString(latitude);
            String strLatitudeValueToNorS = latitudeValueToNorS(latitude);
            String strLocationValueToString2 = locationValueToString(longitude);
            String strLongitudeValueToEorW = longitudeValueToEorW(longitude);
            exifInterface.setAttribute("GPSLatitude", strLocationValueToString);
            exifInterface.setAttribute("GPSLatitudeRef", strLatitudeValueToNorS);
            exifInterface.setAttribute("GPSLongitude", strLocationValueToString2);
            exifInterface.setAttribute("GPSLongitudeRef", strLongitudeValueToEorW);
        }
        if (captureResult != null) {
            double exposureTime = ((captureResult.getExposureTime() / 1000.0d) / 1000.0d) / 1000.0d;
            int isoValue = captureResult.getIsoValue();
            exifInterface.setAttribute("ExposureTime", String.valueOf(exposureTime));
            exifInterface.setAttribute("ISOSpeedRatings", String.valueOf(isoValue));
        }
        try {
            exifInterface.saveAttributes();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String latitudeValueToNorS(double d) {
        if (d > 0.0d) {
            return "N";
        }
        return "S";
    }

    public static String longitudeValueToEorW(double d) {
        if (d > 0.0d) {
            return "E";
        }
        return "W";
    }

    public static String locationValueToString(double d) {
        long jRint = (long) Math.rint(Math.abs(d) * 360000.0d);
        return String.format(Locale.US, "%d/1,%d/1,%d/100", Long.valueOf(jRint / 360000), Long.valueOf((jRint / 6000) % 60), Long.valueOf(jRint % 6000));
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.mIsSensorAverage) {
            float[] fArr = this.mGravities;
            fArr[0] = fArr[0] + sensorEvent.values[0];
            float[] fArr2 = this.mGravities;
            fArr2[1] = fArr2[1] + sensorEvent.values[1];
            float[] fArr3 = this.mGravities;
            fArr3[2] = fArr3[2] + sensorEvent.values[2];
            this.mSensorCnt++;
            return;
        }
        this.mGravities[0] = sensorEvent.values[0];
        this.mGravities[1] = sensorEvent.values[1];
        this.mGravities[2] = sensorEvent.values[2];
        this.mSensorCnt = 1;
    }

    private void registerGravitySensorListener() {
        SensorManager sensorManager;
        this.mIsSensorAverage = false;
        this.mSensorCnt = 0;
        this.mGravities = new float[3];
        if (!this.mInternalSettings.use_gravity_sensor || (sensorManager = this.mSensorManager) == null) {
            return;
        }
        List<Sensor> sensorList = sensorManager.getSensorList(9);
        if (sensorList.size() > 0) {
            this.mSensorManager.registerListener(this, sensorList.get(0), 2);
        }
    }

    public void unregisterGravitySensorListener() {
        SensorManager sensorManager;
        if (!this.mInternalSettings.use_gravity_sensor || (sensorManager = this.mSensorManager) == null) {
            return;
        }
        sensorManager.unregisterListener(this);
    }

    public void setInitialRotationByGravity() {
        int i;
        if (!this.mInternalSettings.use_gravity_sensor || this.mMorphoPanoramaGP2 == null || (i = this.mSensorCnt) <= 0) {
            return;
        }
        float[] fArr = this.mGravities;
        float f = fArr[0] / i;
        float f2 = fArr[1] / i;
        float f3 = fArr[2] / i;
        LogFilter.d(LOG_TAG, String.format(Locale.US, "Gravity Sensor Value X=%f Y=%f Z=%f cnt=%d", Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3), Integer.valueOf(this.mSensorCnt)));
        int initialRotationByGravity = this.mMorphoPanoramaGP2.setInitialRotationByGravity(f, f2, f3);
        if (initialRotationByGravity != 0) {
            LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setInitialRotationByGravity error ret:0x%08X", Integer.valueOf(initialRotationByGravity)));
        }
    }

    public void setSensorFusionValue() {
        int size;
        int gyroscopeData;
        if (this.mMorphoPanoramaGP2 == null || this.mSensorFusion == null || this.mInternalSettings.sensor_mode == -1) {
            return;
        }
        int sensorMatrix = this.mSensorFusion.getSensorMatrix(this.mGyroMatrix, this.mRVMatrix, this.mACMatrix, null);
        if (sensorMatrix != 0) {
            LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.getSensorMatrix error ret:0x%08X", Integer.valueOf(sensorMatrix)));
        }
        ArrayList<ArrayList<MorphoSensorFusion.SensorData>> stockData = this.mSensorFusion.getStockData();
        if (this.mInternalSettings.sensor_mode == 1) {
            long attachCount = this.mMorphoPanoramaGP2.getAttachCount();
            int size2 = stockData.get(0).size();
            if (size2 > 0 && attachCount > 0 && (gyroscopeData = this.mMorphoPanoramaGP2.setGyroscopeData((MorphoSensorFusion.SensorData[]) stockData.get(0).toArray(new MorphoSensorFusion.SensorData[size2]))) != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setGyroscopeData error ret:0x%08X", Integer.valueOf(gyroscopeData)));
            }
        } else if (this.mInternalSettings.sensor_mode == 4 && (size = stockData.get(3).size()) > 0) {
            int rotationVector = this.mMorphoPanoramaGP2.setRotationVector(stockData.get(3).get(size - 1).mValues);
            if (rotationVector != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setRotationVector error ret:0x%08X", Integer.valueOf(rotationVector)));
            }
        }
        this.mSensorFusion.clearStockData();
    }

    public int getDisplayRotation() {
        int rotation = getDisplay().getRotation();
        if (rotation == 1) {
            return 90;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : 270;
        }
        return 180;
    }

    public void updatedOrientation(int i) {
        int i2;
        int displayRotation = i + getDisplayRotation();
        int i3 = this.mCurOrientation;
        if (i3 != -1 && ((i2 = (((i3 + 45) / 90) * 90) % 360) == (((displayRotation + 45) / 90) * 90) % 360 || Math.abs(displayRotation - i2) <= 60)) {
            return;
        }
        this.mCurOrientation = (((displayRotation + 45) / 90) * 90) % 360;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public boolean isTvLock() {
        return this.mInternalSettings.isTvLock();
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public int getAntiBanding() {
        return this.mInternalSettings.getAntiBanding();
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public int getColorCorrectionMode() {
        return this.mInternalSettings.color_correction_mode;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public int getEdgeMode() {
        return this.mInternalSettings.edge_mode;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public int getNoiseReductionMode() {
        return this.mInternalSettings.noise_reduction_mode;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public int getShadingMode() {
        return this.mInternalSettings.shading_mode;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public int getTonemapMode() {
        return this.mInternalSettings.tonemap_mode;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public boolean isAutoAELock() {
        return this.mInternalSettings.auto_ae_lock;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public boolean isAutoWBLock() {
        return this.mInternalSettings.auto_wb_lock;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public boolean isAutoEdgeNR() {
        return this.mInternalSettings.nr_auto;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void onPreviewStart() {
        if (this.mStartTrackFlag && !this.mTemperatureHigh) {
            onPreviewStartSub();
            ExtendedOrientationEventListener extendedOrientationEventListener = this.mOrientationEventListener;
            if (extendedOrientationEventListener != null) {
                extendedOrientationEventListener.enable();
            }
            SensorFusion sensorFusion = this.mSensorFusion;
            if (sensorFusion != null) {
                sensorFusion.clearStockData();
            }
        }
    }

    public void playSound(int i) {
        if (this.mSoundPool != null) {
            if (!this.mCanDisableShutterSound || this.mSettings.isCameraSound()) {
                this.mSoundPool.play(i, PREVIEW_LONG_SIDE_CROP_RATIO, PREVIEW_LONG_SIDE_CROP_RATIO, 0, 0, PREVIEW_LONG_SIDE_CROP_RATIO);
            }
        }
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void onAutoFocusFinish(boolean z) {
        this.mIsAutoFocusProcessing = false;
        if (z) {
            if (this.mGuiCapturePressed || this.mKeyFocusPressed) {
                playSound(this.mFocusedSoundId);
            }
            this.mAutoFocusCircle.setImageResource(R.drawable.cam_auto_focus_circle_focus_locked_icn);
            return;
        }
        this.mAutoFocusCircle.setVisibility(4);
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void requestUiRunnable(Runnable runnable) {
        runOnUiThread(runnable);
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void onTakePicturePreprocess() {
        Camera.CameraInfo cameraInfo = MorphoCamera1.getCameraInfo(this.mInternalSettings.camera_id);
        int displayRotation = getDisplayRotation();
        int i = cameraInfo.orientation;
        if (this.mIsFrontCamera) {
            if (this.mCurOrientation == cameraInfo.orientation) {
                this.mInitParam.output_rotation = 0;
                return;
            } else {
                this.mInitParam.output_rotation = ((i + (displayRotation + this.mCurOrientation)) + 360) % 360;
                return;
            }
        }
        this.mInitParam.output_rotation = ((i + (displayRotation + this.mCurOrientation)) + 360) % 360;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void onTakePictureStart(PanoramaState.IPanoramaStateEventListener iPanoramaStateEventListener) {
        runOnUiThread(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.11
            @Override // java.lang.Runnable
            public void run() {
                Camera2App.this.setViewsVisibility(0);
                Camera2App.this.updateViewsForCapture();
                if (Camera2App.this.isDialogShown()) {
                    return;
                }
                Camera2App.this.getFooterButtonsFragment().setPauseIcon();
            }
        });
        this.mInternalSettings.updateViewsForTakePictureStart();
        this.mSensorSensitivityAverageManager.init();
        playSound(this.mShutterSoundId);
        PanoramaInit panoramaInit = new PanoramaInit();
        this.mPanoramaState = panoramaInit;
        panoramaInit.setPanoramaStateEventListener(iPanoramaStateEventListener);
        initAttachQueue();
        startCaptureTimer();
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public boolean onTakePictureFinish() {
        if (!this.mDirectionFunction.enabled()) {
            return false;
        }
        this.mDirectionFunction.requestQuit();
        return true;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void onTakePictureFinish2NextState(int i) {
        if (this.mInternalSettings.save_input_images == 1) {
            this.mInternalSettings.finalizeEncoder();
        }
        this.mGuiCapturePressed = false;
        if (i == 0) {
            if (this.mPanoramaState.hasImage()) {
                playSound(this.mStopSoundId);
                SavePictureState savePictureState = new SavePictureState();
                this.mMorphoCamera.setDefaultCameraState();
                this.mPanoramaState = new PanoramaState();
                runOnUiThread(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.12
                    @Override // java.lang.Runnable
                    public void run() {
                        Camera2App.this.showSavingProgressBar();
                    }
                });
                SAVE_TASK_EXECUTOR.execute(new SaveTask(savePictureState));
                return;
            }
            this.mPanoramaState = new PanoramaState();
        } else if (i == -2 || i == -1) {
            runOnUiThread(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.13
                @Override // java.lang.Runnable
                public void run() {
                    Camera2App.this.startDialog(EnumDialogType.DIALOG_TYPE_ERROR_SAVE);
                }
            });
        }
        finishEngine();
        setAttachExit();
        this.mMorphoCamera.startState();
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void onTakePictureCancel() {
        if (this.mInternalSettings.save_input_images == 1) {
            this.mInternalSettings.finalizeEncoder();
        }
        this.mGuiCapturePressed = false;
        finishEngine();
        setAttachExit();
        this.mPanoramaState = new PanoramaState();
        ExtendedOrientationEventListener extendedOrientationEventListener = this.mOrientationEventListener;
        if (extendedOrientationEventListener != null) {
            extendedOrientationEventListener.enable();
        }
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void onAttachEnd() {
        synchronized (CameraConstants.EngineSynchronizedObject) {
            LogFilter.d(LOG_TAG, "onAttachEnd");
            this.mEngineEnding = true;
            if (this.mMorphoPanoramaGP2 != null) {
                this.mShotSettings.noiseReductionStrength = 0;
                if (isAutoEdgeNR()) {
                    int i = this.mSensorSensitivityAverageManager.get();
                    LogFilter.d(LOG_TAG, "onAttachEnd isoAve=" + i);
                    if (i >= 300 && i <= 400) {
                        this.mShotSettings.noiseReductionStrength = 8;
                    } else if (i > 400) {
                        this.mShotSettings.noiseReductionStrength = Math.round(i * 0.0375f);
                    } else {
                        this.mShotSettings.noiseReductionStrength = 0;
                    }
                } else {
                    this.mShotSettings.noiseReductionStrength = this.mInternalSettings.nr_strength;
                }
                int noiseReductionParam = this.mMorphoPanoramaGP2.setNoiseReductionParam(this.mShotSettings.noiseReductionStrength);
                if (noiseReductionParam != 0) {
                    LogFilter.e(LOG_TAG, "mMorphoPanoramaGP3.setNoiseReductionParam error ret:" + noiseReductionParam);
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                int iEnd = this.mMorphoPanoramaGP2.end();
                LogFilter.d(LOG_TAG, "end time=" + (System.currentTimeMillis() - jCurrentTimeMillis));
                if (iEnd != 0) {
                    LogFilter.e(LOG_TAG, "mMorphoPanoramaGP2.end error ret:" + iEnd);
                }
            }
        }
        releaseImageBitmap();
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void setGravitySensorListener(boolean z) {
        if (z) {
            registerGravitySensorListener();
        } else {
            unregisterGravitySensorListener();
        }
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public boolean isInfinityFocus() {
        return this.mInternalSettings.isInfinityFocus();
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void updateTvValue() {
        this.mInternalSettings.updateTvValue();
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void updateCameraState(CameraState cameraState) {
        this.mMorphoCamera.updateCameraState(cameraState);
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase.IMorphoCameraListener
    public void onOpened() {
        this.mCamera2ImageQualitySettings[0].entries = this.mMorphoCamera.getAvailableColorCorrectionMode();
        this.mCamera2ImageQualitySettings[0].entryValues = this.mMorphoCamera.getAvailableColorCorrectionModeValues();
        this.mCamera2ImageQualitySettings[0].defaultValues = this.mMorphoCamera.getColorCorrectionModeDefaultValues();
        this.mCamera2ImageQualitySettings[1].entries = this.mMorphoCamera.getAvailableEdgeMode();
        this.mCamera2ImageQualitySettings[1].entryValues = this.mMorphoCamera.getAvailableEdgeModeValues();
        this.mCamera2ImageQualitySettings[1].defaultValues = this.mMorphoCamera.getEdgeModeDefaultValues();
        this.mCamera2ImageQualitySettings[2].entries = this.mMorphoCamera.getAvailableNoiseReductionMode();
        this.mCamera2ImageQualitySettings[2].entryValues = this.mMorphoCamera.getAvailableNoiseReductionModeValues();
        this.mCamera2ImageQualitySettings[2].defaultValues = this.mMorphoCamera.getNoiseReductionModeDefaultValues();
        this.mCamera2ImageQualitySettings[3].entries = this.mMorphoCamera.getAvailableShadingMode();
        this.mCamera2ImageQualitySettings[3].entryValues = this.mMorphoCamera.getAvailableShadingModeValues();
        this.mCamera2ImageQualitySettings[3].defaultValues = this.mMorphoCamera.getShadingModeDefaultValues();
        this.mCamera2ImageQualitySettings[4].entries = this.mMorphoCamera.getAvailableTonemapMode();
        this.mCamera2ImageQualitySettings[4].entryValues = this.mMorphoCamera.getAvailableTonemapModeValues();
        this.mCamera2ImageQualitySettings[4].defaultValues = this.mMorphoCamera.getTonemapModeDefaultValues();
        this.mInternalSettings.updateCamera2ImageQualitySettings(getApplicationContext(), this.mCamera2ImageQualitySettings);
        initInternalSettingsViews();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase.IMorphoCameraListener
    public void onCaptureCompleted(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        int hardwareLevel = this.mMorphoCamera.cameraInfo().getHardwareLevel();
        if (hardwareLevel != 2 && hardwareLevel != 0) {
            this.mUpdateCameraInfoViewRunnable.setTotalCaptureResult(totalCaptureResult);
            this.mUpdateCameraInfoViewRunnable.run();
        }
        if (isEngineRunning()) {
            return;
        }
        onPreviewCaptureCompleted();
    }

    private void onPreviewCaptureCompleted() {
        ImageView imageView;
        FrameLayout frameLayout;
        boolean zIsMainThread = isMainThread();
        if (zIsMainThread && (frameLayout = this.mPreviewFrame) != null) {
            frameLayout.setVisibility(4);
            this.mCurPreviewFrame.setVisibility(4);
            this.mPreviewArrow.setVisibility(4);
        }
        if (PREVIEW_SPREAD_BOTH_SIDES && (imageView = this.mPreviewImageView) != null) {
            imageView.setTranslationX(-999999.0f);
        }
        if (isEngineRunning()) {
            return;
        }
        int i = this.mScreenCounter;
        if (i > 0) {
            this.mScreenCounter = i - 1;
            if (isVisibleBlackScreen() && this.mScreenCounter == 0) {
                runOnUiThread(this.mHideBlackScreenRunnable);
            }
        }
        if (zIsMainThread) {
            ImageView imageView2 = this.mMiniPreviewImageView;
            if (imageView2 != null) {
                imageView2.setImageBitmap(this.mTextureView.getBitmap(imageView2.getWidth(), this.mMiniPreviewImageView.getHeight()));
                return;
            }
            return;
        }
        runOnUiThread(this.mPreviewFrameRunnable);
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase.IMorphoCameraListener
    public void onPreviewImage(byte[] bArr) {
        ImageView imageView;
        FrameLayout frameLayout = this.mPreviewFrame;
        if (frameLayout != null) {
            frameLayout.setVisibility(4);
            this.mCurPreviewFrame.setVisibility(4);
            this.mPreviewArrow.setVisibility(4);
        }
        if (PREVIEW_SPREAD_BOTH_SIDES && (imageView = this.mPreviewImageView) != null) {
            imageView.setTranslationX(-999999.0f);
        }
        if (isEngineRunning()) {
            return;
        }
        if (this.mMiniPreviewImageView != null) {
            int displayRotation = ((MorphoCamera1.getCameraInfo(this.mInternalSettings.camera_id).orientation + getDisplayRotation()) + 360) % 360;
            Bitmap bitmap = this.mMiniPreviewBitmapForCamera1;
            if (bitmap == null || bitmap.getWidth() != (this.mMiniPreviewImageView.getWidth() & (-2)) || this.mMiniPreviewBitmapForCamera1.getHeight() != (this.mMiniPreviewImageView.getHeight() & (-2))) {
                this.mMiniPreviewBitmapForCamera1 = Bitmap.createBitmap(this.mMiniPreviewImageView.getWidth() & (-2), this.mMiniPreviewImageView.getHeight() & (-2), Bitmap.Config.ARGB_8888);
            }
            CameraInfo cameraInfo = this.mMorphoCamera.cameraInfo();
            if (PanoramaGP2ImageFormat.YUV420_PLANAR.equals(this.mImageFormat)) {
                int iYuv2Bitmap8888 = MorphoPanoramaGP2.yuv2Bitmap8888(bArr, cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), this.mMiniPreviewBitmapForCamera1, displayRotation);
                if (iYuv2Bitmap8888 != 0) {
                    LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.yuv2Bitmap8888 error ret:0x%08X", Integer.valueOf(iYuv2Bitmap8888)));
                }
            } else {
                int iYvu2Bitmap8888 = MorphoPanoramaGP2.yvu2Bitmap8888(bArr, cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), this.mMiniPreviewBitmapForCamera1, displayRotation);
                if (iYvu2Bitmap8888 != 0) {
                    LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.yvu2Bitmap8888 error ret:0x%08X", Integer.valueOf(iYvu2Bitmap8888)));
                }
            }
            if (this.mIsFrontCamera) {
                Matrix matrix = new Matrix();
                matrix.preScale(-1.0f, PREVIEW_LONG_SIDE_CROP_RATIO);
                Bitmap bitmap2 = this.mMiniPreviewBitmapForCamera1;
                this.mMiniPreviewImageView.setImageBitmap(Bitmap.createBitmap(bitmap2, 0, 0, bitmap2.getWidth(), this.mMiniPreviewBitmapForCamera1.getHeight(), matrix, true));
            } else {
                this.mMiniPreviewImageView.setImageBitmap(this.mMiniPreviewBitmapForCamera1);
            }
        }
        if (isVisibleBlackScreen()) {
            hideBlackScreen();
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase.IMorphoCameraListener
    public boolean onPictureTaken(CaptureImage captureImage) {
        boolean zIsEnableTvAnalysis;
        if (this.mInternalSettings.save_input_images == 1) {
            this.mInternalSettings.encodeFrame(captureImage.image());
        }
        runOnUiThread(this.mTakePictureVisibleRunnable);
        double gain = 0.0d;
        if (!this.mInternalSettings.tv() || this.mInternalSettings.isTvLock()) {
            zIsEnableTvAnalysis = false;
        } else {
            zIsEnableTvAnalysis = this.mPanoramaState.isEnableTvAnalysis();
            if (zIsEnableTvAnalysis) {
                gain = MorphoPanoramaGP2.getGain(captureImage.image());
            }
        }
        if (!this.mPanoramaState.onSaveImage(captureImage)) {
            this.mPanoramaState = new PanoramaState();
            this.mMorphoCamera.cancelState();
        }
        if (isDialogShown()) {
            onClickShutter(null);
        }
        if (zIsEnableTvAnalysis) {
            MorphoCamera morphoCamera = (MorphoCamera) this.mMorphoCamera;
            morphoCamera.calculateNewRequest(gain);
            if (!morphoCamera.startTakePictureNewRequest(this.mInternalSettings.getCaptureMode())) {
                onErrorCapture();
                return false;
            }
            this.mPanoramaState.notifyTvAnalyzed();
        }
        int captureMode = this.mInternalSettings.getCaptureMode();
        if (captureMode == 1 || captureMode == 2) {
            this.mPanoramaState.repeatTakePicture();
        } else if (captureMode == 3) {
            int iBurstRemaining = this.mMorphoCamera.burstRemaining();
            if (iBurstRemaining > 1) {
                this.mMorphoCamera.setBurstRemaining(iBurstRemaining - 1);
            } else {
                this.mPanoramaState.repeatTakePicture();
            }
        }
        return true;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase.IMorphoCameraListener
    public void onError() {
        runOnUiThread(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.17
            @Override // java.lang.Runnable
            public void run() {
                Camera2App.this.hideBlackScreen();
                Camera2App.this.setViewsVisibility(4);
                Camera2App.this.startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAMERA);
            }
        });
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void onErrorCapture() {
        MorphoCameraBase morphoCameraBase = this.mMorphoCamera;
        if (morphoCameraBase != null) {
            morphoCameraBase.cancelState();
        }
        runOnUiThread(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.18
            @Override // java.lang.Runnable
            public void run() {
                Camera2App.this.hideBlackScreen();
                if (Camera2App.this.isDialogShown()) {
                    return;
                }
                Camera2App.this.startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAPTURE);
            }
        });
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback
    public void onErrorCamera() {
        MorphoCameraBase morphoCameraBase = this.mMorphoCamera;
        if (morphoCameraBase != null) {
            morphoCameraBase.cancelState();
        }
        runOnUiThread(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.19
            @Override // java.lang.Runnable
            public void run() {
                Camera2App.this.hideBlackScreen();
                Camera2App.this.shutdownViews();
                Camera2App.this.startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAMERA_LAUNCH);
            }
        });
    }

    private void showPermissionOrStartCamera() {
        if (Util.isMarshmallow()) {
            String[] strArr = PERMISSIONS_CAMERA_STORAGE;
            if (Util.checkPermissionGrant(strArr, this)) {
                try {
                    startCamera();
                    prepareSound();
                    return;
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                    onErrorCamera();
                    return;
                }
            }
            if (this.mStartTrackFlag) {
                requestPermissions(strArr, 0);
                changeTrackingFlag(false);
                return;
            }
            return;
        }
        try {
            startCamera();
            prepareSound();
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            onErrorCamera();
        }
    }

    private void showPermissionOrValidateLocation() {
        if (Util.isMarshmallow()) {
            String[] strArr = PERMISSIONS_LOCATION;
            if (Util.checkPermissionGrant(strArr, this)) {
                checkLocationService();
                return;
            }
            if (this.mStartTrackFlag) {
                shutdownViews();
                MorphoCameraBase morphoCameraBase = this.mMorphoCamera;
                if (morphoCameraBase != null) {
                    morphoCameraBase.stopState();
                    this.mMorphoCamera.cameraInfo().abortCaptures();
                    this.mMorphoCamera.cancelState();
                    this.mMorphoCamera.setDefaultCameraState();
                    this.mMorphoCamera.pause();
                }
                if (isFirstTimeLocation()) {
                    requestPermissions(strArr, 3);
                } else {
                    showOkOrSettingDialog(strArr, 3);
                }
                changeTrackingFlag(false);
                return;
            }
            return;
        }
        checkLocationService();
    }

    private void showOkOrSettingDialog(String[] strArr, int i) {
        if (Util.determineDialogType(Util.getPermissionNotGranted(strArr, this), this)) {
            showOkDialog(i);
        } else {
            showSettingDialog(i);
        }
    }

    private void prepareSound() {
        AudioAttributes audioAttributesBuild;
        if (this.mCanDisableShutterSound) {
            audioAttributesBuild = new AudioAttributes.Builder().setUsage(13).setContentType(2).build();
        } else {
            audioAttributesBuild = new AudioAttributes.Builder().setUsage(13).setContentType(2).setFlags(1).build();
        }
        SoundPool soundPoolBuild = new SoundPool.Builder().setAudioAttributes(audioAttributesBuild).setMaxStreams(1).build();
        this.mSoundPool = soundPoolBuild;
        if (soundPoolBuild != null) {
            try {
                this.mFocusedSoundId = soundPoolBuild.load(this, R.raw.af_success, 1);
                this.mShutterSoundId = this.mSoundPool.load(this, R.raw.camera_video_record_start, 1);
                this.mStopSoundId = this.mSoundPool.load(this, R.raw.camera_video_record_stop, 1);
            } catch (Exception e) {
                e.printStackTrace();
                this.mSoundPool.release();
                this.mSoundPool = null;
            }
        }
    }

    private void startCamera() throws IllegalArgumentException {
        if (!this.mTemperatureHigh && this.mStartTrackFlag) {
            setButtonsEnabled(true);
            this.mUseCamera1 = this.mInternalSettings.isUseCamera1(getApplication());
            this.mInternalSettings.settingCaptureMode(getApplication());
            if (this.mMorphoCamera != null && (this.mUseCamera1Tmp != this.mUseCamera1 || this.mCameraIdTmp != this.mInternalSettings.camera_id)) {
                this.mAovs = null;
                this.mInternalSettings.removePreviewSize(getApplication());
                this.mInternalSettings.resetValues();
            }
            if (this.mUseCamera1) {
                this.mMorphoCamera = new MorphoCamera1(this, this.mInternalSettings.camera_id);
            } else {
                this.mMorphoCamera = new MorphoCamera(this, this, this.mInternalSettings.camera_id, this.mInternalSettings.getCaptureMode());
            }
            this.mIsFrontCamera = this.mMorphoCamera.isFrontCamera(this.mInternalSettings.camera_id);
            setNullDirectionFunction();
            this.mMorphoCamera.setMorphoPanoramaGP2Interface(this);
            if (this.mTextureView.getParent() == null) {
                ((RelativeLayout) findViewById(R.id.root_view)).addView(this.mTextureView, this.mIndexTexture, this.mLpTextureView);
            }
            if (this.mUseCamera1) {
                if (this.mSurfaceView == null) {
                    ((ViewStub) findViewById(R.id.stub_camera1_surface_view)).inflate();
                    this.mSurfaceView = (SurfaceView) findViewById(R.id.camera1_surface_view);
                }
                this.mTextureView.setVisibility(8);
                this.mSurfaceView.setVisibility(0);
                SurfaceHolder holder = this.mSurfaceView.getHolder();
                holder.removeCallback(this.mSurfaceListener);
                holder.addCallback(this.mSurfaceListener);
                this.mTextureView.setOnTouchListener(null);
                this.mSurfaceView.setOnTouchListener(new View.OnTouchListener() { // from class: com.sonyericsson.android.camera3d.Camera2App.20
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (Camera2App.this.isOpenedSettingDialog()) {
                            Camera2App.this.closeSettingDialog();
                            Camera2App.this.checkRemainingMemory(false);
                        }
                        return Camera2App.this.mScaleGestureDetector.onTouchEvent(motionEvent);
                    }
                });
            } else {
                this.mTextureView.setVisibility(0);
                this.mTextureView.setOnTouchListener(new View.OnTouchListener() { // from class: com.sonyericsson.android.camera3d.Camera2App.21
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (Camera2App.this.isOpenedSettingDialog()) {
                            Camera2App.this.closeSettingDialog();
                            Camera2App.this.checkRemainingMemory(false);
                        }
                        return Camera2App.this.mScaleGestureDetector.onTouchEvent(motionEvent);
                    }
                });
                SurfaceView surfaceView = this.mSurfaceView;
                if (surfaceView != null) {
                    surfaceView.setVisibility(8);
                    this.mSurfaceView.setOnTouchListener(null);
                }
            }
            if (this.mOrientationEventListener == null) {
                this.mOrientationEventListener = new ExtendedOrientationEventListener(this);
            }
            this.mOrientationEventListener.enable();
            updatedOrientation(getDisplayRotation());
            setSupportedCaptureSize();
            getSettingValue();
            setPreviewSize();
            MorphoPanoramaGP2Application morphoPanoramaGP2Application = (MorphoPanoramaGP2Application) getApplication();
            this.mMorphoCamera.resume(morphoPanoramaGP2Application.getSupportedPictureSizes()[this.mInternalSettings.capture_size_index], morphoPanoramaGP2Application.getPreviewSize());
            if (this.mTextureView.isAvailable()) {
                textureViewPrepared();
            } else {
                this.mTextureView.setSurfaceTextureListener(this.mSurfaceTextureListener);
            }
        }
    }

    public void onDismissDialog(boolean z, RotatableDialogFragment.EnumDismissFactor enumDismissFactor, boolean z2) {
        int status = ErrorCaseHandler.getStatus();
        if (status == 2 || status == 3 || status == 5 || status == 6) {
            finish();
            return;
        }
        if (status == 7) {
            ErrorCaseHandler.setStatus(0);
            dismissDialog(z, enumDismissFactor, z2);
            onRestart();
            onResume();
            return;
        }
        dismissDialog(z, enumDismissFactor, z2);
        setThumbnail();
    }

    private void setOverlayDialog(EnumDialogType enumDialogType) {
        int i = 0;
        while (true) {
            int i2 = this.mOverlayDialogNum;
            if (i < i2) {
                if (this.mOverlayDialogType[i] == enumDialogType) {
                    return;
                } else {
                    i++;
                }
            } else {
                this.mOverlayDialogType[i2] = enumDialogType;
                this.mOverlayDialogNum = (i2 + 1) % 3;
                return;
            }
        }
    }

    public void excludeOverlayDialog(EnumDialogType enumDialogType) {
        int i = 0;
        while (i < this.mOverlayDialogNum) {
            if (enumDialogType == this.mOverlayDialogType[i]) {
                int i2 = i + 1;
                while (true) {
                    int i3 = this.mOverlayDialogNum;
                    if (i2 < i3) {
                        EnumDialogType[] enumDialogTypeArr = this.mOverlayDialogType;
                        enumDialogTypeArr[i] = enumDialogTypeArr[i2];
                        i2++;
                        i++;
                    } else {
                        this.mOverlayDialogNum = i3 - 1;
                        return;
                    }
                }
            } else {
                i++;
            }
        }
    }

    public void startDialog(EnumDialogType enumDialogType) {
        EnumDialogType enumDialogType2;
        if (this.mStartTrackFlag && this.mActive && (enumDialogType2 = this.mDialogType) != enumDialogType) {
            if (enumDialogType2 != EnumDialogType.DIALOG_TYPE_NONE && this.mOverlayDialogNum < 3) {
                int i = AnonymousClass30.$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[this.mDialogType.ordinal()];
                if (i == 1 || i == 2) {
                    return;
                }
                if (enumDialogType != EnumDialogType.DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN) {
                    setOverlayDialog(this.mDialogType);
                    if (isDialogShown()) {
                        dismissDialog(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OVERLAY);
                    }
                }
            }
            Bundle bundle = new Bundle();
            bundle.putInt("DIALOG_ORIENTATION", convertToDialogOrientation(this.mCurViewDegree));
            switch (AnonymousClass30.$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[enumDialogType.ordinal()]) {
                case 1:
                    ErrorCaseHandler.setStatus(2);
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_dialog_high_temp_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_error_high_temp_shutting_down_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_ok_txt));
                    break;
                case 2:
                    ErrorCaseHandler.setStatus(3);
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putBoolean(RotatableDialogFragment.USE_NATIVE_LAYOUT, true);
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_error_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_use_of_camera_not_authorized_txt));
                    break;
                case 3:
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_error_memory_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_error_memory_ims_full_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_ok_txt));
                    break;
                case 4:
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_error_memory_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_error_memory_full_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_ok_txt));
                    break;
                case 5:
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_error_memory_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_store_fail_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_ok_txt));
                    break;
                case 6:
                case 7:
                    ErrorCaseHandler.setStatus(6);
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_error_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_error_fatal_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_ok_txt));
                    break;
                case 8:
                    ErrorCaseHandler.setStatus(3);
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_error_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_error_device_not_available_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_ok_txt));
                    break;
                case 9:
                    ErrorCaseHandler.setStatus(3);
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_error_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_error_launch_app_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_ok_txt));
                    break;
                case 10:
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_save_destination_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_change_storage_to_sd_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_change_txt));
                    bundle.putString(RotatableDialogFragment.NEGATIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_cancel_txt));
                    break;
                case 11:
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_error_memory_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_error_memory_unavailable_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_ok_txt));
                    break;
                case 12:
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_error_memory_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_error_memory_ims_unavailable_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_ok_txt));
                    break;
                case 13:
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_dialog_high_temp_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_error_high_temp_info_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_ok_txt));
                    bundle.putString(RotatableDialogFragment.CHECKBOX_MESSAGE, getString(R.string.cam_strings_panorama_do_not_show_again_txt));
                    break;
                case 14:
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_remember_geotag_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_remember_geotag_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_yes_txt));
                    bundle.putString(RotatableDialogFragment.NEGATIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_no_txt));
                    bundle.putString(RotatableDialogFragment.CHECKBOX_MESSAGE, getString(R.string.cam_strings_panorama_do_not_show_again_txt));
                    break;
                case 15:
                    this.mDialog = new RotatableDialogFragment();
                    bundle.putString(RotatableDialogFragment.DIALOG_TITLE, getString(R.string.cam_strings_panorama_advanced_setting_geo_tag_title_txt));
                    bundle.putString(RotatableDialogFragment.DIALOG_MESSAGE, getString(R.string.cam_strings_panorama_advanced_setting_geo_tag_both_off_txt));
                    bundle.putString(RotatableDialogFragment.POSITIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_ok_txt));
                    bundle.putString(RotatableDialogFragment.NEGATIVE_BUTTON_LABEL, getString(R.string.cam_strings_panorama_cancel_txt));
                    break;
                case 16:
                    this.mLicenseDialog = new LicenseDialog();
                    break;
                default:
                    return;
            }
            this.mDialogType = enumDialogType;
            if (isOpenedSettingDialog()) {
                closeSettingDialog();
                checkRemainingMemory(true, false);
            }
            setButtonsEnabled(false);
            setMiniPreviewVisibility(false);
            this.mPreviewLine1.setVisibility(4);
            this.mPreviewLine2.setVisibility(4);
            LicenseDialog licenseDialog = this.mLicenseDialog;
            if (licenseDialog != null) {
                licenseDialog.setArguments(bundle);
                this.mLicenseDialog.show(getSupportFragmentManager(), "License Dialog Fragment");
            } else {
                this.mDialog.setArguments(bundle);
                this.mDialog.show(getSupportFragmentManager(), "Dialog Fragment");
            }
        }
    }

    public void dismissDialog(RotatableDialogFragment.EnumDismissFactor enumDismissFactor) {
        LicenseDialog licenseDialog = this.mLicenseDialog;
        if (licenseDialog != null) {
            licenseDialog.close();
            this.mLicenseDialog = null;
        }
        RotatableDialogFragment rotatableDialogFragment = this.mDialog;
        if (rotatableDialogFragment != null) {
            rotatableDialogFragment.dismiss(enumDismissFactor);
        }
    }

    private void dismissDialog(boolean z, RotatableDialogFragment.EnumDismissFactor enumDismissFactor, boolean z2) {
        if (enumDismissFactor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OVERLAY) {
            return;
        }
        setMiniPreviewVisibility(true);
        this.mPreviewLine1.setVisibility(0);
        this.mPreviewLine2.setVisibility(0);
        setButtonsEnabled(true);
        startCountDownTimer();
        EnumDialogType enumDialogType = this.mDialogType;
        this.mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
        this.mDialog = null;
        this.mLicenseDialog = null;
        int i = AnonymousClass30.$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[enumDialogType.ordinal()];
        if (i == 10) {
            if (enumDismissFactor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER) {
                this.mSettings.setSdcardInserted(true);
            }
            if (z) {
                setSaveDestination(false);
            }
        } else {
            switch (i) {
                case 13:
                    if (enumDismissFactor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER && z2) {
                        this.mSettings.setShowDialogThermal(false);
                    }
                    break;
                case 14:
                    if (enumDismissFactor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER && z2) {
                        this.mSettings.setShowDialogLocation(false);
                    }
                    if (z) {
                        if (!this.mLocationManager.isValidLocationService()) {
                            this.mOverlayDialogNum = 0;
                        }
                        this.mSettingList.setChecked(1, true);
                    }
                    break;
                case 15:
                    if (z) {
                        startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), 40);
                        return;
                    }
                    int i2 = AnonymousClass30.$SwitchMap$com$sonyericsson$android$camera3d$dialog$RotatableDialogFragment$EnumDismissFactor[enumDismissFactor.ordinal()];
                    if (i2 == 1 || i2 == 2) {
                        this.mSettingList.setChecked(1, false);
                    }
                    break;
            }
        }
        if (enumDismissFactor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SUSPEND) {
            this.mOverlayDialogNum = 0;
            return;
        }
        int i3 = this.mOverlayDialogNum;
        if (i3 > 0) {
            int i4 = i3 - 1;
            this.mOverlayDialogNum = i4;
            EnumDialogType[] enumDialogTypeArr = this.mOverlayDialogType;
            EnumDialogType enumDialogType2 = enumDialogTypeArr[i4];
            enumDialogTypeArr[i4] = EnumDialogType.DIALOG_TYPE_NONE;
            if (AnonymousClass30.$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[enumDialogType2.ordinal()] != 17) {
                startDialog(enumDialogType2);
            }
        }
    }

    static /* synthetic */ class AnonymousClass30 {
        static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType;
        static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumResultCreateEngine;
        static final /* synthetic */ int[] $SwitchMap$com$sonyericsson$android$camera3d$dialog$RotatableDialogFragment$EnumDismissFactor;

        static {
            int[] iArr = new int[RotatableDialogFragment.EnumDismissFactor.values().length];
            $SwitchMap$com$sonyericsson$android$camera3d$dialog$RotatableDialogFragment$EnumDismissFactor = iArr;
            try {
                iArr[RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$dialog$RotatableDialogFragment$EnumDismissFactor[RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_BACK_KEY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[EnumDialogType.values().length];
            $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType = iArr2;
            try {
                iArr2[EnumDialogType.DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_ERROR_CAMERA_SECURITY.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_MEMORY_FULL_INTERNAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_MEMORY_FULL_EXTERNAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_ERROR_SAVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_ERROR_CAPTURE.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_ERROR_LAUNCH.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_ERROR_CAMERA.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_ERROR_CAMERA_LAUNCH.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_SELECT_SAVE_DST.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL.ordinal()] = 11;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL.ordinal()] = 12;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_ALERT_THERMAL_WARNING.ordinal()] = 13;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_SELECT_CHANGE_LOCATION.ordinal()] = 14;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_SELECT_VALIDATE_LOCATION.ordinal()] = 15;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_LICENSE.ordinal()] = 16;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[EnumDialogType.DIALOG_TYPE_NONE.ordinal()] = 17;
            } catch (NoSuchFieldError unused19) {
            }
            int[] iArr3 = new int[EnumResultCreateEngine.values().length];
            $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumResultCreateEngine = iArr3;
            try {
                iArr3[EnumResultCreateEngine.RESULT_NEWLY_CREATED.ordinal()] = 1;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumResultCreateEngine[EnumResultCreateEngine.RESULT_ALREADY_CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    public void changeTrackingFlag(boolean z) {
        this.mStartTrackFlag = z;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        reconstructLocalCache();
        if (iArr.length > 0) {
            if (i == 1) {
                if (Util.checkPermissionsResult(iArr)) {
                    changeTrackingFlag(true);
                } else {
                    showSettingDialog(i);
                }
            } else if (i == 2) {
                if (Util.checkPermissionsResult(iArr)) {
                    changeTrackingFlag(true);
                } else {
                    showSettingDialog(i);
                }
            } else if (i == 0) {
                if (Util.checkPermissionsResult(iArr)) {
                    changeTrackingFlag(true);
                } else {
                    showSettingDialog(i);
                }
            } else if (i == 3) {
                if (Util.checkLocationPermissionsResult(iArr)) {
                    changeTrackingFlag(true);
                } else {
                    showSettingDialog(i);
                }
                SharedPreferences.Editor editorEdit = getSharedPreferences(PREF_KEY, 0).edit();
                editorEdit.putBoolean(PREF_KEY_FIRST_TIME_LOCATION, true);
                editorEdit.apply();
            }
            SharedPreferences.Editor editorEdit2 = getSharedPreferences(PREF_KEY, 0).edit();
            editorEdit2.putBoolean(PREF_KEY_FIRST_LAUNCH, true);
            editorEdit2.apply();
            return;
        }
        changeTrackingFlag(true);
    }

    public void showSettingDialog(int i) {
        PermissionGroupInfo permissionGroupInfo;
        PermissionGroupInfo permissionGroupInfo2;
        this.mResumeAlertSettingDialog = false;
        Bundle bundle = new Bundle();
        PackageManager packageManager = getPackageManager();
        PermissionGroupInfo permissionGroupInfo3 = null;
        try {
            permissionGroupInfo = packageManager.getPermissionGroupInfo("android.permission-group.STORAGE", 128);
            try {
                permissionGroupInfo2 = packageManager.getPermissionGroupInfo("android.permission-group.CAMERA", 128);
                try {
                    permissionGroupInfo3 = packageManager.getPermissionGroupInfo("android.permission-group.LOCATION", 128);
                } catch (PackageManager.NameNotFoundException e) {
                    LogFilter.w(LOG_TAG, "Package name cannot be found", e);
                }
            } catch (PackageManager.NameNotFoundException e2) {
                permissionGroupInfo2 = null;
                LogFilter.w(LOG_TAG, "Package name cannot be found", e2);
            }
        } catch (PackageManager.NameNotFoundException e3) {
            permissionGroupInfo = null;
            permissionGroupInfo2 = null;
            LogFilter.w(LOG_TAG, "Package name cannot be found", e3);
        }
        this.mAlertSettingDialog = new AlertSettingDialog();
        if (i == 3) {
            if (checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0 || checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0) {
                if (permissionGroupInfo3 != null) {
                    bundle.putString(AlertSettingDialog.SETTING_BODY_CAPTION_1, String.valueOf(permissionGroupInfo3.loadLabel(packageManager)));
                    bundle.putString(AlertSettingDialog.SETTING_BODY_TEXT_1, getString(R.string.cam_strings_panorama_runtime_permission_rationale_location_txt));
                }
                this.mAlertSettingDialog.setCancelWithFinish(false);
                this.mAlertSettingDialog.setCancelWithStartCamera(true);
            }
        } else {
            if (checkSelfPermission("android.permission.CAMERA") != 0 && permissionGroupInfo2 != null) {
                bundle.putString(AlertSettingDialog.SETTING_BODY_CAPTION_1, String.valueOf(permissionGroupInfo2.loadLabel(packageManager)));
                bundle.putString(AlertSettingDialog.SETTING_BODY_TEXT_1, getString(R.string.cam_strings_panorama_runtime_permission_rationale_camera_txt));
            }
            if (!areStoragePermissionsGranted() && permissionGroupInfo != null) {
                bundle.putString(AlertSettingDialog.SETTING_BODY_CAPTION_2, String.valueOf(permissionGroupInfo.loadLabel(packageManager)));
                bundle.putString(AlertSettingDialog.SETTING_BODY_TEXT_2, getString(R.string.cam_strings_panorama_runtime_permission_rationale_storage_read_write_txt));
            }
            this.mAlertSettingDialog.setCancelWithFinish(true);
            this.mAlertSettingDialog.setCancelWithStartCamera(false);
        }
        bundle.putInt("DIALOG_ORIENTATION", convertToDialogOrientation(this.mCurViewDegree));
        this.mAlertSettingDialog.setArguments(bundle);
        this.mAlertSettingDialog.show(getSupportFragmentManager(), "Alert Setting Dialog Fragment");
    }

    public void showOkDialog(int i) {
        PermissionGroupInfo permissionGroupInfo;
        PermissionGroupInfo permissionGroupInfo2;
        this.mResumeAlertOkDialog = false;
        Bundle bundle = new Bundle();
        PackageManager packageManager = getPackageManager();
        PermissionGroupInfo permissionGroupInfo3 = null;
        try {
            permissionGroupInfo = packageManager.getPermissionGroupInfo("android.permission-group.STORAGE", 128);
            try {
                permissionGroupInfo2 = packageManager.getPermissionGroupInfo("android.permission-group.CAMERA", 128);
                try {
                    permissionGroupInfo3 = packageManager.getPermissionGroupInfo("android.permission-group.LOCATION", 128);
                } catch (PackageManager.NameNotFoundException e) {
                    LogFilter.w(LOG_TAG, "Package name cannot be found", e);
                }
            } catch (PackageManager.NameNotFoundException e2) {
                permissionGroupInfo2 = null;
                LogFilter.w(LOG_TAG, "Package name cannot be found", e2);
            }
        } catch (PackageManager.NameNotFoundException e3) {
            permissionGroupInfo = null;
            permissionGroupInfo2 = null;
            LogFilter.w(LOG_TAG, "Package name cannot be found", e3);
        }
        if (isFirstLaunch() && isFirstTimeLocation()) {
            return;
        }
        this.mAlertOkDialog = new AlertOkDialog();
        if (i == 3) {
            if ((checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0 || checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0) && permissionGroupInfo3 != null) {
                bundle.putString(AlertOkDialog.OK_BODY_CAPTION_1, String.valueOf(permissionGroupInfo3.loadLabel(packageManager)));
                bundle.putString(AlertOkDialog.OK_BODY_TEXT_1, getString(R.string.cam_strings_panorama_runtime_permission_rationale_location_txt));
            }
        } else {
            if (checkSelfPermission("android.permission.CAMERA") != 0 && permissionGroupInfo2 != null) {
                bundle.putString(AlertOkDialog.OK_BODY_CAPTION_1, String.valueOf(permissionGroupInfo2.loadLabel(packageManager)));
                bundle.putString(AlertOkDialog.OK_BODY_TEXT_1, getString(R.string.cam_strings_panorama_runtime_permission_rationale_camera_txt));
            }
            if (!areStoragePermissionsGranted() && permissionGroupInfo != null) {
                bundle.putString(AlertOkDialog.OK_BODY_CAPTION_2, String.valueOf(permissionGroupInfo.loadLabel(packageManager)));
                bundle.putString(AlertOkDialog.OK_BODY_TEXT_2, getString(R.string.cam_strings_panorama_runtime_permission_rationale_storage_read_write_txt));
            }
        }
        bundle.putInt("DIALOG_ORIENTATION", convertToDialogOrientation(this.mCurViewDegree));
        this.mAlertOkDialog.setArguments(bundle);
        this.mAlertOkDialog.show(getSupportFragmentManager(), "Alert ok Dialog Fragment");
    }

    public void requestPermissionForCamera() {
        String[] strArr = PERMISSION_CAMERA;
        if (!Util.checkPermissionGrant(strArr, this) && !Util.checkPermissionGrant(PERMISSIONS_STORAGE, this)) {
            requestPermissions(PERMISSIONS_CAMERA_STORAGE, 0);
            return;
        }
        if (!Util.checkPermissionGrant(strArr, this)) {
            requestPermissions(strArr, 1);
            return;
        }
        String[] strArr2 = PERMISSIONS_STORAGE;
        if (!Util.checkPermissionGrant(strArr2, this)) {
            requestPermissions(strArr2, 2);
            return;
        }
        String[] strArr3 = PERMISSIONS_LOCATION;
        if (Util.checkPermissionGrant(strArr3, this)) {
            return;
        }
        requestPermissions(strArr3, 3);
    }

    private boolean isFirstLaunch() {
        return !getSharedPreferences(PREF_KEY, 0).getBoolean(PREF_KEY_FIRST_LAUNCH, false);
    }

    private boolean isFirstTimeLocation() {
        return !getSharedPreferences(PREF_KEY, 0).getBoolean(PREF_KEY_FIRST_TIME_LOCATION, false);
    }

    private boolean isTablet() {
        return getResources().getBoolean(R.bool.is_tablet);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    private class ModeSelectorButtonTouchListener implements View.OnTouchListener {
        private ModeSelectorButtonTouchListener() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            ImageView modeSelectorButton = Camera2App.this.getFooterButtonsFragment().getModeSelectorButton();
            modeSelectorButton.onTouchEvent(motionEvent);
            if (modeSelectorButton.isPressed()) {
                modeSelectorButton.setColorFilter(R.color.pressedColorFilter);
                return true;
            }
            modeSelectorButton.clearColorFilter();
            return true;
        }
    }

    private class ModeSelectorButtonClickListener implements View.OnClickListener {
        private ModeSelectorButtonClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Camera2App.this.modeFinish();
        }
    }

    public void modeFinish() {
        if (isOpenedSettingDialog()) {
            closeSettingDialog();
        }
        getFooterButtonsFragment().getModeSelectorButton().clearColorFilter();
        if (isInLockTaskMode()) {
            Toast toast = this.mPinToast;
            if (toast != null) {
                toast.cancel();
            }
            Toast toastMakeText = Toast.makeText(getApplicationContext(), R.string.cam_strings_panorama_screen_pinned_txt, 1);
            this.mPinToast = toastMakeText;
            toastMakeText.show();
            return;
        }
        finish();
    }

    private boolean isInLockTaskMode() {
        return ((ActivityManager) getSystemService("activity")).getLockTaskModeState() != 0;
    }

    public void updateViews() {
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.updateViews();
            setThumbnail();
        }
    }

    public void setViewsVisibility(int i) {
        if (this.mShutdownView && i == 0) {
            return;
        }
        if (i == 0 || !isDialogShown()) {
            HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
            if (headerButtonsFragment != null) {
                headerButtonsFragment.setViewsVisibility(i);
            }
            FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
            if (footerButtonsFragment != null) {
                footerButtonsFragment.setViewsVisibility(i);
            }
            InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
            if (infoIconsFragment != null) {
                infoIconsFragment.setViewsVisibility(i);
                if (i == 0) {
                    showInfoIcons();
                } else {
                    hideInfoIcons();
                }
            }
        }
        if (i == 0) {
            if (LIMIT_DIRECTION) {
                if (getResources().getConfiguration().orientation == 1) {
                    boolean[] zArr = this.mIsMiniPreviewArrowsVisible;
                    zArr[0] = true;
                    zArr[1] = true;
                    zArr[2] = false;
                    zArr[3] = false;
                } else {
                    boolean[] zArr2 = this.mIsMiniPreviewArrowsVisible;
                    zArr2[0] = false;
                    zArr2[1] = false;
                    zArr2[2] = true;
                    zArr2[3] = true;
                }
            } else {
                boolean[] zArr3 = this.mIsMiniPreviewArrowsVisible;
                zArr3[0] = true;
                zArr3[1] = true;
                zArr3[2] = true;
                zArr3[3] = true;
            }
            this.mAutoFocusCircle.setVisibility(4);
        } else {
            boolean[] zArr4 = this.mIsMiniPreviewArrowsVisible;
            zArr4[0] = false;
            zArr4[1] = false;
            zArr4[2] = false;
            zArr4[3] = false;
            findViewById(R.id.panoramagp2_preview_background).setBackground(null);
        }
        if (this.mDialog != null) {
            return;
        }
        setMiniPreviewVisibility(i == 0);
        this.mPreviewLine1.setVisibility(i);
        this.mPreviewLine2.setVisibility(i);
    }

    public void setThumbnail() {
        LogFilter.v(LOG_TAG, "setThumbnail() IN");
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment == null) {
            return;
        }
        if (this.mGetLatestImageTask != null) {
            LogFilter.v(LOG_TAG, "setThumbnail() cancel");
            this.mGetLatestImageTask.cancel(true);
            this.mGetLatestImageTask = null;
        }
        if (!this.mActive || this.mShutdownView || isCapturing()) {
            return;
        }
        footerButtonsFragment.showThumbnail();
        this.mGetLatestImageTask = GET_LATEST_IMAGE_EXECUTOR.submit(new GetLatestImageTask());
    }

    public void getLatestImage() {
        LogFilter.v(LOG_TAG, "getLatestImage() IN");
        String[] strArr = {"_id", "relative_path", "_display_name", "mime_type"};
        if (this.mSavePanoramaPath != null) {
            LogFilter.v(LOG_TAG, "getLatestImage() mSavePanoramaPath:" + this.mSavePanoramaPath);
            String volume = StorageMonitor.getVolume(isSaveDestinationExternal(), this);
            String str = this.mSavePanoramaPath;
            String strSubstring = str.substring(1, str.lastIndexOf(File.separator) + 1);
            String str2 = this.mSavePanoramaPath;
            String str3 = String.format(Locale.US, "%s like '%s' AND %s like '%s' AND %s like '%s'", "volume_name", volume, "relative_path", strSubstring, "_display_name", str2.substring(str2.lastIndexOf(File.separator) + 1));
            Cursor cursorQuery = null;
            this.mSavePanoramaPath = null;
            try {
                cursorQuery = getContentResolver().query(MediaStore.Files.getContentUri("external"), strArr, str3, null, null);
                if (cursorQuery != null && cursorQuery.moveToFirst()) {
                    ContentInfo contentInfoCreateContentinfo = createContentinfo(cursorQuery);
                    addLocalCache(contentInfoCreateContentinfo);
                    this.mImageId = contentInfoCreateContentinfo.mId;
                    this.mImageFileLocation = contentInfoCreateContentinfo.mImageFileLocation;
                    this.mImageMimeType = contentInfoCreateContentinfo.mImageMimeType;
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } else if (!this.mLocalCache.isEmpty()) {
            ContentInfo first = this.mLocalCache.getFirst();
            this.mImageId = first.mId;
            this.mImageFileLocation = first.mImageFileLocation;
            this.mImageMimeType = first.mImageMimeType;
        }
        LogFilter.v(LOG_TAG, "getLatestImage() IN, mImageId = " + this.mImageId + " mImageFileLocation = " + this.mImageFileLocation);
    }

    private class GetLatestImageTask implements Runnable {
        private GetLatestImageTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (Camera2App.mSyncImageTask) {
                if (Thread.currentThread().isInterrupted()) {
                    return;
                }
                Camera2App.this.getLatestImage();
                if (!Camera2App.this.mLocalCache.isEmpty()) {
                    Camera2App camera2App = Camera2App.this;
                    camera2App.mThumbnailBitmap = MediaStore.Images.Thumbnails.getThumbnail(camera2App.getContentResolver(), Camera2App.this.mImageId, 1, null);
                    Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    Camera2App.this.mThumbnailUri = uri.buildUpon().appendPath(String.valueOf(Camera2App.this.mImageId)).build();
                }
                Camera2App.this.mHandler.post(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.GetLatestImageTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        FooterButtonsFragment footerButtonsFragment;
                        Camera2App.this.mGetLatestImageTask = null;
                        if (!Camera2App.this.mActive || Camera2App.this.mShutdownView || Camera2App.this.isCapturing() || (footerButtonsFragment = Camera2App.this.getFooterButtonsFragment()) == null) {
                            return;
                        }
                        if (!Camera2App.this.mLocalCache.isEmpty()) {
                            footerButtonsFragment.setThumbnailBitmap(Camera2App.this.mThumbnailBitmap, false);
                            footerButtonsFragment.rotateView((Camera2App.this.mCurViewDegree == 0 || Camera2App.this.mCurViewDegree == 180) ? Camera2App.this.mCurViewDegree : (Camera2App.this.mCurViewDegree + 180) % 360);
                        } else {
                            footerButtonsFragment.clearThumbnail();
                        }
                    }
                });
            }
        }
    }

    private static class ContentInfo {
        public long mId;
        public String mImageFileLocation;
        public String mImageMimeType;

        private ContentInfo() {
        }
    }

    private ContentInfo createContentinfo(Cursor cursor) {
        long j = cursor.getLong(cursor.getColumnIndex("_id"));
        String string = cursor.getString(cursor.getColumnIndex("relative_path"));
        String string2 = cursor.getString(cursor.getColumnIndex("_display_name"));
        String string3 = cursor.getString(cursor.getColumnIndex("mime_type"));
        ContentInfo contentInfo = new ContentInfo();
        contentInfo.mId = j;
        contentInfo.mImageFileLocation = File.separator + string + string2;
        contentInfo.mImageMimeType = string3;
        return contentInfo;
    }

    private void removeInvalidLocalCache() {
        Iterator<ContentInfo> it = this.mLocalCache.iterator();
        while (it.hasNext()) {
            if (isRemovedFromDataBase(it.next())) {
                it.remove();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:5:0x005a  */
    // 不宣告 throws Throwable：內部所有呼叫（ContentResolver.query/moveToFirst/
    // close、MediaStore.Images.Thumbnails.getThumbnail）都不會拋出 checked
    // exception。catch 型別從 smali 原本對應的 Throwable 收斂為
    // RuntimeException：javac 對巢狀 try 內的 catch(Throwable) 重新拋出無法
    // 做完整的「precise rethrow」分析（無法證明外層 try 不會拋出 checked
    // exception），但這兩處 catchall 在原始碼裡實際只可能是 unchecked
    // （ContentResolver/Cursor 相關 API 都不宣告 checked exception），
    // 改用 RuntimeException 可完全避免這個問題，行為上僅有極端情況
    // （如 Error）不會先幫忙關閉 cursor 就直接往外拋的細微差異。
    private boolean isRemovedFromDataBase(ContentInfo contentInfo) {
        boolean z;
        Cursor cursor = null;
        try {
            Cursor cursorQuery = getContentResolver().query(MediaStore.Files.getContentUri("external"), new String[]{"_id"}, String.format(Locale.US, "%s like '%s' AND %s like '%s' AND %s like '%s' AND %s like '%s'", "volume_name", StorageMonitor.getVolume(isSaveDestinationExternal(), this), "relative_path", contentInfo.mImageFileLocation.substring(1, contentInfo.mImageFileLocation.lastIndexOf(File.separator) + 1), "_display_name", contentInfo.mImageFileLocation.substring(contentInfo.mImageFileLocation.lastIndexOf(File.separator) + 1), "_id", Long.valueOf(contentInfo.mId)), null, null);
            if (cursorQuery == null) {
                z = true;
            } else {
                try {
                    if (cursorQuery.moveToFirst()) {
                        z = false;
                    } else {
                        z = true;
                    }
                } catch (RuntimeException th) {
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            if (z || MediaStore.Images.Thumbnails.getThumbnail(getContentResolver(), contentInfo.mId, 1, null) != null) {
                return z;
            }
            return true;
        } catch (RuntimeException th2) {
            // smali :catchall_1（外層 query() 失敗）：cursor 尚未被指派，
            // 不需要清理直接往外拋。
            throw th2;
        }
    }

    private void clearLocalCache() {
        LinkedList<ContentInfo> linkedList = this.mLocalCache;
        if (linkedList != null) {
            linkedList.clear();
        }
    }

    private void clearLocalCacheBackup() {
        LinkedList<ContentInfo> linkedList = this.mLocalCacheBackup;
        if (linkedList != null) {
            linkedList.clear();
            this.mLocalCacheBackup = null;
        }
    }

    private void addLocalCache(ContentInfo contentInfo) {
        LinkedList<ContentInfo> linkedList = this.mLocalCacheBackup;
        if (linkedList != null) {
            linkedList.add(0, contentInfo);
            if (this.mLocalCacheBackup.size() > 100) {
                this.mLocalCacheBackup.removeLast();
            }
        }
        this.mLocalCache.add(0, contentInfo);
        if (this.mLocalCache.size() > 100) {
            this.mLocalCache.removeLast();
        }
    }

    private void saveLocalCache() {
        this.mLocalCacheBackup = new LinkedList<>(this.mLocalCache);
    }

    private void loadLocalCache() {
        if (this.mLocalCacheBackup != null) {
            this.mLocalCache.clear();
            this.mLocalCache = new LinkedList<>(this.mLocalCacheBackup);
        }
    }

    private void reconstructLocalCache() {
        loadLocalCache();
        clearLocalCacheBackup();
        removeInvalidLocalCache();
    }

    private class ExtendedOrientationEventListener extends OrientationEventListener {
        public ExtendedOrientationEventListener(Context context) {
            super(context);
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i) {
            if (i == -1) {
                return;
            }
            Camera2App.this.updatedOrientation(i);
            int displayRotation = (i + Camera2App.this.getDisplayRotation()) % 360;
            int i2 = Camera2App.this.mCurViewDegree;
            if (displayRotation < 30 || 330 < displayRotation) {
                i2 = 0;
            } else if (60 <= displayRotation && displayRotation < 120) {
                i2 = 90;
            } else if (150 <= displayRotation && displayRotation < 210) {
                i2 = 180;
            } else if (240 <= displayRotation && displayRotation < 300) {
                i2 = 270;
            }
            if (Camera2App.this.mCurViewDegree != i2) {
                Camera2App.this.mCurViewDegree = i2;
                setViewsRotation(i2);
                if (Camera2App.this.mMorphoCamera == null || !Camera2App.this.isEngineRunning() || Camera2App.this.isPanoramaSaving()) {
                    return;
                }
                Camera2App.this.onClickShutter(null);
            }
        }

        private void setViewsRotation(int i) {
            HeaderButtonsFragment headerButtonsFragment = Camera2App.this.getHeaderButtonsFragment();
            boolean z = i == 0 || i == 180;
            int i2 = z ? i : (i + 180) % 360;
            if (headerButtonsFragment != null) {
                headerButtonsFragment.rotateView(i2);
            }
            FooterButtonsFragment footerButtonsFragment = Camera2App.this.getFooterButtonsFragment();
            if (footerButtonsFragment != null) {
                footerButtonsFragment.rotateView(i2);
            }
            InfoIconsFragment infoIconsFragment = Camera2App.this.getInfoIconsFragment();
            if (infoIconsFragment != null) {
                infoIconsFragment.rotateView(i2);
            }
            if (Camera2App.this.mWarningTextView != null) {
                if (z) {
                    Camera2App.this.mWarningTextView.setRotation(i2);
                    Camera2App.this.mWarningTextView.setGravity(17);
                    Camera2App.this.mWarningTextView.setTranslationY(0.0f);
                } else if (i == 90 || i == 270) {
                    Camera2App.this.mWarningTextView.setRotation(i2);
                    Camera2App.this.mWarningTextView.setGravity(i == 90 ? GravityCompat.START : GravityCompat.END);
                    Camera2App.this.mWarningTextView.setTranslationY((-Camera2App.this.mWarningTextView.getWidth()) / 2.0f);
                }
            }
            if (Camera2App.this.isDialogShown()) {
                if (Camera2App.this.mDialogType == EnumDialogType.DIALOG_TYPE_LICENSE) {
                    Camera2App.this.dismissDialog(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OTHER);
                    Camera2App.this.mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
                    Camera2App.this.startDialog(EnumDialogType.DIALOG_TYPE_LICENSE);
                } else {
                    Camera2App.this.mDialog.setRotation(i);
                }
            }
            if (Util.isMarshmallow()) {
                if (Camera2App.this.mAlertOkDialog != null && Camera2App.this.mAlertOkDialog.isShowing()) {
                    Camera2App.this.mAlertOkDialog.dismiss();
                    Camera2App.this.showOkDialog(3);
                }
                if (Camera2App.this.mAlertSettingDialog != null && Camera2App.this.mAlertSettingDialog.isShowing()) {
                    Camera2App.this.mAlertSettingDialog.dismiss();
                    if (Util.checkPermissionGrant(Camera2App.PERMISSIONS_CAMERA_STORAGE, Camera2App.this)) {
                        Camera2App.this.showSettingDialog(3);
                    } else {
                        Camera2App.this.showSettingDialog(0);
                    }
                }
            }
            if (Camera2App.this.mRotatableToast.getRotatableToast()) {
                Camera2App.this.mRotatableToast.toggleRotatableToastVisibility(i);
            }
            if (i == 0 || i == 180) {
                Camera2App.this.mSettingList.setOrientation(0);
                Camera2App.this.mSettingSubListUseVolumeKey.setOrientation(0);
                Camera2App.this.mSettingSubListSaveDestination.setOrientation(0);
            } else {
                Camera2App.this.mSettingList.setOrientation(1);
                Camera2App.this.mSettingSubListUseVolumeKey.setOrientation(1);
                Camera2App.this.mSettingSubListSaveDestination.setOrientation(1);
                Camera2App.this.mSettingList.setReverseLandscape(i == 90);
                Camera2App.this.mSettingSubListUseVolumeKey.setReverseLandscape(i == 90);
                Camera2App.this.mSettingSubListSaveDestination.setReverseLandscape(i == 90);
            }
            if (Camera2App.this.mSettingSubListUseVolumeKey.getView().getVisibility() == 0) {
                Camera2App camera2App = Camera2App.this;
                camera2App.translateSettingSubList(camera2App.mSettingSubListUseVolumeKey.getView());
            }
            if (Camera2App.this.mSettingSubListSaveDestination.getView().getVisibility() == 0) {
                Camera2App camera2App2 = Camera2App.this;
                camera2App2.translateSettingSubList(camera2App2.mSettingSubListSaveDestination.getView());
            }
        }
    }

    private boolean isCameraDisabled(Context context) {
        return ((DevicePolicyManager) context.getSystemService("device_policy")).getCameraDisabled(null);
    }

    private class MyCountDownTimer extends CountDownTimer {
        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }

        public MyCountDownTimer(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Camera2App.this.setResult(2);
            Camera2App.this.finish();
        }
    }

    public void startCountDownTimer() {
        if (this.mTemperatureHigh) {
            return;
        }
        this.mCountDownTimer.start();
    }

    private class CameraCheckTimer extends CountDownTimer {
        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }

        public CameraCheckTimer(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            LogFilter.e(Camera2App.LOG_TAG, "CameraCheckTimer is timeout.");
            Camera2App.this.onErrorCamera();
        }
    }

    private void setMiniPreviewVisibility(boolean z) {
        int i = z ? 0 : 4;
        this.mMiniPreviewImageView.setVisibility(i);
        if (i == 4) {
            this.mMiniPreviewImageView.setImageDrawable(null);
        }
        this.mMiniPreviewFrame.setVisibility(i);
    }

    private void setMiniPreviewArrowsVisibility(boolean z) {
        int i = 4;
        findViewById(R.id.arrow_left).setVisibility((z && this.mIsMiniPreviewArrowsVisible[0]) ? 0 : 4);
        findViewById(R.id.arrow_right).setVisibility((z && this.mIsMiniPreviewArrowsVisible[1]) ? 0 : 4);
        findViewById(R.id.arrow_up).setVisibility((z && this.mIsMiniPreviewArrowsVisible[2]) ? 0 : 4);
        View viewFindViewById = findViewById(R.id.arrow_down);
        if (z && this.mIsMiniPreviewArrowsVisible[3]) {
            i = 0;
        }
        viewFindViewById.setVisibility(i);
    }

    public void setMiniPreviewAndArrowsVisibility(boolean z, boolean z2) {
        setMiniPreviewVisibility(z);
        setMiniPreviewArrowsVisibility(z2);
    }

    private void initializeLayoutObjects() {
        this.mTextureView = (TextureViewEx) findViewById(R.id.texture_view);
        this.mPreviewLine1 = findViewById(R.id.panoramagp2_preview_line1);
        this.mPreviewLine2 = findViewById(R.id.panoramagp2_preview_line2);
        this.mAutoFocusCircle = (ImageView) findViewById(R.id.panoramagp2_af_circle);
        this.mMiniPreviewImageView = (ImageView) findViewById(R.id.mini_preview);
        this.mMiniPreviewFrame = findViewById(R.id.mini_preview_frame);
        int i = 0;
        while (true) {
            boolean[] zArr = this.mIsMiniPreviewArrowsVisible;
            if (i >= zArr.length) {
                break;
            }
            zArr[i] = true;
            i++;
        }
        this.mSettingList = new SettingList(this, this, this);
        this.mSettingSubListUseVolumeKey = new SettingSubList(this, this.mSettingUseVolumeKeyList, this);
        this.mSettingSubListSaveDestination = new SettingSubList(this, this.mSettingSaveDestinationList, this);
        int i2 = 0;
        while (true) {
            int[] iArr = this.mSettingSaveDestinationList;
            if (i2 >= iArr.length) {
                break;
            }
            int i3 = iArr[i2];
            if (i3 == R.string.cam_strings_panorama_save_destination_sd_txt) {
                this.mIndexSettingSaveDestinationSD = i2;
            } else if (i3 == R.string.cam_strings_panorama_save_destination_ims_txt) {
                this.mIndexSettingSaveDestinationInternal = i2;
            }
            i2++;
        }
        this.mSettingList.addSubList(this.mSettingSubListUseVolumeKey);
        this.mSettingList.addSubList(this.mSettingSubListSaveDestination);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.root_view);
        relativeLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        relativeLayout.addView(this.mSettingList.getView(0), relativeLayout.indexOfChild(findViewById(R.id.modeselector_container)) - 1);
        relativeLayout.addView(this.mSettingSubListUseVolumeKey.getView(0), relativeLayout.indexOfChild(this.mSettingList.getView(0)) + 1);
        relativeLayout.addView(this.mSettingSubListSaveDestination.getView(0), relativeLayout.indexOfChild(this.mSettingList.getView(0)) + 1);
        relativeLayout.addView(this.mSettingList.getView(1), relativeLayout.indexOfChild(findViewById(R.id.modeselector_container)) - 1);
        relativeLayout.addView(this.mSettingSubListUseVolumeKey.getView(1), relativeLayout.indexOfChild(this.mSettingList.getView(1)) + 1);
        relativeLayout.addView(this.mSettingSubListSaveDestination.getView(1), relativeLayout.indexOfChild(this.mSettingList.getView(1)) + 1);
        final LinearLayout linearLayout = (LinearLayout) findViewById(R.id.footer_icon_container);
        linearLayout.post(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.22
            @Override // java.lang.Runnable
            public void run() {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) linearLayout.getLayoutParams();
                layoutParams.bottomMargin = Camera2App.this.getResources().getDimensionPixelSize(Camera2App.this.isDisplayEighteenToNine() ? R.dimen.footer_bottom_margin_18_9 : R.dimen.footer_bottom_margin_16_9);
                if (Camera2App.this.isDisplayEighteenToNine()) {
                    int settingButtonHeight = Camera2App.this.realPixelSize.x - ((((Camera2App.this.realPixelSize.y - Camera2App.this.getSettingButtonHeight()) - Camera2App.this.getNavigationBarHeight()) / 16) * 9);
                    if (settingButtonHeight % 2 != 0) {
                        settingButtonHeight++;
                    }
                    int dimension = (int) ((Camera2App.this.getResources().getDimension(R.dimen.footer_icon_container_margin) / (((float) Camera2App.this.getResources().getDisplayMetrics().densityDpi) / ((float) DisplayMetrics.DENSITY_DEVICE_STABLE))) + (settingButtonHeight / 2) + 0.5f);
                    layoutParams.leftMargin = dimension;
                    layoutParams.rightMargin = dimension;
                    linearLayout.setLayoutParams(layoutParams);
                    LogFilter.i(Camera2App.LOG_TAG, "leftMargin = " + ((RelativeLayout.LayoutParams) linearLayout.getLayoutParams()).leftMargin);
                    LogFilter.i(Camera2App.LOG_TAG, "rightMargin = " + ((RelativeLayout.LayoutParams) linearLayout.getLayoutParams()).rightMargin);
                    LinearLayout linearLayout2 = (LinearLayout) Camera2App.this.findViewById(R.id.info_icon_container);
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) linearLayout2.getLayoutParams();
                    layoutParams2.leftMargin = dimension;
                    layoutParams2.rightMargin = dimension;
                    linearLayout2.setLayoutParams(layoutParams2);
                }
            }
        });
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        footerButtonsFragment.setShutterIcon();
        footerButtonsFragment.setTakePictureButtonOnTouchListener(new View.OnTouchListener() { // from class: com.sonyericsson.android.camera3d.Camera2App.23
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
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
                        Camera2App.this.getFooterButtonsFragment().setShutterIcon();
                        Camera2App.this.startCountDownTimer();
                    }
                } else if (motionEvent.getAction() == 1) {
                    if (Camera2App.this.mGuiCapturePressed) {
                        Camera2App.this.mGuiCapturePressed = false;
                        Camera2App.this.onClickShutter(view);
                    }
                } else if (motionEvent.getAction() == 2) {
                    Rect rect = new Rect();
                    view.getDrawingRect(rect);
                    if (!rect.contains((int) motionEvent.getX(), (int) motionEvent.getY()) && Camera2App.this.mGuiCapturePressed) {
                        Camera2App.this.mGuiCapturePressed = false;
                        Camera2App.this.setViewsVisibility(0);
                        Camera2App.this.updateViews();
                        Camera2App.this.unlockFocus();
                    }
                } else if (motionEvent.getAction() == 3 && Camera2App.this.mGuiCapturePressed) {
                    Camera2App.this.mGuiCapturePressed = false;
                    Camera2App.this.setViewsVisibility(0);
                    Camera2App.this.updateViews();
                    Camera2App.this.unlockFocus();
                }
                return true;
            }
        });
        footerButtonsFragment.setTakePictureButtonOnKeyListener(new View.OnKeyListener() { // from class: com.sonyericsson.android.camera3d.Camera2App$$ExternalSyntheticLambda0
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
                return Camera2App.this.m4x2f195b33(view, i4, keyEvent);
            }
        });
        footerButtonsFragment.setStopPictureButtonOnTouchListener(new View.OnTouchListener() { // from class: com.sonyericsson.android.camera3d.Camera2App.24
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    if (!Camera2App.this.isCapturing()) {
                        return false;
                    }
                    Camera2App.this.mGuiCapturePressed = true;
                } else if (motionEvent.getAction() == 1) {
                    if (Camera2App.this.mGuiCapturePressed) {
                        Camera2App.this.mGuiCapturePressed = false;
                        Camera2App.this.onClickShutter(view);
                    }
                } else if (motionEvent.getAction() == 2) {
                    Rect rect = new Rect();
                    view.getDrawingRect(rect);
                    if (!rect.contains((int) motionEvent.getX(), (int) motionEvent.getY()) && Camera2App.this.mGuiCapturePressed) {
                        Camera2App.this.mGuiCapturePressed = false;
                    }
                } else if (motionEvent.getAction() == 3 && Camera2App.this.mGuiCapturePressed) {
                    Camera2App.this.mGuiCapturePressed = false;
                }
                return true;
            }
        });
        footerButtonsFragment.setStopPictureButtonOnKeyListener(new View.OnKeyListener() { // from class: com.sonyericsson.android.camera3d.Camera2App$$ExternalSyntheticLambda1
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
                return Camera2App.this.m5xe890e8d2(view, i4, keyEvent);
            }
        });
        ImageView modeSelectorButton = footerButtonsFragment.getModeSelectorButton();
        modeSelectorButton.setOnClickListener(new ModeSelectorButtonClickListener());
        modeSelectorButton.setOnTouchListener(new ModeSelectorButtonTouchListener());
        RotatableToast rotatableToast = new RotatableToast(this);
        this.mRotatableToast = rotatableToast;
        relativeLayout.addView(rotatableToast);
        if (isDisplayEighteenToNine()) {
            int settingButtonHeight = (((this.realPixelSize.y - getSettingButtonHeight()) - getNavigationBarHeight()) / 16) * 9;
            View viewFindViewById = findViewById(R.id.dummyLeftView);
            View viewFindViewById2 = findViewById(R.id.dummyRightView);
            viewFindViewById.setVisibility(0);
            viewFindViewById2.setVisibility(0);
            int i4 = (this.realPixelSize.x - settingButtonHeight) / 2;
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
            layoutParams.width = i4 % 2 != 0 ? i4 + 1 : i4;
            layoutParams.addRule(20, -1);
            viewFindViewById.setLayoutParams(layoutParams);
            int i5 = layoutParams.width;
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) viewFindViewById2.getLayoutParams();
            layoutParams2.width = i4;
            layoutParams2.addRule(21, -1);
            viewFindViewById2.setLayoutParams(layoutParams2);
            ((LinearLayout) findViewById(R.id.header_icon_container)).setPadding(i5, 0, 0, 0);
        }
    }

    /* synthetic */ boolean m4x2f195b33(View view, int i, KeyEvent keyEvent) {
        if (i != 62 && i != 66) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (isCapturing()) {
                return false;
            }
            if (isOpenedSettingDialog()) {
                closeSettingDialog();
                if (!checkRemainingMemory(false)) {
                    return false;
                }
            }
            if (autoFocus()) {
                this.mGuiCapturePressed = true;
                setViewsVisibility(4);
                getFooterButtonsFragment().setShutterIcon();
                startCountDownTimer();
            }
        } else if (keyEvent.getAction() == 1 && this.mGuiCapturePressed) {
            this.mGuiCapturePressed = false;
            onClickShutter(view);
        }
        return true;
    }

    /* synthetic */ boolean m5xe890e8d2(View view, int i, KeyEvent keyEvent) {
        if (i != 62 && i != 66) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (!isCapturing()) {
                return false;
            }
            this.mGuiCapturePressed = true;
        } else if (keyEvent.getAction() == 1 && this.mGuiCapturePressed) {
            this.mGuiCapturePressed = false;
            onClickShutter(view);
        }
        return true;
    }

    private void setPreviewContentDescription() {
        findViewById(R.id.panoramagp2_preview_background).setContentDescription(getString(R.string.camera_strings_accessibility_panorama_shooting_preview_txt) + " " + getString(R.string.camera_strings_accessibility_panorama_shooting_preview_move_device_txt));
    }

    public boolean isSaveDestinationExternal() {
        return !this.mSettings.isSaveInternalStorage();
    }

    public void setSaveDestination(boolean z) {
        SettingSubList settingSubList = this.mSettingSubListSaveDestination;
        if (settingSubList != null) {
            settingSubList.setSelectedResourceId(z ? R.string.cam_strings_panorama_save_destination_ims_txt : R.string.cam_strings_panorama_save_destination_sd_txt);
        }
    }

    private void updateSaveDestination(boolean z) {
        this.mSettings.setSaveInternalStorage(z);
    }

    public void setEnabledSaveDestination(boolean z, boolean z2) {
        SettingSubList settingSubList = this.mSettingSubListSaveDestination;
        if (settingSubList != null) {
            if (!z) {
                settingSubList.setItemEnabled(this.mIndexSettingSaveDestinationSD, z2);
            } else {
                settingSubList.setItemEnabled(this.mIndexSettingSaveDestinationInternal, z2);
            }
        }
    }

    public boolean checkRemainingMemory(boolean z) {
        return checkRemainingMemory(z, true);
    }

    private boolean checkRemainingMemory(boolean z, boolean z2) {
        boolean z3;
        long j;
        long availableStorageSpace = StorageMonitor.getAvailableStorageSpace(true, this);
        long availableStorageSpace2 = StorageMonitor.getAvailableStorageSpace(false, this);
        boolean z4 = availableStorageSpace2 >= 0;
        boolean z5 = availableStorageSpace >= REMAINING_MEMORY_SIZE_MIN;
        boolean z6 = availableStorageSpace2 >= REMAINING_MEMORY_SIZE_MIN;
        setEnabledSaveDestination(true, !z6 || z5);
        setEnabledSaveDestination(false, z6);
        boolean zIsSaveDestinationExternal = isSaveDestinationExternal();
        if (zIsSaveDestinationExternal) {
            this.mSettings.setSdcardInserted(z4);
            if (z4) {
                z3 = true;
                j = availableStorageSpace2;
            } else {
                if (z || z2) {
                    setSaveDestination(true);
                }
                if (!z && z2) {
                    startDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
                    return false;
                }
                if (z) {
                    setOverlayDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
                    z3 = false;
                } else {
                    z3 = true;
                }
                j = availableStorageSpace;
                zIsSaveDestinationExternal = false;
            }
        } else {
            if (z) {
                this.mSettings.isSdcardInserted();
                if (!z4) {
                    this.mSettings.setSdcardInserted(false);
                }
            }
            z3 = true;
            j = availableStorageSpace;
        }
        Locale locale = Locale.US;
        Object[] objArr = new Object[3];
        objArr[0] = Long.valueOf(availableStorageSpace);
        objArr[1] = Long.valueOf(availableStorageSpace2);
        objArr[2] = zIsSaveDestinationExternal ? "external" : "internal";
        LogFilter.d(LOG_TAG, String.format(locale, "checkRemainingMemory Internal=%d External=%d Destination storage is %s.", objArr));
        if (j < 0) {
            if (z2) {
                if (zIsSaveDestinationExternal) {
                    startDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
                } else {
                    startDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL);
                }
            } else if (z) {
                if (zIsSaveDestinationExternal) {
                    setOverlayDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
                } else {
                    setOverlayDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL);
                }
            }
            return false;
        }
        InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
        if (infoIconsFragment != null) {
            if (j < REMAINING_MEMORY_SIZE_RECOMMEND) {
                infoIconsFragment.showMemoryIcon();
            } else {
                infoIconsFragment.hideMemoryIcon();
            }
        }
        if (j >= REMAINING_MEMORY_SIZE_MIN) {
            return z3;
        }
        if (z2) {
            if (zIsSaveDestinationExternal) {
                startDialog(EnumDialogType.DIALOG_TYPE_MEMORY_FULL_EXTERNAL);
            } else {
                startDialog(EnumDialogType.DIALOG_TYPE_MEMORY_FULL_INTERNAL);
            }
        } else if (z) {
            if (zIsSaveDestinationExternal) {
                setOverlayDialog(EnumDialogType.DIALOG_TYPE_MEMORY_FULL_EXTERNAL);
            } else {
                setOverlayDialog(EnumDialogType.DIALOG_TYPE_MEMORY_FULL_INTERNAL);
            }
        }
        return false;
    }

    public boolean isActiveGpsSearchTimer() {
        return this.mGpsSearchTimer != null;
    }

    public void stopGpsSearchTimer() {
        if (isActiveGpsSearchTimer()) {
            this.mGpsSearchTimer.cancel();
            this.mGpsSearchTimer.purge();
            this.mGpsSearchTimer = null;
            this.mGpsSearchTimerTask = null;
        }
    }

    private boolean checkLocationService() {
        if (!this.mStartTrackFlag) {
            return true;
        }
        if (this.mLocationManager.isValidLocationService()) {
            this.mLocationManager.requestLocation();
            InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
            if (infoIconsFragment != null) {
                infoIconsFragment.startGpsSearch();
            }
            if (!isActiveGpsSearchTimer()) {
                if (this.mGpsSearchTimerTask == null) {
                    this.mGpsSearchTimerTask = new TimerTask() { // from class: com.sonyericsson.android.camera3d.Camera2App.25
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            Camera2App.this.runOnUiThread(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.25.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    InfoIconsFragment infoIconsFragment2 = Camera2App.this.getInfoIconsFragment();
                                    if (!Camera2App.this.isActiveGpsSearchTimer() || infoIconsFragment2 == null) {
                                        return;
                                    }
                                    infoIconsFragment2.updateGpsSearch(false);
                                }
                            });
                        }
                    };
                }
                Timer timer = new Timer();
                this.mGpsSearchTimer = timer;
                timer.scheduleAtFixedRate(this.mGpsSearchTimerTask, 500L, 500L);
            }
            this.mLocationManager.updateLocation(new PanoramaGP2LocationListener.IPanoramaGP2LocationListener() { // from class: com.sonyericsson.android.camera3d.Camera2App.26
                @Override // com.sonyericsson.android.camera3d.PanoramaGP2LocationListener.IPanoramaGP2LocationListener
                public void onLocationChanged(Location location) {
                    if (location != null) {
                        Camera2App.this.stopGpsSearchTimer();
                    }
                    InfoIconsFragment infoIconsFragment2 = Camera2App.this.getInfoIconsFragment();
                    if (infoIconsFragment2 != null) {
                        infoIconsFragment2.updateGpsSearch(location != null);
                    }
                }

                @Override // com.sonyericsson.android.camera3d.PanoramaGP2LocationListener.IPanoramaGP2LocationListener
                public void onProviderDisabled() {
                    Camera2App.this.stopGpsSearchTimer();
                    Camera2App.this.mSettingList.setChecked(1, false);
                }
            });
            return true;
        }
        InfoIconsFragment infoIconsFragment2 = getInfoIconsFragment();
        if (infoIconsFragment2 != null) {
            infoIconsFragment2.stopGpsSearch();
        }
        startDialog(EnumDialogType.DIALOG_TYPE_SELECT_VALIDATE_LOCATION);
        return false;
    }

    private void initializeThermalAlert() {
        this.mThermalAlertReceiver = new ThermalAlertReceiver(this, this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ThermalAlertReceiver.ACTION_CAMERA_HEATED_OVER_CRITICAL);
        intentFilter.addAction(ThermalAlertReceiver.ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN);
        registerReceiver(this.mThermalAlertReceiver, intentFilter, 2);
    }

    private void finalizeThermalAlert() {
        ThermalAlertReceiver thermalAlertReceiver = this.mThermalAlertReceiver;
        if (thermalAlertReceiver != null) {
            unregisterReceiver(thermalAlertReceiver);
            this.mThermalAlertReceiver = null;
        }
    }

    private void startRotatableToast(String str, int i, boolean z) {
        RotatableToast rotatableToast = this.mRotatableToast;
        if (rotatableToast == null || rotatableToast.getRotatableToast()) {
            return;
        }
        this.mRotatableToast.setRotatableToastMessage(str);
        this.mRotatableToast.startRotatableToast(i, z, this.mCurViewDegree);
    }

    @Override // com.sonyericsson.android.camera3d.ThermalAlertReceiver.ThermalAlertInterface
    public void onTemperatureAlreadyHigh() {
        this.mTemperatureHigh = true;
        shutdownViews();
        startRotatableToast(getString(R.string.cam_strings_panorama_error_high_temp_info_txt), RotatableToast.TOAST_DURATION_LONG, true);
    }

    @Override // com.sonyericsson.android.camera3d.ThermalAlertReceiver.ThermalAlertInterface
    public void onTemperatureReachedHigh() {
        if (!this.mActive || this.mTemperatureHigh) {
            return;
        }
        this.mTemperatureHigh = true;
        shutdownViews();
        abortCamera();
        startDialog(EnumDialogType.DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN);
    }

    @Override // com.sonyericsson.android.camera3d.ThermalAlertReceiver.ThermalAlertInterface
    public void onTemperatureReachingHigh() {
        if (this.mActive) {
            InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
            if (infoIconsFragment != null) {
                infoIconsFragment.showTemperatureIcon();
            }
            if (this.mStartTrackFlag && this.mSettings.isShowDialogThermal()) {
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
    }

    public void onDismissLicenseDialog() {
        dismissDialog(true, RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OTHER, false);
    }

    @Override // com.sonyericsson.android.camera3d.base.SettingListBase.OnSelectedListener
    public void onSelected(SettingListBase settingListBase, int i) {
        SoundPool soundPool;
        if (this.mSettingList.equals(settingListBase)) {
            if (this.mSettingSubListUseVolumeKey.getView().getVisibility() == 0 || this.mSettingSubListSaveDestination.getView().getVisibility() == 0) {
                closeSettingDialog();
                checkRemainingMemory(false);
                return;
            }
            if (i == 1) {
                this.mSettingList.setChecked(1, !this.mSettings.isSaveLocation());
                return;
            }
            if (i == 2) {
                translateSettingSubList(this.mSettingSubListUseVolumeKey.getView());
                this.mSettingSubListUseVolumeKey.open();
                this.mSettingList.setActive(false);
                return;
            }
            if (i == 3) {
                this.mSettingList.setChecked(3, !this.mSettings.isCameraSound());
                if (!this.mSettings.isCameraSound() || (soundPool = this.mSoundPool) == null) {
                    return;
                }
                soundPool.play(this.mShutterSoundId, PREVIEW_LONG_SIDE_CROP_RATIO, PREVIEW_LONG_SIDE_CROP_RATIO, 0, 0, PREVIEW_LONG_SIDE_CROP_RATIO);
                return;
            }
            if (i != 4) {
                if (i != 5) {
                    return;
                }
                startDialog(EnumDialogType.DIALOG_TYPE_LICENSE);
                return;
            } else {
                translateSettingSubList(this.mSettingSubListSaveDestination.getView());
                this.mSettingSubListSaveDestination.open();
                this.mSettingList.setActive(false);
                return;
            }
        }
        if (this.mSettingSubListUseVolumeKey.equals(settingListBase)) {
            String str = "HW_CAMERA_KEY";
            switch (this.mSettingUseVolumeKeyList[i]) {
                case R.string.cam_strings_panorama_volumekey_volume_txt /* 2131493017 */:
                    str = VALUE_VOLUME_KEY_VOLUME;
                    break;
                case R.string.cam_strings_panorama_volumekey_zoom_txt /* 2131493018 */:
                    str = VALUE_VOLUME_KEY_ZOOM;
                    break;
            }
            this.mSettings.setUseVolumeKey(str);
            closeSettingSubDialog();
            this.mSettingList.setSummary(2, this.mSettingUseVolumeKeyList[i]);
            return;
        }
        if (this.mSettingSubListSaveDestination.equals(settingListBase)) {
            int i2 = this.mSettingSaveDestinationList[i];
            int i3 = R.string.cam_strings_panorama_save_destination_ims_txt;
            updateSaveDestination(i2 == R.string.cam_strings_panorama_save_destination_ims_txt);
            checkRemainingMemory(false, false);
            closeSettingSubDialog();
            SettingList settingList = this.mSettingList;
            if (!this.mSettings.isSaveInternalStorage()) {
                i3 = R.string.cam_strings_panorama_save_destination_sd_txt;
            }
            settingList.setSummary(4, i3);
        }
    }

    public void translateSettingSubList(View view) {
        int width;
        int dimensionPixelSize;
        float dimensionPixelSize2;
        float width2;
        int width3;
        Configuration configuration = getResources().getConfiguration();
        Rect globalRectOfSelectedItem = this.mSettingList.getGlobalRectOfSelectedItem();
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.setting_dialog_container_padding);
        if (this.mSettingList.getOrientation() == 0) {
            if (configuration.getLayoutDirection() == 1) {
                width3 = globalRectOfSelectedItem.left - ((globalRectOfSelectedItem.right - view.getWidth()) + (dimensionPixelSize3 * 2));
            } else {
                width3 = (globalRectOfSelectedItem.left - dimensionPixelSize3) + ((globalRectOfSelectedItem.right - view.getWidth()) - (dimensionPixelSize3 * 2));
            }
            width2 = width3;
            dimensionPixelSize2 = (globalRectOfSelectedItem.bottom - dimensionPixelSize3) + getResources().getDimensionPixelSize(R.dimen.setting_dialog_sub_list_top_margin);
        } else {
            if (this.mCurViewDegree == 90) {
                width = (globalRectOfSelectedItem.right - dimensionPixelSize3) + getResources().getDimensionPixelSize(R.dimen.setting_dialog_sub_list_top_margin);
            } else {
                width = ((globalRectOfSelectedItem.left + dimensionPixelSize3) - view.getWidth()) - getResources().getDimensionPixelSize(R.dimen.setting_dialog_sub_list_top_margin);
            }
            float f = width;
            if (configuration.getLayoutDirection() == 1) {
                dimensionPixelSize = globalRectOfSelectedItem.top;
            } else if (this.mCurViewDegree == 90) {
                dimensionPixelSize = globalRectOfSelectedItem.top + (globalRectOfSelectedItem.height() - view.getHeight());
            } else {
                dimensionPixelSize = (globalRectOfSelectedItem.top - dimensionPixelSize3) - getResources().getDimensionPixelSize(R.dimen.setting_dialog_sub_list_top_margin);
            }
            dimensionPixelSize2 = dimensionPixelSize;
            width2 = f;
        }
        view.getGlobalVisibleRect(globalRectOfSelectedItem);
        if (this.mSettingList.getOrientation() == 1) {
            if (globalRectOfSelectedItem.left + width2 < 0.0f) {
                width2 = -globalRectOfSelectedItem.left;
            }
            Rect rect = new Rect();
            view.getWindowVisibleDisplayFrame(rect);
            if (view.getWidth() + width2 > rect.right) {
                width2 = rect.right - view.getWidth();
            }
        }
        if (globalRectOfSelectedItem.top + dimensionPixelSize2 < 0.0f) {
            width2 = -globalRectOfSelectedItem.top;
        }
        view.setTranslationX(width2);
        view.setTranslationY(dimensionPixelSize2);
    }

    @Override // com.sonyericsson.android.camera3d.SettingList.OnCheckedChangeListener
    public void onCheckedChanged(int i, boolean z) {
        if (i != 1) {
            if (i != 3) {
                return;
            }
            this.mSettings.setCameraSound(z);
        } else {
            this.mSettings.setSaveLocation(z);
            if (z) {
                showPermissionOrValidateLocation();
            } else {
                stopGpsSearchTimer();
                getInfoIconsFragment().stopGpsSearch();
            }
        }
    }

    private void hideInfoIcons() {
        ((LinearLayout) findViewById(R.id.info_icon_container)).setVisibility(4);
    }

    private void showInfoIcons() {
        ((LinearLayout) findViewById(R.id.info_icon_container)).setVisibility(0);
    }

    public boolean isCapturing() {
        MorphoCameraBase morphoCameraBase;
        boolean zIsEngineRunning = isEngineRunning() | this.mKeyFocusPressed | this.mGuiCapturePressed;
        if (zIsEngineRunning || (morphoCameraBase = this.mMorphoCamera) == null) {
            return zIsEngineRunning;
        }
        CameraState cameraState = morphoCameraBase.cameraState();
        return !this.mUseCamera1 ? cameraState != null && ((cameraState instanceof AutoFocusState) || (cameraState instanceof UnlockFocusState) || (cameraState instanceof TakePictureState)) : cameraState != null && !(cameraState instanceof Camera1PreviewState);
    }

    public void shutdownViews() {
        this.mShutdownView = true;
        if (isOpenedSettingDialog()) {
            closeSettingDialog(false);
        }
        setViewsVisibility(4);
        setMiniPreviewAndArrowsVisibility(false, false);
        ((RelativeLayout) findViewById(R.id.root_view)).setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.mView.setOnTouchListener(null);
        this.mTextureView.setVisibility(4);
        this.mTextureView.setOnTouchListener(null);
        SurfaceView surfaceView = this.mSurfaceView;
        if (surfaceView != null) {
            surfaceView.setVisibility(4);
            this.mSurfaceView.setOnTouchListener(null);
        }
        this.mSettingList.getView().setVisibility(4);
        this.mSettingSubListUseVolumeKey.getView().setVisibility(4);
        this.mSettingSubListSaveDestination.getView().setVisibility(4);
        RotatableDialogFragment rotatableDialogFragment = this.mDialog;
        if (rotatableDialogFragment != null) {
            rotatableDialogFragment.dismiss(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SHUTDOWN);
        }
        FrameLayout frameLayout = this.mPreviewFrame;
        if (frameLayout != null) {
            frameLayout.setVisibility(4);
            this.mCurPreviewFrame.setVisibility(4);
            this.mPreviewArrow.setVisibility(4);
            this.mWarningTextView.setVisibility(4);
        }
        showBlackScreen();
    }

    public boolean isDialogShown() {
        LicenseDialog licenseDialog;
        RotatableDialogFragment rotatableDialogFragment = this.mDialog;
        return (rotatableDialogFragment != null && rotatableDialogFragment.isShowing()) || ((licenseDialog = this.mLicenseDialog) != null && licenseDialog.isShowing());
    }

    public void showPanoramaGuideDirection() {
        TextView textView = this.mWarningTextView;
        if (textView != null) {
            textView.setText(R.string.cam_strings_panorama_guide_direction_txt);
            if (this.mWarningTextView.getWidth() == 0) {
                this.mHandler.postDelayed(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.27
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Camera2App.this.isCapturing()) {
                            Camera2App.this.showPanoramaGuideDirection();
                        }
                    }
                }, 50L);
                return;
            }
            int i = this.mCurViewDegree;
            if (i < 0) {
                i = 0;
            }
            if (i == 0 || i == 180) {
                this.mWarningTextView.setRotation(i);
                this.mWarningTextView.setGravity(17);
                this.mWarningTextView.setTranslationY(0.0f);
            } else if (i == 90 || i == 270) {
                this.mWarningTextView.setRotation((i + 180) % 360);
                this.mWarningTextView.setGravity(i == 90 ? GravityCompat.START : GravityCompat.END);
                TextView textView2 = this.mWarningTextView;
                textView2.setTranslationY((-textView2.getWidth()) / 2.0f);
            }
            this.mWarningTextView.setVisibility(0);
        }
    }

    private boolean readViewAngle() {
        SharedPreferences sharedPreferences = getSharedPreferences(PREF_KEY, 0);
        if (sharedPreferences.getInt(PREF_KEY_VIEW_ANGLE_CAMERA_ID, -1) != this.mInternalSettings.camera_id) {
            return false;
        }
        float f = sharedPreferences.getFloat(PREF_KEY_VIEW_ANGLE_H, 0.0f);
        float f2 = sharedPreferences.getFloat(PREF_KEY_VIEW_ANGLE_V, 0.0f);
        if (f == 0.0f || f2 == 0.0f) {
            return false;
        }
        this.mViewAngleH = f;
        this.mViewAngleV = f2;
        return true;
    }

    private void writeViewAngle(int i, float f, float f2) {
        SharedPreferences.Editor editorEdit = getSharedPreferences(PREF_KEY, 0).edit();
        editorEdit.putInt(PREF_KEY_VIEW_ANGLE_CAMERA_ID, i);
        editorEdit.putFloat(PREF_KEY_VIEW_ANGLE_H, f);
        editorEdit.putFloat(PREF_KEY_VIEW_ANGLE_V, f2);
        editorEdit.apply();
    }

    private class CaptureTimer extends CountDownTimer {
        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }

        public CaptureTimer(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Camera2App.this.onClickShutter(null);
        }
    }

    private void startCaptureTimer() {
        this.mCaptureTimer.start();
    }

    public void stopCaptureTimer() {
        this.mCaptureTimer.cancel();
    }

    private int getThumbnailRotation(String str) {
        if (str == null) {
            return 0;
        }
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 0);
            if (attributeInt == 6) {
                return 90;
            }
            if (attributeInt == 3) {
                return 180;
            }
            return attributeInt == 8 ? 270 : 0;
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        }
    }

    private void showBlackScreen() {
        findViewById(R.id.blackScreen).setVisibility(0);
    }

    public void hideBlackScreen() {
        this.mCameraCheckTimer.cancel();
        findViewById(R.id.blackScreen).setVisibility(4);
    }

    private boolean isVisibleBlackScreen() {
        return findViewById(R.id.blackScreen).getVisibility() == 0;
    }

    public void onCancelLocationSetting() {
        this.mShutdownView = false;
        this.mPermissionSequence = true;
        this.mSettingList.setChecked(1, false);
        this.mScreenCounter = 3;
        showBlackScreen();
        try {
            startCamera();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            onErrorCamera();
        }
    }

    public ProgressBar getSavingProgressBar() {
        if (!this.mIsInflateSavingProgress) {
            this.mIsInflateSavingProgress = true;
            ((ViewStub) findViewById(R.id.stubSavingProgressBar)).inflate();
        }
        return (ProgressBar) findViewById(R.id.SavingProgressBar);
    }

    public void showSavingProgressBar() {
        LogFilter.d(LOG_TAG, "showSavingProgressBar");
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.clearThumbnail();
        }
        setViewsVisibility(4);
        this.mWarningTextView.setVisibility(4);
        this.mPreviewFrame.setVisibility(4);
        this.mCurPreviewFrame.setVisibility(4);
        this.mPreviewArrow.setVisibility(4);
        setMiniPreviewAndArrowsVisibility(false, false);
        getSavingProgressBar().setVisibility(0);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:36:0x00de  */
    private void setupUiAndCommonSettings() {
        int i;
        EnumDialogType enumDialogType;
        if (this.mCreateSequence) {
            this.mCreateSequence = false;
            this.mSettings.load();
        }
        boolean z = this.mResumeSequence;
        boolean z2 = this.mPermissionSequence;
        this.mResumeSequence = false;
        this.mPermissionSequence = false;
        if (z) {
            String useVolumeKey = this.mSettings.getUseVolumeKey();
            useVolumeKey.hashCode();
            if (useVolumeKey.equals(VALUE_VOLUME_KEY_VOLUME)) {
                i = R.string.cam_strings_panorama_volumekey_volume_txt;
            } else {
                i = !useVolumeKey.equals(VALUE_VOLUME_KEY_ZOOM) ? R.string.cam_strings_panorama_volumekey_shutter_txt : R.string.cam_strings_panorama_volumekey_zoom_txt;
            }
            this.mSettingSubListUseVolumeKey.setSelectedResourceId(i);
            SettingSubList settingSubList = this.mSettingSubListSaveDestination;
            boolean zIsSaveInternalStorage = this.mSettings.isSaveInternalStorage();
            int i2 = R.string.cam_strings_panorama_save_destination_ims_txt;
            settingSubList.setSelectedResourceId(zIsSaveInternalStorage ? R.string.cam_strings_panorama_save_destination_ims_txt : R.string.cam_strings_panorama_save_destination_sd_txt);
            this.mSettingList.setSummary(2, i);
            SettingList settingList = this.mSettingList;
            if (!this.mSettings.isSaveInternalStorage()) {
                i2 = R.string.cam_strings_panorama_save_destination_sd_txt;
            }
            settingList.setSummary(4, i2);
            this.mSettingList.setChecked(1, this.mSettings.isSaveLocation());
            this.mSettingList.setChecked(3, this.mSettings.isCameraSound());
            if (!StorageMonitor.isExternalStorageMounted(this)) {
                LogFilter.d(LOG_TAG, "SD card is not mounted.");
            } else {
                LogFilter.d(LOG_TAG, "SD card is mounted.");
            }
            boolean z3 = !checkRemainingMemory(true, false);
            if (!this.mSettings.isSaveLocation()) {
                this.mLocationManager.clearLocation();
                if (this.mSettings.isShowDialogLocation()) {
                    startDialog(EnumDialogType.DIALOG_TYPE_SELECT_CHANGE_LOCATION);
                } else if (z3) {
                    this.mOverlayDialogNum--;
                    this.mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
                    EnumDialogType[] enumDialogTypeArr = this.mOverlayDialogType;
                    int i3 = this.mOverlayDialogNum;
                    enumDialogType = enumDialogTypeArr[i3];
                    enumDialogTypeArr[i3] = EnumDialogType.DIALOG_TYPE_NONE;
                    if (AnonymousClass30.$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[enumDialogType.ordinal()] != 17) {
                        startDialog(enumDialogType);
                    }
                }
            } else if (!(!checkLocationService())) {
                if (z3) {
                    this.mOverlayDialogNum--;
                    this.mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
                    EnumDialogType[] enumDialogTypeArr2 = this.mOverlayDialogType;
                    int i4 = this.mOverlayDialogNum;
                    enumDialogType = enumDialogTypeArr2[i4];
                    enumDialogTypeArr2[i4] = EnumDialogType.DIALOG_TYPE_NONE;
                    if (AnonymousClass30.$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType[enumDialogType.ordinal()] != 17) {
                        startDialog(enumDialogType);
                    }
                }
            }
        }
        if (z) {
            this.mSettingList.setItemVisibility(3, this.mCanDisableShutterSound);
            this.mSettingList.setItemVisibility(4, true);
            this.mSettingList.setItemVisibility(5, !Util.isSystemApp(this));
        }
        if (z || z2) {
            if (this.mStartTrackFlag) {
                setViewsVisibility(0);
                updateViews();
            }
            if (this.mUseCamera1) {
                this.mMiniPreviewImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            } else {
                this.mMiniPreviewImageView.setScaleType(ImageView.ScaleType.MATRIX);
            }
            this.mMiniPreviewImageView.setImageMatrix(this.mMiniPreviewMatrix);
            configureTransform();
        }
    }

    private boolean isMainThread() {
        if (this.mMainThreadName == null) {
            this.mMainThreadName = getMainLooper().getThread().getName();
        }
        return Thread.currentThread().getName().matches(this.mMainThreadName);
    }

    public void initInternalSettingsViewsSync() {
        this.mInternalSettings.initViews(this.mMorphoCamera, this.mHandler, ALWAYS_AUTO_MODE_AFTER_STARTUP);
    }

    private void initInternalSettingsViewsAsync() {
        runOnUiThread(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.28
            @Override // java.lang.Runnable
            public void run() {
                Camera2App.this.initInternalSettingsViewsSync();
            }
        });
    }

    private void initInternalSettingsViews() {
        initInternalSettingsViewsSync();
    }

    public void onPreviewStartSubSync() {
        setupUiAndCommonSettings();
        findViewById(R.id.panoramagp2_preview_background).setBackground(null);
        if (!this.mKeyFocusPressed && !this.mGuiCapturePressed) {
            updateViewsForPreview();
            if (this.mDialog != null) {
                setMiniPreviewVisibility(false);
            }
        }
        this.mInternalSettings.updateViewsForPreviewStart();
    }

    private void onPreviewStartSubAsync() {
        runOnUiThread(new Runnable() { // from class: com.sonyericsson.android.camera3d.Camera2App.29
            @Override // java.lang.Runnable
            public void run() {
                if (Camera2App.this.mActive) {
                    Camera2App.this.onPreviewStartSubSync();
                }
            }
        });
    }

    private void onPreviewStartSub() {
        if (isMainThread()) {
            onPreviewStartSubSync();
        } else {
            onPreviewStartSubAsync();
        }
    }

    public boolean isResolution16_9() {
        CameraInfo cameraInfo = this.mMorphoCamera.cameraInfo();
        return Math.abs((((float) cameraInfo.getCaptureWidth()) / ((float) cameraInfo.getCaptureHeight())) - 1.7777778f) < 0.01f;
    }

    private void getMobilePhonePixels() {
        Point realSize = getRealSize(this);
        this.realPixelSize = realSize;
        if (realSize.x > this.realPixelSize.y) {
            int i = this.realPixelSize.x;
            Point point = this.realPixelSize;
            point.x = point.y;
            this.realPixelSize.y = i;
        }
        LogFilter.i(LOG_TAG, "portrait orientation as base, realPixelSize size : " + this.realPixelSize.x + " x " + this.realPixelSize.y);
    }

    private Point getRealSize(Context context) {
        Rect bounds = ((WindowManager) context.getSystemService("window")).getCurrentWindowMetrics().getBounds();
        Size size = new Size(bounds.width(), bounds.height());
        return new Point(size.getWidth(), size.getHeight());
    }

    public boolean isDisplayEighteenToNine() {
        return Math.abs((((float) this.realPixelSize.y) / ((float) this.realPixelSize.x)) - 2.0f) < 0.01f;
    }

    public boolean isDisplayTwentyOneToNine() {
        return Math.abs((((float) this.realPixelSize.y) / ((float) this.realPixelSize.x)) - 2.3333333f) < 0.01f;
    }

    public boolean isDisplayNineteenPointFiveToNine() {
        return Math.abs((((float) this.realPixelSize.y) / ((float) this.realPixelSize.x)) - 2.1666667f) < 0.01f;
    }

    public int getLiveViewWidth() {
        if (isDisplayEighteenToNine()) {
            return (getLiveViewHeight() / 16) * 9;
        }
        return this.realPixelSize.x;
    }

    public int getLiveViewHeight() {
        if (isDisplayEighteenToNine()) {
            return (this.realPixelSize.y - getSettingButtonHeight()) - getNavigationBarHeight();
        }
        if (isDisplayNineteenPointFiveToNine() || isDisplayTwentyOneToNine()) {
            if (isResolution16_9()) {
                return (this.realPixelSize.x * 16) / 9;
            }
            return (this.realPixelSize.x * 4) / 3;
        }
        return this.realPixelSize.y;
    }

    public int getSettingButtonHeight() {
        return getResources().getDimensionPixelSize(R.dimen.header_icon_container_height);
    }

    public int getNavigationBarHeight() {
        int identifier = getResources().getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return getResources().getDimensionPixelSize(R.dimen.navigationbar_heght);
    }

    private void initializeMiniPreviewTextureView() {
        TextureView textureView = new TextureView(this);
        this.mMiniPreviewTextureView = textureView;
        textureView.setSurfaceTextureListener(this.mMiniPreviewSurfaceTextureListener);
        this.mMiniPreviewTextureView.setLayoutParams(this.mMiniPreviewImageView.getLayoutParams());
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.root_view);
        relativeLayout.addView(this.mMiniPreviewTextureView, relativeLayout.indexOfChild(this.mMiniPreviewImageView) - 1);
    }

    private void abortCamera() {
        MorphoCameraBase morphoCameraBase = this.mMorphoCamera;
        if (morphoCameraBase != null) {
            morphoCameraBase.stopState();
            this.mMorphoCamera.cameraInfo().abortCaptures();
            if (isEngineRunning() && !isPanoramaSaving() && this.mDirectionFunction.enabled()) {
                LogFilter.d(LOG_TAG, "panorama is capturing.");
                playSound(this.mStopSoundId);
                this.mPanoramaState.abort();
                setAttachExit();
            } else if (isPanoramaSaving()) {
                LogFilter.d(LOG_TAG, "panorama is saving.");
                this.mSavingBackground = true;
                if (!this.mDirectionFunction.enabled()) {
                    return;
                }
            } else {
                LogFilter.d(LOG_TAG, "panorama is idling.");
                this.mMorphoCamera.cancelState();
            }
            this.mMorphoCamera.setDefaultCameraState();
            this.mMorphoCamera.pause();
            this.mMorphoCamera.exit();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        reconstructLocalCache();
    }

    private static String[] getStoragePermissionList() {
        return new String[]{"android.permission.READ_MEDIA_IMAGES"};
    }

    private static String[] getCameraStoragePermissionList() {
        return new String[]{"android.permission.CAMERA", "android.permission.READ_MEDIA_IMAGES"};
    }

    private boolean areStoragePermissionsGranted() {
        return checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0 && checkSelfPermission("android.permission.READ_MEDIA_IMAGES") == 0;
    }
}
