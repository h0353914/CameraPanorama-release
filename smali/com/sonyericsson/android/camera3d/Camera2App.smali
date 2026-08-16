.class public Lcom/sonyericsson/android/camera3d/Camera2App;
.super Landroidx/fragment/app/FragmentActivity;
.source "Camera2App.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;
.implements Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;
.implements Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;
.implements Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;
.implements Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;,
        Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;,
        Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;,
        Lcom/sonyericsson/android/camera3d/Camera2App$Settings;,
        Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;,
        Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;,
        Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;,
        Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;,
        Lcom/sonyericsson/android/camera3d/Camera2App$MyCountDownTimer;,
        Lcom/sonyericsson/android/camera3d/Camera2App$CaptureTimer;,
        Lcom/sonyericsson/android/camera3d/Camera2App$CameraCheckTimer;,
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;,
        Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;,
        Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;,
        Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;,
        Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonClickListener;,
        Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonTouchListener;,
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;,
        Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;,
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;
    }
.end annotation


# static fields
.field private static final ALWAYS_AUTO_MODE_AFTER_STARTUP:Z

.field private static final ASPECT_TABLE:[[I

.field private static final BASIC_SYSTEM_UI_FLAGS:I = 0x700

.field private static final BLACK_SCREEN_COUNTER_FOR_LAUNCH:I = 0x2

.field private static final BLACK_SCREEN_COUNTER_FOR_SUSPEND:I = 0x3

.field public static final DEBUG_CAMERA_PARAM:Z = false

.field private static final DEBUG_HIDE_MINI_PREVIEW:Z = false

.field private static final DEBUG_VERSION:I = 0x16901

.field private static final DEFAULT_SETTING_CAMERA_SOUND:Z = true

.field private static final DEFAULT_SETTING_SAVE_INTERNAL_STORAGE:Z = true

.field private static final DEFAULT_SETTING_SAVE_LOCATION:Z = false

.field private static final DEFAULT_SETTING_USE_VOLUME_KEY:Ljava/lang/String; = "HW_CAMERA_KEY"

.field private static final DO_BACKGROUND_OPEN_CAMERA:Z = true

.field private static final FILE_NAME_DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd_HHmmssSSS"

.field private static final GET_LATEST_IMAGE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final GET_PREVIEW_IMAGE_EVERY_FRAME:Z = false

.field private static final INTERVAL:J = 0x3e8L

.field private static final LIMIT_DIRECTION:Z

.field private static final LOG_TAG:Ljava/lang/String; = "Camera2App"

.field private static final MAX_LOCAL_CACHE_NUM:I = 0x64

.field private static final OVERLAY_DIALOG_NUM_MAX:I = 0x3

.field private static final PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

.field private static final PERMISSIONS_LOCATION:[Ljava/lang/String;

.field private static final PERMISSIONS_STORAGE:[Ljava/lang/String;

.field private static final PERMISSION_CAMERA:[Ljava/lang/String;

.field private static final PREFIX_DIR:Ljava/lang/String; = "Camera"

.field private static final PREF_KEY:Ljava/lang/String; = "ApplicationPreference"

.field private static final PREF_KEY_FIRST_LAUNCH:Ljava/lang/String; = "First Launch"

.field private static final PREF_KEY_FIRST_TIME_LOCATION:Ljava/lang/String; = "First Time Location"

.field private static final PREF_KEY_VIEW_ANGLE_CAMERA_ID:Ljava/lang/String; = "VIEW_ANGLE_CAMERA_ID"

.field private static final PREF_KEY_VIEW_ANGLE_H:Ljava/lang/String; = "VIEW_ANGLE_H"

.field private static final PREF_KEY_VIEW_ANGLE_V:Ljava/lang/String; = "VIEW_ANGLE_V"

.field private static final PREVIEW_LONG_SIDE_CROP_RATIO:F = 1.0f

.field private static final PREVIEW_SPREAD_BOTH_SIDES:Z

.field private static final PRINT_PROCESSING_TIME:Z = false

.field private static final PreviewImageSynchronizedObject:Ljava/lang/Object;

.field private static final REMAINING_MEMORY_SIZE_MIN:J = 0x3c00000L

.field private static final REMAINING_MEMORY_SIZE_RECOMMEND:J = 0x9600000L

.field private static final REQUEST_CAMERA:I = 0x1

.field private static final REQUEST_CAMERA_STORAGE:I = 0x0

.field private static final REQUEST_LOCATION:I = 0x3

.field private static final REQUEST_STORAGE:I = 0x2

.field private static final REQUEST_SYSTEM_LOCATION_PERMISSION:I = 0x28

.field private static final REQUEST_VIEW:I = 0x1e

.field private static final SAVE_DESTINATION_EXTERNAL:Z = false

.field private static final SAVE_DESTINATION_INTERNAL:Z = true

.field private static final SAVE_TASK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final SHOW_DUAL_STORAGE_AVAILABLE_DIALOG:Z = false

.field private static final SLEEP_MICROSEC:I

.field private static final SLEEP_MILLISEC:J

.field private static final SLEEP_NANOSEC:I

.field private static final STABILIZE_PREVIEW_FRAME:Z = true

.field private static final START_TIME:J = 0x2bf20L

.field private static final STORAGE_PATH_PREFIX:Ljava/lang/String;

.field private static final THREAD_NAME_GET_LATEST_IMAGE:Ljava/lang/String; = "GetLatestImage"

.field private static final THREAD_NAME_SAVE_TASK:Ljava/lang/String; = "SaveTask"

.field private static final USE_TEXTURE_VIEW_FOR_MINI_PREVIEW:Z = false

.field private static final VALUE_VOLUME_KEY_CAMERA:Ljava/lang/String; = "HW_CAMERA_KEY"

.field private static final VALUE_VOLUME_KEY_VOLUME:Ljava/lang/String; = "VOLUME"

.field private static final VALUE_VOLUME_KEY_ZOOM:Ljava/lang/String; = "ZOOM"

.field private static final mSyncCancelSave:Ljava/lang/Object;

.field private static final mSyncImageTask:Ljava/lang/Object;

.field private static final sAttachExit:Lcom/sonyericsson/android/camera3d/CaptureImage;


# instance fields
.field private final mACMatrix:[D

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mActive:Z

.field private mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

.field private mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

.field private mAngle:I

.field private mAovs:[D

.field private mArrowDir:I

.field private final mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/sonyericsson/android/camera3d/CaptureImage;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachNumDirectionUndecided:J

.field private mAutoFocusCircle:Landroid/widget/ImageView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

.field private mCameraCheckTimer:Landroid/os/CountDownTimer;

.field private mCameraIdTmp:I

.field private mCameraOrientation:I

.field private mCanDisableShutterSound:Z

.field private mCaptureTimer:Landroid/os/CountDownTimer;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCreateSequence:Z

.field private mCurOrientation:I

.field private mCurPreviewFrame:Landroid/view/View;

.field private mCurViewDegree:I

.field private mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

.field private mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field private mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

.field private mEngineEnding:Z

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFocusedSoundId:I

.field private mGetLatestImageTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mGpsSearchTimer:Ljava/util/Timer;

.field private mGpsSearchTimerTask:Ljava/util/TimerTask;

.field private mGravities:[F

.field private mGuiCapturePressed:Z

.field private final mGyroMatrix:[D

.field private mGyroscope:Landroid/hardware/Sensor;

.field private final mHandler:Landroid/os/Handler;

.field private final mHideBlackScreenRunnable:Ljava/lang/Runnable;

.field private mImageFileLocation:Ljava/lang/String;

.field private mImageFormat:Ljava/lang/String;

.field private mImageId:J

.field private mImageMimeType:Ljava/lang/String;

.field private mIndexSettingSaveDestinationInternal:I

.field private mIndexSettingSaveDestinationSD:I

.field private mIndexTexture:I

.field private final mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

.field private mInputFolderPath:Ljava/lang/String;

.field private final mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

.field private mIsAutoFocusProcessing:Z

.field private mIsFrontCamera:Z

.field private mIsInflateSavingProgress:Z

.field private mIsInvalidDir:Z

.field private final mIsMiniPreviewArrowsVisible:[Z

.field private mIsPanoramaCancel:Z

.field private mIsSensorAverage:Z

.field private mKeyFocusPressed:Z

.field private mLatestCaptureResult:Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

.field private mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

.field private mLocalCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalCacheBackup:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

.field private mLpTextureView:Landroid/widget/RelativeLayout$LayoutParams;

.field private mMainThreadName:Ljava/lang/String;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

.field private mMiniPreviewFrame:Landroid/view/View;

.field private mMiniPreviewImageView:Landroid/widget/ImageView;

.field private mMiniPreviewMatrix:Landroid/graphics/Matrix;

.field private final mMiniPreviewSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mMiniPreviewTextureView:Landroid/view/TextureView;

.field private mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

.field private mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

.field private mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

.field private mOverlayDialogNum:I

.field private final mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field private mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

.field private mPermissionSequence:Z

.field private mPinToast:Landroid/widget/Toast;

.field private mPreviewArrow:Landroid/widget/ImageView;

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mPreviewFitBitmap:Landroid/graphics/Bitmap;

.field private mPreviewFitBitmapCanvas:Landroid/graphics/Canvas;

.field private mPreviewFitBitmapPaint:Landroid/graphics/Paint;

.field private mPreviewFitMatrix:Landroid/graphics/Matrix;

.field private mPreviewFrame:Landroid/widget/FrameLayout;

.field private final mPreviewFrameRunnable:Ljava/lang/Runnable;

.field private mPreviewImageView:Landroid/widget/ImageView;

.field private mPreviewLine1:Landroid/view/View;

.field private mPreviewLine2:Landroid/view/View;

.field private final mRVMatrix:[D

.field private mResumeAlertOkDialog:Z

.field private mResumeAlertSettingDialog:Z

.field private mResumeSequence:Z

.field private mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

.field private mRotationVector:Landroid/hardware/Sensor;

.field private mSavePanoramaPath:Ljava/lang/String;

.field private mSavingBackground:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScreenCounter:I

.field private mSensorAspectIndex:I

.field private mSensorCnt:I

.field private mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

.field private mSensorFusionMode:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorSensitivityAverageManager:Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;

.field private mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

.field private final mSettingSaveDestinationList:[I

.field private mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

.field private mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

.field private final mSettingUseVolumeKeyList:[I

.field private final mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

.field private final mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

.field private mShutdownView:Z

.field private mShutterSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStartTrackFlag:Z

.field private mStopSoundId:I

.field private mStubFramePanoramaPreview:Landroid/view/View;

.field private final mSurfaceListener:Landroid/view/SurfaceHolder$Callback;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private final mTakePictureVisibleRunnable:Ljava/lang/Runnable;

.field private mTemperatureHigh:Z

.field private mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

.field private mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailUri:Landroid/net/Uri;

.field private mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private final mUpdateCameraInfoViewRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;

.field private mUseCamera1:Z

.field private mUseCamera1Tmp:Z

.field private mView:Landroid/view/View;

.field private mViewAngleH:F

.field private mViewAngleV:F

.field private mWarningTextView:Landroid/widget/TextView;

.field private realPixelSize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSyncImageTask:Ljava/lang/Object;

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSyncCancelSave:Ljava/lang/Object;

    .line 173
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$1;-><init>()V

    .line 174
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->GET_LATEST_IMAGE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 186
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$2;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$2;-><init>()V

    .line 187
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->SAVE_TASK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 201
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera3d/Camera2App;->LIMIT_DIRECTION:Z

    .line 203
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PREVIEW_SPREAD_BOTH_SIDES:Z

    .line 207
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Nexus 5X"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Robin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/sonyericsson/android/camera3d/Camera2App;->ALWAYS_AUTO_MODE_AFTER_STARTUP:Z

    .line 209
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_2

    const/16 v0, 0x1388

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    sput v0, Lcom/sonyericsson/android/camera3d/Camera2App;->SLEEP_MICROSEC:I

    .line 210
    div-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    sput-wide v3, Lcom/sonyericsson/android/camera3d/Camera2App;->SLEEP_MILLISEC:J

    .line 211
    rem-int/2addr v0, v1

    mul-int/2addr v0, v1

    sput v0, Lcom/sonyericsson/android/camera3d/Camera2App;->SLEEP_NANOSEC:I

    .line 251
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2Image;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2Image;-><init>(Landroid/media/Image;)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->sAttachExit:Lcom/sonyericsson/android/camera3d/CaptureImage;

    .line 275
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->STORAGE_PATH_PREFIX:Ljava/lang/String;

    .line 286
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->getCameraStoragePermissionList()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    .line 287
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->getStoragePermissionList()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    .line 288
    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSION_CAMERA:[Ljava/lang/String;

    .line 289
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    .line 448
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PreviewImageSynchronizedObject:Ljava/lang/Object;

    const/16 v0, 0x10

    const/16 v1, 0x9

    .line 4139
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v3, 0x3

    filled-new-array {v1, v3}, [I

    move-result-object v1

    filled-new-array {v2, v2}, [I

    move-result-object v2

    filled-new-array {v0, v1, v2}, [[I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 155
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCreateSequence:Z

    .line 165
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeSequence:Z

    .line 166
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPermissionSequence:Z

    const/4 v1, 0x0

    .line 167
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Ljava/util/concurrent/Future;

    .line 170
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsInflateSavingProgress:Z

    .line 171
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMainThreadName:Ljava/lang/String;

    .line 215
    new-instance v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    .line 219
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mEngineEnding:Z

    .line 225
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGyroscope:Landroid/hardware/Sensor;

    .line 226
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAccelerometer:Landroid/hardware/Sensor;

    .line 227
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotationVector:Landroid/hardware/Sensor;

    const/16 v2, 0x9

    .line 228
    new-array v3, v2, [D

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGyroMatrix:[D

    .line 229
    new-array v3, v2, [D

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRVMatrix:[D

    .line 230
    new-array v2, v2, [D

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mACMatrix:[D

    .line 231
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    const/4 v2, 0x5

    .line 237
    new-array v2, v2, [Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    .line 244
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    .line 250
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 254
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    const v2, 0x7f0c0099

    const v3, 0x7f0c0097

    .line 266
    filled-new-array {v2, v3}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingUseVolumeKeyList:[I

    const v2, 0x7f0c0089

    const v3, 0x7f0c008a

    .line 268
    filled-new-array {v2, v3}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSaveDestinationList:[I

    const-wide/16 v2, -0x1

    .line 272
    iput-wide v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageId:J

    .line 273
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFileLocation:Ljava/lang/String;

    .line 274
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageMimeType:Ljava/lang/String;

    const/4 v2, 0x1

    .line 294
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    .line 301
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    .line 302
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    .line 304
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsAutoFocusProcessing:Z

    .line 309
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertOkDialog:Z

    .line 310
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertSettingDialog:Z

    .line 311
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    .line 312
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    .line 313
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavingBackground:Z

    .line 314
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsPanoramaCancel:Z

    const/4 v2, 0x2

    .line 317
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    .line 346
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/4 v2, 0x3

    .line 347
    new-array v2, v2, [Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 348
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    .line 351
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    .line 355
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPinToast:Landroid/widget/Toast;

    .line 360
    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$$ExternalSyntheticLambda2;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 426
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, -0x1

    .line 432
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    .line 433
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    .line 434
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    .line 437
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    .line 443
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 444
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmap:Landroid/graphics/Bitmap;

    const/high16 v0, 0x42700000    # 60.0f

    .line 449
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    const/high16 v0, 0x42200000    # 40.0f

    .line 450
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    .line 455
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    .line 471
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    .line 474
    new-instance v0, Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    .line 477
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    .line 590
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    .line 595
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorSensitivityAverageManager:Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;

    .line 698
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$3;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 834
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$4;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 870
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$5;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceListener:Landroid/view/SurfaceHolder$Callback;

    .line 1921
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUpdateCameraInfoViewRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;

    .line 4933
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$14;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$14;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mHideBlackScreenRunnable:Ljava/lang/Runnable;

    .line 4941
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$15;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$15;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrameRunnable:Ljava/lang/Runnable;

    .line 5024
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$16;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$16;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTakePictureVisibleRunnable:Ljava/lang/Runnable;

    .line 7396
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    return-void
.end method

.method private abortCamera()V
    .locals 2

    .line 7487
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v0, :cond_3

    .line 7488
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->stopState()V

    .line 7489
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->abortCaptures()V

    .line 7490
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    const-string v1, "Camera2App"

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isPanoramaSaving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7491
    const-string v0, "panorama is capturing."

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7492
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStopSoundId:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->playSound(I)V

    .line 7493
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->abort()V

    .line 7494
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setAttachExit()V

    goto :goto_0

    .line 7495
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isPanoramaSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7496
    const-string v0, "panorama is saving."

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7497
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavingBackground:Z

    .line 7498
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->enabled()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 7502
    :cond_1
    const-string v0, "panorama is idling."

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7503
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 7509
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->setDefaultCameraState()V

    .line 7511
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->pause()V

    .line 7512
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->exit()V

    :cond_3
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$10100()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 155
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->SAVE_TASK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$10300()Ljava/lang/Object;
    .locals 1

    .line 155
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PreviewImageSynchronizedObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$10402(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$10500(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setAttachExit()V

    return-void
.end method

.method static synthetic access$10600(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$10602(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/sonyericsson/android/camera3d/Camera2App;ZZ)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewAndArrowsVisibility(ZZ)V

    return-void
.end method

.method static synthetic access$11300()Z
    .locals 1

    .line 155
    sget-boolean v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PREVIEW_SPREAD_BOTH_SIDES:Z

    return v0
.end method

.method static synthetic access$11400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/FrameLayout;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$11700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Canvas;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmapCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic access$11702(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmapCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method static synthetic access$11800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Paint;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmapPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$11802(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmapPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$11900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$11902(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initAttachQueue()V

    return-void
.end method

.method static synthetic access$12100(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateViewsForCapture()V

    return-void
.end method

.method static synthetic access$12300(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSavingProgressBar()V

    return-void
.end method

.method static synthetic access$12400(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->hideBlackScreen()V

    return-void
.end method

.method static synthetic access$12500(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->shutdownViews()V

    return-void
.end method

.method static synthetic access$12600(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$12700(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->modeFinish()V

    return-void
.end method

.method static synthetic access$12900()Ljava/lang/Object;
    .locals 1

    .line 155
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSyncImageTask:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewFrame:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$13000(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getLatestImage()V

    return-void
.end method

.method static synthetic access$13100(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/LinkedList;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$13200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$13202(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$13300(Lcom/sonyericsson/android/camera3d/Camera2App;)J
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageId:J

    return-wide v0
.end method

.method static synthetic access$13402(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$13502(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$13600(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    return p0
.end method

.method static synthetic access$13700(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    return p0
.end method

.method static synthetic access$13702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    return p1
.end method

.method static synthetic access$13800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/os/Handler;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStubFramePanoramaPreview:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$14000(Lcom/sonyericsson/android/camera3d/Camera2App;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->updatedOrientation(I)V

    return-void
.end method

.method static synthetic access$14100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isPanoramaSaving()Z

    move-result p0

    return p0
.end method

.method static synthetic access$14200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$14300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InfoIconsFragment;
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$14400(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    return-void
.end method

.method static synthetic access$14500(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    return-object p0
.end method

.method static synthetic access$14600(Lcom/sonyericsson/android/camera3d/Camera2App;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showOkDialog(I)V

    return-void
.end method

.method static synthetic access$14700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    return-object p0
.end method

.method static synthetic access$14800()[Ljava/lang/String;
    .locals 1

    .line 155
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/sonyericsson/android/camera3d/Camera2App;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    return-void
.end method

.method static synthetic access$15000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/RotatableToast;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/view/TextureView;)Landroid/view/TextureView;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewTextureView:Landroid/view/TextureView;

    return-object p1
.end method

.method static synthetic access$15100(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingList;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    return-object p0
.end method

.method static synthetic access$15200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    return-object p0
.end method

.method static synthetic access$15300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    return-object p0
.end method

.method static synthetic access$15400(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->translateSettingSubList(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$15500(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSettingButtonHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$15600(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getNavigationBarHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$15700(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->autoFocus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$15800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    return p0
.end method

.method static synthetic access$15802(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    return p1
.end method

.method static synthetic access$15900(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->unlockFocus()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->textureViewPrepared()V

    return-void
.end method

.method static synthetic access$16200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isActiveGpsSearchTimer()Z

    move-result p0

    return p0
.end method

.method static synthetic access$16300(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->stopGpsSearchTimer()V

    return-void
.end method

.method static synthetic access$16400(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showPanoramaGuideDirection()V

    return-void
.end method

.method static synthetic access$16500(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initInternalSettingsViewsSync()V

    return-void
.end method

.method static synthetic access$16600(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onPreviewStartSubSync()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera3d/Camera2App;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/sonyericsson/android/camera3d/Camera2App;F)F
    .locals 0

    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    return p1
.end method

.method static synthetic access$2102(Lcom/sonyericsson/android/camera3d/Camera2App;F)F
    .locals 0

    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    return p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->makeEngineParam()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplayRotation()I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->openSettingDialog()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->excludeOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSaveDestinationExternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera3d/Camera2App;Z)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setSaveDestination(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera3d/Camera2App;ZZ)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setEnabledSaveDestination(ZZ)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$Settings;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setThumbnail()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getLiveViewHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLatestCaptureResult:Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;)Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLatestCaptureResult:Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorSensitivityAverageManager:Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finishEngine()V

    return-void
.end method

.method static synthetic access$4600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->createNewFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;Ljava/nio/ByteBuffer;IILandroid/location/Location;)Landroid/util/Pair;
    .locals 0

    .line 155
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/android/camera3d/Camera2App;->saveImage(Ljava/lang/String;Ljava/nio/ByteBuffer;IILandroid/location/Location;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4902(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getLiveViewWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInputFolderPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInputFolderPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$5102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMaxWidth:I

    return p1
.end method

.method static synthetic access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMaxHeight:I

    return p0
.end method

.method static synthetic access$5202(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMaxHeight:I

    return p1
.end method

.method static synthetic access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    return-object p0
.end method

.method static synthetic access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAngle:I

    return p0
.end method

.method static synthetic access$5402(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAngle:I

    return p1
.end method

.method static synthetic access$5500(Lcom/sonyericsson/android/camera3d/Camera2App;)J
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachNumDirectionUndecided:J

    return-wide v0
.end method

.method static synthetic access$5502(Lcom/sonyericsson/android/camera3d/Camera2App;J)J
    .locals 0

    .line 155
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachNumDirectionUndecided:J

    return-wide p1
.end method

.method static synthetic access$5600(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ProgressBar;
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSavingProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavingBackground:Z

    return p0
.end method

.method static synthetic access$5702(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavingBackground:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    return p0
.end method

.method static synthetic access$5900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    return p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6100(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateViews()V

    return-void
.end method

.method static synthetic access$6200(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6202(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->createEngine()Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    return-object p0
.end method

.method static synthetic access$6402(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/PanoramaState;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    return-object p1
.end method

.method static synthetic access$6600(J)Ljava/lang/String;
    .locals 0

    .line 155
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->createName(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6700()Ljava/lang/String;
    .locals 1

    .line 155
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->STORAGE_PATH_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$7000()Lcom/sonyericsson/android/camera3d/CaptureImage;
    .locals 1

    .line 155
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->sAttachExit:Lcom/sonyericsson/android/camera3d/CaptureImage;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mEngineEnding:Z

    return p0
.end method

.method static synthetic access$7200(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setInitialRotationByGravity()V

    return-void
.end method

.method static synthetic access$7302(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsSensorAverage:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setSensorFusionValue()V

    return-void
.end method

.method static synthetic access$7500(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsInvalidDir:Z

    return p0
.end method

.method static synthetic access$7502(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsInvalidDir:Z

    return p1
.end method

.method static synthetic access$7700()J
    .locals 2

    .line 155
    sget-wide v0, Lcom/sonyericsson/android/camera3d/Camera2App;->SLEEP_MILLISEC:J

    return-wide v0
.end method

.method static synthetic access$7800()I
    .locals 1

    .line 155
    sget v0, Lcom/sonyericsson/android/camera3d/Camera2App;->SLEEP_NANOSEC:I

    return v0
.end method

.method static synthetic access$7900()Ljava/lang/Object;
    .locals 1

    .line 155
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSyncCancelSave:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Point;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsPanoramaCancel:Z

    return p0
.end method

.method static synthetic access$8002(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsPanoramaCancel:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStopSoundId:I

    return p0
.end method

.method static synthetic access$8200(Lcom/sonyericsson/android/camera3d/Camera2App;I)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->playSound(I)V

    return-void
.end method

.method static synthetic access$8300(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    return p0
.end method

.method static synthetic access$8400(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->stopCaptureTimer()V

    return-void
.end method

.method static synthetic access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraOrientation:I

    return p0
.end method

.method static synthetic access$8700(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 155
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mArrowDir:I

    return p0
.end method

.method static synthetic access$8702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mArrowDir:I

    return p1
.end method

.method static synthetic access$8800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsFrontCamera:Z

    return p0
.end method

.method static synthetic access$8900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isResolution16_9()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9002(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    return p1
.end method

.method static synthetic access$9100(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->unregisterGravitySensorListener()V

    return-void
.end method

.method static synthetic access$9400(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/CaptureImage;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->addAttachQueue(Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private addAttachQueue(Lcom/sonyericsson/android/camera3d/CaptureImage;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 414
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge v0, p1, :cond_1

    .line 415
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera3d/CaptureImage;

    if-eqz p1, :cond_0

    .line 417
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addLocalCache(Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;)V
    .locals 3

    .line 6166
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6167
    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 6168
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 6169
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 6172
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 6173
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-le p1, v1, :cond_1

    .line 6174
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private areStoragePermissionsGranted()Z
    .locals 2

    .line 7549
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 7553
    :cond_0
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private autoFocus()Z
    .locals 3

    .line 1537
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->finishState()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1541
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    if-eqz v0, :cond_1

    .line 1542
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;Z)V

    goto :goto_0

    .line 1544
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;-><init>(Z)V

    .line 1546
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 1547
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStart()V

    .line 1548
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    const v2, 0x7f07006e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1549
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 1550
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsAutoFocusProcessing:Z

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private checkLocationService()Z
    .locals 8

    .line 6770
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 6771
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->isValidLocationService()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6772
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->requestLocation()V

    .line 6773
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6775
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->startGpsSearch()V

    .line 6777
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isActiveGpsSearchTimer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6778
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_2

    .line 6779
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$25;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$25;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimerTask:Ljava/util/TimerTask;

    .line 6794
    :cond_2
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimer:Ljava/util/Timer;

    .line 6795
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimerTask:Ljava/util/TimerTask;

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 6798
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$26;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$26;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->updateLocation(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;)V

    return v1

    .line 6818
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6820
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->stopGpsSearch()V

    .line 6822
    :cond_5
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_VALIDATE_LOCATION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    const/4 p0, 0x0

    return p0
.end method

.method private checkRemainingMemory(Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 6653
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(ZZ)Z

    move-result p0

    return p0
.end method

.method private checkRemainingMemory(ZZ)Z
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 6659
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getAvailableStorageSpace(ZLandroid/content/Context;)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 6660
    invoke-static {v4, v0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getAvailableStorageSpace(ZLandroid/content/Context;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    move v9, v4

    :goto_0
    const-wide/32 v10, 0x3c00000

    cmp-long v12, v2, v10

    if-gez v12, :cond_1

    move v12, v4

    goto :goto_1

    :cond_1
    move v12, v1

    :goto_1
    cmp-long v13, v5, v10

    if-gez v13, :cond_2

    move v13, v4

    goto :goto_2

    :cond_2
    move v13, v1

    :goto_2
    if-eqz v13, :cond_4

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    move v12, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v12, v1

    .line 6669
    :goto_4
    invoke-direct {v0, v1, v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->setEnabledSaveDestination(ZZ)V

    .line 6670
    invoke-direct {v0, v4, v13}, Lcom/sonyericsson/android/camera3d/Camera2App;->setEnabledSaveDestination(ZZ)V

    .line 6672
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSaveDestinationExternal()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 6674
    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v13, v9}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSdcardInserted(Z)V

    if-eqz v9, :cond_5

    move v9, v1

    move-wide v13, v5

    goto :goto_6

    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_7

    .line 6679
    :cond_6
    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setSaveDestination(Z)V

    :cond_7
    if-nez p1, :cond_8

    if-eqz p2, :cond_8

    .line 6682
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return v4

    :cond_8
    if-eqz p1, :cond_9

    .line 6685
    sget-object v9, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    move v9, v4

    goto :goto_5

    :cond_9
    move v9, v1

    :goto_5
    move-wide v13, v2

    move v12, v4

    goto :goto_6

    :cond_a
    if-eqz p1, :cond_b

    .line 6693
    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSdcardInserted()Z

    if-nez v9, :cond_b

    .line 6694
    iget-object v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v9, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSdcardInserted(Z)V

    :cond_b
    move v9, v1

    move-wide v13, v2

    .line 6709
    :goto_6
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 6710
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v10, v1

    if-eqz v12, :cond_c

    const-string v1, "external"

    goto :goto_7

    :cond_c
    const-string v1, "internal"

    :goto_7
    const/4 v2, 0x2

    aput-object v1, v10, v2

    .line 6709
    const-string v1, "checkRemainingMemory Internal=%d External=%d Destination storage is %s."

    invoke-static {v15, v1, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera2App"

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v1, v13, v7

    if-gez v1, :cond_11

    if-eqz p2, :cond_e

    if-eqz v12, :cond_d

    .line 6714
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_8

    .line 6716
    :cond_d
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_8

    :cond_e
    if-eqz p1, :cond_10

    if-eqz v12, :cond_f

    .line 6720
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_8

    .line 6722
    :cond_f
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_10
    :goto_8
    return v4

    .line 6727
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v1

    if-eqz v1, :cond_13

    const-wide/32 v2, 0x9600000

    cmp-long v2, v13, v2

    if-gez v2, :cond_12

    .line 6730
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->showMemoryIcon()V

    goto :goto_9

    .line 6732
    :cond_12
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->hideMemoryIcon()V

    :cond_13
    :goto_9
    const-wide/32 v1, 0x3c00000

    cmp-long v1, v13, v1

    if-gez v1, :cond_18

    if-eqz p2, :cond_15

    if-eqz v12, :cond_14

    .line 6739
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_a

    .line 6741
    :cond_14
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_a

    :cond_15
    if-eqz p1, :cond_17

    if-eqz v12, :cond_16

    .line 6745
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_a

    .line 6747
    :cond_16
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_17
    :goto_a
    return v4

    :cond_18
    return v9
.end method

.method private clearLocalCache()V
    .locals 0

    .line 6145
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    if-eqz p0, :cond_0

    .line 6146
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method private clearLocalCacheBackup()V
    .locals 1

    .line 6154
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 6155
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 6156
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    :cond_0
    return-void
.end method

.method private closeSettingDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 1032
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog(Z)V

    return-void
.end method

.method private closeSettingDialog(Z)V
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/SettingList;->close(Z)V

    .line 1022
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->close(Z)V

    .line 1023
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->close(Z)V

    .line 1024
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->notifySettingDialogClosed()V

    const/4 p1, 0x1

    .line 1025
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 1026
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showInfoIcons()V

    return-void
.end method

.method private closeSettingSubDialog()V
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->close()V

    .line 1041
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->close()V

    .line 1042
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->setActive(Z)V

    return-void
.end method

.method private configureTransform()V
    .locals 14

    .line 1775
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    if-nez v0, :cond_0

    return-void

    .line 1779
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    .line 1780
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1781
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1782
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1783
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v4, v6, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1784
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 1785
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    const/high16 v8, 0x43340000    # 180.0f

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eq v10, v1, :cond_2

    if-ne v9, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v11, v1, :cond_3

    .line 1795
    invoke-virtual {v2, v8, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 1787
    :cond_2
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    sub-float v12, v5, v12

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    sub-float v13, v7, v13

    invoke-virtual {v4, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 1788
    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1789
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    .line 1790
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v3, v12

    iget-object v12, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    .line 1791
    invoke-virtual {v12}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 1789
    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1792
    invoke-virtual {v2, v3, v3, v5, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    add-int/lit8 v3, v1, -0x2

    mul-int/lit8 v3, v3, 0x5a

    int-to-float v3, v3

    .line 1793
    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1797
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setTransform(Landroid/graphics/Matrix;)V

    const v3, 0x7f080085

    .line 1799
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1800
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v5, v6, v6, v7, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1801
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 1802
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    if-eq v10, v1, :cond_5

    if-ne v9, v1, :cond_4

    goto :goto_2

    :cond_4
    if-ne v11, v1, :cond_6

    .line 1812
    invoke-virtual {v2, v8, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_3

    .line 1804
    :cond_5
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float v8, v6, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    sub-float v9, v7, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 1805
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v5, v4, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1807
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1808
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 1806
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1809
    invoke-virtual {v2, v0, v0, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    sub-int/2addr v1, v11

    mul-int/lit8 v1, v1, 0x5a

    int-to-float v0, v1

    .line 1810
    invoke-virtual {v2, v0, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1814
    :cond_6
    :goto_3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewMatrix:Landroid/graphics/Matrix;

    .line 1815
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_7

    .line 1816
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_7
    return-void
.end method

.method private static convertToDialogOrientation(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_2

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    if-ne p0, v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private createContentinfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;
    .locals 5

    .line 6066
    const-string p0, "_id"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 6068
    const-string p0, "relative_path"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 6070
    const-string v2, "_display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6072
    const-string v3, "mime_type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6074
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    .line 6075
    iput-wide v0, v3, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mId:J

    .line 6076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageFileLocation:Ljava/lang/String;

    .line 6077
    iput-object p1, v3, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageMimeType:Ljava/lang/String;

    return-object v3
.end method

.method private createDefaultIntentView(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1744
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1745
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1746
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private createEngine()Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;
    .locals 15

    .line 1586
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    if-eqz v0, :cond_0

    .line 1587
    sget-object p0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_ALREADY_CREATED:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    return-object p0

    .line 1590
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    .line 1591
    const-string v0, "YUV420_PLANAR"

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1592
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_format:Ljava/lang/String;

    .line 1593
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    const-string v1, "YUV420_SEMIPLANAR"

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_format:Ljava/lang/String;

    goto :goto_0

    .line 1595
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_format:Ljava/lang/String;

    .line 1596
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_format:Ljava/lang/String;

    .line 1598
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_x:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    .line 1599
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_x:D

    double-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    .line 1601
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_y:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 1602
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_y:D

    double-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    .line 1605
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    .line 1606
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getAspectTableIndex(FF)I

    move-result v0

    const/4 v1, 0x2

    .line 1607
    new-array v1, v1, [F

    .line 1608
    iget v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    invoke-static {v2, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getRatios(II[F)V

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "createEngine mViewAngleH="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mViewAngleV="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ratiox="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ratioy="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Camera2App"

    invoke-static {v4, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v9

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    aget v13, v1, v2

    float-to-double v13, v13

    mul-double/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v13

    mul-double/2addr v5, v11

    div-double/2addr v5, v9

    iput-wide v5, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->aovx:D

    .line 1611
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    float-to-double v5, v5

    mul-double/2addr v5, v7

    mul-double/2addr v5, v9

    div-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    aget v1, v1, v3

    float-to-double v7, v1

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    mul-double/2addr v5, v13

    mul-double/2addr v5, v11

    div-double/2addr v5, v9

    iput-wide v5, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->aovy:D

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createEngine aovx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-wide v5, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->aovx:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " aovy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-wide v5, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->aovy:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getLiveViewWidth()I

    move-result v0

    .line 1615
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    mul-int/2addr v1, v0

    int-to-double v5, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-double v7, v1

    div-double/2addr v5, v7

    .line 1616
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "createEngine root_view width="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createEngine mMiniPreviewImageView width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-double v7, v1

    div-double/2addr v5, v7

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-wide v7, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->aovy:D

    mul-double/2addr v5, v7

    iput-wide v5, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->goal_angle:D

    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createEngine goal_angle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-wide v5, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->goal_angle:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->initializeEngine(Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1622
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    if-nez p0, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setAttachEnabled(Z)V

    .line 1623
    sget-object p0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_NEWLY_CREATED:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 1625
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    .line 1626
    sget-object p0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_ERROR:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    return-object p0
.end method

.method private static createName(J)Ljava/lang/String;
    .locals 1

    .line 4214
    const-string v0, "yyyy-MM-dd_kk-mm-ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createNewFilePath()Ljava/lang/String;
    .locals 7

    .line 4218
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd_HHmmssSSS"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4220
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera3d/Camera2App;->STORAGE_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 4222
    invoke-virtual {p0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Camera"

    filled-new-array {v3, v4, v0, v5, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 4220
    const-string v0, "%s%s%s%s%s.JPG"

    invoke-static {v2, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d_save_raw([BLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 4118
    const-string v0, "InputSave"

    const-string v1, "Camera2App"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->newInstance(Z)Lcom/sonyericsson/android/camera3d/PerformanceCounter;

    move-result-object v2

    .line 4120
    :try_start_0
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    .line 4123
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s/%s.yuv"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, v6, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4124
    :try_start_2
    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4129
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 4130
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->stop()V

    .line 4131
    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->putLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 4126
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_1

    .line 4129
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 4130
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->stop()V

    goto :goto_0

    :goto_2
    if-eqz v3, :cond_0

    .line 4129
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 4130
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->stop()V

    .line 4131
    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->putLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4133
    :cond_0
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    .line 4135
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-void
.end method

.method private dismissDialog(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V
    .locals 1

    .line 5532
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    if-eqz v0, :cond_0

    .line 5533
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->close()V

    const/4 v0, 0x0

    .line 5534
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    .line 5536
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    if-eqz p0, :cond_1

    .line 5537
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->dismiss(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    :cond_1
    return-void
.end method

.method private dismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V
    .locals 4

    .line 5542
    sget-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OVERLAY:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5546
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 5547
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5548
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5549
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setButtonsEnabled(Z)V

    .line 5550
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    .line 5552
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 5553
    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/4 v3, 0x0

    .line 5554
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5555
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    .line 5556
    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_5

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p1, :cond_1

    .line 5578
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x28

    .line 5579
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 5582
    :cond_1
    sget-object p1, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$dialog$RotatableDialogFragment$EnumDismissFactor:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, v0, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    goto :goto_0

    .line 5585
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {p1, v0, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    goto :goto_0

    .line 5566
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_EVENT_LISTENER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    .line 5567
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p3, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setShowDialogLocation(Z)V

    :cond_3
    if-eqz p1, :cond_7

    .line 5570
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->isValidLocationService()Z

    move-result p1

    if-nez p1, :cond_4

    .line 5571
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    .line 5573
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {p1, v0, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    goto :goto_0

    .line 5593
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_EVENT_LISTENER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    if-ne p2, p1, :cond_7

    if-eqz p3, :cond_7

    .line 5594
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setShowDialogThermal(Z)V

    goto :goto_0

    .line 5558
    :cond_5
    sget-object p3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_EVENT_LISTENER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    if-ne p2, p3, :cond_6

    .line 5559
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSdcardInserted(Z)V

    :cond_6
    if-eqz p1, :cond_7

    .line 5562
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setSaveDestination(Z)V

    .line 5602
    :cond_7
    :goto_0
    sget-object p1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SUSPEND:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    if-ne p2, p1, :cond_8

    .line 5603
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    return-void

    .line 5607
    :cond_8
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    if-lez p1, :cond_9

    sub-int/2addr p1, v0

    .line 5608
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    .line 5609
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aget-object p3, p2, p1

    .line 5610
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v0, p2, p1

    .line 5611
    sget-object p1, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0x11

    if-eq p1, p2, :cond_9

    .line 5615
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private excludeOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V
    .locals 3

    const/4 v0, 0x0

    .line 5371
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    if-ge v0, v1, :cond_2

    .line 5372
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 5373
    :goto_1
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    if-ge p1, v1, :cond_0

    .line 5374
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aget-object v2, v1, p1

    aput-object v2, v1, v0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 5376
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private finalizeThermalAlert()V
    .locals 1

    .line 6840
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    if-eqz v0, :cond_0

    .line 6841
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 6842
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    :cond_0
    return-void
.end method

.method private finishEngine()V
    .locals 9

    .line 1631
    const-string v0, "Camera2App"

    const-string v1, "finishEngine"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->stopCaptureTimer()V

    .line 1633
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1634
    :try_start_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mEngineEnding:Z

    .line 1635
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    if-nez v2, :cond_0

    .line 1636
    monitor-exit v0

    return-void

    .line 1639
    :cond_0
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->finish()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1641
    const-string v4, "Camera2App"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "MorphoPanoramaGP2.finish error ret:0x%08X"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getAttachFps()F

    move-result v2

    .line 1644
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getAttachAve()F

    move-result v4

    .line 1645
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getAttachStandardDeviation()F

    move-result v5

    const/4 v6, 0x0

    .line 1646
    iput-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    .line 1647
    const-string p0, "Camera2App"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "attach %.02f fps (ave:%.02f, std:%.02f)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v8, v2

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getAspectTableIndex(FF)I
    .locals 5

    div-float/2addr p1, p0

    const/4 p0, 0x0

    move v0, p0

    .line 4149
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 4150
    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v2, v1, v2

    int-to-float v2, v2

    aget v1, v1, p0

    int-to-float v1, v1

    div-float/2addr v2, v1

    sub-float v1, p1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method private getBaseAspect()I
    .locals 2

    .line 4202
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p0

    .line 4203
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPhysicalWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPhysicalHeight()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getAspectTableIndex(FF)I

    move-result v0

    .line 4204
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getActiveArrayWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getActiveArrayHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getAspectTableIndex(FF)I

    move-result p0

    if-ne v0, p0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method private static getCameraStoragePermissionList()[Ljava/lang/String;
    .locals 2

    .line 7541
    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayRotation()I
    .locals 1

    .line 4553
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method

.method private getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;
    .locals 1

    .line 623
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    return-object p0
.end method

.method private static getGCD(II)I
    .locals 1

    if-le p0, p1, :cond_0

    :goto_0
    move v0, p1

    move p1, p0

    move p0, v0

    :cond_0
    if-eqz p0, :cond_1

    .line 4191
    rem-int/2addr p1, p0

    goto :goto_0

    :cond_1
    return p1
.end method

.method private getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    return-object p0
.end method

.method private getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    return-object p0
.end method

.method private static getLCM(II)I
    .locals 1

    mul-int v0, p0, p1

    .line 4198
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getGCD(II)I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method private getLatestImage()V
    .locals 14

    .line 5964
    const-string v0, "getLatestImage() IN"

    const-string v1, "Camera2App"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5965
    const-string v0, "_display_name"

    const-string v2, "mime_type"

    const-string v3, "_id"

    const-string v4, "relative_path"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v7

    .line 5972
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5973
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getLatestImage() mSavePanoramaPath:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5974
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSaveDestinationExternal()Z

    move-result v0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getVolume(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 5975
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 5976
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 5975
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 5977
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 5978
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 5977
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 5979
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "relative_path"

    const-string v12, "_display_name"

    const-string v8, "volume_name"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s like \'%s\' AND %s like \'%s\' AND %s like \'%s\'"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    .line 5983
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    .line 5987
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v2, "external"

    .line 5988
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 5987
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5991
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5992
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->createContentinfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;

    move-result-object v2

    .line 5993
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->addLocalCache(Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;)V

    .line 5994
    iget-wide v3, v2, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mId:J

    iput-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageId:J

    .line 5995
    iget-object v3, v2, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageFileLocation:Ljava/lang/String;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFileLocation:Ljava/lang/String;

    .line 5996
    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageMimeType:Ljava/lang/String;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageMimeType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_3

    .line 6000
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6002
    :cond_1
    throw p0

    .line 6004
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6005
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;

    .line 6006
    iget-wide v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mId:J

    iput-wide v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageId:J

    .line 6007
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageFileLocation:Ljava/lang/String;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFileLocation:Ljava/lang/String;

    .line 6008
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageMimeType:Ljava/lang/String;

    .line 6011
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getLatestImage() IN, mImageId = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mImageFileLocation = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFileLocation:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getLiveViewHeight()I
    .locals 2

    .line 7449
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayEighteenToNine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7450
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSettingButtonHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getNavigationBarHeight()I

    move-result p0

    sub-int/2addr v0, p0

    goto :goto_1

    .line 7451
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayNineteenPointFiveToNine()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayTwentyOneToNine()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7458
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 7452
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isResolution16_9()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7453
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    mul-int/lit8 p0, p0, 0x10

    div-int/lit8 v0, p0, 0x9

    goto :goto_1

    .line 7455
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    mul-int/lit8 p0, p0, 0x4

    div-int/lit8 v0, p0, 0x3

    :goto_1
    return v0
.end method

.method private getLiveViewWidth()I
    .locals 1

    .line 7438
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayEighteenToNine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7439
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getLiveViewHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    mul-int/lit8 p0, p0, 0x9

    goto :goto_0

    .line 7441
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    :goto_0
    return p0
.end method

.method private getMobilePhonePixels()V
    .locals 3

    .line 7398
    invoke-direct {p0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getRealSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    .line 7399
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    .line 7401
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 7402
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 7403
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 7405
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "portrait orientation as base, realPixelSize size : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Camera2App"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 4

    .line 7470
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "navigation_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 7473
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 7475
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06007e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private static getRatios(II[F)V
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, p1, :cond_0

    .line 4160
    aput v0, p2, v1

    .line 4161
    aput v0, p2, v2

    return-void

    .line 4165
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object v4, v3, p0

    aget v5, v4, v2

    int-to-float v5, v5

    aget v4, v4, v1

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 4166
    aget-object v6, v3, p1

    aget v7, v6, v2

    int-to-float v7, v7

    aget v6, v6, v1

    int-to-float v8, v6

    div-float/2addr v7, v8

    .line 4168
    invoke-static {v6, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->getLCM(II)I

    move-result v4

    .line 4169
    aget-object p0, v3, p0

    aget v6, p0, v1

    div-int v6, v4, v6

    .line 4170
    aget-object p1, v3, p1

    aget v3, p1, v1

    div-int/2addr v4, v3

    cmpg-float v3, v7, v5

    if-gez v3, :cond_1

    .line 4173
    aput v0, p2, v1

    .line 4174
    aget p1, p1, v2

    mul-int/2addr p1, v4

    int-to-float p1, p1

    aget p0, p0, v2

    mul-int/2addr p0, v6

    int-to-float p0, p0

    div-float/2addr p1, p0

    aput p1, p2, v2

    goto :goto_0

    .line 4176
    :cond_1
    aget p0, p0, v2

    mul-int/2addr p0, v6

    int-to-float p0, p0

    aget p1, p1, v2

    mul-int/2addr p1, v4

    int-to-float p1, p1

    div-float/2addr p0, p1

    aput p0, p2, v1

    .line 4177
    aput v0, p2, v2

    :goto_0
    return-void
.end method

.method private getRealSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    .line 7410
    const-string p0, "window"

    .line 7411
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 7412
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 7413
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 7414
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 7415
    new-instance p0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method private getSavingProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 7215
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsInflateSavingProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7216
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsInflateSavingProgress:Z

    const v0, 0x7f0800d0

    .line 7217
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f080008

    .line 7219
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private getSettingButtonHeight()I
    .locals 1

    .line 7465
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06006b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getSettingValue()V
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getSettingValue(Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;)V

    return-void
.end method

.method private static getStoragePermissionList()[Ljava/lang/String;
    .locals 1

    .line 7529
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getThumbnailRotation(Ljava/lang/String;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 7167
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 7168
    const-string p1, "Orientation"

    invoke-virtual {v0, p1, p0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    const/16 p0, 0x5a

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/16 p0, 0xb4

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    const/16 p0, 0x10e

    :cond_3
    :goto_0
    return p0

    :catch_0
    move-exception p0

    .line 7177
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private hideBlackScreen()V
    .locals 1

    .line 7190
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraCheckTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const v0, 0x7f080032

    .line 7191
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    .line 7192
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideInfoIcons()V
    .locals 1

    const v0, 0x7f080075

    .line 7025
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    .line 7026
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private initAttachQueue()V
    .locals 1

    .line 404
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CaptureImage;

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CaptureImage;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initInternalSettingsViews()V
    .locals 0

    .line 7352
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initInternalSettingsViewsSync()V

    return-void
.end method

.method private initInternalSettingsViewsAsync()V
    .locals 1

    .line 7342
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$28;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$28;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initInternalSettingsViewsSync()V
    .locals 3

    .line 7338
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mHandler:Landroid/os/Handler;

    sget-boolean v2, Lcom/sonyericsson/android/camera3d/Camera2App;->ALWAYS_AUTO_MODE_AFTER_STARTUP:Z

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera3d/InternalSettings;->initViews(Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;Landroid/os/Handler;Z)V

    return-void
.end method

.method private static initializeEngine(Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;)Z
    .locals 1

    .line 1569
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->initialize(Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 1571
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "MorphoPanoramaGP2.initialize error ret:0x%08X"

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Camera2App"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private initializeLayoutObjects()V
    .locals 7

    const v0, 0x7f0800e4

    .line 6401
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/TextureViewEx;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    const v0, 0x7f080092

    .line 6402
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    const v0, 0x7f080093

    .line 6403
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    const v0, 0x7f08008e

    .line 6404
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    const v0, 0x7f080084

    .line 6405
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    const v0, 0x7f080085

    .line 6406
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewFrame:Landroid/view/View;

    const/4 v0, 0x0

    move v1, v0

    .line 6407
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    .line 6408
    aput-boolean v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6410
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-direct {v1, p0, p0, p0}, Lcom/sonyericsson/android/camera3d/SettingList;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    .line 6411
    new-instance v1, Lcom/sonyericsson/android/camera3d/SettingSubList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingUseVolumeKeyList:[I

    invoke-direct {v1, p0, v2, p0}, Lcom/sonyericsson/android/camera3d/SettingSubList;-><init>(Landroid/content/Context;[ILcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    .line 6412
    new-instance v1, Lcom/sonyericsson/android/camera3d/SettingSubList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSaveDestinationList:[I

    invoke-direct {v1, p0, v2, p0}, Lcom/sonyericsson/android/camera3d/SettingSubList;-><init>(Landroid/content/Context;[ILcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    move v1, v0

    .line 6413
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSaveDestinationList:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 6414
    aget v2, v2, v1

    const v3, 0x7f0c008a

    if-ne v2, v3, :cond_1

    .line 6415
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIndexSettingSaveDestinationSD:I

    goto :goto_2

    :cond_1
    const v3, 0x7f0c0089

    if-ne v2, v3, :cond_2

    .line 6417
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIndexSettingSaveDestinationInternal:I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6420
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->addSubList(Lcom/sonyericsson/android/camera3d/SettingSubList;)V

    .line 6421
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->addSubList(Lcom/sonyericsson/android/camera3d/SettingSubList;)V

    const v1, 0x7f08009b

    .line 6422
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    .line 6423
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 6424
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080086

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 6425
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView(I)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 6426
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView(I)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 6427
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 6428
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 6429
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    const v2, 0x7f080061

    .line 6431
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 6433
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6435
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$22;

    invoke-direct {v3, p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$22;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 6473
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v2

    .line 6474
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setShutterIcon()V

    .line 6475
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$23;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$23;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setTakePictureButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6519
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$$ExternalSyntheticLambda0;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setTakePictureButtonOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 6545
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$24;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$24;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setStopPictureButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6572
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$$ExternalSyntheticLambda1;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setStopPictureButtonOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 6587
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getModeSelectorButton()Landroid/widget/ImageView;

    move-result-object v2

    .line 6588
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonClickListener;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6589
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonTouchListener;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonTouchListener;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6591
    new-instance v2, Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/RotatableToast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    .line 6592
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 6594
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayEighteenToNine()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6595
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSettingButtonHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 6596
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getNavigationBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 6597
    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x9

    const v2, 0x7f080055

    .line 6599
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080056

    .line 6600
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 6601
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6602
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6603
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    .line 6604
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6605
    rem-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_4

    add-int/lit8 v5, v4, 0x1

    goto :goto_3

    :cond_4
    move v5, v4

    :goto_3
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v5, 0x14

    const/4 v6, -0x1

    .line 6606
    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6607
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6608
    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 6609
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6610
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v4, 0x15

    .line 6611
    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6612
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f08006a

    .line 6613
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 6614
    invoke-virtual {p0, v1, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_5
    return-void
.end method

.method private initializeMiniPreviewTextureView()V
    .locals 2

    .line 7479
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewTextureView:Landroid/view/TextureView;

    .line 7480
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 7481
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f08009b

    .line 7482
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 7483
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewTextureView:Landroid/view/TextureView;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v1, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private initializeThermalAlert()V
    .locals 3

    .line 6829
    new-instance v0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    .line 6832
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6833
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6834
    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6835
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private insertPhotoMedia(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/util/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 4313
    const-string v9, "Camera"

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSaveDestinationExternal()Z

    move-result v1

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getVolume(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    return-object v10

    .line 4318
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4319
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4320
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 4321
    const-string v12, "_display_name"

    invoke-virtual {v2, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4322
    const-string v5, "mime_type"

    const-string v6, "image/jpeg"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4323
    const-string v5, "relative_path"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4324
    const-string v3, "is_pending"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4326
    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4327
    invoke-virtual {v7, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 4328
    const-string v14, "bucket_display_name"

    filled-new-array {v12, v14}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    .line 4333
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4336
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4337
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4339
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4341
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4344
    invoke-virtual {v7, v13, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4345
    invoke-direct {p0, v7, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->insertPhotoMedia(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v0

    goto :goto_0

    :cond_1
    move-object v2, v8

    .line 4349
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4350
    throw v0

    :cond_2
    move-object v2, v8

    .line 4353
    :goto_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v13, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private isActiveGpsSearchTimer()Z
    .locals 0

    .line 6757
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimer:Ljava/util/Timer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCameraDisabled(Landroid/content/Context;)Z
    .locals 0

    .line 6324
    const-string p0, "device_policy"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 p1, 0x0

    .line 6326
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method private isCapturing()Z
    .locals 3

    .line 7035
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    or-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 7036
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v1, :cond_3

    .line 7037
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object v0

    .line 7038
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    .line 7039
    instance-of p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_1

    .line 7041
    instance-of p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

    if-nez p0, :cond_0

    instance-of p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;

    if-nez p0, :cond_0

    instance-of p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private isDialogShown()Z
    .locals 1

    .line 7081
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFirstLaunch()Z
    .locals 2

    .line 5788
    const-string v0, "ApplicationPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "First Launch"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isFirstTimeLocation()Z
    .locals 2

    .line 5792
    const-string v0, "ApplicationPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "First Time Location"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isInLockTaskMode()Z
    .locals 1

    .line 5852
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 5854
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMainThread()Z
    .locals 1

    .line 7331
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMainThreadName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 7332
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMainThreadName:Ljava/lang/String;

    .line 7334
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMainThreadName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isOpenedSettingDialog()Z
    .locals 0

    .line 1036
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOpenedSettingSubDialog()Z
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    if-eqz p0, :cond_2

    .line 1047
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->isOpened()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPanoramaSaving()Z
    .locals 1

    const v0, 0x7f080008

    .line 1911
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    .line 1912
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRemovedFromDataBase(Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;)Z
    .locals 13

    .line 6100
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 6104
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSaveDestinationExternal()Z

    move-result v0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getVolume(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 6105
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageFileLocation:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageFileLocation:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 6106
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v12, 0x1

    add-int/2addr v1, v12

    .line 6105
    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 6107
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageFileLocation:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageFileLocation:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 6108
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v12

    .line 6107
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 6109
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mId:J

    .line 6114
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v4, "volume_name"

    const-string v6, "relative_path"

    const-string v8, "_display_name"

    const-string v10, "_id"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    .line 6109
    const-string v2, "%s like \'%s\' AND %s like \'%s\' AND %s like \'%s\' AND %s like \'%s\'"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    .line 6118
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "external"

    .line 6119
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6118
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :goto_0
    move v2, v12

    goto :goto_1

    .line 6123
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 6128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-nez v2, :cond_3

    .line 6132
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-wide v3, p1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mId:J

    invoke-static {p0, v3, v4, v12, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v12, v2

    :goto_2
    return v12

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v0, :cond_4

    .line 6128
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6130
    :cond_4
    throw p0
.end method

.method private isResolution16_9()Z
    .locals 1

    .line 7390
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p0

    .line 7391
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const p0, 0x3fe38e39

    sub-float/2addr v0, p0

    .line 7393
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSaveDestinationExternal()Z
    .locals 0

    .line 6629
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveInternalStorage()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isTablet()Z
    .locals 1

    .line 5796
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private isVisibleBlackScreen()Z
    .locals 1

    const v0, 0x7f080032

    .line 7196
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 7197
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static latitudeValueToNorS(D)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    .line 4411
    const-string p0, "N"

    goto :goto_0

    .line 4414
    :cond_0
    const-string p0, "S"

    :goto_0
    return-object p0
.end method

.method private loadLocalCache()V
    .locals 2

    .line 6189
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 6190
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 6191
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    :cond_0
    return-void
.end method

.method public static locationValueToString(D)Ljava/lang/String;
    .locals 8

    const-wide v0, 0x4115f90000000000L    # 360000.0

    .line 4431
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-long p0, p0

    .line 4432
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-wide/32 v1, 0x57e40

    div-long v1, p0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x1770

    div-long v4, p0, v2

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    rem-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d/1,%d/1,%d/100"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static longitudeValueToEorW(D)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    .line 4422
    const-string p0, "E"

    goto :goto_0

    .line 4425
    :cond_0
    const-string p0, "W"

    :goto_0
    return-object p0
.end method

.method private makeEngineParam()V
    .locals 9

    .line 1664
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    .line 1665
    sget-boolean v1, Lcom/sonyericsson/android/camera3d/Camera2App;->LIMIT_DIRECTION:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1666
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iput v2, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->direction:I

    goto :goto_0

    .line 1668
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iput v3, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->direction:I

    .line 1670
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    iput v4, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    .line 1671
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v4

    iput v4, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    .line 1673
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    if-eqz v1, :cond_1

    .line 1674
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    check-cast v0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->getMaxPictureSize()Landroid/util/Size;

    move-result-object v0

    .line 1675
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getAspectTableIndex(FF)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    goto :goto_1

    .line 1677
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPhysicalWidth()F

    move-result v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPhysicalHeight()F

    move-result v4

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    .line 1678
    new-instance v1, Landroid/util/SizeF;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPhysicalWidth()F

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPixelArrayWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPhysicalHeight()F

    move-result v6

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPixelArrayHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v5

    invoke-direct {v1, v4, v6}, Landroid/util/SizeF;-><init>(FF)V

    .line 1680
    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getFocalLength()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v7

    double-to-float v4, v4

    iput v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    .line 1681
    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getFocalLength()F

    move-result v0

    mul-float/2addr v0, v6

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    mul-double/2addr v4, v7

    double-to-float v0, v4

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    .line 1683
    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getAspectTableIndex(FF)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    goto :goto_1

    .line 1686
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getBaseAspect()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    .line 1689
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    const/4 v1, 0x2

    if-nez v0, :cond_3

    .line 1690
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    .line 1693
    iget v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    float-to-double v4, v4

    aput-wide v4, v0, v3

    .line 1694
    iget v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    float-to-double v4, v4

    aput-wide v4, v0, v2

    .line 1697
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 1699
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsFrontCamera:Z

    if-eqz v4, :cond_4

    .line 1700
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v4, v4, 0xb4

    rem-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraOrientation:I

    goto :goto_2

    .line 1702
    :cond_4
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraOrientation:I

    .line 1704
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplayRotation()I

    move-result v4

    .line 1705
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraOrientation:I

    iget v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    add-int/2addr v4, v7

    add-int/2addr v6, v4

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v6, v6, 0x168

    iput v6, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    .line 1707
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    if-eqz v4, :cond_8

    .line 1709
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_7

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_6

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    const/4 v2, 0x3

    goto :goto_3

    :cond_6
    move v2, v1

    .line 1715
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setRotation(I)I

    move-result p0

    if-eqz p0, :cond_8

    .line 1717
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "SensorFusion.setRotation error ret:0x%08X"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Camera2App"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private modeFinish()V
    .locals 3

    .line 5834
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5835
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 5837
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getModeSelectorButton()Landroid/widget/ImageView;

    move-result-object v0

    .line 5838
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 5839
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5840
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPinToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 5841
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 5843
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c008d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPinToast:Landroid/widget/Toast;

    .line 5845
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5847
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finish()V

    :goto_0
    return-void
.end method

.method private onPreviewCaptureCompleted()V
    .locals 3

    .line 4900
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4901
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    .line 4902
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4903
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4904
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4906
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera3d/Camera2App;->PREVIEW_SPREAD_BOTH_SIDES:Z

    if-eqz v1, :cond_1

    .line 4907
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const v2, -0x368bdc10    # -999999.0f

    .line 4908
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 4912
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 4916
    :cond_2
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 4917
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    .line 4918
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isVisibleBlackScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    if-nez v1, :cond_3

    .line 4919
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mHideBlackScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 4924
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 4925
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 4929
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onPreviewStartSub()V
    .locals 1

    .line 7382
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7383
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onPreviewStartSubSync()V

    goto :goto_0

    .line 7385
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onPreviewStartSubAsync()V

    :goto_0
    return-void
.end method

.method private onPreviewStartSubAsync()V
    .locals 1

    .line 7371
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$29;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$29;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onPreviewStartSubSync()V
    .locals 2

    .line 7359
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setupUiAndCommonSettings()V

    const v0, 0x7f080090

    .line 7360
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7361
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    if-nez v0, :cond_0

    .line 7362
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateViewsForPreview()V

    .line 7363
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 7364
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 7367
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->updateViewsForPreviewStart()V

    return-void
.end method

.method private openCamera()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1822
    invoke-direct {p0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCameraDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1825
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-eqz v0, :cond_1

    return-void

    .line 1827
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    check-cast v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;

    .line 1828
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    .line 1829
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->isCameraEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 1832
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenState()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    goto/16 :goto_2

    .line 1836
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->readViewAngle()Z

    move-result v2

    const/4 v4, 0x4

    if-nez v2, :cond_8

    .line 1837
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "G3121"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "G3221"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1840
    :cond_4
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "EVA-TL00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x428207e1

    .line 1841
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    const v2, 0x424c3810

    .line 1842
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    goto :goto_1

    .line 1844
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1846
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 1847
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    .line 1848
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v5

    iput v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    .line 1849
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    goto :goto_1

    .line 1851
    :cond_6
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1852
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void

    :cond_7
    :goto_0
    const v2, 0x4290890b

    .line 1838
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    const v2, 0x426620e1

    .line 1839
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    .line 1856
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    iget v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    invoke-direct {p0, v2, v5, v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->writeViewAngle(IFF)V

    .line 1859
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2, v5}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->prepareCamera(Landroid/view/TextureView;Landroid/view/TextureView;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1861
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->initializeUI(Lcom/sonyericsson/android/camera3d/CameraInfo;)V

    .line 1862
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->openCamera(Z)Z

    move-result v2

    :cond_9
    if-nez v2, :cond_a

    .line 1865
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1866
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private openSettingDialog()Z
    .locals 2

    .line 1009
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1012
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 1013
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SettingList;->open()V

    .line 1016
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->hideInfoIcons()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private playSound(I)V
    .locals 8

    .line 4655
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 4656
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCanDisableShutterSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isCameraSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4657
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    return-void
.end method

.method private prepareSound()V
    .locals 4

    .line 5216
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCanDisableShutterSound:Z

    const/4 v1, 0x2

    const/16 v2, 0xd

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 5217
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 5218
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5219
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5220
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 5222
    :cond_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 5223
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5224
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5225
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5226
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 5228
    :goto_0
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 5229
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 5230
    invoke-virtual {v0, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 5231
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    const/high16 v1, 0x7f0b0000

    .line 5234
    :try_start_0
    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFocusedSoundId:I

    .line 5235
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    const v1, 0x7f0b0001

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutterSoundId:I

    .line 5236
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    const v1, 0x7f0b0002

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStopSoundId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5239
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 5240
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    :cond_1
    :goto_1
    return-void
.end method

.method private readViewAngle()Z
    .locals 5

    .line 7113
    const-string v0, "ApplicationPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7114
    const-string v2, "VIEW_ANGLE_CAMERA_ID"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 7115
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    if-eq v2, v3, :cond_0

    return v1

    .line 7119
    :cond_0
    const-string v2, "VIEW_ANGLE_H"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 7120
    const-string v4, "VIEW_ANGLE_V"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_2

    cmpl-float v3, v0, v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 7124
    :cond_1
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    .line 7125
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private reconstructLocalCache()V
    .locals 0

    .line 6199
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->loadLocalCache()V

    .line 6200
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->clearLocalCacheBackup()V

    .line 6201
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->removeInvalidLocalCache()V

    return-void
.end method

.method private registerGravitySensorListener()V
    .locals 3

    const/4 v0, 0x0

    .line 4456
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsSensorAverage:Z

    .line 4457
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    const/4 v1, 0x3

    .line 4458
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    .line 4459
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_gravity_sensor:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    const/16 v2, 0x9

    .line 4460
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 4461
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4462
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 4463
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method private releaseImageBitmap()V
    .locals 3

    .line 4100
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PreviewImageSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 4101
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 4102
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4107
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 4108
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmap:Landroid/graphics/Bitmap;

    .line 4109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeInvalidLocalCache()V
    .locals 2

    .line 6085
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6086
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6087
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;

    .line 6088
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isRemovedFromDataBase(Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6089
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveImage(Ljava/lang/String;Ljava/nio/ByteBuffer;IILandroid/location/Location;)Landroid/util/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Landroid/location/Location;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v2, p1

    .line 4231
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 4234
    :try_start_0
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->insertPhotoMedia(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4235
    const-string v0, "rw"

    if-eqz v8, :cond_0

    .line 4236
    :try_start_1
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/net/Uri;

    invoke-virtual {v3, v9, v0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_0
    move-object v9, v4

    :goto_0
    if-eqz v9, :cond_2

    .line 4240
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v10

    iget-object v11, v1, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-object v11, v11, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_format:Ljava/lang/String;

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-static {v12, v13, v14, v10, v11}, Lcom/sonyericsson/android/camera3d/core/JpegIO;->writeJPEG(Ljava/nio/ByteBuffer;IIILjava/lang/String;)I

    move-result v10
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4241
    :try_start_2
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V

    if-nez v10, :cond_1

    .line 4243
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/net/Uri;

    invoke-virtual {v3, v9, v0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v9, v0

    .line 4245
    :cond_1
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_2
    const v10, -0x7ffffff8

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v8, v4

    :goto_1
    move v10, v5

    .line 4254
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v8, v4

    .line 4250
    :goto_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const v10, -0x7ffffff0

    :goto_4
    move-object v9, v4

    :goto_5
    if-eqz v10, :cond_3

    .line 4259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "writeJPEG ret = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaGP2"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4260
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 4263
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    if-eqz v9, :cond_4

    .line 4267
    :try_start_3
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 4268
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    .line 4270
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 4274
    :cond_4
    :try_start_4
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v2, v0

    goto :goto_7

    :catch_6
    move-exception v0

    .line 4276
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    move-object v2, v4

    :goto_7
    if-eqz v2, :cond_5

    .line 4280
    iget-object v0, v1, Lcom/sonyericsson/android/camera3d/Camera2App;->mLatestCaptureResult:Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    move-object/from16 v12, p5

    invoke-static {v2, v12, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setInExif(Landroid/media/ExifInterface;Landroid/location/Location;Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;)V

    :cond_5
    if-eqz v9, :cond_6

    .line 4284
    :try_start_5
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 4286
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_8
    if-eqz v8, :cond_a

    .line 4290
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 4292
    iget v0, v1, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    const/16 v1, 0xb4

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_9

    const/16 v9, 0x10e

    if-eq v0, v1, :cond_8

    if-eq v0, v9, :cond_7

    move v1, v2

    goto :goto_9

    :cond_7
    move v1, v5

    goto :goto_9

    :cond_8
    move v1, v9

    .line 4299
    :cond_9
    :goto_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4300
    const-string v2, "datetaken"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v12, 0x3e8

    .line 4301
    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v9, "date_added"

    invoke-virtual {v0, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4302
    const-string v2, "date_modified"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4303
    const-string v2, "_size"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4304
    const-string v2, "orientation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4305
    const-string v1, "is_pending"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4306
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v3, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4309
    :cond_a
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private saveLocalCache()V
    .locals 2

    .line 6182
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    return-void
.end method

.method private setAttachExit()V
    .locals 1

    .line 423
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->sAttachExit:Lcom/sonyericsson/android/camera3d/CaptureImage;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->addAttachQueue(Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    return-void
.end method

.method private setButtonsEnabled(Z)V
    .locals 1

    .line 688
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->setViewsEnabled(Z)V

    .line 692
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 694
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setViewsEnabled(Z)V

    :cond_1
    return-void
.end method

.method private setEnabledSaveDestination(ZZ)V
    .locals 1

    .line 6643
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 6645
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIndexSettingSaveDestinationSD:I

    invoke-virtual {v0, p0, p2}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setItemEnabled(IZ)V

    goto :goto_0

    .line 6647
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIndexSettingSaveDestinationInternal:I

    invoke-virtual {v0, p0, p2}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setItemEnabled(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static setInExif(Landroid/media/ExifInterface;Landroid/location/Location;Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;)V
    .locals 4

    .line 4358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4359
    const-string v2, "yyyy:MM:dd kk:mm:ss"

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4361
    const-string v1, "DateTime"

    invoke-virtual {p0, v1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4362
    const-string v1, "DateTimeOriginal"

    invoke-virtual {p0, v1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4363
    const-string v1, "DateTimeDigitized"

    invoke-virtual {p0, v1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4364
    const-string v0, "Make"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4365
    const-string v0, "Model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4369
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 4370
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 4374
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->locationValueToString(D)Ljava/lang/String;

    move-result-object p1

    .line 4375
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->latitudeValueToNorS(D)Ljava/lang/String;

    move-result-object v0

    .line 4377
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->locationValueToString(D)Ljava/lang/String;

    move-result-object v1

    .line 4378
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->longitudeValueToEorW(D)Ljava/lang/String;

    move-result-object v2

    .line 4380
    const-string v3, "GPSLatitude"

    invoke-virtual {p0, v3, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4381
    const-string p1, "GPSLatitudeRef"

    invoke-virtual {p0, p1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4383
    const-string p1, "GPSLongitude"

    invoke-virtual {p0, p1, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4384
    const-string p1, "GPSLongitudeRef"

    invoke-virtual {p0, p1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 4389
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->getExposureTime()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    .line 4390
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->getIsoValue()I

    move-result p1

    .line 4391
    const-string p2, "ExposureTime"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4393
    const-string p2, "ISOSpeedRatings"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4401
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4403
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setInitialRotationByGravity()V
    .locals 12

    .line 4475
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_gravity_sensor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    if-lez v0, :cond_0

    .line 4477
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/4 v3, 0x1

    .line 4478
    aget v3, v1, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/4 v4, 0x2

    .line 4479
    aget v1, v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 4480
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Gravity Sensor Value X=%f Y=%f Z=%f cnt=%d"

    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Camera2App"

    invoke-static {v4, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4481
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    float-to-double v6, v2

    float-to-double v8, v3

    float-to-double v10, v1

    invoke-virtual/range {v5 .. v11}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setInitialRotationByGravity(DDD)I

    move-result p0

    if-eqz p0, :cond_0

    .line 4483
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "MorphoPanoramaGP2.setInitialRotationByGravity error ret:0x%08X"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setMiniPreviewAndArrowsVisibility(ZZ)V
    .locals 0

    .line 6396
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 6397
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewArrowsVisibility(Z)V

    return-void
.end method

.method private setMiniPreviewArrowsVisibility(Z)V
    .locals 5

    const v0, 0x7f08002c

    .line 6389
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08002d

    .line 6390
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08002e

    .line 6391
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08002a

    .line 6392
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    const/4 p1, 0x3

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setMiniPreviewVisibility(Z)V
    .locals 2

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 6380
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-ne p1, v0, :cond_1

    .line 6382
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6385
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewFrame:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V
    .locals 2

    const/4 v0, 0x0

    .line 5363
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    if-ge v0, v1, :cond_1

    .line 5364
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5366
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 5367
    rem-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    return-void
.end method

.method private setPreviewContentDescription()V
    .locals 3

    const v0, 0x7f080090

    .line 6619
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c009e

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c009d

    .line 6625
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6624
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPreviewSize()V
    .locals 10

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    .line 1892
    filled-new-array {v0, v1}, [I

    move-result-object v0

    filled-new-array {v0}, [[I

    move-result-object v0

    .line 1898
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;

    .line 1899
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->getSupportedPictureSizes()[Landroid/util/Size;

    move-result-object v2

    .line 1900
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->capture_size_index:I

    aget-object p0, v2, p0

    .line 1901
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 1902
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    aget-object v8, v0, v4

    aget v8, v8, v4

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    aget-object v8, v0, v4

    const/4 v9, 0x1

    aget v8, v8, v9

    if-ne v7, v8, :cond_0

    move-object p0, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1907
    :cond_1
    :goto_1
    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->setPreviewSize(Landroid/util/Size;)V

    return-void
.end method

.method private setSaveDestination(Z)V
    .locals 0

    .line 6633
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f0c0089

    goto :goto_0

    :cond_0
    const p1, 0x7f0c008a

    .line 6634
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setSelectedResourceId(I)V

    :cond_1
    return-void
.end method

.method private setSensorFusionValue()V
    .locals 8

    .line 4489
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 4490
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGyroMatrix:[D

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRVMatrix:[D

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mACMatrix:[D

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/SensorFusion;->getSensorMatrix([D[D[D[I)I

    move-result v0

    .line 4491
    const-string v1, "Camera2App"

    if-eqz v0, :cond_0

    .line 4492
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "SensorFusion.getSensorMatrix error ret:0x%08X"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4494
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->getStockData()Ljava/util/ArrayList;

    move-result-object v0

    .line 4496
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4497
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getAttachCount()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 4498
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 4500
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-array v3, v5, [Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setGyroscopeData([Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 4503
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "MorphoPanoramaGP2.setGyroscopeData error ret:0x%08X"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4506
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    const/4 v2, 0x3

    .line 4507
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4509
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;

    .line 4510
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;->mValues:[D

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setRotationVector([D)I

    move-result v0

    if-eqz v0, :cond_2

    .line 4512
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "MorphoPanoramaGP2.setRotationVector error ret:0x%08X"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4516
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->clearStockData()V

    :cond_3
    return-void
.end method

.method private setSupportedCaptureSize()V
    .locals 1

    .line 1886
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getSupportedPreviewSizes()[I

    move-result-object v0

    .line 1887
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;

    .line 1888
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->setSupportedPictureSizes([I)V

    return-void
.end method

.method private setThumbnail()V
    .locals 4

    .line 5943
    const-string v0, "setThumbnail() IN"

    const-string v1, "Camera2App"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5944
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5948
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5949
    const-string v2, "setThumbnail() cancel"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5950
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 5951
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Ljava/util/concurrent/Future;

    .line 5954
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 5958
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->showThumbnail()V

    .line 5960
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->GET_LATEST_IMAGE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Ljava/util/concurrent/Future;

    :cond_3
    :goto_0
    return-void
.end method

.method private setViewsVisibility(I)V
    .locals 5

    .line 5877
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5880
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5881
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5883
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->setViewsVisibility(I)V

    .line 5885
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5887
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setViewsVisibility(I)V

    .line 5889
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5891
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->setViewsVisibility(I)V

    if-nez p1, :cond_4

    .line 5893
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showInfoIcons()V

    goto :goto_0

    .line 5895
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->hideInfoIcons()V

    :cond_5
    :goto_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_8

    .line 5900
    sget-boolean v4, Lcom/sonyericsson/android/camera3d/Camera2App;->LIMIT_DIRECTION:Z

    if-eqz v4, :cond_7

    .line 5901
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_6

    .line 5903
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v3, v4, v2

    .line 5904
    aput-boolean v3, v4, v3

    .line 5905
    aput-boolean v2, v4, v1

    .line 5906
    aput-boolean v2, v4, v0

    goto :goto_1

    .line 5908
    :cond_6
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v2, v4, v2

    .line 5909
    aput-boolean v2, v4, v3

    .line 5910
    aput-boolean v3, v4, v1

    .line 5911
    aput-boolean v3, v4, v0

    goto :goto_1

    .line 5914
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v3, v4, v2

    .line 5915
    aput-boolean v3, v4, v3

    .line 5916
    aput-boolean v3, v4, v1

    .line 5917
    aput-boolean v3, v4, v0

    .line 5919
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 5921
    :cond_8
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v2, v4, v2

    .line 5922
    aput-boolean v2, v4, v3

    .line 5923
    aput-boolean v2, v4, v1

    .line 5924
    aput-boolean v2, v4, v0

    const v0, 0x7f080090

    .line 5925
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5928
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_a

    move v2, v3

    .line 5929
    :cond_a
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 5933
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5934
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupUiAndCommonSettings()V
    .locals 11

    .line 7239
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCreateSequence:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7240
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCreateSequence:Z

    .line 7242
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->load()V

    .line 7245
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeSequence:Z

    .line 7246
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPermissionSequence:Z

    .line 7247
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeSequence:Z

    .line 7248
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPermissionSequence:Z

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    .line 7253
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->getUseVolumeKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v7, "VOLUME"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "ZOOM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const v6, 0x7f0c0097

    goto :goto_0

    :cond_1
    const v6, 0x7f0c009a

    goto :goto_0

    :cond_2
    const v6, 0x7f0c0099

    .line 7264
    :goto_0
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v7, v6}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setSelectedResourceId(I)V

    .line 7265
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveInternalStorage()Z

    move-result v8

    const v9, 0x7f0c0089

    const v10, 0x7f0c008a

    if-eqz v8, :cond_3

    move v8, v9

    goto :goto_1

    :cond_3
    move v8, v10

    :goto_1
    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setSelectedResourceId(I)V

    .line 7266
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v6}, Lcom/sonyericsson/android/camera3d/SettingList;->setSummary(II)V

    .line 7267
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveInternalStorage()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v9, v10

    :goto_2
    invoke-virtual {v6, v3, v9}, Lcom/sonyericsson/android/camera3d/SettingList;->setSummary(II)V

    .line 7268
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveLocation()Z

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    .line 7269
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isCameraSound()Z

    move-result v7

    invoke-virtual {v6, v4, v7}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    .line 7272
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->isExternalStorageMounted(Landroid/content/Context;)Z

    move-result v6

    const-string v7, "Camera2App"

    if-nez v6, :cond_5

    .line 7273
    const-string v6, "SD card is not mounted."

    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 7275
    :cond_5
    const-string v6, "SD card is mounted."

    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7279
    :goto_3
    invoke-direct {p0, v5, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(ZZ)Z

    move-result v6

    xor-int/2addr v6, v5

    .line 7281
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveLocation()Z

    move-result v7

    if-nez v7, :cond_6

    .line 7282
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->clearLocation()V

    .line 7283
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isShowDialogLocation()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 7284
    sget-object v6, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_CHANGE_LOCATION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_4

    .line 7288
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkLocationService()Z

    move-result v7

    xor-int/2addr v7, v5

    if-nez v7, :cond_8

    :cond_7
    if-eqz v6, :cond_8

    .line 7291
    iget v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    .line 7292
    sget-object v6, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iput-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 7293
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iget v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    aget-object v8, v6, v7

    .line 7294
    sget-object v9, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v9, v6, v7

    .line 7295
    sget-object v6, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0x11

    if-eq v6, v7, :cond_8

    .line 7299
    invoke-direct {p0, v8}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    .line 7307
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-boolean v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCanDisableShutterSound:Z

    invoke-virtual {v6, v4, v7}, Lcom/sonyericsson/android/camera3d/SettingList;->setItemVisibility(IZ)V

    .line 7308
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v4, v3, v5}, Lcom/sonyericsson/android/camera3d/SettingList;->setItemVisibility(IZ)V

    .line 7309
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Util;->isSystemApp(Landroid/content/Context;)Z

    move-result v4

    xor-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Lcom/sonyericsson/android/camera3d/SettingList;->setItemVisibility(IZ)V

    :cond_9
    if-nez v0, :cond_a

    if-eqz v2, :cond_d

    .line 7314
    :cond_a
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-eqz v0, :cond_b

    .line 7315
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 7316
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateViews()V

    .line 7319
    :cond_b
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    if-eqz v0, :cond_c

    .line 7320
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_5

    .line 7322
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7324
    :goto_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 7326
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->configureTransform()V

    :cond_d
    return-void
.end method

.method private showBlackScreen()V
    .locals 1

    const v0, 0x7f080032

    .line 7185
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    .line 7186
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showInfoIcons()V
    .locals 1

    const v0, 0x7f080075

    .line 7030
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 7031
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showOkDialog(I)V
    .locals 8

    const/4 v0, 0x0

    .line 5725
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertOkDialog:Z

    .line 5726
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5727
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 5732
    :try_start_0
    const-string v3, "android.permission-group.STORAGE"

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5733
    :try_start_1
    const-string v5, "android.permission-group.CAMERA"

    invoke-virtual {v1, v5, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5734
    :try_start_2
    const-string v6, "android.permission-group.LOCATION"

    invoke-virtual {v1, v6, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v5, v2

    goto :goto_0

    :catch_2
    move-exception v4

    move-object v3, v2

    move-object v5, v3

    .line 5736
    :goto_0
    const-string v6, "Camera2App"

    const-string v7, "Package name cannot be found"

    invoke-static {v6, v7, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5738
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isFirstLaunch()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isFirstTimeLocation()Z

    move-result v4

    if-nez v4, :cond_5

    .line 5739
    :cond_0
    new-instance v4, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-direct {v4}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    const/4 v4, 0x3

    .line 5740
    const-string v6, "okBodyText1"

    const-string v7, "okBodyCaption1"

    if-ne p1, v4, :cond_2

    .line 5741
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 5742
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    :cond_1
    if-eqz v2, :cond_4

    .line 5744
    invoke-virtual {v2, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0c0086

    .line 5745
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5749
    :cond_2
    const-string p1, "android.permission.CAMERA"

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v5, :cond_3

    .line 5752
    invoke-virtual {v5, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0c0085

    .line 5753
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5756
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->areStoragePermissionsGranted()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v3, :cond_4

    .line 5759
    invoke-virtual {v3, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "okBodyCaption2"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0c0087

    .line 5760
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "okBodyText2"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5766
    :cond_4
    :goto_2
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    .line 5767
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->convertToDialogOrientation(I)I

    move-result p1

    .line 5766
    const-string v1, "DIALOG_ORIENTATION"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5768
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->setArguments(Landroid/os/Bundle;)V

    .line 5770
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "Alert ok Dialog Fragment"

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private showOkOrSettingDialog([Ljava/lang/String;I)V
    .locals 0

    .line 5206
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/Util;->getPermissionNotGranted([Ljava/lang/String;Landroid/app/Activity;)Ljava/util/List;

    move-result-object p1

    .line 5207
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/Util;->determineDialogType(Ljava/util/List;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5208
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->showOkDialog(I)V

    goto :goto_0

    .line 5210
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    :goto_0
    return-void
.end method

.method private showPanoramaGuideDirection()V
    .locals 5

    .line 7085
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    const v1, 0x7f0c0077

    .line 7086
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7087
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 7088
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$27;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$27;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 7098
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_3

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_6

    .line 7104
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    add-int/lit16 v4, v0, 0xb4

    rem-int/lit16 v4, v4, 0x168

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRotation(F)V

    .line 7105
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    if-ne v0, v2, :cond_4

    const v0, 0x800003

    goto :goto_1

    :cond_4
    const v0, 0x800005

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 7106
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_3

    .line 7100
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 7101
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 7102
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 7108
    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method private showPermissionOrStartCamera()V
    .locals 2

    .line 5146
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Util;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5147
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5149
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCamera()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->prepareSound()V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5151
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 5152
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCamera()V

    return-void

    .line 5157
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 5159
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissions([Ljava/lang/String;I)V

    .line 5160
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    goto :goto_0

    .line 5165
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCamera()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5171
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->prepareSound()V

    :cond_2
    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 5167
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 5168
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCamera()V

    return-void
.end method

.method private showPermissionOrValidateLocation()V
    .locals 3

    .line 5178
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Util;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5179
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5180
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkLocationService()Z

    goto :goto_1

    .line 5182
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-eqz v1, :cond_4

    .line 5183
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->shutdownViews()V

    .line 5184
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v1, :cond_1

    .line 5185
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->stopState()V

    .line 5186
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->abortCaptures()V

    .line 5187
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 5188
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->setDefaultCameraState()V

    .line 5189
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->pause()V

    .line 5192
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isFirstTimeLocation()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    .line 5193
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 5195
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->showOkOrSettingDialog([Ljava/lang/String;I)V

    :goto_0
    const/4 v0, 0x0

    .line 5197
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    goto :goto_1

    .line 5201
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkLocationService()Z

    :cond_4
    :goto_1
    return-void
.end method

.method private showSavingProgressBar()V
    .locals 2

    .line 7223
    const-string v0, "Camera2App"

    const-string v1, "showSavingProgressBar"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7224
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7226
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->clearThumbnail()V

    :cond_0
    const/4 v0, 0x4

    .line 7228
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 7229
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7230
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7231
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7232
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 7233
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewAndArrowsVisibility(ZZ)V

    .line 7234
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSavingProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    .line 7235
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private showSettingDialog(I)V
    .locals 10

    const/4 v0, 0x0

    .line 5673
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertSettingDialog:Z

    .line 5674
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5675
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 5680
    :try_start_0
    const-string v4, "android.permission-group.STORAGE"

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5681
    :try_start_1
    const-string v6, "android.permission-group.CAMERA"

    invoke-virtual {v2, v6, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5682
    :try_start_2
    const-string v7, "android.permission-group.LOCATION"

    invoke-virtual {v2, v7, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v6, v3

    goto :goto_0

    :catch_2
    move-exception v5

    move-object v4, v3

    move-object v6, v4

    .line 5685
    :goto_0
    const-string v7, "Camera2App"

    const-string v8, "Package name cannot be found"

    invoke-static {v7, v8, v5}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5688
    :goto_1
    new-instance v5, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-direct {v5}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    const/4 v5, 0x3

    .line 5690
    const-string v7, "settingBodyText1"

    const-string v8, "settingBodyCaption1"

    const/4 v9, 0x1

    if-ne p1, v5, :cond_2

    .line 5691
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 5692
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    if-eqz v3, :cond_1

    .line 5694
    invoke-virtual {v3, v2}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0c0086

    .line 5695
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5697
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->setCancelWithFinish(Z)V

    .line 5698
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1, v9}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->setCancelWithStartCamera(Z)V

    goto :goto_2

    .line 5701
    :cond_2
    const-string p1, "android.permission.CAMERA"

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v6, :cond_3

    .line 5703
    invoke-virtual {v6, v2}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0c0085

    .line 5704
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5707
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->areStoragePermissionsGranted()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v4, :cond_4

    .line 5709
    invoke-virtual {v4, v2}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "settingBodyCaption2"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0c0087

    .line 5710
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "settingBodyText2"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5714
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1, v9}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->setCancelWithFinish(Z)V

    .line 5715
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->setCancelWithStartCamera(Z)V

    .line 5717
    :cond_5
    :goto_2
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    .line 5718
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->convertToDialogOrientation(I)I

    move-result p1

    .line 5717
    const-string v0, "DIALOG_ORIENTATION"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5719
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->setArguments(Landroid/os/Bundle;)V

    .line 5720
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "Alert Setting Dialog Fragment"

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private shutdownViews()V
    .locals 3

    const/4 v0, 0x1

    .line 7048
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    .line 7049
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7050
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog(Z)V

    :cond_0
    const/4 v0, 0x4

    .line 7053
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 7054
    invoke-direct {p0, v1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewAndArrowsVisibility(ZZ)V

    const v1, 0x7f08009b

    .line 7055
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    .line 7056
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 7057
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7059
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setVisibility(I)V

    .line 7060
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7061
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 7062
    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 7063
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7065
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SettingList;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7066
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7067
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7068
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SHUTDOWN:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->dismiss(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    .line 7070
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 7071
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7072
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7073
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7074
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7077
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showBlackScreen()V

    return-void
.end method

.method private startCamera()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5247
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-eqz v0, :cond_0

    return-void

    .line 5248
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5250
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setButtonsEnabled(Z)V

    .line 5252
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->isUseCamera1(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    .line 5253
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->settingCaptureMode(Landroid/content/Context;)V

    .line 5255
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1Tmp:Z

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraIdTmp:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    if-eq v0, v2, :cond_3

    .line 5256
    :cond_2
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    .line 5257
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/InternalSettings;->removePreviewSize(Landroid/content/Context;)V

    .line 5258
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->resetValues()V

    .line 5262
    :cond_3
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    if-eqz v0, :cond_4

    .line 5263
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;-><init>(Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    goto :goto_0

    .line 5265
    :cond_4
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v3

    invoke-direct {v0, p0, p0, v2, v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;-><init>(Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;Landroid/app/Activity;II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    .line 5267
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->isFrontCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsFrontCamera:Z

    .line 5269
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setNullDirectionFunction()V

    .line 5270
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->setMorphoPanoramaGP2Interface(Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;)V

    .line 5272
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    const v0, 0x7f08009b

    .line 5273
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 5274
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIndexTexture:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLpTextureView:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5277
    :cond_5
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 5278
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_6

    const v0, 0x7f0800d1

    .line 5279
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f080036

    .line 5280
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    .line 5282
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setVisibility(I)V

    .line 5283
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 5284
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 5285
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 5286
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 5287
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5288
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$20;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$20;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 5299
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setVisibility(I)V

    .line 5300
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$21;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$21;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5310
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_8

    .line 5311
    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 5312
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5316
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    if-nez v0, :cond_9

    .line 5317
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    .line 5319
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->enable()V

    .line 5320
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplayRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updatedOrientation(I)V

    .line 5321
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setSupportedCaptureSize()V

    .line 5322
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSettingValue()V

    .line 5323
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setPreviewSize()V

    .line 5325
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;

    .line 5326
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->getSupportedPictureSizes()[Landroid/util/Size;

    move-result-object v1

    .line 5327
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->capture_size_index:I

    aget-object v1, v1, v3

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->resume(Landroid/util/Size;Landroid/util/Size;)V

    .line 5329
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5333
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->textureViewPrepared()V

    goto :goto_2

    .line 5336
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_2
    return-void
.end method

.method private startCaptureTimer()V
    .locals 0

    .line 7155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCaptureTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private startCountDownTimer()V
    .locals 1

    .line 6350
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-nez v0, :cond_0

    .line 6351
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5383
    iget-boolean v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-nez v2, :cond_0

    return-void

    .line 5384
    :cond_0
    iget-boolean v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    if-nez v2, :cond_1

    return-void

    .line 5385
    :cond_1
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    if-ne v2, v1, :cond_2

    return-void

    .line 5386
    :cond_2
    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v2, v3, :cond_4

    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    if-ge v2, v6, :cond_4

    .line 5387
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_3

    .line 5394
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    if-eq v1, v2, :cond_4

    .line 5395
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    .line 5396
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5397
    sget-object v2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OVERLAY:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    goto :goto_0

    :cond_3
    return-void

    .line 5401
    :cond_4
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5402
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    .line 5403
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->convertToDialogOrientation(I)I

    move-result v3

    .line 5402
    const-string v7, "DIALOG_ORIENTATION"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5404
    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v7

    aget v3, v3, v7

    const v7, 0x7f0c006a

    const-string v8, "CHECKBOX_MESSAGE"

    const v9, 0x7f0c0065

    const v10, 0x7f0c0068

    const-string v11, "NEGATIVE_BUTTON_LABEL"

    const v12, 0x7f0c0075

    const v13, 0x7f0c0073

    const v14, 0x7f0c007a

    const-string v15, "POSITIVE_BUTTON_LABEL"

    const-string v4, "DIALOG_MESSAGE"

    const-string v5, "DIALOG_TITLE"

    packed-switch v3, :pswitch_data_0

    return-void

    .line 5506
    :pswitch_0
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    goto/16 :goto_1

    .line 5499
    :pswitch_1
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const v3, 0x7f0c0063

    .line 5500
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c0062

    .line 5501
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5502
    invoke-virtual {v0, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5503
    invoke-virtual {v0, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5491
    :pswitch_2
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const v3, 0x7f0c007d

    .line 5492
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c007e

    .line 5493
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c009b

    .line 5494
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c0079

    .line 5495
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5496
    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5484
    :pswitch_3
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5485
    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c006d

    .line 5486
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5487
    invoke-virtual {v0, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5488
    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5470
    :pswitch_4
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5471
    invoke-virtual {v0, v13}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c0072

    .line 5472
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5473
    invoke-virtual {v0, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5464
    :pswitch_5
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5465
    invoke-virtual {v0, v13}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c0074

    .line 5466
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5467
    invoke-virtual {v0, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5457
    :pswitch_6
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const v3, 0x7f0c008b

    .line 5458
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c0066

    .line 5459
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c0067

    .line 5460
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5461
    invoke-virtual {v0, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5450
    :pswitch_7
    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 5451
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5452
    invoke-virtual {v0, v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c006f

    .line 5453
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5454
    invoke-virtual {v0, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5434
    :pswitch_8
    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 5435
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5436
    invoke-virtual {v0, v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c006b

    .line 5437
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5438
    invoke-virtual {v0, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    const/4 v3, 0x6

    .line 5426
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 5427
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5428
    invoke-virtual {v0, v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c006c

    .line 5429
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5430
    invoke-virtual {v0, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5418
    :pswitch_a
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5419
    invoke-virtual {v0, v13}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c0094

    .line 5420
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5421
    invoke-virtual {v0, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5412
    :pswitch_b
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5413
    invoke-virtual {v0, v13}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c0070

    .line 5414
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5415
    invoke-virtual {v0, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5406
    :pswitch_c
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5407
    invoke-virtual {v0, v13}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c0071

    .line 5408
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5409
    invoke-virtual {v0, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5442
    :pswitch_d
    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 5443
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5444
    const-string v3, "USE_NATIVE_LAYOUT"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5445
    invoke-virtual {v0, v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c0096

    .line 5446
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_e
    const/4 v3, 0x2

    .line 5477
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 5478
    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5479
    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0c006e

    .line 5480
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5481
    invoke-virtual {v0, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5512
    :goto_1
    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 5514
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 5515
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    const/4 v1, 0x1

    .line 5516
    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(ZZ)Z

    .line 5518
    :cond_5
    invoke-direct {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->setButtonsEnabled(Z)V

    .line 5519
    invoke-direct {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 5520
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5521
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5522
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    if-eqz v1, :cond_6

    .line 5523
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->setArguments(Landroid/os/Bundle;)V

    .line 5524
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "License Dialog Fragment"

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 5526
    :cond_6
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 5527
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "Dialog Fragment"

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startRotatableToast(Ljava/lang/String;IZ)V
    .locals 1

    .line 6847
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->getRotatableToast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6848
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->setRotatableToastMessage(Ljava/lang/CharSequence;)V

    .line 6849
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    invoke-virtual {p1, p2, p3, p0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->startRotatableToast(IZI)V

    :cond_0
    return-void
.end method

.method private stopCaptureTimer()V
    .locals 0

    .line 7159
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCaptureTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method private stopGpsSearchTimer()V
    .locals 1

    .line 6761
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isActiveGpsSearchTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6762
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6763
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 6764
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimer:Ljava/util/Timer;

    .line 6765
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimerTask:Ljava/util/TimerTask;

    :cond_0
    return-void
.end method

.method private textureViewPrepared()V
    .locals 1

    .line 861
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->openCamera()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->makeEngineParam()V

    return-void

    :catch_0
    move-exception v0

    .line 863
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 864
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCamera()V

    return-void
.end method

.method private translateSettingSubList(Landroid/view/View;)V
    .locals 8

    .line 6958
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 6959
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SettingList;->getGlobalRectOfSelectedItem()Landroid/graphics/Rect;

    move-result-object v1

    .line 6961
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 6962
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/SettingList;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    const v5, 0x7f0600a4

    if-nez v3, :cond_1

    .line 6963
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 6964
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v3, v6

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v3, v6

    sub-int/2addr v0, v3

    goto :goto_0

    .line 6966
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v3, v6

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v3, v6

    add-int/2addr v0, v3

    :goto_0
    int-to-float v0, v0

    .line 6968
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v3, v2

    int-to-float v2, v3

    goto :goto_3

    .line 6970
    :cond_1
    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    const/16 v6, 0x5a

    if-ne v3, v6, :cond_2

    .line 6971
    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_1

    .line 6974
    :cond_2
    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sub-int/2addr v3, v7

    :goto_1
    int-to-float v3, v3

    .line 6977
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 6978
    iget v0, v1, Landroid/graphics/Rect;->top:I

    :goto_2
    int-to-float v2, v0

    move v0, v3

    goto :goto_3

    .line 6979
    :cond_3
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    if-ne v0, v6, :cond_4

    .line 6980
    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v2, v5

    add-int/2addr v0, v2

    goto :goto_2

    .line 6982
    :cond_4
    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 6986
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 6987
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/SettingList;->getOrientation()I

    move-result p0

    const/4 v3, 0x0

    if-ne p0, v4, :cond_6

    .line 6988
    iget p0, v1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    cmpg-float p0, p0, v3

    if-gez p0, :cond_5

    .line 6989
    iget p0, v1, Landroid/graphics/Rect;->left:I

    neg-int p0, p0

    int-to-float v0, p0

    .line 6991
    :cond_5
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 6992
    invoke-virtual {p1, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 6993
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget v5, p0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 6994
    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p0, v0

    int-to-float v0, p0

    .line 6997
    :cond_6
    iget p0, v1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr p0, v2

    cmpg-float p0, p0, v3

    if-gez p0, :cond_7

    .line 6998
    iget p0, v1, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    int-to-float v0, p0

    .line 7000
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 7001
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private unlockFocus()V
    .locals 2

    .line 1555
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v0, :cond_1

    .line 1557
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    if-eqz v0, :cond_0

    .line 1558
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    goto :goto_0

    .line 1560
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;-><init>()V

    .line 1562
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 1563
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startState()V

    :cond_1
    return-void
.end method

.method private unregisterGravitySensorListener()V
    .locals 1

    .line 4469
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_gravity_sensor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 4470
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private updateSaveDestination(Z)V
    .locals 0

    .line 6639
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSaveInternalStorage(Z)V

    return-void
.end method

.method private updateViews()V
    .locals 1

    .line 5866
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5868
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViews()V

    .line 5869
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setThumbnail()V

    :cond_0
    return-void
.end method

.method private updateViewsForCapture()V
    .locals 3

    .line 651
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0800d4

    .line 652
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStubFramePanoramaPreview:Landroid/view/View;

    const v0, 0x7f0800d7

    .line 653
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0800d6

    .line 654
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0800d5

    .line 655
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f080003

    .line 656
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f080004

    .line 657
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    const v0, 0x7f080091

    .line 658
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    const v0, 0x7f08008f

    .line 659
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    const v0, 0x7f0800f6

    .line 660
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    .line 663
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 666
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 668
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->setViewsVisibility(I)V

    .line 670
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 672
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->hideThumbnail()V

    .line 673
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->hideModeSelector()V

    .line 676
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isResolution16_9()Z

    move-result v0

    .line 677
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 678
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_4

    const v0, 0x7f060093

    goto :goto_0

    :cond_4
    const v0, 0x7f060094

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 679
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 681
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewAndArrowsVisibility(ZZ)V

    .line 682
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showPanoramaGuideDirection()V

    .line 683
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->hideInfoIcons()V

    .line 684
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setPreviewContentDescription()V

    return-void
.end method

.method private updateViewsForPreview()V
    .locals 3

    .line 631
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    if-eqz v0, :cond_0

    return-void

    .line 632
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->setViewsVisibility(I)V

    .line 636
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 638
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->showModeSelector()V

    .line 639
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setShutterIcon()V

    .line 641
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setThumbnail()V

    .line 642
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showInfoIcons()V

    .line 643
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    .line 644
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    const/4 v0, 0x1

    .line 646
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewAndArrowsVisibility(ZZ)V

    .line 647
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setPreviewContentDescription()V

    return-void
.end method

.method private updatedOrientation(I)V
    .locals 2

    .line 4569
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplayRotation()I

    move-result v0

    add-int/2addr p1, v0

    .line 4570
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x2d

    .line 4574
    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    add-int/lit8 v1, p1, 0x2d

    .line 4575
    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v1, v1, 0x168

    if-eq v0, v1, :cond_1

    sub-int v0, p1, v0

    .line 4577
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    :goto_0
    add-int/lit8 p1, p1, 0x2d

    .line 4583
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    :cond_1
    return-void
.end method

.method private writeViewAngle(IFF)V
    .locals 2

    .line 7131
    const-string v0, "ApplicationPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 7132
    const-string v0, "VIEW_ANGLE_CAMERA_ID"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7133
    const-string p1, "VIEW_ANGLE_H"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 7134
    const-string p1, "VIEW_ANGLE_V"

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 7135
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public changeTrackingFlag(Z)V
    .locals 0

    .line 5622
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    return-void
.end method

.method public getAntiBanding()I
    .locals 0

    .line 4595
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getAntiBanding()I

    move-result p0

    return p0
.end method

.method public getColorCorrectionMode()I
    .locals 0

    .line 4600
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->color_correction_mode:I

    return p0
.end method

.method public getEdgeMode()I
    .locals 0

    .line 4605
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->edge_mode:I

    return p0
.end method

.method public getNoiseReductionMode()I
    .locals 0

    .line 4610
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->noise_reduction_mode:I

    return p0
.end method

.method public getShadingMode()I
    .locals 0

    .line 4615
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->shading_mode:I

    return p0
.end method

.method public getTonemapMode()I
    .locals 0

    .line 4620
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->tonemap_mode:I

    return p0
.end method

.method public isAutoAELock()Z
    .locals 0

    .line 4625
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->auto_ae_lock:Z

    return p0
.end method

.method public isAutoEdgeNR()Z
    .locals 0

    .line 4635
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->nr_auto:Z

    return p0
.end method

.method public isAutoWBLock()Z
    .locals 0

    .line 4630
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->auto_wb_lock:Z

    return p0
.end method

.method public isDisplayEighteenToNine()Z
    .locals 1

    .line 7419
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    sub-float/2addr v0, p0

    .line 7421
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisplayNineteenPointFiveToNine()Z
    .locals 1

    .line 7431
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    const p0, 0x400aaaab

    sub-float/2addr v0, p0

    .line 7433
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisplayTwentyOneToNine()Z
    .locals 1

    .line 7425
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    const p0, 0x40155555

    sub-float/2addr v0, p0

    .line 7427
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEngineRunning()Z
    .locals 1

    .line 1917
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isPanoramaSaving()Z

    move-result v0

    .line 1918
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isInfinityFocus()Z
    .locals 0

    .line 4842
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->isInfinityFocus()Z

    move-result p0

    return p0
.end method

.method public isTvLock()Z
    .locals 0

    .line 4590
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->isTvLock()Z

    move-result p0

    return p0
.end method

.method synthetic lambda$initializeLayoutObjects$1$com-sonyericsson-android-camera3d-Camera2App(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 0
    const/16 v0, 0x3e

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 6521
    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 6522
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 6523
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6524
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 6525
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(Z)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 6529
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->autoFocus()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6530
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    const/4 p1, 0x4

    .line 6531
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 6532
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setShutterIcon()V

    .line 6533
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    goto :goto_1

    .line 6535
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_5

    .line 6536
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    if-eqz p2, :cond_5

    .line 6537
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    .line 6538
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    :cond_5
    :goto_1
    return v0
.end method

.method synthetic lambda$initializeLayoutObjects$2$com-sonyericsson-android-camera3d-Camera2App(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 0
    const/16 v0, 0x3e

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 6574
    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_3

    .line 6575
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 6576
    :cond_2
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    goto :goto_1

    .line 6577
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_4

    .line 6578
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    if-eqz p2, :cond_4

    .line 6579
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    .line 6580
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    :cond_4
    :goto_1
    return v0
.end method

.method synthetic lambda$new$0$com-sonyericsson-android-camera3d-Camera2App(Z)V
    .locals 1

    .line 0
    if-eqz p1, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getTakePictureButton()Landroid/widget/ImageButton;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->sendAccessibilityEvent(I)V

    .line 365
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getTakePictureButton()Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 7518
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 7519
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->reconstructLocalCache()V

    return-void
.end method

.method public onAttachEnd()V
    .locals 10

    const-string v0, "mMorphoPanoramaGP2.end error ret:"

    const-string v1, "end time="

    const-string v2, "mMorphoPanoramaGP3.setNoiseReductionParam error ret:"

    const-string v3, "onAttachEnd isoAve="

    .line 4797
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v4

    .line 4798
    :try_start_0
    const-string v5, "Camera2App"

    const-string v6, "onAttachEnd"

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 4799
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mEngineEnding:Z

    .line 4800
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    if-eqz v5, :cond_4

    .line 4802
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    const/4 v6, 0x0

    iput v6, v5, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->noiseReductionStrength:I

    .line 4803
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isAutoEdgeNR()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4804
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorSensitivityAverageManager:Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->get()I

    move-result v5

    .line 4805
    const-string v7, "Camera2App"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x12c

    const/16 v7, 0x190

    if-lt v5, v3, :cond_0

    if-gt v5, v7, :cond_0

    .line 4807
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    const/16 v5, 0x8

    iput v5, v3, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->noiseReductionStrength:I

    goto :goto_0

    :cond_0
    if-le v5, v7, :cond_1

    .line 4809
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    int-to-float v5, v5

    const v6, 0x3d19999a    # 0.0375f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v3, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->noiseReductionStrength:I

    goto :goto_0

    .line 4811
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    iput v6, v3, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->noiseReductionStrength:I

    goto :goto_0

    .line 4814
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v5, v5, Lcom/sonyericsson/android/camera3d/InternalSettings;->nr_strength:I

    iput v5, v3, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->noiseReductionStrength:I

    .line 4816
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    iget v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->noiseReductionStrength:I

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setNoiseReductionParam(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 4818
    const-string v5, "Camera2App"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4820
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4821
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->end()I

    move-result v5

    .line 4822
    const-string v6, "Camera2App"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_4

    .line 4824
    const-string v1, "Camera2App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4827
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4828
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->releaseImageBitmap()V

    return-void

    :catchall_0
    move-exception p0

    .line 4827
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onAutoFocusFinish(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 4664
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsAutoFocusProcessing:Z

    if-eqz p1, :cond_2

    .line 4666
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    if-eqz p1, :cond_1

    .line 4667
    :cond_0
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFocusedSoundId:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->playSound(I)V

    .line 4669
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    const p1, 0x7f07006d

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4671
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 5805
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCancelLocationSetting()V
    .locals 3

    const/4 v0, 0x0

    .line 7201
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    const/4 v1, 0x1

    .line 7202
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPermissionSequence:Z

    .line 7203
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    const/4 v0, 0x3

    .line 7204
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    .line 7205
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showBlackScreen()V

    .line 7207
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCamera()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7209
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 7210
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCamera()V

    :goto_0
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 4884
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getHardwareLevel()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 4887
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUpdateCameraInfoViewRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->setTotalCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 4891
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUpdateCameraInfoViewRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->run()V

    .line 4894
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4895
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onPreviewCaptureCompleted()V

    :cond_1
    return-void
.end method

.method public onCheckedChanged(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 7017
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setCameraSound(Z)V

    goto :goto_0

    .line 7008
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSaveLocation(Z)V

    if-eqz p2, :cond_2

    .line 7010
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showPermissionOrValidateLocation()V

    goto :goto_0

    .line 7012
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->stopGpsSearchTimer()V

    .line 7013
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->stopGpsSearch()V

    :goto_0
    return-void
.end method

.method public onClickCameraSetting(Landroid/view/View;)V
    .locals 0

    .line 1733
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->revertCamera2ParamsFragmentMode()V

    .line 1734
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1735
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->toggleVisibilityCameraParamFrame()V

    :cond_0
    return-void
.end method

.method public onClickSetting(Landroid/view/View;)V
    .locals 9

    .line 1723
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->revertCamera2ParamsFragmentMode()V

    .line 1724
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1725
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onClickSetting "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2App"

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    aget-object v4, v0, v4

    aget v1, v4, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    aget-object v0, v0, v1

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    .line 1727
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAllCameras()[Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    .line 1726
    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/android/camera3d/InternalSettings;->startSettingActivity(Landroid/content/Context;[DLjava/lang/String;[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClickShutter(Landroid/view/View;)V
    .locals 4

    .line 1366
    sget-object p1, Lcom/sonyericsson/android/camera3d/Camera2App;->mSyncCancelSave:Ljava/lang/Object;

    monitor-enter p1

    .line 1367
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsPanoramaCancel:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1368
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavingBackground:Z

    .line 1369
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1370
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 1372
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->revertCamera2ParamsFragmentMode()V

    .line 1373
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1374
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1375
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1376
    monitor-exit p1

    return-void

    .line 1378
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsAutoFocusProcessing:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1379
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object v1

    .line 1380
    instance-of v3, v1, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

    if-eqz v3, :cond_3

    .line 1381
    check-cast v1, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->setToNext(Z)V

    .line 1382
    monitor-exit p1

    return-void

    .line 1383
    :cond_3
    instance-of v3, v1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;

    if-eqz v3, :cond_4

    .line 1384
    check-cast v1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->setToNext(Z)V

    .line 1385
    monitor-exit p1

    return-void

    .line 1388
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->enabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1389
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->finishState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1390
    monitor-exit p1

    return-void

    .line 1393
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsInvalidDir:Z

    if-nez v1, :cond_6

    .line 1394
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSavingProgressBar()V

    .line 1395
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsPanoramaCancel:Z

    .line 1396
    monitor-exit p1

    return-void

    .line 1400
    :cond_6
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsPanoramaCancel:Z

    .line 1401
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startTakePictureState()V

    .line 1402
    monitor-exit p1

    return-void

    .line 1367
    :cond_7
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 1402
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onClickThumbnail(Landroid/view/View;)V
    .locals 2

    .line 1751
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1754
    :cond_0
    const-string p1, "Camera2App"

    const-string v0, "Thumbnail click!"

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageMimeType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->createDefaultIntentView(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1759
    const-string v0, "com.android.camera.action.REVIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x1e

    if-eqz v0, :cond_1

    .line 1761
    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1763
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageMimeType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->createDefaultIntentView(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1764
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1765
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1766
    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1768
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setThumbnail()V

    const p1, 0x7f0c00a5

    const/4 v0, 0x1

    .line 1769
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 907
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 909
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s, BuildVersion:%d"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2App"

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getMobilePhonePixels()V

    const p1, 0x7f0a001e

    .line 912
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setContentView(I)V

    .line 915
    new-instance p1, Lcom/sonyericsson/android/camera3d/Camera2App$MyCountDownTimer;

    const-wide/32 v3, 0x2bf20

    const-wide/16 v5, 0x3e8

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera3d/Camera2App$MyCountDownTimer;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;JJ)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 916
    new-instance p1, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureTimer;

    const-wide/16 v9, 0xbb8

    const-wide/16 v11, 0x3e8

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureTimer;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;JJ)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCaptureTimer:Landroid/os/CountDownTimer;

    .line 917
    new-instance p1, Lcom/sonyericsson/android/camera3d/Camera2App$CameraCheckTimer;

    const-wide/16 v3, 0x1388

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera3d/Camera2App$CameraCheckTimer;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;JJ)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraCheckTimer:Landroid/os/CountDownTimer;

    .line 918
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const p1, 0x7f080066

    .line 919
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mView:Landroid/view/View;

    .line 920
    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$6;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 929
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initializeLayoutObjects()V

    .line 931
    new-instance p1, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {p1, v1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;-><init>(Landroid/location/LocationManager;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    .line 933
    const-string p1, "sensor"

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    .line 934
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 935
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 936
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 937
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGyroscope:Landroid/hardware/Sensor;

    .line 939
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 940
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAccelerometer:Landroid/hardware/Sensor;

    .line 942
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 943
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotationVector:Landroid/hardware/Sensor;

    goto :goto_0

    .line 947
    :cond_3
    new-instance p1, Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-direct {p1, v3}, Lcom/sonyericsson/android/camera3d/SensorFusion;-><init>(Z)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    .line 948
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusionMode:I

    .line 950
    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setMode(I)I

    move-result p1

    if-eqz p1, :cond_4

    .line 952
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "SensorFusion.setMode error ret:0x%08X"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setOffsetMode(I)I

    move-result p1

    if-eqz p1, :cond_5

    .line 956
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v4, "SensorFusion.setOffsetMode error ret:0x%08X"

    invoke-static {v2, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setAppState(I)I

    move-result p1

    if-eqz p1, :cond_6

    .line 960
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v4, "SensorFusion.setAppState error ret:0x%08X"

    invoke-static {v2, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move p1, v1

    .line 963
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    array-length v2, v0

    if-ge p1, v2, :cond_7

    .line 964
    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;-><init>()V

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 967
    :cond_7
    new-instance p1, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$7;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-direct {p1, p0, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 983
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$8;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->setOnSettingDialogStateChangedListener(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;)V

    .line 1001
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->registerTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)V

    .line 1003
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 1004
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCreateSequence:Z

    const/4 p1, 0x0

    .line 1005
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1057
    const-string v0, "Camera2App"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 1061
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->clearLocalCacheBackup()V

    .line 1062
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->clearLocalCache()V

    const/4 v0, 0x0

    .line 1064
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    .line 1066
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1068
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    .line 1070
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->releaseImageBitmap()V

    .line 1072
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1073
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1074
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1077
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    if-eqz v1, :cond_1

    .line 1078
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->release()V

    :cond_1
    const/4 v1, 0x1

    .line 1081
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    .line 1082
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x64

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1086
    :catch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1087
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1090
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->unregisterTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)V

    .line 1092
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->release()V

    .line 1093
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPinToast:Landroid/widget/Toast;

    return-void
.end method

.method public onDismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V
    .locals 2

    .line 5341
    invoke-static {}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 5356
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V

    .line 5357
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setThumbnail()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5349
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 5350
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V

    .line 5351
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onRestart()V

    .line 5352
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onResume()V

    return-void

    .line 5346
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finish()V

    return-void
.end method

.method public onDismissLicenseDialog()V
    .locals 3

    .line 6894
    sget-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OTHER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V

    return-void
.end method

.method public onError()V
    .locals 1

    .line 5103
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$17;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$17;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onErrorCamera()V
    .locals 1

    .line 5129
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 5130
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$19;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$19;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onErrorCapture()V
    .locals 1

    .line 5115
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 5116
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$18;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$18;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_10

    const/4 v2, 0x0

    const/16 v3, 0x1b

    if-eq p1, v3, :cond_9

    const/16 v4, 0x50

    if-eq p1, v4, :cond_4

    const/16 v4, 0x18

    if-eq p1, v4, :cond_0

    const/16 v4, 0x19

    if-eq p1, v4, :cond_0

    goto/16 :goto_0

    .line 1420
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->getUseVolumeKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v5, "VOLUME"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ZOOM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1433
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    if-eqz v4, :cond_9

    return v1

    .line 1422
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    .line 1423
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1424
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c009c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xdac

    invoke-direct {p0, p1, p2, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->startRotatableToast(Ljava/lang/String;IZ)V

    :cond_2
    return v1

    .line 1428
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    .line 1429
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1468
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isVisibleBlackScreen()Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 1471
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    .line 1474
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_7

    return v1

    .line 1477
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_12

    .line 1478
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1479
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 1481
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->autoFocus()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1482
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    .line 1483
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1484
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    goto :goto_0

    .line 1442
    :cond_9
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isVisibleBlackScreen()Z

    move-result v4

    if-eqz v4, :cond_a

    return v1

    .line 1445
    :cond_a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v4

    if-eqz v4, :cond_b

    return v1

    .line 1448
    :cond_b
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    if-eqz v4, :cond_c

    return v1

    .line 1451
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-lez p2, :cond_d

    return v1

    .line 1455
    :cond_d
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    .line 1456
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result p2

    if-nez p2, :cond_f

    if-eq p1, v3, :cond_f

    .line 1457
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1458
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 1460
    :cond_e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->autoFocus()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1461
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1464
    :cond_f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    const/4 p1, 0x0

    .line 1465
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    return v1

    .line 1409
    :cond_10
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    .line 1410
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 1414
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->onBackKeyDown()Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 1491
    :cond_12
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1521
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    if-eqz v0, :cond_7

    .line 1522
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    .line 1523
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1524
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1526
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateViews()V

    .line 1527
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->unlockFocus()V

    goto :goto_0

    .line 1498
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1499
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1500
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    :cond_3
    return v2

    .line 1504
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v0, :cond_5

    .line 1505
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->canExitState()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1506
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 1507
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startState()V

    return v2

    .line 1511
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingSubDialog()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1512
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingSubDialog()V

    goto :goto_0

    .line 1515
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1516
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 1517
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(Z)Z

    .line 1533
    :cond_7
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1052
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOpened()V
    .locals 3

    .line 4861
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableColorCorrectionMode()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    .line 4862
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableColorCorrectionModeValues()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    .line 4863
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getColorCorrectionModeDefaultValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    .line 4864
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableEdgeMode()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    .line 4865
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableEdgeModeValues()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    .line 4866
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getEdgeModeDefaultValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    .line 4867
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableNoiseReductionMode()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    .line 4868
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableNoiseReductionModeValues()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    .line 4869
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getNoiseReductionModeDefaultValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    .line 4870
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableShadingMode()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    .line 4871
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableShadingModeValues()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    .line 4872
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getShadingModeDefaultValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    .line 4873
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableTonemapMode()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    .line 4874
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableTonemapModeValues()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    .line 4875
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getTonemapModeDefaultValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    .line 4877
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/InternalSettings;->updateCamera2ImageQualitySettings(Landroid/content/Context;[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;)V

    .line 4879
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initInternalSettingsViews()V

    return-void
.end method

.method protected onPause()V
    .locals 6

    .line 1232
    const-string v0, "Camera2App"

    const-string v1, "onPause 92417"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1233
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    .line 1235
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App;->mSyncImageTask:Ljava/lang/Object;

    monitor-enter v1

    .line 1236
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1237
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 1238
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Ljava/util/concurrent/Future;

    .line 1240
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1242
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1243
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->dismiss()V

    .line 1244
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    .line 1245
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertOkDialog:Z

    .line 1247
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1248
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->dismiss()V

    .line 1249
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    .line 1250
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertSettingDialog:Z

    .line 1253
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1254
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog(Z)V

    .line 1256
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1257
    sget-object v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SHUTDOWN:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    .line 1258
    sget-object v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SUSPEND:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-direct {p0, v0, v1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V

    .line 1259
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    :cond_4
    const/4 v1, 0x4

    .line 1261
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1262
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setButtonsEnabled(Z)V

    .line 1264
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    .line 1265
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->stopCaptureTimer()V

    .line 1266
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraCheckTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    .line 1268
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_5

    .line 1269
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1270
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1273
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->unbindThermalService()V

    .line 1275
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_6

    .line 1276
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1277
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1278
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1281
    :cond_6
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v3

    .line 1282
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1283
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLpTextureView:Landroid/widget/RelativeLayout$LayoutParams;

    const v1, 0x7f08009b

    .line 1284
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1285
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    iput v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIndexTexture:I

    .line 1286
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1288
    :cond_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1289
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->abortCamera()V

    .line 1291
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->removeUpdates()V

    .line 1293
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->releaseImageBitmap()V

    .line 1295
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->saveLocalCache()V

    .line 1296
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->clearLocalCache()V

    .line 1298
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->unregisterGravitySensorListener()V

    .line 1299
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1301
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1Tmp:Z

    .line 1302
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraIdTmp:I

    .line 1304
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->stopGpsSearchTimer()V

    .line 1306
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-eqz v1, :cond_8

    .line 1307
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_8
    const/4 v1, -0x1

    .line 1309
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setRequestedOrientation(I)V

    .line 1312
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1314
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->hideTemperatureIcon()V

    .line 1317
    :cond_9
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1319
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->clearThumbnail()V

    :cond_a
    const/4 v1, 0x3

    .line 1322
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    .line 1323
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showBlackScreen()V

    .line 1324
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1326
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_b

    .line 1327
    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 1330
    :cond_b
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    if-eqz v1, :cond_c

    .line 1331
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->invisibleRotatableToast()V

    .line 1334
    :cond_c
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    .line 1335
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    .line 1336
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    .line 1338
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 1339
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finish()V

    :cond_d
    return-void

    :catchall_0
    move-exception p0

    .line 1288
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 1240
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public onPictureTaken(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z
    .locals 6

    .line 5033
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5034
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->image()Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/InternalSettings;->encodeFrame(Landroid/media/Image;)V

    .line 5037
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTakePictureVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5041
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->tv()Z

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    .line 5042
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->isTvLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5043
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->isEnableTvAnalysis()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5045
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->image()Landroid/media/Image;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getGain(Landroid/media/Image;)D

    move-result-wide v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 5050
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->onSaveImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5051
    new-instance p1, Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    .line 5052
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 5055
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 5056
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    :cond_4
    if-eqz v0, :cond_6

    .line 5060
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    check-cast p1, Lcom/sonyericsson/android/camera3d/MorphoCamera;

    .line 5061
    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->calculateNewRequest(D)V

    .line 5062
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->startTakePictureNewRequest(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 5063
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCapture()V

    return v2

    .line 5066
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->notifyTvAnalyzed()V

    .line 5081
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result p1

    if-eq p1, v1, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    goto :goto_1

    .line 5085
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->burstRemaining()I

    move-result p1

    if-le p1, v1, :cond_8

    .line 5087
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->setBurstRemaining(I)V

    goto :goto_1

    .line 5089
    :cond_8
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->repeatTakePicture()V

    goto :goto_1

    .line 5094
    :cond_9
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->repeatTakePicture()V

    :goto_1
    return v1
.end method

.method public onPreviewImage([B)V
    .locals 7

    .line 4966
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 4967
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4968
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4969
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4971
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PREVIEW_SPREAD_BOTH_SIDES:Z

    if-eqz v0, :cond_1

    .line 4972
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v1, -0x368bdc10    # -999999.0f

    .line 4973
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 4977
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4981
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 4982
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 4984
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplayRotation()I

    move-result v1

    .line 4985
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 4987
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 4988
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    if-eq v1, v2, :cond_4

    .line 4989
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    .line 4991
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    .line 4994
    const-string v2, "YUV420_PLANAR"

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Camera2App"

    if-eqz v2, :cond_5

    .line 4995
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    invoke-static {p1, v2, v1, v4, v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->yuv2Bitmap8888([BIILandroid/graphics/Bitmap;I)I

    move-result p1

    if-eqz p1, :cond_6

    .line 4997
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "MorphoPanoramaGP2.yuv2Bitmap8888 error ret:0x%08X"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5000
    :cond_5
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v1

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    invoke-static {p1, v2, v1, v4, v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->yvu2Bitmap8888([BIILandroid/graphics/Bitmap;I)I

    move-result p1

    if-eqz p1, :cond_6

    .line 5002
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "MorphoPanoramaGP2.yvu2Bitmap8888 error ret:0x%08X"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5005
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsFrontCamera:Z

    if-eqz p1, :cond_7

    .line 5006
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5007
    invoke-virtual {v5, p1, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 5008
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5009
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 5011
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5019
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isVisibleBlackScreen()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 5020
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->hideBlackScreen()V

    :cond_9
    return-void
.end method

.method public onPreviewImageAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreviewStart()V
    .locals 1

    .line 4640
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-nez v0, :cond_0

    return-void

    .line 4641
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-eqz v0, :cond_1

    return-void

    .line 4643
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onPreviewStartSub()V

    .line 4645
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    if-eqz v0, :cond_2

    .line 4646
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->enable()V

    .line 4649
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    if-eqz p0, :cond_3

    .line 4650
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->clearStockData()V

    :cond_3
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 5628
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->reconstructLocalCache()V

    .line 5630
    array-length p2, p3

    const/4 v0, 0x1

    if-lez p2, :cond_8

    const/4 p2, 0x0

    .line 5631
    const-string v1, "ApplicationPreference"

    if-ne p1, v0, :cond_1

    .line 5632
    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionsResult([I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5633
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    goto :goto_1

    .line 5635
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 5638
    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionsResult([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 5639
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    goto :goto_1

    .line 5641
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    .line 5644
    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionsResult([I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 5645
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    goto :goto_1

    .line 5647
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 5650
    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Util;->checkLocationPermissionsResult([I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 5651
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    goto :goto_0

    .line 5654
    :cond_6
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    .line 5656
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 5657
    const-string p3, "First Time Location"

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5658
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5663
    :cond_7
    :goto_1
    invoke-virtual {p0, v1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 5664
    const-string p1, "First Launch"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5665
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 5667
    :cond_8
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    :goto_2
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 1114
    const-string v0, "Camera2App"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 1116
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    .line 1118
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-eqz v1, :cond_0

    return-void

    .line 1120
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1121
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setRequestedOrientation(I)V

    .line 1123
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    .line 1125
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 1126
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertSettingDialog:Z

    if-eqz v1, :cond_2

    .line 1127
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1128
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    goto :goto_0

    .line 1130
    :cond_1
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    .line 1133
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertOkDialog:Z

    if-eqz v1, :cond_3

    .line 1134
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->showOkDialog(I)V

    .line 1138
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showBlackScreen()V

    const/4 v1, 0x4

    .line 1140
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1141
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewArrowsVisibility(Z)V

    .line 1143
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->registerGravitySensorListener()V

    .line 1145
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 1146
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    iput v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusionMode:I

    .line 1147
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {v6, v4}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setMode(I)I

    .line 1149
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    if-eq v4, v5, :cond_5

    .line 1150
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5, v6, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1152
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 1153
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5, v6, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1155
    :cond_6
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotationVector:Landroid/hardware/Sensor;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    if-ne v4, v1, :cond_7

    .line 1156
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotationVector:Landroid/hardware/Sensor;

    invoke-virtual {v1, v4, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1159
    :cond_7
    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$9;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1192
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1193
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1194
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1195
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1196
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1198
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->bindThermalService()V

    .line 1200
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeSequence:Z

    .line 1203
    invoke-direct {p0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCameraDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1205
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraCheckTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1206
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA_SECURITY:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void

    .line 1210
    :cond_8
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1211
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1212
    iget-boolean v1, v1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCanDisableShutterSound:Z

    if-nez v1, :cond_9

    .line 1214
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1215
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$10;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$10;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/media/AudioManager;)V

    .line 1221
    invoke-virtual {v1, v3, v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1225
    :cond_9
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showPermissionOrStartCamera()V

    .line 1227
    invoke-static {}, Lcom/sonyericsson/android/camera3d/AccessibilityHelper;->onResume()V

    return-void
.end method

.method public onSelected(Lcom/sonyericsson/android/camera3d/base/SettingListBase;I)V
    .locals 7

    .line 6899
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    .line 6900
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    if-eq p2, v1, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    goto/16 :goto_4

    .line 6925
    :cond_1
    sget-object p1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_LICENSE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto/16 :goto_4

    .line 6920
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->translateSettingSubList(Landroid/view/View;)V

    .line 6921
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->open()V

    .line 6922
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/SettingList;->setActive(Z)V

    goto/16 :goto_4

    .line 6914
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isCameraSound()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p2, p1, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    .line 6915
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isCameraSound()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_b

    .line 6916
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutterSoundId:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto/16 :goto_4

    .line 6909
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->translateSettingSubList(Landroid/view/View;)V

    .line 6910
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->open()V

    .line 6911
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/SettingList;->setActive(Z)V

    goto/16 :goto_4

    .line 6906
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveLocation()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-virtual {p1, v3, p0}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    goto :goto_4

    .line 6901
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 6902
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(Z)Z

    goto :goto_4

    .line 6931
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6933
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingUseVolumeKeyList:[I

    aget p1, p1, p2

    const-string v0, "HW_CAMERA_KEY"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 6936
    :pswitch_1
    const-string v0, "ZOOM"

    goto :goto_1

    .line 6939
    :pswitch_2
    const-string v0, "VOLUME"

    .line 6946
    :goto_1
    :pswitch_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setUseVolumeKey(Ljava/lang/String;)V

    .line 6947
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingSubDialog()V

    .line 6948
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingUseVolumeKeyList:[I

    aget p0, p0, p2

    invoke-virtual {p1, v2, p0}, Lcom/sonyericsson/android/camera3d/SettingList;->setSummary(II)V

    goto :goto_4

    .line 6949
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 6950
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSaveDestinationList:[I

    aget p1, p1, p2

    const p2, 0x7f0c0089

    if-ne p1, p2, :cond_9

    goto :goto_2

    :cond_9
    move v3, v4

    :goto_2
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateSaveDestination(Z)V

    .line 6951
    invoke-direct {p0, v4, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(ZZ)Z

    .line 6952
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingSubDialog()V

    .line 6953
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveInternalStorage()Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    const p2, 0x7f0c008a

    :goto_3
    invoke-virtual {p1, v1, p2}, Lcom/sonyericsson/android/camera3d/SettingList;->setSummary(II)V

    :cond_b
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0097
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 4437
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsSensorAverage:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 4438
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    aget v4, v0, v2

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    add-float/2addr v4, v5

    aput v4, v0, v2

    .line 4439
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    aget v2, v0, v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    add-float/2addr v2, v4

    aput v2, v0, v3

    .line 4440
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    aget v2, v0, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 4441
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    goto :goto_0

    .line 4443
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    aput v4, v0, v2

    .line 4444
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v0, v3

    .line 4445
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    aput p1, v0, v1

    .line 4446
    iput v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1098
    const-string v0, "Camera2App"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 1102
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    .line 1103
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->enable()V

    .line 1105
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initializeThermalAlert()V

    const/4 v0, 0x2

    .line 1107
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    .line 1109
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->loadValues()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1344
    const-string v0, "Camera2App"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 1346
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    .line 1348
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finalizeThermalAlert()V

    .line 1350
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save()V

    .line 1351
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->saveValues()V

    .line 1353
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    sget-object v2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SHUTDOWN:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->dismiss(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    :cond_0
    const/4 v1, 0x0

    .line 1356
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 1357
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 1358
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    .line 1359
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 1361
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    .line 1362
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public onTakePictureCancel()V
    .locals 2

    .line 4782
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4783
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->finalizeEncoder()V

    :cond_0
    const/4 v0, 0x0

    .line 4785
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    .line 4786
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finishEngine()V

    .line 4787
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setAttachExit()V

    .line 4788
    new-instance v0, Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    .line 4790
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    if-eqz p0, :cond_1

    .line 4791
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method public onTakePictureFinish()Z
    .locals 1

    .line 4722
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4723
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->requestQuit()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTakePictureFinish2NextState(I)V
    .locals 2

    .line 4731
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4732
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->finalizeEncoder()V

    :cond_0
    const/4 v0, 0x0

    .line 4734
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    if-nez p1, :cond_2

    .line 4736
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->hasImage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4737
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStopSoundId:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->playSound(I)V

    .line 4738
    new-instance p1, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 4739
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->setDefaultCameraState()V

    .line 4740
    new-instance v0, Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    .line 4742
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$12;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$12;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4749
    sget-object p0, Lcom/sonyericsson/android/camera3d/Camera2App;->SAVE_TASK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonyericsson/android/camera3d/SaveTask;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera3d/SaveTask;-><init>(Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4754
    :cond_1
    new-instance p1, Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    goto :goto_0

    .line 4760
    :cond_3
    new-instance p1, Lcom/sonyericsson/android/camera3d/Camera2App$13;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$13;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4772
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finishEngine()V

    .line 4773
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setAttachExit()V

    .line 4777
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startState()V

    return-void
.end method

.method public onTakePicturePreprocess()V
    .locals 4

    .line 4684
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 4685
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplayRotation()I

    move-result v1

    .line 4686
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 4687
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsFrontCamera:Z

    if-eqz v3, :cond_1

    .line 4688
    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    if-ne v3, v0, :cond_0

    .line 4689
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    goto :goto_0

    .line 4691
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    add-int/2addr v1, p0

    add-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    goto :goto_0

    .line 4694
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    add-int/2addr v1, p0

    add-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    :goto_0
    return-void
.end method

.method public onTakePictureStart(Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;)V
    .locals 2

    .line 4700
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$11;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$11;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4710
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->updateViewsForTakePictureStart()V

    .line 4711
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorSensitivityAverageManager:Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->init()V

    .line 4712
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutterSoundId:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->playSound(I)V

    .line 4713
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    .line 4714
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->setPanoramaStateEventListener(Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;)V

    .line 4715
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initAttachQueue()V

    .line 4717
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCaptureTimer()V

    return-void
.end method

.method public onTemperatureAlreadyHigh()V
    .locals 3

    const/4 v0, 0x1

    .line 6855
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    .line 6856
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->shutdownViews()V

    const v1, 0x7f0c006d

    .line 6858
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xdac

    invoke-direct {p0, v1, v2, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startRotatableToast(Ljava/lang/String;IZ)V

    return-void
.end method

.method public onTemperatureReachedHigh()V
    .locals 1

    .line 6863
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6864
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    .line 6866
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->shutdownViews()V

    .line 6867
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->abortCamera()V

    .line 6869
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTemperatureReachingHigh()V
    .locals 1

    .line 6874
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    if-nez v0, :cond_0

    return-void

    .line 6875
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6877
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->showTemperatureIcon()V

    .line 6879
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isShowDialogThermal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6880
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6881
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6884
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    .line 6886
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 6887
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateViewsForPreview()V

    .line 6889
    :cond_3
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ALERT_THERMAL_WARNING:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_4
    return-void
.end method

.method public requestPermissionForCamera()V
    .locals 2

    .line 5776
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSION_CAMERA:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5777
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 5778
    :cond_0
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 5779
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 5780
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5781
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 5782
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 5783
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissions([Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public requestUiRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 4677
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGravitySensorListener(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4834
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->registerGravitySensorListener()V

    goto :goto_0

    .line 4836
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->unregisterGravitySensorListener()V

    :goto_0
    return-void
.end method

.method public setNullDirectionFunction()V
    .locals 9

    .line 1872
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    .line 1873
    new-instance v8, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;-><init>(IIIIII)V

    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    return-void
.end method

.method public updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V
    .locals 0

    .line 4852
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    return-void
.end method

.method public updateTvValue()V
    .locals 0

    .line 4847
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->updateTvValue()V

    return-void
.end method
