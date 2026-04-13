.class public Lcom/sonyericsson/android/camera3d/Camera2App;
.super Landroid/support/v4/app/FragmentActivity;
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
        Lcom/sonyericsson/android/camera3d/Camera2App$CaptureTimer;,
        Lcom/sonyericsson/android/camera3d/Camera2App$CameraCheckTimer;,
        Lcom/sonyericsson/android/camera3d/Camera2App$MyCountDownTimer;,
        Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;,
        Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;,
        Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;,
        Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonClickListener;,
        Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonTouchListener;,
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;,
        Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;,
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;,
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;,
        Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;,
        Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;,
        Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;,
        Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;,
        Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;,
        Lcom/sonyericsson/android/camera3d/Camera2App$Settings;,
        Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;,
        Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;
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

.field private static final DIR_ID_MAX:I = 0x3e7

.field private static final DIR_ID_MIN:I = 0x64

.field private static final DO_BACKGROUND_OPEN_CAMERA:Z = true

.field private static final DUMMY_FILE_MIME_TYPE:Ljava/lang/String; = "text/plane"

.field private static final DUMMY_FILE_NAME:Ljava/lang/String; = "sdcard_write_test"

.field private static final FILE_ID_MAX:I = 0x270f

.field private static final FILE_ID_MIN:I = 0x1

.field private static final GET_PREVIEW_IMAGE_EVERY_FRAME:Z = false

.field private static final INTERVAL:J = 0x3e8L

.field private static final LENGTH_OF_FILE_NAME:I = 0xc

.field private static final LIMIT_DIRECTION:Z

.field private static final LOG_TAG:Ljava/lang/String; = "Camera2App"

.field private static final MAX_LOCAL_CACHE_NUM:I = 0x64

.field private static final OVERLAY_DIALOG_NUM_MAX:I = 0x3

.field private static final PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

.field private static final PERMISSIONS_LOCATION:[Ljava/lang/String;

.field private static final PERMISSIONS_STORAGE:[Ljava/lang/String;

.field private static final PERMISSION_CAMERA:[Ljava/lang/String;

.field private static final PREFIX_DIR:Ljava/lang/String; = "ANDRO"

.field private static final PREFIX_IMAGE:Ljava/lang/String; = "DSC_"

.field private static final PREFIX_MOVIE:Ljava/lang/String; = "MOV_"

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

.field private static final REQUEST_SD_CARD_PERMISSION:I = 0x14

.field private static final REQUEST_STORAGE:I = 0x2

.field private static final REQUEST_SYSTEM_LOCATION_PERMISSION:I = 0x28

.field private static final REQUEST_VIEW:I = 0x1e

.field private static final SAVE_DESTINATION_EXTERNAL:Z = false

.field private static final SAVE_DESTINATION_INTERNAL:Z = true

.field private static final SHOW_DUAL_STORAGE_AVAILABLE_DIALOG:Z = false

.field private static final SLEEP_MICROSEC:I

.field private static final SLEEP_MILLISEC:J

.field private static final SLEEP_NANOSEC:I

.field private static final STABILIZE_PREVIEW_FRAME:Z = true

.field private static final START_TIME:J = 0x2bf20L

.field private static final STORAGE_PATH_PREFIX:Ljava/lang/String;

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

.field private mFolderPath:Ljava/lang/String;

.field private mGetLatestImageTask:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

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

.field private mIndexSettingSaveDestinationInternal:I

.field private mIndexSettingSaveDestinationSD:I

.field private final mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

.field private mInputFolderPath:Ljava/lang/String;

.field private final mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

.field private mIsAutoFocusProcessing:Z

.field private mIsFrontCamera:Z

.field private mIsInflateSavingProgress:Z

.field private mIsInvalidDir:Z

.field private final mIsMiniPreviewArrowsVisible:[Z

.field private mIsNotifySave2Internal:Z

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

.field private mSaveDirId:I

.field private mSaveFileId:I

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

.field private final mSurfaceListener:Landroid/view/SurfaceHolder$Callback;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private final mTakePictureVisibleRunnable:Ljava/lang/Runnable;

.field private mTemperatureHigh:Z

.field private mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

.field private mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailFilePath:Ljava/lang/String;

.field private mThumbnailUri:Landroid/net/Uri;

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
    .locals 6

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSyncImageTask:Ljava/lang/Object;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSyncCancelSave:Ljava/lang/Object;

    .line 183
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera3d/Camera2App;->LIMIT_DIRECTION:Z

    .line 185
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PREVIEW_SPREAD_BOTH_SIDES:Z

    .line 189
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 5X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Robin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/sonyericsson/android/camera3d/Camera2App;->ALWAYS_AUTO_MODE_AFTER_STARTUP:Z

    .line 191
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Sony"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x3e8

    if-eqz v0, :cond_2

    const/16 v0, 0x1388

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    sput v0, Lcom/sonyericsson/android/camera3d/Camera2App;->SLEEP_MICROSEC:I

    .line 192
    sget v0, Lcom/sonyericsson/android/camera3d/Camera2App;->SLEEP_MICROSEC:I

    div-int/2addr v0, v3

    int-to-long v4, v0

    sput-wide v4, Lcom/sonyericsson/android/camera3d/Camera2App;->SLEEP_MILLISEC:J

    .line 193
    sget v0, Lcom/sonyericsson/android/camera3d/Camera2App;->SLEEP_MICROSEC:I

    rem-int/2addr v0, v3

    mul-int/2addr v0, v3

    sput v0, Lcom/sonyericsson/android/camera3d/Camera2App;->SLEEP_NANOSEC:I

    .line 233
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2Image;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2Image;-><init>(Landroid/media/Image;)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->sAttachExit:Lcom/sonyericsson/android/camera3d/CaptureImage;

    .line 256
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->STORAGE_PATH_PREFIX:Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    .line 266
    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 268
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    .line 270
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSION_CAMERA:[Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 271
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    .line 426
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PreviewImageSynchronizedObject:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 4132
    new-array v0, v0, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    aput-object v4, v0, v2

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 153
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCreateSequence:Z

    .line 163
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeSequence:Z

    .line 164
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPermissionSequence:Z

    const/4 v1, 0x0

    .line 165
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    .line 168
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsInflateSavingProgress:Z

    .line 169
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMainThreadName:Ljava/lang/String;

    const/4 v2, -0x1

    .line 180
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    .line 181
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    .line 197
    new-instance v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    .line 201
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mEngineEnding:Z

    .line 207
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGyroscope:Landroid/hardware/Sensor;

    .line 208
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAccelerometer:Landroid/hardware/Sensor;

    .line 209
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotationVector:Landroid/hardware/Sensor;

    const/16 v3, 0x9

    .line 210
    new-array v4, v3, [D

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGyroMatrix:[D

    .line 211
    new-array v4, v3, [D

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRVMatrix:[D

    .line 212
    new-array v3, v3, [D

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mACMatrix:[D

    .line 213
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    const/4 v3, 0x5

    .line 219
    new-array v3, v3, [Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    .line 226
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    .line 232
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 236
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    const/4 v3, 0x2

    .line 248
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingUseVolumeKeyList:[I

    .line 250
    new-array v4, v3, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSaveDestinationList:[I

    const-wide/16 v4, -0x1

    .line 254
    iput-wide v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageId:J

    .line 255
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFileLocation:Ljava/lang/String;

    const/4 v4, 0x1

    .line 276
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    .line 283
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    .line 284
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    .line 286
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsAutoFocusProcessing:Z

    .line 291
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertOkDialog:Z

    .line 292
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertSettingDialog:Z

    .line 293
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    .line 294
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    .line 295
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavingBackground:Z

    .line 296
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsPanoramaCancel:Z

    .line 299
    iput v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    .line 331
    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/4 v3, 0x3

    .line 332
    new-array v3, v3, [Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 333
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    .line 336
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    .line 339
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsNotifySave2Internal:Z

    .line 341
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPinToast:Landroid/widget/Toast;

    .line 403
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 409
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    .line 410
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    .line 411
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    .line 414
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    .line 421
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 422
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmap:Landroid/graphics/Bitmap;

    const/high16 v0, 0x42700000    # 60.0f

    .line 427
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    const/high16 v0, 0x42200000    # 40.0f

    .line 428
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    .line 433
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    .line 448
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    .line 451
    new-instance v0, Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    .line 454
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    .line 585
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    .line 590
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorSensitivityAverageManager:Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;

    .line 693
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$1;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 805
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$2;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 841
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$3;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceListener:Landroid/view/SurfaceHolder$Callback;

    .line 1903
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUpdateCameraInfoViewRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;

    .line 5089
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$15;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$15;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mHideBlackScreenRunnable:Ljava/lang/Runnable;

    .line 5097
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$16;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$16;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrameRunnable:Ljava/lang/Runnable;

    .line 5180
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$17;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$17;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTakePictureVisibleRunnable:Ljava/lang/Runnable;

    .line 7587
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    return-void

    :array_0
    .array-data 4
        0x7f0c0081
        0x7f0c007f
    .end array-data

    :array_1
    .array-data 4
        0x7f0c0071
        0x7f0c0072
    .end array-data
.end method

.method private abortCamera()V
    .locals 2

    .line 7676
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v0, :cond_3

    .line 7677
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->stopState()V

    .line 7678
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->abortCaptures()V

    .line 7679
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isPanoramaSaving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Camera2App"

    const-string v1, "panorama is capturing."

    .line 7680
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7681
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStopSoundId:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->playSound(I)V

    .line 7682
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->abort()V

    .line 7683
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setAttachExit()V

    goto :goto_0

    .line 7684
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isPanoramaSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Camera2App"

    const-string v1, "panorama is saving."

    .line 7685
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7686
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavingBackground:Z

    .line 7687
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->enabled()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_1
    const-string v0, "Camera2App"

    const-string v1, "panorama is idling."

    .line 7691
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7692
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 7698
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->setDefaultCameraState()V

    .line 7700
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->pause()V

    .line 7701
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->exit()V

    :cond_3
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isResolution16_9()Z

    move-result p0

    return p0
.end method

.method static synthetic access$10600()Ljava/lang/Object;
    .locals 1

    .line 153
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PreviewImageSynchronizedObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$10702(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$10800(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setAttachExit()V

    return-void
.end method

.method static synthetic access$10900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$10902(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/sonyericsson/android/camera3d/Camera2App;ZZ)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewAndArrowsVisibility(ZZ)V

    return-void
.end method

.method static synthetic access$11600()Z
    .locals 1

    .line 153
    sget-boolean v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PREVIEW_SPREAD_BOTH_SIDES:Z

    return v0
.end method

.method static synthetic access$11700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/FrameLayout;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Canvas;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmapCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic access$12002(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmapCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Paint;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmapPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$12102(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmapPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic access$12200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$12202(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic access$12300(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initAttachQueue()V

    return-void
.end method

.method static synthetic access$12400(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    return p0
.end method

.method static synthetic access$12402(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    return p1
.end method

.method static synthetic access$12500(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateViewsForCapture()V

    return-void
.end method

.method static synthetic access$12700(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSavingProgressBar()V

    return-void
.end method

.method static synthetic access$12800(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->hideBlackScreen()V

    return-void
.end method

.method static synthetic access$12900(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->shutdownViews()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$13000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static synthetic access$13100(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->modeFinish()V

    return-void
.end method

.method static synthetic access$13300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    return p0
.end method

.method static synthetic access$13400()Ljava/lang/Object;
    .locals 1

    .line 153
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSyncImageTask:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getLatestImage()V

    return-void
.end method

.method static synthetic access$13600(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/LinkedList;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$13700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$13702(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$13800(Lcom/sonyericsson/android/camera3d/Camera2App;)J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageId:J

    return-wide v0
.end method

.method static synthetic access$13902(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewFrame:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$14000(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFileLocation:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$14102(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$14202(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;)Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    return-object p1
.end method

.method static synthetic access$14300(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    return p0
.end method

.method static synthetic access$14302(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    return p1
.end method

.method static synthetic access$14500(Lcom/sonyericsson/android/camera3d/Camera2App;I)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->updatedOrientation(I)V

    return-void
.end method

.method static synthetic access$14600(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isPanoramaSaving()Z

    move-result p0

    return p0
.end method

.method static synthetic access$14700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$14800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InfoIconsFragment;
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$14900(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    return-void
.end method

.method static synthetic access$15000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/view/TextureView;)Landroid/view/TextureView;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewTextureView:Landroid/view/TextureView;

    return-object p1
.end method

.method static synthetic access$15100(Lcom/sonyericsson/android/camera3d/Camera2App;I)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showOkDialog(I)V

    return-void
.end method

.method static synthetic access$15200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    return-object p0
.end method

.method static synthetic access$15300()[Ljava/lang/String;
    .locals 1

    .line 153
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15400(Lcom/sonyericsson/android/camera3d/Camera2App;I)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    return-void
.end method

.method static synthetic access$15500(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/RotatableToast;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    return-object p0
.end method

.method static synthetic access$15600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingList;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    return-object p0
.end method

.method static synthetic access$15700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    return-object p0
.end method

.method static synthetic access$15800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    return-object p0
.end method

.method static synthetic access$15900(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/view/View;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->translateSettingSubList(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->textureViewPrepared()V

    return-void
.end method

.method static synthetic access$16000(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSettingButtonHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$16100(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getNavigationBarHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$16200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->autoFocus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$16300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    return p0
.end method

.method static synthetic access$16302(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    return p1
.end method

.method static synthetic access$16400(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToRemoveSystemUi()V

    return-void
.end method

.method static synthetic access$16500(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToDimSystemUi()V

    return-void
.end method

.method static synthetic access$16600(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->unlockFocus()V

    return-void
.end method

.method static synthetic access$16900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isActiveGpsSearchTimer()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    return-object p0
.end method

.method static synthetic access$17000(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->stopGpsSearchTimer()V

    return-void
.end method

.method static synthetic access$17100(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showPanoramaGuideDirection()V

    return-void
.end method

.method static synthetic access$17200(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initInternalSettingsViewsSync()V

    return-void
.end method

.method static synthetic access$17300(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onPreviewStartSubSync()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera3d/Camera2App;I)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/sonyericsson/android/camera3d/Camera2App;F)F
    .locals 0

    .line 153
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    return p1
.end method

.method static synthetic access$2102(Lcom/sonyericsson/android/camera3d/Camera2App;F)F
    .locals 0

    .line 153
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    return p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->makeEngineParam()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplayRotation()I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->openSettingDialog()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->excludeOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSaveDestinationExternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera3d/Camera2App;Z)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setSaveDestination(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera3d/Camera2App;ZZ)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setEnabledSaveDestination(ZZ)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$Settings;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setThumbnail()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getLiveViewHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLatestCaptureResult:Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;)Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLatestCaptureResult:Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorSensitivityAverageManager:Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finishEngine()V

    return-void
.end method

.method static synthetic access$4600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->createNewFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;IILandroid/location/Location;)Z
    .locals 0

    .line 153
    invoke-direct/range {p0 .. p8}, Lcom/sonyericsson/android/camera3d/Camera2App;->saveImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;IILandroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4902(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getLiveViewWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$5000(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInputFolderPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInputFolderPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$5102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMaxWidth:I

    return p1
.end method

.method static synthetic access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMaxHeight:I

    return p0
.end method

.method static synthetic access$5202(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMaxHeight:I

    return p1
.end method

.method static synthetic access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    return-object p0
.end method

.method static synthetic access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAngle:I

    return p0
.end method

.method static synthetic access$5402(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAngle:I

    return p1
.end method

.method static synthetic access$5500(Lcom/sonyericsson/android/camera3d/Camera2App;)J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachNumDirectionUndecided:J

    return-wide v0
.end method

.method static synthetic access$5502(Lcom/sonyericsson/android/camera3d/Camera2App;J)J
    .locals 0

    .line 153
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachNumDirectionUndecided:J

    return-wide p1
.end method

.method static synthetic access$5600(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ProgressBar;
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSavingProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavingBackground:Z

    return p0
.end method

.method static synthetic access$5702(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavingBackground:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    return p0
.end method

.method static synthetic access$5900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsNotifySave2Internal:Z

    return p0
.end method

.method static synthetic access$5902(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsNotifySave2Internal:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isPreviewCentering()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6000(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;IZ)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->startRotatableToast(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$6100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    return p0
.end method

.method static synthetic access$6200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6300(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateViews()V

    return-void
.end method

.method static synthetic access$6400(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6402(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->createEngine()Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    return-object p0
.end method

.method static synthetic access$6602(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/PanoramaState;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    return-object p1
.end method

.method static synthetic access$6800(J)Ljava/lang/String;
    .locals 0

    .line 153
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->createName(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6900(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFolderPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$7200()Lcom/sonyericsson/android/camera3d/CaptureImage;
    .locals 1

    .line 153
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->sAttachExit:Lcom/sonyericsson/android/camera3d/CaptureImage;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mEngineEnding:Z

    return p0
.end method

.method static synthetic access$7400(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setInitialRotationByGravity()V

    return-void
.end method

.method static synthetic access$7502(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsSensorAverage:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setSensorFusionValue()V

    return-void
.end method

.method static synthetic access$7700(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsInvalidDir:Z

    return p0
.end method

.method static synthetic access$7702(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsInvalidDir:Z

    return p1
.end method

.method static synthetic access$7900()J
    .locals 2

    .line 153
    sget-wide v0, Lcom/sonyericsson/android/camera3d/Camera2App;->SLEEP_MILLISEC:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$8000()I
    .locals 1

    .line 153
    sget v0, Lcom/sonyericsson/android/camera3d/Camera2App;->SLEEP_NANOSEC:I

    return v0
.end method

.method static synthetic access$8100()Ljava/lang/Object;
    .locals 1

    .line 153
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSyncCancelSave:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsPanoramaCancel:Z

    return p0
.end method

.method static synthetic access$8202(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsPanoramaCancel:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStopSoundId:I

    return p0
.end method

.method static synthetic access$8400(Lcom/sonyericsson/android/camera3d/Camera2App;I)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->playSound(I)V

    return-void
.end method

.method static synthetic access$8500(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    return p0
.end method

.method static synthetic access$8502(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    return p1
.end method

.method static synthetic access$8700(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    return p0
.end method

.method static synthetic access$8800(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->stopCaptureTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Point;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraOrientation:I

    return p0
.end method

.method static synthetic access$9100(Lcom/sonyericsson/android/camera3d/Camera2App;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mArrowDir:I

    return p0
.end method

.method static synthetic access$9102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mArrowDir:I

    return p1
.end method

.method static synthetic access$9200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsFrontCamera:Z

    return p0
.end method

.method static synthetic access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$9402(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    return p1
.end method

.method static synthetic access$9500(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->unregisterGravitySensorListener()V

    return-void
.end method

.method static synthetic access$9800(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/CaptureImage;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->addAttachQueue(Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private addAttachQueue(Lcom/sonyericsson/android/camera3d/CaptureImage;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 392
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera3d/CaptureImage;

    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addLocalCache(Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;)V
    .locals 2

    .line 6353
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 6354
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6355
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 6356
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 6359
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6360
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-le p1, v1, :cond_1

    .line 6361
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private autoFocus()Z
    .locals 3

    .line 1511
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

    .line 1515
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    if-eqz v0, :cond_1

    .line 1516
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;Z)V

    goto :goto_0

    .line 1518
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;-><init>(Z)V

    .line 1520
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 1521
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStart()V

    .line 1522
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    const v2, 0x7f07006d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1523
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 1524
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsAutoFocusProcessing:Z

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private checkLocationService()Z
    .locals 8

    .line 6956
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 6957
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->isValidLocationService()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6958
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->requestLocation()V

    .line 6959
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6961
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->startGpsSearch()V

    .line 6963
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isActiveGpsSearchTimer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6964
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_2

    .line 6965
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$26;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$26;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimerTask:Ljava/util/TimerTask;

    .line 6980
    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimer:Ljava/util/Timer;

    .line 6981
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimerTask:Ljava/util/TimerTask;

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 6984
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$27;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$27;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->updateLocation(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;)V

    return v1

    .line 7004
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7006
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->stopGpsSearch()V

    .line 7008
    :cond_5
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_VALIDATE_LOCATION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    const/4 p0, 0x0

    return p0
.end method

.method private checkRemainingMemory(Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 6839
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(ZZ)Z

    move-result p0

    return p0
.end method

.method private checkRemainingMemory(ZZ)Z
    .locals 17

    move-object/from16 v0, p0

    .line 6845
    invoke-static {}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getAvailableInternalStorageSpace()J

    move-result-wide v2

    .line 6846
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getAvailableExternalStorageSpace(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ltz v8, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    move v8, v10

    :goto_0
    const-wide/32 v11, 0x3c00000

    cmp-long v13, v2, v11

    if-gez v13, :cond_1

    move v13, v10

    goto :goto_1

    :cond_1
    move v13, v9

    :goto_1
    cmp-long v14, v4, v11

    if-gez v14, :cond_2

    move v14, v10

    goto :goto_2

    :cond_2
    move v14, v9

    :goto_2
    if-eqz v14, :cond_4

    if-eqz v13, :cond_3

    goto :goto_3

    :cond_3
    move v13, v10

    goto :goto_4

    :cond_4
    :goto_3
    move v13, v9

    .line 6855
    :goto_4
    invoke-direct {v0, v9, v13}, Lcom/sonyericsson/android/camera3d/Camera2App;->setEnabledSaveDestination(ZZ)V

    .line 6856
    invoke-direct {v0, v10, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->setEnabledSaveDestination(ZZ)V

    .line 6858
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSaveDestinationExternal()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 6860
    iget-object v14, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v14, v8}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSdcardInserted(Z)V

    if-eqz v8, :cond_5

    move-wide v14, v4

    :goto_5
    move v8, v9

    goto :goto_7

    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_7

    .line 6865
    :cond_6
    invoke-direct {v0, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->setSaveDestination(Z)V

    :cond_7
    if-nez p1, :cond_8

    if-eqz p2, :cond_8

    .line 6868
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return v10

    :cond_8
    if-eqz p1, :cond_9

    .line 6871
    sget-object v8, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v8}, Lcom/sonyericsson/android/camera3d/Camera2App;->setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    move v8, v10

    goto :goto_6

    :cond_9
    move v8, v9

    :goto_6
    move-wide v14, v2

    move v13, v10

    goto :goto_7

    :cond_a
    if-eqz p1, :cond_b

    .line 6879
    iget-object v14, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSdcardInserted()Z

    if-nez v8, :cond_b

    .line 6880
    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v8, v10}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSdcardInserted(Z)V

    :cond_b
    move-wide v14, v2

    goto :goto_5

    :goto_7
    const-string v11, "Camera2App"

    .line 6895
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "checkRemainingMemory Internal=%d External=%d Destination storage is %s."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 6896
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v9

    const/4 v2, 0x2

    if-eqz v13, :cond_c

    const-string v3, "external"

    goto :goto_8

    :cond_c
    const-string v3, "internal"

    :goto_8
    aput-object v3, v7, v2

    .line 6895
    invoke-static {v12, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gez v2, :cond_11

    if-eqz p2, :cond_e

    if-eqz v13, :cond_d

    .line 6900
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_9

    .line 6902
    :cond_d
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_9

    :cond_e
    if-eqz p1, :cond_10

    if-eqz v13, :cond_f

    .line 6906
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_9

    .line 6908
    :cond_f
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_10
    :goto_9
    return v10

    .line 6913
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v2

    if-eqz v2, :cond_13

    const-wide/32 v3, 0x9600000

    cmp-long v3, v14, v3

    if-gez v3, :cond_12

    .line 6916
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->showMemoryIcon()V

    goto :goto_a

    .line 6918
    :cond_12
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->hideMemoryIcon()V

    :cond_13
    :goto_a
    const-wide/32 v2, 0x3c00000

    cmp-long v2, v14, v2

    if-gez v2, :cond_18

    if-eqz p2, :cond_15

    if-eqz v13, :cond_14

    .line 6925
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_b

    .line 6927
    :cond_14
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_b

    :cond_15
    if-eqz p1, :cond_17

    if-eqz v13, :cond_16

    .line 6931
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_b

    .line 6933
    :cond_16
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_17
    :goto_b
    return v10

    :cond_18
    return v8
.end method

.method private clearLocalCache()V
    .locals 1

    .line 6332
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 6333
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method private clearLocalCacheBackup()V
    .locals 1

    .line 6341
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 6342
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 6343
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    :cond_0
    return-void
.end method

.method private closeSettingDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 1006
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog(Z)V

    return-void
.end method

.method private closeSettingDialog(Z)V
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/SettingList;->close(Z)V

    .line 995
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->close(Z)V

    .line 996
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->close(Z)V

    .line 997
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->notifySettingDialogClosed()V

    const/4 p1, 0x1

    .line 998
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 999
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1001
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showInfoIcons()V

    .line 1002
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToDimSystemUi()V

    return-void
.end method

.method private closeSettingSubDialog()V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->close()V

    .line 1015
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->close()V

    .line 1016
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->setActive(Z)V

    return-void
.end method

.method private configureTransform()V
    .locals 15

    .line 1751
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    if-nez v0, :cond_0

    return-void

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    .line 1756
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1757
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1758
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

    .line 1759
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v4, v6, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1760
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 1761
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    const/16 v8, 0x5a

    const/high16 v9, 0x43340000    # 180.0f

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eq v11, v1, :cond_2

    if-ne v10, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v12, v1, :cond_3

    .line 1771
    invoke-virtual {v2, v9, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 1763
    :cond_2
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    sub-float v13, v5, v13

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    sub-float v14, v7, v14

    invoke-virtual {v4, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 1764
    sget-object v13, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v13}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1765
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    .line 1766
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v3, v13

    iget-object v13, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    .line 1767
    invoke-virtual {v13}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 1765
    invoke-static {v3, v13}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1768
    invoke-virtual {v2, v3, v3, v5, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    add-int/lit8 v3, v1, -0x2

    mul-int/2addr v3, v8

    int-to-float v3, v3

    .line 1769
    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1773
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setTransform(Landroid/graphics/Matrix;)V

    const v3, 0x7f08007a

    .line 1775
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1776
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v5, v6, v6, v7, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1777
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 1778
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    if-eq v11, v1, :cond_5

    if-ne v10, v1, :cond_4

    goto :goto_2

    :cond_4
    if-ne v12, v1, :cond_6

    .line 1788
    invoke-virtual {v2, v9, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_3

    .line 1780
    :cond_5
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    sub-float v9, v6, v9

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    sub-float v10, v7, v10

    invoke-virtual {v4, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 1781
    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v5, v4, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1783
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1784
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 1782
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1785
    invoke-virtual {v2, v0, v0, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    sub-int/2addr v1, v12

    mul-int/2addr v8, v1

    int-to-float v0, v8

    .line 1786
    invoke-virtual {v2, v0, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1790
    :cond_6
    :goto_3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewMatrix:Landroid/graphics/Matrix;

    .line 1791
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 1792
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_7
    return-void
.end method

.method private createContentinfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;
    .locals 3

    const-string p0, "_id"

    .line 6266
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string p0, "_data"

    .line 6268
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 6270
    new-instance p1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    .line 6271
    iput-wide v0, p1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mId:J

    .line 6272
    iput-object p0, p1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageFileLocation:Ljava/lang/String;

    return-object p1
.end method

.method private createDefaultIntentView(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1718
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.category.DEFAULT"

    .line 1719
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private createEngine()Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;
    .locals 15

    .line 1560
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    if-eqz v0, :cond_0

    .line 1561
    sget-object p0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_ALREADY_CREATED:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    return-object p0

    .line 1564
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    const-string v0, "YUV420_PLANAR"

    .line 1565
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1566
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_format:Ljava/lang/String;

    .line 1567
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    const-string v1, "YUV420_SEMIPLANAR"

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_format:Ljava/lang/String;

    goto :goto_0

    .line 1569
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_format:Ljava/lang/String;

    .line 1570
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_format:Ljava/lang/String;

    .line 1572
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_x:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    .line 1573
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_x:D

    double-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    .line 1575
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_y:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 1576
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_y:D

    double-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    .line 1579
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    .line 1580
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getAspectTableIndex(FF)I

    move-result v0

    const/4 v1, 0x2

    .line 1581
    new-array v1, v1, [F

    .line 1582
    iget v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    invoke-static {v2, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getRatios(II[F)V

    const-string v0, "Camera2App"

    .line 1583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEngine mViewAngleH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mViewAngleV="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " ratiox="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " ratioy="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    float-to-double v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v9

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    aget v2, v1, v3

    float-to-double v13, v2

    mul-double/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v13

    mul-double/2addr v5, v11

    div-double/2addr v5, v9

    iput-wide v5, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->aovx:D

    .line 1585
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    float-to-double v5, v2

    mul-double/2addr v7, v5

    mul-double/2addr v7, v9

    div-double/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    aget v1, v1, v4

    float-to-double v1, v1

    mul-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    mul-double/2addr v13, v1

    mul-double/2addr v13, v11

    div-double/2addr v13, v9

    iput-wide v13, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->aovy:D

    const-string v0, "Camera2App"

    .line 1586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createEngine aovx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-wide v5, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->aovx:D

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " aovy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-wide v5, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->aovy:D

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getLiveViewWidth()I

    move-result v0

    .line 1589
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    mul-int/2addr v1, v0

    int-to-double v1, v1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v1, v5

    const-string v5, "Camera2App"

    .line 1590
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createEngine root_view width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Camera2App"

    .line 1591
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createEngine mMiniPreviewImageView width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-double v5, v5

    div-double/2addr v1, v5

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-wide v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->aovy:D

    mul-double/2addr v1, v5

    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->goal_angle:D

    const-string v0, "Camera2App"

    .line 1593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createEngine goal_angle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-wide v5, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->goal_angle:D

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->initializeEngine(Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1596
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    if-nez p0, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setAttachEnabled(Z)V

    .line 1597
    sget-object p0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_NEWLY_CREATED:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 1599
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    .line 1600
    sget-object p0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_ERROR:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    return-object p0
.end method

.method private static createName(J)Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd_kk-mm-ss"

    .line 4207
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createNewFilePath()Ljava/lang/String;
    .locals 10

    .line 4211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSaveDestinationExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4212
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->createNewSDFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4215
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4216
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4217
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    if-gez v1, :cond_2

    .line 4218
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    .line 4220
    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$9;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    goto :goto_0

    .line 4242
    :cond_1
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    .line 4243
    iput v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    .line 4246
    :cond_2
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s%s%d%s"

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFolderPath:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v4, v3

    iget v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "ANDRO"

    const/4 v8, 0x3

    aput-object v5, v4, v8

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4247
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4248
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 4249
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3

    return-object v5

    .line 4253
    :cond_3
    iget v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    if-gez v4, :cond_5

    .line 4255
    new-instance v4, Lcom/sonyericsson/android/camera3d/Camera2App$10;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$10;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 4289
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    if-gez v1, :cond_4

    .line 4290
    iput v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    goto :goto_1

    .line 4292
    :cond_4
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    .line 4296
    :cond_5
    :goto_1
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    const/16 v4, 0x270f

    if-le v1, v4, :cond_6

    .line 4297
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    .line 4298
    iput v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    .line 4299
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s%s%d%s"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFolderPath:Ljava/lang/String;

    aput-object v9, v4, v6

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v9, v4, v3

    iget v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v7

    const-string v9, "ANDRO"

    aput-object v9, v4, v8

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4300
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4301
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 4302
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_6

    return-object v5

    .line 4307
    :cond_6
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s%s%s%04d.JPG"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v6

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v0, v2, v3

    const-string v0, "DSC_"

    aput-object v0, v2, v7

    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4308
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    return-object v0
.end method

.method private createNewSDFilePath()Ljava/lang/String;
    .locals 11

    .line 4314
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->getSdCardGrantedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    .line 4315
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "DCIM"

    .line 4316
    invoke-virtual {v0, v1}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "DCIM"

    .line 4318
    invoke-virtual {v0, v1}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_0
    move-object v0, v1

    .line 4325
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->exists()Z

    move-result v1

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    .line 4326
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    if-gez v1, :cond_7

    .line 4327
    iput v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    .line 4328
    invoke-virtual {v0}, Landroid/support/v4/provider/DocumentFile;->listFiles()[Landroid/support/v4/provider/DocumentFile;

    move-result-object v1

    .line 4329
    array-length v3, v1

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_7

    aget-object v7, v1, v6

    .line 4330
    invoke-virtual {v7}, Landroid/support/v4/provider/DocumentFile;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    .line 4331
    :cond_2
    invoke-virtual {v7}, Landroid/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ANDRO"

    .line 4332
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    const-string v8, "ANDRO"

    .line 4333
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 4334
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 4336
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 4337
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    if-le v8, v9, :cond_5

    const/16 v8, 0x3e7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v8, v9, :cond_4

    goto :goto_1

    .line 4340
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4346
    :cond_6
    iput v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    .line 4347
    iput v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    .line 4350
    :cond_7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d%s"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "ANDRO"

    aput-object v8, v7, v5

    invoke-static {v1, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4351
    invoke-virtual {v0, v1}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v3

    if-nez v3, :cond_8

    .line 4353
    invoke-virtual {v0, v1}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v3

    if-nez v3, :cond_8

    return-object v2

    .line 4358
    :cond_8
    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    const/4 v7, 0x3

    if-gez v3, :cond_a

    .line 4359
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s%s%s"

    new-array v9, v7, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFolderPath:Ljava/lang/String;

    aput-object v10, v9, v4

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v10, v9, v5

    aput-object v1, v9, v6

    invoke-static {v3, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4360
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4361
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$11;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$11;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v8, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 4396
    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    if-gez v3, :cond_9

    .line 4397
    iput v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    goto :goto_2

    .line 4399
    :cond_9
    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    .line 4403
    :cond_a
    :goto_2
    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    const/16 v8, 0x270f

    if-le v3, v8, :cond_b

    .line 4404
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    .line 4405
    iput v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    .line 4406
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d%s"

    new-array v8, v6, [Ljava/lang/Object;

    iget v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "ANDRO"

    aput-object v9, v8, v5

    invoke-static {v1, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4407
    invoke-virtual {v0, v1}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v3

    if-nez v3, :cond_b

    .line 4409
    invoke-virtual {v0, v1}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_b

    return-object v2

    .line 4415
    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s%s%s%s%s%04d.JPG"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFolderPath:Ljava/lang/String;

    aput-object v8, v3, v4

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v1, v3, v7

    const/4 v1, 0x4

    const-string v4, "DSC_"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    iget v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4416
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    return-object v0
.end method

.method public static d_save_raw([BLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 4111
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->newInstance(Z)Lcom/sonyericsson/android/camera3d/PerformanceCounter;

    move-result-object v1

    .line 4113
    :try_start_0
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    .line 4116
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s/%s.yuv"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    const/4 p1, 0x1

    aput-object p2, v6, p1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4117
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 4122
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 4123
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->stop()V

    const-string p0, "Camera2App"

    const-string p1, "InputSave"

    .line 4124
    :goto_0
    invoke-virtual {v1, p0, p1}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->putLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 4119
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    .line 4122
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 4123
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->stop()V

    const-string p0, "Camera2App"

    const-string p1, "InputSave"

    goto :goto_0

    :goto_2
    if-eqz v2, :cond_0

    .line 4122
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 4123
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->stop()V

    const-string p1, "Camera2App"

    const-string p2, "InputSave"

    .line 4124
    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->putLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4126
    :cond_0
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    .line 4128
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-void
.end method

.method private dismissDialog(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V
    .locals 1

    .line 5703
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    if-eqz v0, :cond_0

    .line 5704
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->close()V

    const/4 v0, 0x0

    .line 5705
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    .line 5707
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    if-eqz v0, :cond_1

    .line 5708
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->dismiss(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    :cond_1
    return-void
.end method

.method private dismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V
    .locals 4

    .line 5713
    sget-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OVERLAY:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5717
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 5718
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5719
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5720
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setButtonsEnabled(Z)V

    .line 5721
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    .line 5722
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToDimSystemUi()V

    .line 5724
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 5725
    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/4 v3, 0x0

    .line 5726
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 5727
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    .line 5728
    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$31;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_1

    .line 5773
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestSdCardGranted()V

    goto :goto_0

    .line 5775
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setSaveDestination(Z)V

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_2

    .line 5750
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x28

    .line 5751
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 5754
    :cond_2
    sget-object p1, Lcom/sonyericsson/android/camera3d/Camera2App$31;->$SwitchMap$com$sonyericsson$android$camera3d$dialog$RotatableDialogFragment$EnumDismissFactor:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->ordinal()I

    move-result p3

    aget p1, p1, p3

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 5757
    :pswitch_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {p1, v0, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    goto :goto_0

    .line 5738
    :pswitch_4
    sget-object v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_EVENT_LISTENER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    .line 5739
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p3, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setShowDialogLocation(Z)V

    :cond_3
    if-eqz p1, :cond_6

    .line 5742
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->isValidLocationService()Z

    move-result p1

    if-nez p1, :cond_4

    .line 5743
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    .line 5745
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {p1, v0, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    goto :goto_0

    .line 5765
    :pswitch_5
    sget-object p1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_EVENT_LISTENER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    if-ne p2, p1, :cond_6

    if-eqz p3, :cond_6

    .line 5766
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setShowDialogThermal(Z)V

    goto :goto_0

    .line 5730
    :pswitch_6
    sget-object p3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_EVENT_LISTENER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    if-ne p2, p3, :cond_5

    .line 5731
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSdcardInserted(Z)V

    :cond_5
    if-eqz p1, :cond_6

    .line 5734
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setSaveDestination(Z)V

    .line 5783
    :cond_6
    :goto_0
    sget-object p1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SUSPEND:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    if-ne p2, p1, :cond_7

    .line 5784
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    return-void

    .line 5788
    :cond_7
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    if-lez p1, :cond_8

    .line 5789
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    .line 5790
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iget p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    aget-object p1, p1, p2

    .line 5791
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iget p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v0, p2, p3

    .line 5792
    sget-object p2, Lcom/sonyericsson/android/camera3d/Camera2App$31;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/16 p3, 0x14

    if-eq p2, p3, :cond_8

    .line 5796
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private excludeOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V
    .locals 3

    const/4 v0, 0x0

    .line 5522
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    if-ge v0, v1, :cond_2

    .line 5523
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 5524
    :goto_1
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    if-ge p1, v1, :cond_0

    .line 5525
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aget-object v2, v2, p1

    aput-object v2, v1, v0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5527
    :cond_0
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

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

    .line 7026
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    if-eqz v0, :cond_0

    .line 7027
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 7028
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    :cond_0
    return-void
.end method

.method private finishEngine()V
    .locals 9

    const-string v0, "Camera2App"

    const-string v1, "finishEngine"

    .line 1605
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->stopCaptureTimer()V

    .line 1607
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1608
    :try_start_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mEngineEnding:Z

    .line 1609
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    if-nez v2, :cond_0

    .line 1610
    monitor-exit v0

    return-void

    .line 1613
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->finish()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v4, "Camera2App"

    .line 1615
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "MorphoPanoramaGP2.finish error ret:0x%08X"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getAttachFps()F

    move-result v2

    .line 1618
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getAttachAve()F

    move-result v4

    .line 1619
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getAttachStandardDeviation()F

    move-result v5

    const/4 v6, 0x0

    .line 1620
    iput-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    const-string p0, "Camera2App"

    .line 1621
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

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
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

    .line 4142
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4143
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object v2, v2, v0

    aget v2, v2, p0

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, p1, v1

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

    .line 4195
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p0

    .line 4196
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPhysicalWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPhysicalHeight()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getAspectTableIndex(FF)I

    move-result v0

    .line 4197
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

.method private getDisplayRotation()I
    .locals 1

    .line 4709
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0x10e

    return p0

    :pswitch_1
    const/16 p0, 0xb4

    return p0

    :pswitch_2
    const/16 p0, 0x5a

    return p0

    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;
    .locals 1

    .line 618
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

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

    .line 4184
    rem-int/2addr p1, p0

    goto :goto_0

    :cond_1
    return p1
.end method

.method private getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    return-object p0
.end method

.method private getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;
    .locals 1

    .line 622
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    return-object p0
.end method

.method private static getLCM(II)I
    .locals 1

    mul-int v0, p0, p1

    .line 4191
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getGCD(II)I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method private getLatestImage()V
    .locals 8

    const-string v0, "Camera2App"

    const-string v1, "getLatestImage() IN"

    .line 6171
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6172
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "_data"

    .line 6173
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    .line 6178
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "Camera2App"

    .line 6179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLatestImage() mSavePanoramaPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    .line 6181
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    .line 6185
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 6186
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6187
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->createContentinfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;

    move-result-object v0

    .line 6188
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->addLocalCache(Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;)V

    .line 6189
    iget-wide v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mId:J

    iput-wide v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageId:J

    .line 6190
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageFileLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFileLocation:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 6194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6196
    :cond_1
    throw p0

    .line 6198
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6199
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;

    .line 6200
    iget-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mId:J

    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageId:J

    .line 6201
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageFileLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFileLocation:Ljava/lang/String;

    :cond_3
    :goto_2
    const-string v0, "Camera2App"

    .line 6204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLatestImage() IN, mImageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mImageFileLocation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFileLocation:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getLiveViewHeight()I
    .locals 2

    .line 7638
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplay18_9()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7639
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSettingButtonHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getNavigationBarHeight()I

    move-result p0

    sub-int/2addr v0, p0

    goto :goto_0

    .line 7640
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplay21_9()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7641
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isResolution16_9()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7642
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    mul-int/lit8 p0, p0, 0x10

    div-int/lit8 v0, p0, 0x9

    goto :goto_0

    .line 7644
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    mul-int/lit8 p0, p0, 0x4

    div-int/lit8 v0, p0, 0x3

    goto :goto_0

    .line 7647
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->y:I

    :goto_0
    return v0
.end method

.method private getLiveViewWidth()I
    .locals 1

    .line 7627
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplay18_9()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7628
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getLiveViewHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    mul-int/lit8 p0, p0, 0x9

    goto :goto_0

    .line 7630
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    :goto_0
    return p0
.end method

.method private getMobilePhonePixels()V
    .locals 3

    .line 7589
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 7590
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    .line 7592
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 7593
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 7594
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    :cond_0
    const-string v0, "Camera2App"

    .line 7596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "portrait orientation as base, realPixelSize size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 4

    .line 7659
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 7662
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 7664
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06006f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private static getRatios(II[F)V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    .line 4153
    aput v0, p2, v2

    .line 4154
    aput v0, p2, v1

    return-void

    .line 4158
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object v3, v3, p0

    aget v3, v3, v1

    int-to-float v3, v3

    sget-object v4, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object v4, v4, p0

    aget v4, v4, v2

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 4159
    sget-object v4, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object v4, v4, p1

    aget v4, v4, v1

    int-to-float v4, v4

    sget-object v5, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object v5, v5, p1

    aget v5, v5, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4161
    sget-object v5, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object v5, v5, p1

    aget v5, v5, v2

    sget-object v6, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object v6, v6, p0

    aget v6, v6, v2

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->getLCM(II)I

    move-result v5

    .line 4162
    sget-object v6, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object v6, v6, p0

    aget v6, v6, v2

    div-int v6, v5, v6

    .line 4163
    sget-object v7, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object v7, v7, p1

    aget v7, v7, v2

    div-int/2addr v5, v7

    cmpg-float v3, v4, v3

    if-gez v3, :cond_1

    .line 4166
    aput v0, p2, v2

    .line 4167
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object p1, v0, p1

    aget p1, p1, v1

    mul-int/2addr p1, v5

    int-to-float p1, p1

    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object p0, v0, p0

    aget p0, p0, v1

    mul-int/2addr p0, v6

    int-to-float p0, p0

    div-float/2addr p1, p0

    aput p1, p2, v1

    goto :goto_0

    .line 4169
    :cond_1
    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object p0, v3, p0

    aget p0, p0, v1

    mul-int/2addr p0, v6

    int-to-float p0, p0

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    aget-object p1, v3, p1

    aget p1, p1, v1

    mul-int/2addr p1, v5

    int-to-float p1, p1

    div-float/2addr p0, p1

    aput p0, p2, v2

    .line 4170
    aput v0, p2, v1

    :goto_0
    return-void
.end method

.method private getSaveDestination()Z
    .locals 0

    .line 6783
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveInternalStorage()Z

    move-result p0

    return p0
.end method

.method private getSaveDestinationRoot()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6818
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSaveDestination()Z

    move-result v0

    .line 6819
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSaveDestinationRoot(Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6822
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_0
    return-object p0
.end method

.method private getSaveDestinationRoot(Z)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 6807
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getExternalStorageRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6809
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getInternalStorageRootPath()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 6812
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/sonyericsson/android/camera3d/Camera2App;->STORAGE_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private getSavingProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 7386
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsInflateSavingProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7387
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsInflateSavingProgress:Z

    const v0, 0x7f0800c6

    .line 7388
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f080008

    .line 7390
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private getSettingButtonHeight()I
    .locals 1

    .line 7654
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getSettingValue()V
    .locals 1

    .line 1714
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getSettingValue(Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;)V

    return-void
.end method

.method private getThumbnailRotation(Ljava/lang/String;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 7338
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    .line 7339
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

    .line 7348
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private getViewPixelSize(I)I
    .locals 1

    .line 7618
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 7619
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 7620
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 7621
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    mul-int/2addr p1, v0

    .line 7622
    div-int/2addr p1, p0

    return p1
.end method

.method private hideBlackScreen()V
    .locals 1

    .line 7361
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraCheckTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const v0, 0x7f080032

    .line 7362
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    .line 7363
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideInfoIcons()V
    .locals 1

    const v0, 0x7f08006a

    .line 7197
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    .line 7198
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private initAttachQueue()V
    .locals 1

    .line 381
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CaptureImage;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CaptureImage;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initInternalSettingsViews()V
    .locals 0

    .line 7542
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initInternalSettingsViewsSync()V

    return-void
.end method

.method private initInternalSettingsViewsAsync()V
    .locals 1

    .line 7532
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$29;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$29;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initInternalSettingsViewsSync()V
    .locals 3

    .line 7528
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mHandler:Landroid/os/Handler;

    sget-boolean v2, Lcom/sonyericsson/android/camera3d/Camera2App;->ALWAYS_AUTO_MODE_AFTER_STARTUP:Z

    invoke-virtual {v0, v1, p0, v2}, Lcom/sonyericsson/android/camera3d/InternalSettings;->initViews(Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;Landroid/os/Handler;Z)V

    return-void
.end method

.method private static initializeEngine(Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;)Z
    .locals 4

    .line 1543
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->initialize(Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;)I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    const-string v0, "Camera2App"

    .line 1545
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MorphoPanoramaGP2.initialize error ret:0x%08X"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, p1, v3

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    return p1
.end method

.method private initializeLayoutObjects()V
    .locals 7

    const v0, 0x7f0800d7

    .line 6601
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/TextureViewEx;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    const v0, 0x7f080087

    .line 6602
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    const v0, 0x7f080088

    .line 6603
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    const v0, 0x7f080083

    .line 6604
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    const v0, 0x7f080079

    .line 6605
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    const v0, 0x7f08007a

    .line 6606
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewFrame:Landroid/view/View;

    const/4 v0, 0x0

    move v1, v0

    .line 6607
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 6608
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6610
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-direct {v1, p0, p0, p0}, Lcom/sonyericsson/android/camera3d/SettingList;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    .line 6611
    new-instance v1, Lcom/sonyericsson/android/camera3d/SettingSubList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingUseVolumeKeyList:[I

    invoke-direct {v1, p0, v2, p0}, Lcom/sonyericsson/android/camera3d/SettingSubList;-><init>(Landroid/content/Context;[ILcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    .line 6612
    new-instance v1, Lcom/sonyericsson/android/camera3d/SettingSubList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSaveDestinationList:[I

    invoke-direct {v1, p0, v2, p0}, Lcom/sonyericsson/android/camera3d/SettingSubList;-><init>(Landroid/content/Context;[ILcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    move v1, v0

    .line 6613
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSaveDestinationList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 6614
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSaveDestinationList:[I

    aget v2, v2, v1

    const v4, 0x7f0c0072

    if-ne v2, v4, :cond_1

    .line 6615
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIndexSettingSaveDestinationSD:I

    goto :goto_2

    .line 6616
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSaveDestinationList:[I

    aget v2, v2, v1

    const v4, 0x7f0c0071

    if-ne v2, v4, :cond_2

    .line 6617
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIndexSettingSaveDestinationInternal:I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6620
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->addSubList(Lcom/sonyericsson/android/camera3d/SettingSubList;)V

    .line 6621
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->addSubList(Lcom/sonyericsson/android/camera3d/SettingSubList;)V

    const v1, 0x7f08008f

    .line 6622
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    .line 6623
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 6624
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f08007b

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 6625
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView(I)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 6626
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView(I)Landroid/view/View;

    move-result-object v2

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 6627
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 6628
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 6629
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 6630
    new-instance v2, Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const v2, 0x7f080059

    .line 6632
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 6634
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6636
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$23;

    invoke-direct {v3, p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$23;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 6671
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v2

    .line 6672
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setShutterIcon()V

    .line 6673
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$24;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$24;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setTakePictureButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6721
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$25;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$25;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setStopPictureButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6748
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getModeSelectorButton()Landroid/widget/ImageView;

    move-result-object v2

    .line 6749
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonClickListener;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6750
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonTouchListener;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonTouchListener;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6752
    new-instance v2, Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/RotatableToast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    .line 6753
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 6755
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplay18_9()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6756
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSettingButtonHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getNavigationBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 6757
    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x9

    const v2, 0x7f080050

    .line 6759
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080051

    .line 6760
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 6761
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6762
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6763
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    .line 6764
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6765
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

    .line 6766
    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6767
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6768
    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 6769
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6770
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v4, 0x15

    .line 6771
    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6772
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f080060

    .line 6773
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 6774
    invoke-virtual {p0, v1, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_5
    return-void
.end method

.method private initializeMiniPreviewTextureView()V
    .locals 2

    .line 7668
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewTextureView:Landroid/view/TextureView;

    .line 7669
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 7670
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f08008f

    .line 7671
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 7672
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewTextureView:Landroid/view/TextureView;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v1, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private initializeThermalAlert()V
    .locals 2

    .line 7015
    new-instance v0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    .line 7018
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    .line 7019
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    .line 7020
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7021
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private isActiveGpsSearchTimer()Z
    .locals 0

    .line 6943
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

    const-string p0, "device_policy"

    .line 6505
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 p1, 0x0

    .line 6507
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method private isCapturing()Z
    .locals 3

    .line 7207
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    or-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 7208
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v1, :cond_3

    .line 7209
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object v0

    .line 7210
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    .line 7211
    instance-of p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_1

    .line 7213
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

    .line 7253
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

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

.method private static isDuringVoiceCall(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 6518
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 6519
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :goto_0
    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isFirstLaunch()Z
    .locals 2

    const-string v0, "ApplicationPreference"

    const/4 v1, 0x0

    .line 5965
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

    const-string v0, "ApplicationPreference"

    const/4 v1, 0x0

    .line 5969
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "First Time Location"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isInLockTaskMode()Z
    .locals 3

    const-string v0, "activity"

    .line 6063
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 6064
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-gt v2, v0, :cond_1

    .line 6065
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x15

    .line 6066
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v2, :cond_2

    .line 6067
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method private isMainThread()Z
    .locals 1

    .line 7521
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMainThreadName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 7522
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMainThreadName:Ljava/lang/String;

    .line 7524
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
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

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

    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    .line 1021
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

    .line 1893
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    if-eqz p0, :cond_0

    .line 1894
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

.method private isPreviewCentering()Z
    .locals 0

    .line 7614
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplay21_9()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isRemovedFromDataBase(Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;)Z
    .locals 7

    .line 6298
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v2, "_data"

    .line 6299
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 6303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data LIKE \'%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageFileLocation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%\' AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 6307
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :goto_0
    move v2, v1

    goto :goto_1

    .line 6310
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 6315
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-nez v2, :cond_3

    .line 6319
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-wide v3, p1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mId:J

    invoke-static {p0, v3, v4, v1, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1

    :catchall_0
    move-exception p0

    move-object v6, v0

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v6, :cond_4

    .line 6315
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6317
    :cond_4
    throw p0
.end method

.method private isResolution16_9()Z
    .locals 1

    .line 7581
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p0

    .line 7582
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const p0, 0x3fe38e39

    sub-float/2addr v0, p0

    .line 7584
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

    .line 6779
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveInternalStorage()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isTablet()Z
    .locals 1

    .line 5973
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private isVisibleBlackScreen()Z
    .locals 1

    const v0, 0x7f080032

    .line 7367
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 7368
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

    const-string p0, "N"

    goto :goto_0

    :cond_0
    const-string p0, "S"

    :goto_0
    return-object p0
.end method

.method private loadLocalCache()V
    .locals 2

    .line 6376
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 6377
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 6378
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    :cond_0
    return-void
.end method

.method public static locationValueToString(D)Ljava/lang/String;
    .locals 9

    .line 4587
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x4115f90000000000L    # 360000.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-long p0, p0

    .line 4588
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d/1,%d/1,%d/100"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/32 v3, 0x57e40

    div-long v3, p0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-wide/16 v3, 0x1770

    div-long v5, p0, v3

    const-wide/16 v7, 0x3c

    rem-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    rem-long/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static longitudeValueToEorW(D)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const-string p0, "E"

    goto :goto_0

    :cond_0
    const-string p0, "W"

    :goto_0
    return-object p0
.end method

.method private makeEngineParam()V
    .locals 9

    .line 1638
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    .line 1639
    sget-boolean v1, Lcom/sonyericsson/android/camera3d/Camera2App;->LIMIT_DIRECTION:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1640
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iput v3, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->direction:I

    goto :goto_0

    .line 1642
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iput v2, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->direction:I

    .line 1644
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    iput v4, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    .line 1645
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v4

    iput v4, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    .line 1647
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    if-eqz v1, :cond_1

    .line 1648
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    check-cast v0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->getMaxPictureSize()Landroid/util/Size;

    move-result-object v0

    .line 1649
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

    .line 1651
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPhysicalWidth()F

    move-result v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPhysicalHeight()F

    move-result v4

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    .line 1652
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

    .line 1654
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

    .line 1655
    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getFocalLength()F

    move-result v0

    mul-float/2addr v6, v0

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    mul-double/2addr v7, v4

    double-to-float v0, v7

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    .line 1657
    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getAspectTableIndex(FF)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    goto :goto_1

    .line 1660
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getBaseAspect()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    .line 1663
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    const/4 v1, 0x2

    if-nez v0, :cond_3

    .line 1664
    new-array v0, v1, [D

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    .line 1667
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    iget v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    float-to-double v4, v4

    aput-wide v4, v0, v2

    .line 1668
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    iget v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    float-to-double v4, v4

    aput-wide v4, v0, v3

    .line 1671
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 1673
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsFrontCamera:Z

    const/16 v5, 0xb4

    if-eqz v4, :cond_4

    .line 1674
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v5

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraOrientation:I

    goto :goto_2

    .line 1676
    :cond_4
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraOrientation:I

    .line 1678
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplayRotation()I

    move-result v4

    .line 1679
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraOrientation:I

    iget v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    add-int/2addr v4, v8

    add-int/2addr v7, v4

    add-int/lit16 v7, v7, 0x168

    rem-int/lit16 v7, v7, 0x168

    iput v7, v6, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    .line 1681
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    if-eqz v4, :cond_8

    .line 1683
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_7

    if-eq v0, v5, :cond_6

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    const/4 v0, 0x3

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v3

    .line 1689
    :goto_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setRotation(I)I

    move-result p0

    if-eqz p0, :cond_8

    const-string v0, "Camera2App"

    .line 1691
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "SensorFusion.setRotation error ret:0x%08X"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private modeFinish()V
    .locals 3

    .line 6045
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6046
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 6048
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getModeSelectorButton()Landroid/widget/ImageView;

    move-result-object v0

    .line 6049
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 6050
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6051
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPinToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 6052
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPinToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 6054
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0075

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPinToast:Landroid/widget/Toast;

    .line 6056
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPinToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 6058
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finish()V

    :goto_0
    return-void
.end method

.method private onPreviewCaptureCompleted()V
    .locals 3

    .line 5056
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5057
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 5058
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5059
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5060
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5062
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera3d/Camera2App;->PREVIEW_SPREAD_BOTH_SIDES:Z

    if-eqz v1, :cond_1

    .line 5063
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 5064
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    const v2, -0x368bdc10    # -999999.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 5068
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 5072
    :cond_2
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    if-lez v1, :cond_3

    .line 5073
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    .line 5074
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isVisibleBlackScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    if-nez v1, :cond_3

    .line 5075
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mHideBlackScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 5080
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 5081
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 5085
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onPreviewStartSub()V
    .locals 1

    .line 7573
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7574
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onPreviewStartSubSync()V

    goto :goto_0

    .line 7576
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onPreviewStartSubAsync()V

    :goto_0
    return-void
.end method

.method private onPreviewStartSubAsync()V
    .locals 1

    .line 7562
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$30;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$30;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onPreviewStartSubSync()V
    .locals 2

    .line 7549
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setupUiAndCommonSettings()V

    const v0, 0x7f080085

    .line 7550
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7551
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    if-nez v0, :cond_0

    .line 7552
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateViewsForPreview()V

    .line 7553
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    if-eqz v0, :cond_0

    .line 7554
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToRecoverSystemUi()V

    const/4 v0, 0x0

    .line 7555
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 7558
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

    .line 1798
    invoke-direct {p0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCameraDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1801
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-eqz v0, :cond_1

    return-void

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    check-cast v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;

    .line 1804
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    .line 1805
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->isCameraEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 1808
    :cond_2
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenState()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    goto/16 :goto_2

    .line 1812
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->readViewAngle()Z

    move-result v2

    const/4 v4, 0x4

    if-nez v2, :cond_8

    .line 1813
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

    .line 1816
    :cond_4
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "EVA-TL00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x428207e1

    .line 1817
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    const v2, 0x424c3810

    .line 1818
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    goto :goto_1

    .line 1820
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1822
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 1823
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    .line 1824
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v5

    iput v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    .line 1825
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    goto :goto_1

    .line 1827
    :cond_6
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1828
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void

    :cond_7
    :goto_0
    const v2, 0x4290890b

    .line 1814
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    const v2, 0x426620e1

    .line 1815
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    .line 1832
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    iget v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    invoke-direct {p0, v2, v5, v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->writeViewAngle(IFF)V

    .line 1835
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2, v5}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->prepareCamera(Landroid/view/TextureView;Landroid/view/TextureView;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1837
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->initializeUI(Lcom/sonyericsson/android/camera3d/CameraInfo;)V

    .line 1838
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->openCamera(Z)Z

    move-result v2

    :cond_9
    if-nez v2, :cond_a

    .line 1841
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1842
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_a
    return-void

    :cond_b
    :goto_2
    return-void
.end method

.method private openSettingDialog()Z
    .locals 2

    .line 981
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 984
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 985
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 986
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 987
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SettingList;->open()V

    .line 988
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->hideInfoIcons()V

    .line 989
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToRecoverSystemUi()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private playSound(I)V
    .locals 8

    .line 4811
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 4812
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCanDisableShutterSound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isCameraSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4813
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    return-void
.end method

.method private prepareSound()V
    .locals 4

    .line 5372
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCanDisableShutterSound:Z

    const/4 v1, 0x2

    const/16 v2, 0xd

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 5373
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 5374
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5375
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5376
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 5378
    :cond_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 5379
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5380
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5381
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5382
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 5384
    :goto_0
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 5385
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 5386
    invoke-virtual {v0, v3}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 5387
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    .line 5388
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 5390
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFocusedSoundId:I

    .line 5391
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    const v1, 0x7f0b0001

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutterSoundId:I

    .line 5392
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

    .line 5394
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5395
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 5396
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    :cond_1
    :goto_1
    return-void
.end method

.method private readViewAngle()Z
    .locals 5

    const-string v0, "ApplicationPreference"

    const/4 v1, 0x0

    .line 7284
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "VIEW_ANGLE_CAMERA_ID"

    const/4 v3, -0x1

    .line 7285
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 7286
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    const-string v2, "VIEW_ANGLE_H"

    const/4 v3, 0x0

    .line 7290
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    const-string v4, "VIEW_ANGLE_V"

    .line 7291
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_2

    cmpl-float v3, v0, v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 7295
    :cond_1
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleH:F

    .line 7296
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mViewAngleV:F

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private reconstructLocalCache()V
    .locals 0

    .line 6386
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->loadLocalCache()V

    .line 6387
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->clearLocalCacheBackup()V

    .line 6388
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->removeInvalidLocalCache()V

    return-void
.end method

.method private registerGravitySensorListener()V
    .locals 3

    const/4 v0, 0x0

    .line 4612
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsSensorAverage:Z

    .line 4613
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    const/4 v1, 0x3

    .line 4614
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    .line 4615
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_gravity_sensor:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 4616
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 4617
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4618
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 4619
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method private releaseImageBitmap()V
    .locals 3

    .line 4093
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PreviewImageSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 4094
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 4095
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4100
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 4101
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFitBitmap:Landroid/graphics/Bitmap;

    .line 4102
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
    .locals 4

    .line 6280
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6281
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6282
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;

    .line 6283
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;->mImageFileLocation:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6284
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6285
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6286
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isRemovedFromDataBase(Lcom/sonyericsson/android/camera3d/Camera2App$ContentInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6287
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private requestToDimSystemUi()V
    .locals 1

    .line 5988
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5989
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x701

    .line 5995
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 5996
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private requestToRecoverSystemUi()V
    .locals 1

    .line 6000
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6001
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x700

    .line 6006
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6007
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private requestToRemoveSystemUi()V
    .locals 1

    .line 5977
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5978
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x700

    .line 5983
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 5984
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private saveImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;IILandroid/location/Location;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 4425
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x1c

    if-lt v8, v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSaveDestinationExternal()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4426
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%d%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    iget v14, v1, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "ANDRO"

    aput-object v14, v13, v9

    invoke-static {v8, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4427
    iget-object v12, v1, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->getSdCardGrantedUri()Landroid/net/Uri;

    move-result-object v12

    invoke-static {v1, v12}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v12

    .line 4428
    invoke-virtual {v12}, Landroid/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DCIM"

    invoke-virtual {v13, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "DCIM"

    .line 4429
    invoke-virtual {v12, v13}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v13

    if-nez v13, :cond_0

    const-string v13, "DCIM"

    .line 4431
    invoke-virtual {v12, v13}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v12

    if-nez v12, :cond_1

    return v11

    :cond_0
    move-object v12, v13

    .line 4438
    :cond_1
    invoke-virtual {v12, v8}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v8

    const-string v12, "image/jpeg"

    .line 4439
    invoke-virtual {v8, v12, v4}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v8

    const-wide/16 v12, 0x0

    .line 4441
    :try_start_0
    invoke-virtual {v8}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v14

    const-string v15, "rw"

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 4443
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v15

    iget-object v10, v1, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-object v10, v10, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_format:Ljava/lang/String;

    invoke-static {v5, v6, v7, v15, v10}, Lcom/sonyericsson/android/camera3d/core/JpegIO;->writeJPEG(Ljava/nio/ByteBuffer;IIILjava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4444
    :try_start_1
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V

    if-nez v5, :cond_2

    .line 4446
    invoke-virtual {v8}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "rw"

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    move-object v14, v6

    .line 4448
    :cond_2
    invoke-virtual {v8}, Landroid/support/v4/provider/DocumentFile;->length()J

    move-result-wide v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v12, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move v6, v5

    move-object v5, v0

    goto :goto_1

    :cond_3
    const v5, -0x7ffffff8

    :goto_0
    move-object v10, v14

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v0

    move v6, v11

    .line 4457
    :goto_1
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v0

    .line 4453
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const v5, -0x7ffffff0

    goto :goto_2

    .line 4461
    :cond_4
    iget-object v8, v1, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget-object v8, v8, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_format:Ljava/lang/String;

    invoke-static {v5, v6, v7, v3, v8}, Lcom/sonyericsson/android/camera3d/core/JpegIO;->writeJPEG(Ljava/nio/ByteBuffer;IILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 4462
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4463
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    :goto_2
    const/4 v10, 0x0

    :goto_3
    if-eqz v5, :cond_5

    const-string v1, "PanoramaGP2"

    .line 4466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeJPEG ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 4470
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz v10, :cond_6

    .line 4474
    :try_start_2
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 4475
    new-instance v8, Landroid/media/ExifInterface;

    invoke-direct {v8, v7}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v7, v8

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v7, v0

    .line 4477
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 4481
    :cond_6
    :try_start_3
    new-instance v7, Landroid/media/ExifInterface;

    invoke-direct {v7, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v7, v0

    .line 4483
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_7

    .line 4487
    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App;->mLatestCaptureResult:Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    move-object/from16 v8, p8

    invoke-static {v7, v8, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setInExif(Landroid/media/ExifInterface;Landroid/location/Location;Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;)V

    :cond_7
    if-eqz v10, :cond_8

    .line 4491
    :try_start_4
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 4493
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4497
    :cond_8
    :goto_6
    new-instance v1, Landroid/content/ContentValues;

    const/16 v7, 0x8

    invoke-direct {v1, v7}, Landroid/content/ContentValues;-><init>(I)V

    const-string v7, "title"

    move-object/from16 v8, p3

    .line 4498
    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_display_name"

    .line 4499
    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "datetaken"

    .line 4500
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "date_added"

    const-wide/16 v7, 0x3e8

    .line 4501
    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "date_modified"

    .line 4502
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    .line 4503
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_data"

    .line 4504
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_size"

    .line 4505
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4507
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return v9
.end method

.method private saveLocalCache()V
    .locals 2

    .line 6369
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCache:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocalCacheBackup:Ljava/util/LinkedList;

    return-void
.end method

.method private setAttachExit()V
    .locals 1

    .line 400
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->sAttachExit:Lcom/sonyericsson/android/camera3d/CaptureImage;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->addAttachQueue(Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    return-void
.end method

.method private setButtonsEnabled(Z)V
    .locals 1

    .line 683
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->setViewsEnabled(Z)V

    .line 687
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 689
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setViewsEnabled(Z)V

    :cond_1
    return-void
.end method

.method private setEnabledSaveDestination(ZZ)V
    .locals 1

    .line 6829
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 6831
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIndexSettingSaveDestinationSD:I

    invoke-virtual {p1, p0, p2}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setItemEnabled(IZ)V

    goto :goto_0

    .line 6833
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIndexSettingSaveDestinationInternal:I

    invoke-virtual {p1, p0, p2}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setItemEnabled(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static setInExif(Landroid/media/ExifInterface;Landroid/location/Location;Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;)V
    .locals 4

    .line 4514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "yyyy:MM:dd kk:mm:ss"

    .line 4515
    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateTime"

    .line 4517
    invoke-virtual {p0, v1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DateTimeOriginal"

    .line 4518
    invoke-virtual {p0, v1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DateTimeDigitized"

    .line 4519
    invoke-virtual {p0, v1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Make"

    .line 4520
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Model"

    .line 4521
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4525
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 4526
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 4530
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->locationValueToString(D)Ljava/lang/String;

    move-result-object p1

    .line 4531
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->latitudeValueToNorS(D)Ljava/lang/String;

    move-result-object v0

    .line 4533
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->locationValueToString(D)Ljava/lang/String;

    move-result-object v1

    .line 4534
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->longitudeValueToEorW(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSLatitude"

    .line 4536
    invoke-virtual {p0, v3, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSLatitudeRef"

    .line 4537
    invoke-virtual {p0, p1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSLongitude"

    .line 4539
    invoke-virtual {p0, p1, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSLongitudeRef"

    .line 4540
    invoke-virtual {p0, p1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 4545
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->getExposureTime()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    .line 4546
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->getIsoValue()I

    move-result p1

    const-string p2, "ExposureTime"

    .line 4547
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4548
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_1

    const-string p2, "ISOSpeedRatings"

    .line 4549
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "ISOSpeedRatings"

    .line 4552
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4559
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private setInitialRotationByGravity()V
    .locals 14

    .line 4631
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_gravity_sensor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    if-lez v0, :cond_0

    .line 4633
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 4634
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 4635
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iget v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    const-string v6, "Camera2App"

    .line 4636
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Gravity Sensor Value X=%f Y=%f Z=%f cnt=%d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v5, 0x3

    iget v10, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4637
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    float-to-double v8, v0

    float-to-double v10, v2

    float-to-double v12, v4

    invoke-virtual/range {v7 .. v13}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setInitialRotationByGravity(DDD)I

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "Camera2App"

    .line 4639
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "MorphoPanoramaGP2.setInitialRotationByGravity error ret:0x%08X"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setMiniPreviewAndArrowsVisibility(ZZ)V
    .locals 0

    .line 6596
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 6597
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewArrowsVisibility(Z)V

    return-void
.end method

.method private setMiniPreviewArrowsVisibility(Z)V
    .locals 5

    const v0, 0x7f08002c

    .line 6589
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

    .line 6590
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

    .line 6591
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

    .line 6592
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

    .line 6580
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-ne p1, v0, :cond_1

    .line 6582
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6585
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewFrame:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V
    .locals 2

    const/4 v0, 0x0

    .line 5514
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    if-ge v0, v1, :cond_1

    .line 5515
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5517
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    aput-object p1, v0, v1

    .line 5518
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    return-void
.end method

.method private setPreviewSize()V
    .locals 10

    const/4 v0, 0x1

    .line 1868
    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1872
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1873
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1880
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;

    .line 1881
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->getSupportedPictureSizes()[Landroid/util/Size;

    move-result-object v4

    .line 1882
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->capture_size_index:I

    aget-object p0, v4, p0

    .line 1883
    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 1884
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    aget-object v9, v1, v3

    aget v9, v9, v3

    if-ne v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v8

    aget-object v9, v1, v3

    aget v9, v9, v0

    if-ne v8, v9, :cond_0

    move-object p0, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1889
    :cond_1
    :goto_1
    invoke-virtual {v2, p0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->setPreviewSize(Landroid/util/Size;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x500
        0x2d0
    .end array-data
.end method

.method private setSaveDestination(Z)V
    .locals 1

    .line 6787
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    if-eqz v0, :cond_1

    .line 6788
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    if-eqz p1, :cond_0

    const p1, 0x7f0c0071

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0072

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setSelectedResourceId(I)V

    :cond_1
    return-void
.end method

.method private setSensorFusionValue()V
    .locals 8

    .line 4645
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 4646
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGyroMatrix:[D

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRVMatrix:[D

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mACMatrix:[D

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/SensorFusion;->getSensorMatrix([D[D[D[I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "Camera2App"

    .line 4648
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SensorFusion.getSensorMatrix error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4650
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->getStockData()Ljava/util/ArrayList;

    move-result-object v0

    .line 4652
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    if-ne v3, v2, :cond_1

    .line 4653
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getAttachCount()J

    move-result-wide v3

    .line 4654
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_2

    .line 4656
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-array v4, v5, [Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setGyroscopeData([Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "Camera2App"

    .line 4659
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setGyroscopeData error ret:0x%08X"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4662
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x3

    .line 4663
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4665
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;

    .line 4666
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;->mValues:[D

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setRotationVector([D)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "Camera2App"

    .line 4668
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setRotationVector error ret:0x%08X"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4672
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->clearStockData()V

    :cond_3
    return-void
.end method

.method private setSupportedCaptureSize()V
    .locals 1

    .line 1862
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getSupportedPreviewSizes()[I

    move-result-object v0

    .line 1863
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;

    .line 1864
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->setSupportedPictureSizes([I)V

    return-void
.end method

.method private setThumbnail()V
    .locals 3

    const-string v0, "Camera2App"

    const-string v1, "setThumbnail() IN"

    .line 6154
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6155
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6159
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6160
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_1

    const-string v0, "Camera2App"

    const-string v2, "setThumbnail() cancel"

    .line 6161
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6162
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->cancel(Z)Z

    .line 6164
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    .line 6166
    :cond_2
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    .line 6167
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setViewsVisibility(I)V
    .locals 5

    .line 6088
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 6091
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 6092
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6094
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->setViewsVisibility(I)V

    .line 6096
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6098
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setViewsVisibility(I)V

    .line 6100
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6102
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->setViewsVisibility(I)V

    if-nez p1, :cond_4

    .line 6104
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showInfoIcons()V

    goto :goto_0

    .line 6106
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->hideInfoIcons()V

    :cond_5
    :goto_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_8

    .line 6111
    sget-boolean v4, Lcom/sonyericsson/android/camera3d/Camera2App;->LIMIT_DIRECTION:Z

    if-eqz v4, :cond_7

    .line 6112
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_6

    .line 6114
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v3, v4, v2

    .line 6115
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v3, v4, v3

    .line 6116
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v2, v4, v1

    .line 6117
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 6119
    :cond_6
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v2, v4, v2

    .line 6120
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v2, v4, v3

    .line 6121
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v3, v4, v1

    .line 6122
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v3, v1, v0

    goto :goto_1

    .line 6125
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v3, v4, v2

    .line 6126
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v3, v4, v3

    .line 6127
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v3, v4, v1

    .line 6128
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v3, v1, v0

    .line 6130
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 6132
    :cond_8
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v2, v4, v2

    .line 6133
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v2, v4, v3

    .line 6134
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v2, v4, v1

    .line 6135
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsMiniPreviewArrowsVisible:[Z

    aput-boolean v2, v1, v0

    const v0, 0x7f080085

    .line 6136
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6139
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_a

    move v2, v3

    .line 6140
    :cond_a
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 6144
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6145
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupUiAndCommonSettings()V
    .locals 11

    .line 7410
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCreateSequence:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7411
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCreateSequence:Z

    .line 7413
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->load()V

    .line 7416
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSaveDestinationRoot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFolderPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7418
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 7419
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finish()V

    .line 7423
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeSequence:Z

    .line 7424
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPermissionSequence:Z

    .line 7425
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeSequence:Z

    .line 7426
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPermissionSequence:Z

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v0, :cond_d

    .line 7431
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->isExternalStorageMounted(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Camera2App"

    const-string v7, "SD card is not mounted."

    .line 7432
    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v1

    goto :goto_1

    :cond_1
    const-string v6, "Camera2App"

    const-string v7, "SD card is mounted."

    .line 7435
    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    :goto_1
    if-eqz v6, :cond_2

    .line 7440
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSaveDestinationExternal()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->getSdCardGrantedUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSdCardGranted(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    if-eqz v6, :cond_3

    .line 7442
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v7, v5}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSaveInternalStorage(Z)V

    .line 7446
    :cond_3
    invoke-direct {p0, v5, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(ZZ)Z

    move-result v7

    xor-int/2addr v7, v5

    .line 7448
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveLocation()Z

    move-result v8

    if-nez v8, :cond_5

    .line 7449
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->clearLocation()V

    .line 7450
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isShowDialogLocation()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7451
    sget-object v8, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_CHANGE_LOCATION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v8}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    move v8, v5

    goto :goto_3

    :cond_4
    move v8, v1

    goto :goto_3

    .line 7455
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkLocationService()Z

    move-result v8

    xor-int/2addr v8, v5

    :goto_3
    if-nez v8, :cond_6

    if-eqz v7, :cond_6

    .line 7458
    iget v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    sub-int/2addr v7, v5

    iput v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    .line 7459
    sget-object v7, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iput-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 7460
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iget v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    aget-object v7, v7, v8

    .line 7461
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogType:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iget v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    sget-object v10, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v10, v8, v9

    .line 7462
    sget-object v8, Lcom/sonyericsson/android/camera3d/Camera2App$31;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/16 v9, 0x14

    if-eq v8, v9, :cond_6

    .line 7466
    invoke-direct {p0, v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_6
    if-eqz v6, :cond_7

    .line 7471
    sget-object v6, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_GRANTED_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    .line 7476
    :cond_7
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->getUseVolumeKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x68c224e6

    if-eq v8, v9, :cond_9

    const v9, 0x2a1bd3

    if-eq v8, v9, :cond_8

    goto :goto_4

    :cond_8
    const-string v8, "ZOOM"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v7, v1

    goto :goto_4

    :cond_9
    const-string v8, "VOLUME"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v7, v5

    :cond_a
    :goto_4
    packed-switch v7, :pswitch_data_0

    const v6, 0x7f0c007f

    goto :goto_5

    :pswitch_0
    const v6, 0x7f0c0081

    goto :goto_5

    :pswitch_1
    const v6, 0x7f0c0082

    .line 7487
    :goto_5
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v7, v6}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setSelectedResourceId(I)V

    .line 7488
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveInternalStorage()Z

    move-result v8

    const v9, 0x7f0c0072

    const v10, 0x7f0c0071

    if-eqz v8, :cond_b

    move v8, v10

    goto :goto_6

    :cond_b
    move v8, v9

    :goto_6
    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setSelectedResourceId(I)V

    .line 7489
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v6}, Lcom/sonyericsson/android/camera3d/SettingList;->setSummary(II)V

    .line 7490
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveInternalStorage()Z

    move-result v7

    if-eqz v7, :cond_c

    move v9, v10

    :cond_c
    invoke-virtual {v6, v4, v9}, Lcom/sonyericsson/android/camera3d/SettingList;->setSummary(II)V

    .line 7491
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveLocation()Z

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    .line 7492
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isCameraSound()Z

    move-result v7

    invoke-virtual {v6, v3, v7}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    :cond_d
    if-eqz v0, :cond_e

    .line 7497
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-boolean v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCanDisableShutterSound:Z

    invoke-virtual {v6, v3, v7}, Lcom/sonyericsson/android/camera3d/SettingList;->setItemVisibility(IZ)V

    .line 7498
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    const-string v6, "android.permission.WRITE_MEDIA_STORAGE"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/sonyericsson/android/camera3d/SettingList;->setItemVisibility(IZ)V

    .line 7499
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    const/4 v4, 0x5

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Util;->isSystemApp(Landroid/content/Context;)Z

    move-result v6

    xor-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera3d/SettingList;->setItemVisibility(IZ)V

    :cond_e
    if-nez v0, :cond_f

    if-eqz v2, :cond_12

    .line 7504
    :cond_f
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-eqz v0, :cond_10

    .line 7505
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 7506
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateViews()V

    .line 7509
    :cond_10
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    if-eqz v0, :cond_11

    .line 7510
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_7

    .line 7512
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7514
    :goto_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 7516
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->configureTransform()V

    :cond_12
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showBlackScreen()V
    .locals 1

    const v0, 0x7f080032

    .line 7356
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    .line 7357
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showInfoIcons()V
    .locals 1

    const v0, 0x7f08006a

    .line 7202
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 7203
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showOkDialog(I)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v0, 0x0

    .line 5904
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertOkDialog:Z

    .line 5905
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5906
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.permission-group.STORAGE"

    const/16 v4, 0x80

    .line 5911
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v5, "android.permission-group.CAMERA"

    .line 5912
    invoke-virtual {v1, v5, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v6, "android.permission-group.LOCATION"

    .line 5913
    invoke-virtual {v1, v6, v4}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v4

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

    :goto_0
    const-string v6, "Camera2App"

    const-string v7, "Package name cannot be found"

    .line 5915
    invoke-static {v6, v7, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5917
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isFirstLaunch()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isFirstTimeLocation()Z

    move-result v4

    if-nez v4, :cond_7

    .line 5918
    :cond_0
    new-instance v4, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-direct {v4}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 5920
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 5921
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    :cond_1
    if-eqz v2, :cond_4

    const-string p1, "okBodyCaption1"

    .line 5923
    invoke-virtual {v2, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "okBodyText1"

    const v1, 0x7f0c006f

    .line 5924
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "android.permission.CAMERA"

    .line 5928
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v5, :cond_3

    const-string p1, "okBodyCaption1"

    .line 5931
    invoke-virtual {v5, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "okBodyText1"

    const v2, 0x7f0c006e

    .line 5932
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 5935
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    const-string p1, "okBodyCaption2"

    .line 5938
    invoke-virtual {v3, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "okBodyText2"

    const v1, 0x7f0c0070

    .line 5939
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    const-string p1, "DIALOG_ORIENTATION"

    .line 5944
    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x2

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5945
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->setArguments(Landroid/os/Bundle;)V

    .line 5947
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "Alert ok Dialog Fragment"

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private showOkOrSettingDialog([Ljava/lang/String;I)V
    .locals 0

    .line 5362
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/Util;->getPermissionNotGranted([Ljava/lang/String;Landroid/app/Activity;)Ljava/util/List;

    move-result-object p1

    .line 5363
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/Util;->determineDialogType(Ljava/util/List;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5364
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->showOkDialog(I)V

    goto :goto_0

    .line 5366
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    :goto_0
    return-void
.end method

.method private showPanoramaGuideDirection()V
    .locals 4

    .line 7257
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 7258
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    const v1, 0x7f0c0060

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7259
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 7260
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$28;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$28;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 7270
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7271
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setRotation(F)V

    if-eqz v0, :cond_3

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 7276
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    const v2, 0x800005

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 7277
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_2

    .line 7273
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 7274
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 7279
    :goto_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private showPermissionOrStartCamera()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 5302
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Util;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5303
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5305
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCamera()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5311
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->prepareSound()V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5307
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 5308
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCamera()V

    return-void

    .line 5313
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-eqz v0, :cond_2

    .line 5315
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissions([Ljava/lang/String;I)V

    .line 5316
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    goto :goto_0

    .line 5321
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCamera()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5327
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->prepareSound()V

    :cond_2
    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 5323
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 5324
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCamera()V

    return-void
.end method

.method private showPermissionOrValidateLocation()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 5334
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Util;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5335
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5336
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkLocationService()Z

    goto :goto_1

    .line 5338
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-eqz v0, :cond_4

    .line 5339
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->shutdownViews()V

    .line 5340
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v0, :cond_1

    .line 5341
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->stopState()V

    .line 5342
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->abortCaptures()V

    .line 5343
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 5344
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->setDefaultCameraState()V

    .line 5345
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->pause()V

    .line 5348
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isFirstTimeLocation()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    .line 5349
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 5351
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showOkOrSettingDialog([Ljava/lang/String;I)V

    :goto_0
    const/4 v0, 0x0

    .line 5353
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    goto :goto_1

    .line 5357
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkLocationService()Z

    :cond_4
    :goto_1
    return-void
.end method

.method private showSavingProgressBar()V
    .locals 2

    const-string v0, "Camera2App"

    const-string v1, "showSavingProgressBar"

    .line 7394
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7395
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7397
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->clearThumbnail()V

    :cond_0
    const/4 v0, 0x4

    .line 7399
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 7400
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7401
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7402
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7403
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 7404
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewAndArrowsVisibility(ZZ)V

    .line 7405
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSavingProgressBar()Landroid/widget/ProgressBar;

    move-result-object p0

    .line 7406
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private showSettingDialog(I)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v0, 0x0

    .line 5854
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertSettingDialog:Z

    .line 5855
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5856
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "android.permission-group.STORAGE"

    const/16 v5, 0x80

    .line 5861
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v6, "android.permission-group.CAMERA"

    .line 5862
    invoke-virtual {v2, v6, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v7, "android.permission-group.LOCATION"

    .line 5863
    invoke-virtual {v2, v7, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v5

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

    :goto_0
    const-string v7, "Camera2App"

    const-string v8, "Package name cannot be found"

    .line 5866
    invoke-static {v7, v8, v5}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5869
    :goto_1
    new-instance v5, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-direct {v5}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;-><init>()V

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    const/4 v5, 0x3

    const/4 v7, 0x1

    if-ne p1, v5, :cond_2

    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 5872
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 5873
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    if-eqz v3, :cond_1

    const-string p1, "settingBodyCaption1"

    .line 5875
    invoke-virtual {v3, v2}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "settingBodyText1"

    const v2, 0x7f0c006f

    .line 5876
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5878
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->setCancelWithFinish(Z)V

    .line 5879
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1, v7}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->setCancelWithStartCamera(Z)V

    goto :goto_2

    :cond_2
    const-string p1, "android.permission.CAMERA"

    .line 5882
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v6, :cond_3

    const-string p1, "settingBodyCaption1"

    .line 5884
    invoke-virtual {v6, v2}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "settingBodyText1"

    const v3, 0x7f0c006e

    .line 5885
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 5888
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v4, :cond_4

    const-string p1, "settingBodyCaption2"

    .line 5890
    invoke-virtual {v4, v2}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "settingBodyText2"

    const v2, 0x7f0c0070

    .line 5891
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5894
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1, v7}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->setCancelWithFinish(Z)V

    .line 5895
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->setCancelWithStartCamera(Z)V

    :cond_5
    :goto_2
    const-string p1, "DIALOG_ORIENTATION"

    .line 5897
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v7, 0x2

    :cond_7
    :goto_3
    invoke-virtual {v1, p1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5898
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->setArguments(Landroid/os/Bundle;)V

    .line 5899
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "Alert Setting Dialog Fragment"

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private shutdownViews()V
    .locals 3

    const/4 v0, 0x1

    .line 7220
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    .line 7221
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7222
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog(Z)V

    :cond_0
    const/4 v0, 0x4

    .line 7225
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 7226
    invoke-direct {p0, v1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewAndArrowsVisibility(ZZ)V

    const v1, 0x7f08008f

    .line 7227
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    .line 7228
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 7229
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7231
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setVisibility(I)V

    .line 7232
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7233
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 7234
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 7235
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7237
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SettingList;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7238
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7239
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7240
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    sget-object v2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SHUTDOWN:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->dismiss(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    .line 7242
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    .line 7243
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7244
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7245
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7246
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7249
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showBlackScreen()V

    return-void
.end method

.method private startCamera()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5403
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-eqz v0, :cond_0

    return-void

    .line 5404
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5406
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setButtonsEnabled(Z)V

    .line 5408
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->isUseCamera1(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    .line 5409
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->settingCaptureMode(Landroid/content/Context;)V

    .line 5411
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

    .line 5412
    :cond_2
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    .line 5413
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/InternalSettings;->removePreviewSize(Landroid/content/Context;)V

    .line 5414
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->resetValues()V

    .line 5418
    :cond_3
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    if-eqz v0, :cond_4

    .line 5419
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;-><init>(Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    goto :goto_0

    .line 5421
    :cond_4
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v3

    invoke-direct {v0, p0, p0, v2, v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;-><init>(Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;Landroid/app/Activity;II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    .line 5423
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->isFrontCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsFrontCamera:Z

    .line 5425
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setNullDirectionFunction()V

    .line 5426
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->setMorphoPanoramaGP2Interface(Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;)V

    .line 5428
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_6

    .line 5429
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_5

    const v0, 0x7f0800c7

    .line 5430
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f080036

    .line 5431
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    .line 5433
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setVisibility(I)V

    .line 5434
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 5435
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 5436
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 5437
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceListener:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 5438
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5439
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$21;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$21;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 5450
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setVisibility(I)V

    .line 5451
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$22;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$22;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5461
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_7

    .line 5462
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 5463
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5467
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    if-nez v0, :cond_8

    .line 5468
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    .line 5470
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->enable()V

    .line 5471
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplayRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updatedOrientation(I)V

    .line 5472
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setSupportedCaptureSize()V

    .line 5473
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSettingValue()V

    .line 5474
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setPreviewSize()V

    .line 5476
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;

    .line 5477
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->getSupportedPictureSizes()[Landroid/util/Size;

    move-result-object v1

    .line 5478
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->capture_size_index:I

    aget-object v1, v1, v3

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->resume(Landroid/util/Size;Landroid/util/Size;)V

    .line 5480
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5484
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->textureViewPrepared()V

    goto :goto_2

    .line 5487
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTextureView:Lcom/sonyericsson/android/camera3d/TextureViewEx;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_2
    return-void
.end method

.method private startCaptureTimer()V
    .locals 0

    .line 7326
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCaptureTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private startCountDownTimer()V
    .locals 1

    .line 6550
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-nez v0, :cond_0

    .line 6551
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V
    .locals 12

    .line 5534
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-nez v0, :cond_0

    return-void

    .line 5535
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    if-eq p1, v0, :cond_1

    return-void

    .line 5536
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    if-ne v0, p1, :cond_2

    return-void

    .line 5537
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/4 v2, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    if-ge v0, v2, :cond_3

    .line 5538
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$31;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5545
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    if-eq p1, v0, :cond_3

    .line 5546
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setOverlayDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    .line 5547
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5548
    sget-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OVERLAY:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    goto :goto_0

    :pswitch_0
    return-void

    .line 5552
    :cond_3
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DIALOG_ORIENTATION"

    .line 5553
    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v6

    :goto_2
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5554
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$31;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const v3, 0x7f0c0053

    const v4, 0x7f0c005d

    const v7, 0x7f0c005e

    const v8, 0x7f0c0051

    const v9, 0x7f0c004e

    const v10, 0x7f0c005c

    const v11, 0x7f0c0063

    packed-switch v1, :pswitch_data_1

    return-void

    .line 5672
    :pswitch_1
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5673
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c007a

    .line 5674
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5675
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NEGATIVE_BUTTON_LABEL"

    .line 5676
    invoke-virtual {p0, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5665
    :pswitch_2
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5666
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c0079

    .line 5667
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5668
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NEGATIVE_BUTTON_LABEL"

    .line 5669
    invoke-virtual {p0, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5662
    :pswitch_3
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    goto/16 :goto_3

    .line 5655
    :pswitch_4
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    const v2, 0x7f0c004c

    .line 5656
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c004b

    .line 5657
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5658
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NEGATIVE_BUTTON_LABEL"

    .line 5659
    invoke-virtual {p0, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5647
    :pswitch_5
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    const v2, 0x7f0c0066

    .line 5648
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c0067

    .line 5649
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    const v2, 0x7f0c0083

    .line 5650
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NEGATIVE_BUTTON_LABEL"

    const v2, 0x7f0c0062

    .line 5651
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CHECKBOX_MESSAGE"

    .line 5652
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5640
    :pswitch_6
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5641
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c0056

    .line 5642
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5643
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CHECKBOX_MESSAGE"

    .line 5644
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5626
    :pswitch_7
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5627
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c007b

    .line 5628
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5629
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5620
    :pswitch_8
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5621
    invoke-virtual {p0, v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c005b

    .line 5622
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5623
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5614
    :pswitch_9
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5615
    invoke-virtual {p0, v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    .line 5616
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5617
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5607
    :pswitch_a
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    const v2, 0x7f0c0073

    .line 5608
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c004f

    .line 5609
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    const v2, 0x7f0c0050

    .line 5610
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NEGATIVE_BUTTON_LABEL"

    .line 5611
    invoke-virtual {p0, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5600
    :pswitch_b
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 5601
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5602
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c0058

    .line 5603
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5604
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5584
    :pswitch_c
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 5585
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5586
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c0054

    .line 5587
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5588
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_d
    const/4 v1, 0x6

    .line 5576
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 5577
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5578
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c0055

    .line 5579
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5580
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5568
    :pswitch_e
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5569
    invoke-virtual {p0, v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c007c

    .line 5570
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5571
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5562
    :pswitch_f
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5563
    invoke-virtual {p0, v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c0059

    .line 5564
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5565
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5556
    :pswitch_10
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5557
    invoke-virtual {p0, v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c005a

    .line 5558
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5559
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5592
    :pswitch_11
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 5593
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "USE_NATIVE_LAYOUT"

    .line 5594
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "DIALOG_TITLE"

    .line 5595
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c007e

    .line 5596
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5633
    :pswitch_12
    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 5634
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    const-string v1, "DIALOG_TITLE"

    .line 5635
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DIALOG_MESSAGE"

    const v2, 0x7f0c0057

    .line 5636
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POSITIVE_BUTTON_LABEL"

    .line 5637
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5682
    :goto_3
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 5684
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 5685
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 5686
    invoke-direct {p0, v6, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(ZZ)Z

    .line 5688
    :cond_6
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setButtonsEnabled(Z)V

    .line 5689
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewVisibility(Z)V

    .line 5690
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine1:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5691
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewLine2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5692
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToRecoverSystemUi()V

    .line 5693
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    if-eqz p1, :cond_7

    .line 5694
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->setArguments(Landroid/os/Bundle;)V

    .line 5695
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLicenseDialog:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "License Dialog Fragment"

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_4

    .line 5697
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 5698
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "Dialog Fragment"

    invoke-virtual {p1, p0, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private startRotatableToast(Ljava/lang/String;IZ)V
    .locals 1

    .line 7033
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->getRotatableToast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7034
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->setRotatableToastMessage(Ljava/lang/CharSequence;)V

    .line 7035
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurViewDegree:I

    invoke-virtual {p1, p2, p3, p0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->startRotatableToast(IZI)V

    :cond_0
    return-void
.end method

.method private stopCaptureTimer()V
    .locals 0

    .line 7330
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCaptureTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method private stopGpsSearchTimer()V
    .locals 1

    .line 6947
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isActiveGpsSearchTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6948
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6949
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 6950
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimer:Ljava/util/Timer;

    .line 6951
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGpsSearchTimerTask:Ljava/util/TimerTask;

    :cond_0
    return-void
.end method

.method private textureViewPrepared()V
    .locals 1

    .line 832
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->openCamera()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->makeEngineParam()V

    return-void

    :catch_0
    move-exception v0

    .line 834
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 835
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCamera()V

    return-void
.end method

.method private translateSettingSubList(Landroid/view/View;)V
    .locals 8

    .line 7144
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7145
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SettingList;->getGlobalRectOfSelectedItem()Landroid/graphics/Rect;

    move-result-object v1

    .line 7147
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 7148
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/SettingList;->getOrientation()I

    move-result v3

    const v4, 0x7f060094

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 7149
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 7150
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v3, v6

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v3, v6

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_0

    .line 7152
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

    int-to-float v0, v0

    .line 7154
    :goto_0
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v3, v2

    int-to-float v2, v3

    move v7, v2

    move v2, v0

    move v0, v7

    goto :goto_1

    .line 7156
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v3, v2

    int-to-float v2, v3

    .line 7157
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 7158
    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    goto :goto_1

    .line 7160
    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 7163
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 7164
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/SettingList;->getOrientation()I

    move-result p0

    const/4 v3, 0x0

    if-ne p0, v5, :cond_3

    .line 7165
    iget p0, v1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v2

    cmpg-float p0, p0, v3

    if-gez p0, :cond_3

    .line 7166
    iget p0, v1, Landroid/graphics/Rect;->left:I

    neg-int p0, p0

    int-to-float v2, p0

    .line 7169
    :cond_3
    iget p0, v1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    cmpg-float p0, p0, v3

    if-gez p0, :cond_4

    .line 7170
    iget p0, v1, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    int-to-float v2, p0

    .line 7172
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 7173
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private unlockFocus()V
    .locals 2

    .line 1529
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v0, :cond_1

    .line 1531
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    if-eqz v0, :cond_0

    .line 1532
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    goto :goto_0

    .line 1534
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;-><init>()V

    .line 1536
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 1537
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startState()V

    :cond_1
    return-void
.end method

.method private unregisterGravitySensorListener()V
    .locals 1

    .line 4625
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_gravity_sensor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 4626
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private updateSaveDestination(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 6794
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->getSdCardGrantedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSdCardGranted(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6795
    sget-object p1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void

    .line 6799
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSaveInternalStorage(Z)V

    .line 6801
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSaveDestinationRoot(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFolderPath:Ljava/lang/String;

    return-void
.end method

.method private updateViews()V
    .locals 1

    .line 6077
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6079
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViews()V

    .line 6080
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setThumbnail()V

    :cond_0
    return-void
.end method

.method private updateViewsForCapture()V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0800ca

    .line 647
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0800cd

    .line 648
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0800cc

    .line 649
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0800cb

    .line 650
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f080003

    .line 651
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f080004

    .line 652
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    const v0, 0x7f080086

    .line 653
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    const v0, 0x7f080084

    .line 654
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    const v0, 0x7f0800e8

    .line 655
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    .line 658
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 661
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 663
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->setViewsVisibility(I)V

    .line 665
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 667
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->hideThumbnail()V

    .line 668
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->hideModeSelector()V

    .line 671
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isResolution16_9()Z

    move-result v0

    .line 672
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 673
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_4

    const v0, 0x7f060084

    goto :goto_0

    :cond_4
    const v0, 0x7f060085

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 674
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 676
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewAndArrowsVisibility(ZZ)V

    .line 677
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showPanoramaGuideDirection()V

    .line 678
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->hideInfoIcons()V

    .line 679
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToRemoveSystemUi()V

    return-void
.end method

.method private updateViewsForPreview()V
    .locals 3

    .line 626
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    if-eqz v0, :cond_0

    return-void

    .line 627
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->setViewsVisibility(I)V

    .line 631
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 633
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->showModeSelector()V

    .line 634
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setShutterIcon()V

    .line 636
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setThumbnail()V

    .line 637
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showInfoIcons()V

    .line 638
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToDimSystemUi()V

    .line 639
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 640
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mWarningTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    const/4 v0, 0x1

    .line 642
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewAndArrowsVisibility(ZZ)V

    return-void
.end method

.method private updatedOrientation(I)V
    .locals 3

    .line 4725
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplayRotation()I

    move-result v0

    add-int/2addr p1, v0

    .line 4726
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4730
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    add-int/lit8 v0, v0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    add-int/lit8 v2, p1, 0x2d

    .line 4731
    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v2, v2, 0x168

    if-eq v0, v2, :cond_1

    sub-int v0, p1, v0

    .line 4733
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x3c

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    add-int/lit8 p1, p1, 0x2d

    .line 4739
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    :cond_2
    return-void
.end method

.method private writeViewAngle(IFF)V
    .locals 2

    const-string v0, "ApplicationPreference"

    const/4 v1, 0x0

    .line 7302
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "VIEW_ANGLE_CAMERA_ID"

    .line 7303
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "VIEW_ANGLE_H"

    .line 7304
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string p1, "VIEW_ANGLE_V"

    .line 7305
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 7306
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public changeTrackingFlag(Z)V
    .locals 0

    .line 5803
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    return-void
.end method

.method public getAntiBanding()I
    .locals 0

    .line 4751
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getAntiBanding()I

    move-result p0

    return p0
.end method

.method public getColorCorrectionMode()I
    .locals 0

    .line 4756
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->color_correction_mode:I

    return p0
.end method

.method public getEdgeMode()I
    .locals 0

    .line 4761
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->edge_mode:I

    return p0
.end method

.method public getNoiseReductionMode()I
    .locals 0

    .line 4766
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->noise_reduction_mode:I

    return p0
.end method

.method public getSdCardGrantedUri()Landroid/net/Uri;
    .locals 0

    .line 7740
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->getSdCardGrantedUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getShadingMode()I
    .locals 0

    .line 4771
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->shading_mode:I

    return p0
.end method

.method public getTonemapMode()I
    .locals 0

    .line 4776
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->tonemap_mode:I

    return p0
.end method

.method public isAutoAELock()Z
    .locals 0

    .line 4781
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->auto_ae_lock:Z

    return p0
.end method

.method public isAutoEdgeNR()Z
    .locals 0

    .line 4791
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->nr_auto:Z

    return p0
.end method

.method public isAutoWBLock()Z
    .locals 0

    .line 4786
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->auto_wb_lock:Z

    return p0
.end method

.method public isDisplay18_9()Z
    .locals 1

    .line 7602
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    sub-float/2addr v0, p0

    .line 7604
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

.method public isDisplay21_9()Z
    .locals 1

    .line 7608
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->realPixelSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    const p0, 0x40155555

    sub-float/2addr v0, p0

    .line 7610
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

    .line 1899
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isPanoramaSaving()Z

    move-result v0

    .line 1900
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

    .line 4998
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->isInfinityFocus()Z

    move-result p0

    return p0
.end method

.method public isSdCardGranted(Landroid/net/Uri;)Z
    .locals 5

    const-string v0, "Camera2App"

    .line 7744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSdCardGranted():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7745
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p0, "Camera2App"

    const-string p1, "checkUri is null"

    .line 7749
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 7754
    :cond_1
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 7753
    invoke-static {p1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 7757
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "text/plane"

    const-string v4, "sdcard_write_test"

    invoke-static {v2, p1, v3, v4}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7760
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Camera2App"

    const-string p1, "SD Card is granted."

    .line 7761
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string p0, "Camera2App"

    const-string p1, "SD Card is no granted for delete error."

    .line 7764
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "Camera2App"

    const-string p1, "SD Card is no granted for createDocument failed."

    .line 7767
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Camera2App"

    const-string p1, "file create failed"

    .line 7770
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, "Camera2App"

    .line 7772
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSdCardGranted() result :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isTvLock()Z
    .locals 0

    .line 4746
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->isTvLock()Z

    move-result p0

    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "Camera2App"

    .line 7713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7715
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 7716
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->reconstructLocalCache()V

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 7726
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_0

    .line 7721
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSdCardGranted(Landroid/net/Uri;)V

    .line 7722
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSaveInternalStorage(Z)V

    .line 7723
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSaveDestinationRoot(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFolderPath:Ljava/lang/String;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachEnd()V
    .locals 8

    .line 4953
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Camera2App"

    const-string v2, "onAttachEnd"

    .line 4954
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4955
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mEngineEnding:Z

    .line 4956
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    if-eqz v1, :cond_4

    .line 4958
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->noiseReductionStrength:I

    .line 4959
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isAutoEdgeNR()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4960
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorSensitivityAverageManager:Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->get()I

    move-result v1

    const-string v3, "Camera2App"

    .line 4961
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAttachEnd isoAve="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x12c

    const/16 v4, 0x190

    if-lt v1, v3, :cond_0

    if-gt v1, v4, :cond_0

    .line 4963
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    const/16 v2, 0x8

    iput v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->noiseReductionStrength:I

    goto :goto_0

    :cond_0
    if-le v1, v4, :cond_1

    .line 4965
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    int-to-float v1, v1

    const v3, 0x3d19999a    # 0.0375f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v2, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->noiseReductionStrength:I

    goto :goto_0

    .line 4967
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    iput v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->noiseReductionStrength:I

    goto :goto_0

    .line 4970
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->nr_strength:I

    iput v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->noiseReductionStrength:I

    .line 4972
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShotSettings:Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->noiseReductionStrength:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setNoiseReductionParam(I)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, "Camera2App"

    .line 4974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMorphoPanoramaGP3.setNoiseReductionParam error ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4976
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4977
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoPanoramaGP2:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->end()I

    move-result v3

    const-string v4, "Camera2App"

    .line 4978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    const-string v1, "Camera2App"

    .line 4980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMorphoPanoramaGP2.end error ret:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4983
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4984
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->releaseImageBitmap()V

    return-void

    :catchall_0
    move-exception p0

    .line 4983
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onAutoFocusFinish(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 4820
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsAutoFocusProcessing:Z

    if-eqz p1, :cond_2

    .line 4822
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    if-eqz p1, :cond_1

    .line 4823
    :cond_0
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mFocusedSoundId:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->playSound(I)V

    .line 4825
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    const p1, 0x7f07006c

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4827
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 6016
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCancelLocationSetting()V
    .locals 3

    const/4 v0, 0x0

    .line 7372
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    const/4 v1, 0x1

    .line 7373
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPermissionSequence:Z

    .line 7374
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    const/4 v0, 0x3

    .line 7375
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    .line 7376
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showBlackScreen()V

    .line 7378
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCamera()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7380
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 7381
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCamera()V

    :goto_0
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 5040
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getHardwareLevel()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 5043
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUpdateCameraInfoViewRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->setTotalCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 5047
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUpdateCameraInfoViewRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->run()V

    .line 5050
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5051
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

    .line 7189
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setCameraSound(Z)V

    goto :goto_0

    .line 7180
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSaveLocation(Z)V

    if-eqz p2, :cond_2

    .line 7182
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showPermissionOrValidateLocation()V

    goto :goto_0

    .line 7184
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->stopGpsSearchTimer()V

    .line 7185
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->stopGpsSearch()V

    :goto_0
    return-void
.end method

.method public onClickCameraSetting(Landroid/view/View;)V
    .locals 0

    .line 1707
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->revertCamera2ParamsFragmentMode()V

    .line 1708
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1709
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->toggleVisibilityCameraParamFrame()V

    :cond_0
    return-void
.end method

.method public onClickSetting(Landroid/view/View;)V
    .locals 10

    .line 1697
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->revertCamera2ParamsFragmentMode()V

    .line 1698
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Camera2App"

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClickSetting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    const/4 v3, 0x1

    aget-wide v4, v1, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAovs:[D

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    aget-object v0, v0, v1

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->ASPECT_TABLE:[[I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorAspectIndex:I

    aget-object v0, v0, v1

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    .line 1701
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAllCameras()[Ljava/lang/String;

    move-result-object v9

    move-object v5, p0

    .line 1700
    invoke-virtual/range {v4 .. v9}, Lcom/sonyericsson/android/camera3d/InternalSettings;->startSettingActivity(Landroid/content/Context;[DLjava/lang/String;[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClickShutter(Landroid/view/View;)V
    .locals 4

    .line 1332
    sget-object p1, Lcom/sonyericsson/android/camera3d/Camera2App;->mSyncCancelSave:Ljava/lang/Object;

    monitor-enter p1

    .line 1333
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsPanoramaCancel:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1334
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavingBackground:Z

    .line 1335
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1336
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 1338
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->revertCamera2ParamsFragmentMode()V

    .line 1340
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSaveDestinationExternal()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->getSdCardGrantedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isSdCardGranted(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1341
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsNotifySave2Internal:Z

    .line 1342
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setSaveDestination(Z)V

    .line 1344
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1345
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAutoFocusCircle:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1346
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1347
    monitor-exit p1

    return-void

    .line 1349
    :cond_3
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsAutoFocusProcessing:Z

    if-eqz v1, :cond_5

    .line 1350
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object v1

    .line 1351
    instance-of v3, v1, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

    if-eqz v3, :cond_4

    .line 1352
    check-cast v1, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->setToNext(Z)V

    .line 1353
    monitor-exit p1

    return-void

    .line 1354
    :cond_4
    instance-of v3, v1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;

    if-eqz v3, :cond_5

    .line 1355
    check-cast v1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->setToNext(Z)V

    .line 1356
    monitor-exit p1

    return-void

    .line 1359
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->enabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1360
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->finishState()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1361
    monitor-exit p1

    return-void

    .line 1364
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsInvalidDir:Z

    if-nez v1, :cond_7

    .line 1365
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSavingProgressBar()V

    .line 1366
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsPanoramaCancel:Z

    .line 1367
    monitor-exit p1

    return-void

    .line 1371
    :cond_7
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsPanoramaCancel:Z

    .line 1372
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startTakePictureState()V

    .line 1373
    monitor-exit p1

    return-void

    .line 1333
    :cond_8
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 1373
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onClickThumbnail(Landroid/view/View;)V
    .locals 3

    .line 1725
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Camera2App"

    const-string v0, "Thumbnail click!"

    .line 1728
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailFilePath:Ljava/lang/String;

    .line 1730
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1729
    invoke-virtual {p1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1734
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->createDefaultIntentView(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.camera.action.REVIEW"

    .line 1735
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1736
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x1e

    if-eqz v1, :cond_1

    .line 1737
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1739
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->createDefaultIntentView(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    .line 1740
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1741
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1742
    invoke-virtual {p0, p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1744
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setThumbnail()V

    const p1, 0x7f0c0086

    const/4 v0, 0x1

    .line 1745
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 878
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Camera2App"

    .line 880
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s, BuildVersion:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getMobilePhonePixels()V

    const v0, 0x7f0a001e

    .line 883
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setContentView(I)V

    .line 885
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToDimSystemUi()V

    .line 888
    new-instance v8, Lcom/sonyericsson/android/camera3d/Camera2App$MyCountDownTimer;

    const-wide/32 v2, 0x2bf20

    const-wide/16 v4, 0x3e8

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/Camera2App$MyCountDownTimer;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;JJ)V

    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 889
    new-instance v8, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureTimer;

    const-wide/16 v2, 0xbb8

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureTimer;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;JJ)V

    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCaptureTimer:Landroid/os/CountDownTimer;

    .line 890
    new-instance v8, Lcom/sonyericsson/android/camera3d/Camera2App$CameraCheckTimer;

    const-wide/16 v2, 0x1388

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/Camera2App$CameraCheckTimer;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;JJ)V

    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraCheckTimer:Landroid/os/CountDownTimer;

    .line 891
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraCheckTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const v0, 0x7f08005d

    .line 892
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mView:Landroid/view/View;

    .line 893
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 894
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mView:Landroid/view/View;

    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$4;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 903
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initializeLayoutObjects()V

    .line 905
    new-instance v0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;-><init>(Landroid/location/LocationManager;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    const-string v0, "sensor"

    .line 907
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    .line 908
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 909
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 910
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 911
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGyroscope:Landroid/hardware/Sensor;

    .line 913
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 914
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAccelerometer:Landroid/hardware/Sensor;

    .line 916
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 917
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotationVector:Landroid/hardware/Sensor;

    goto :goto_0

    .line 921
    :cond_3
    new-instance v0, Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-direct {v0, v7}, Lcom/sonyericsson/android/camera3d/SensorFusion;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    .line 922
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusionMode:I

    .line 924
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusionMode:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setMode(I)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "Camera2App"

    .line 926
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SensorFusion.setMode error ret:0x%08X"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setOffsetMode(I)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "Camera2App"

    .line 930
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SensorFusion.setOffsetMode error ret:0x%08X"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {v0, v7}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setAppState(I)I

    move-result v0

    if-eqz v0, :cond_6

    const-string v1, "Camera2App"

    .line 934
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SensorFusion.setAppState error ret:0x%08X"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v6

    .line 937
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 938
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 941
    :cond_7
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$5;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-direct {v0, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 957
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getHeaderButtonsFragment()Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$6;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->setOnSettingDialogStateChangedListener(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;)V

    .line 975
    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 976
    iput-boolean v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCreateSequence:Z

    const/4 v0, 0x0

    .line 977
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 5

    const-string v0, "Camera2App"

    const-string v1, "onDestroy"

    .line 1031
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 1035
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->clearLocalCacheBackup()V

    .line 1036
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->clearLocalCache()V

    const/4 v0, 0x0

    .line 1038
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSavePanoramaPath:Ljava/lang/String;

    .line 1040
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1042
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    .line 1044
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->releaseImageBitmap()V

    .line 1046
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1048
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1051
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    if-eqz v1, :cond_1

    .line 1052
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->release()V

    :cond_1
    const/4 v1, 0x1

    .line 1055
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    .line 1056
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1058
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1060
    :catch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1061
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1063
    :goto_0
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPinToast:Landroid/widget/Toast;

    return-void
.end method

.method public onDismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V
    .locals 1

    .line 5492
    invoke-static {}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5507
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V

    .line 5508
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setThumbnail()V

    return-void

    :pswitch_1
    const/4 v0, 0x0

    .line 5500
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 5501
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V

    .line 5502
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onRestart()V

    .line 5503
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onResume()V

    return-void

    .line 5497
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDismissLicenseDialog()V
    .locals 3

    .line 7080
    sget-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OTHER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V

    return-void
.end method

.method public onError()V
    .locals 1

    .line 5259
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$18;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$18;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onErrorCamera()V
    .locals 1

    .line 5285
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 5286
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$20;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$20;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onErrorCapture()V
    .locals 1

    .line 5271
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 5272
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$19;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$19;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_10

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_9

    const/16 v4, 0x50

    if-eq p1, v4, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1391
    :pswitch_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->getUseVolumeKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x68c224e6

    if-eq v6, v7, :cond_1

    const v7, 0x2a1bd3

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "ZOOM"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v5, v3

    goto :goto_0

    :cond_1
    const-string v6, "VOLUME"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v5, v1

    :cond_2
    :goto_0
    packed-switch v5, :pswitch_data_1

    .line 1404
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    if-eqz v4, :cond_9

    return v1

    .line 1399
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    .line 1400
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1393
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    .line 1394
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1395
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c0084

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xdac

    invoke-direct {p0, p1, p2, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->startRotatableToast(Ljava/lang/String;IZ)V

    :cond_3
    return v1

    .line 1440
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isVisibleBlackScreen()Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 1443
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    .line 1446
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_7

    return v1

    .line 1449
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_12

    .line 1450
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1451
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 1453
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->autoFocus()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1454
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    .line 1455
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1456
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToRemoveSystemUi()V

    .line 1457
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    goto :goto_1

    .line 1413
    :cond_9
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isVisibleBlackScreen()Z

    move-result v4

    if-eqz v4, :cond_a

    return v1

    .line 1416
    :cond_a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v4

    if-eqz v4, :cond_b

    return v1

    .line 1419
    :cond_b
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    if-eqz v4, :cond_c

    return v1

    .line 1422
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-lez p2, :cond_d

    return v1

    .line 1426
    :cond_d
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    .line 1427
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result p2

    if-nez p2, :cond_f

    if-eq p1, v2, :cond_f

    .line 1428
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1429
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 1431
    :cond_e
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->autoFocus()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1432
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1433
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToRemoveSystemUi()V

    .line 1436
    :cond_f
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    const/4 p1, 0x0

    .line 1437
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    return v1

    .line 1380
    :cond_10
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    .line 1381
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 1385
    :cond_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->onBackKeyDown()Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 1464
    :cond_12
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1494
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    if-eqz v0, :cond_7

    .line 1495
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    .line 1496
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1497
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1498
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToDimSystemUi()V

    .line 1500
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateViews()V

    .line 1501
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->unlockFocus()V

    goto :goto_0

    .line 1471
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1472
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1473
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    :cond_3
    return v2

    .line 1477
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    if-eqz v0, :cond_5

    .line 1478
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->canExitState()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1479
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 1480
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startState()V

    return v2

    .line 1484
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingSubDialog()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1485
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingSubDialog()V

    goto :goto_0

    .line 1488
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1489
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 1490
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(Z)Z

    .line 1507
    :cond_7
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1026
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOpened()V
    .locals 3

    .line 5017
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableColorCorrectionMode()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    .line 5018
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableColorCorrectionModeValues()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    .line 5019
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getColorCorrectionModeDefaultValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    .line 5020
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableEdgeMode()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    .line 5021
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableEdgeModeValues()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    .line 5022
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getEdgeModeDefaultValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    .line 5023
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableNoiseReductionMode()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    .line 5024
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableNoiseReductionModeValues()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    .line 5025
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getNoiseReductionModeDefaultValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    .line 5026
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableShadingMode()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    .line 5027
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableShadingModeValues()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    .line 5028
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getShadingModeDefaultValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    .line 5029
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableTonemapMode()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    .line 5030
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getAvailableTonemapModeValues()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    .line 5031
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->getTonemapModeDefaultValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    .line 5033
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/InternalSettings;->updateCamera2ImageQualitySettings(Landroid/content/Context;[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;)V

    .line 5035
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initInternalSettingsViews()V

    return-void
.end method

.method protected onPause()V
    .locals 5

    const-string v0, "Camera2App"

    const-string v1, "onPause 92417"

    .line 1203
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1204
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    .line 1206
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App;->mSyncImageTask:Ljava/lang/Object;

    monitor-enter v1

    .line 1207
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1208
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->cancel(Z)Z

    .line 1209
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGetLatestImageTask:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    .line 1211
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1214
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->dismiss()V

    .line 1215
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertOkDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    .line 1216
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertOkDialog:Z

    .line 1218
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1219
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->dismiss()V

    .line 1220
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAlertSettingDialog:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    .line 1221
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertSettingDialog:Z

    .line 1224
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isOpenedSettingDialog()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1225
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog(Z)V

    .line 1227
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1228
    sget-object v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SHUTDOWN:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    .line 1229
    sget-object v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SUSPEND:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-direct {p0, v0, v1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->dismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V

    .line 1230
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    :cond_4
    const/4 v1, 0x4

    .line 1232
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1233
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setButtonsEnabled(Z)V

    .line 1235
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    .line 1236
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->stopCaptureTimer()V

    .line 1237
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraCheckTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    .line 1239
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_5

    .line 1240
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1241
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1244
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->unbindThermalService()V

    .line 1246
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_6

    .line 1247
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1248
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1249
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    const/4 v1, -0x1

    .line 1252
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveDirId:I

    .line 1253
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSaveFileId:I

    .line 1255
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->abortCamera()V

    .line 1257
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mLocationManager:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->removeUpdates()V

    .line 1259
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->releaseImageBitmap()V

    .line 1261
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->saveLocalCache()V

    .line 1262
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->clearLocalCache()V

    .line 1264
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->unregisterGravitySensorListener()V

    .line 1265
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1267
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1:Z

    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mUseCamera1Tmp:Z

    .line 1268
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    iput v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraIdTmp:I

    .line 1270
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->stopGpsSearchTimer()V

    .line 1272
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-eqz v3, :cond_7

    .line 1273
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1275
    :cond_7
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setRequestedOrientation(I)V

    .line 1278
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1280
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->hideTemperatureIcon()V

    .line 1283
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getFooterButtonsFragment()Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1285
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->clearThumbnail()V

    :cond_9
    const/4 v1, 0x3

    .line 1288
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    .line 1289
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showBlackScreen()V

    .line 1290
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1292
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_a

    .line 1293
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 1296
    :cond_a
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    if-eqz v1, :cond_b

    .line 1297
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotatableToast:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->invisibleRotatableToast()V

    .line 1300
    :cond_b
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mKeyFocusPressed:Z

    .line 1301
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    .line 1302
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutdownView:Z

    .line 1304
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 1305
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finish()V

    :cond_c
    return-void

    :catchall_0
    move-exception p0

    .line 1211
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPictureTaken(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z
    .locals 6

    .line 5189
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5190
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->image()Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/InternalSettings;->encodeFrame(Landroid/media/Image;)V

    .line 5193
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTakePictureVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    .line 5197
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->tv()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 5198
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->isTvLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5199
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->isEnableTvAnalysis()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5201
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->image()Landroid/media/Image;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getGain(Landroid/media/Image;)D

    move-result-wide v2

    goto :goto_0

    :cond_1
    move v0, v4

    .line 5206
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->onSaveImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5207
    new-instance p1, Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    .line 5208
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 5211
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 5212
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    :cond_4
    if-eqz v0, :cond_6

    .line 5216
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    check-cast p1, Lcom/sonyericsson/android/camera3d/MorphoCamera;

    .line 5217
    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->calculateNewRequest(D)V

    .line 5218
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->startTakePictureNewRequest(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 5219
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCapture()V

    return v4

    .line 5222
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->notifyTvAnalyzed()V

    .line 5237
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 5241
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->burstRemaining()I

    move-result p1

    if-le p1, v1, :cond_7

    .line 5243
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->setBurstRemaining(I)V

    goto :goto_1

    .line 5245
    :cond_7
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->repeatTakePicture()V

    goto :goto_1

    .line 5250
    :pswitch_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->repeatTakePicture()V

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreviewImage([B)V
    .locals 7

    .line 5122
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 5123
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5124
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurPreviewFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5125
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5127
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PREVIEW_SPREAD_BOTH_SIDES:Z

    if-eqz v0, :cond_1

    .line 5128
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 5129
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPreviewImageView:Landroid/widget/ImageView;

    const v1, -0x368bdc10    # -999999.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 5133
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5137
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 5138
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 5140
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplayRotation()I

    move-result v1

    .line 5141
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 5143
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    .line 5144
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

    .line 5145
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

    .line 5147
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    const-string v2, "YUV420_PLANAR"

    .line 5150
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mImageFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 5151
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    invoke-static {p1, v2, v1, v5, v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->yuv2Bitmap8888([BIILandroid/graphics/Bitmap;I)I

    move-result p1

    if-eqz p1, :cond_6

    const-string v0, "Camera2App"

    .line 5153
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MorphoPanoramaGP2.yuv2Bitmap8888 error ret:0x%08X"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5156
    :cond_5
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    invoke-static {p1, v2, v1, v5, v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->yvu2Bitmap8888([BIILandroid/graphics/Bitmap;I)I

    move-result p1

    if-eqz p1, :cond_6

    const-string v0, "Camera2App"

    .line 5158
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MorphoPanoramaGP2.yvu2Bitmap8888 error ret:0x%08X"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5161
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsFrontCamera:Z

    if-eqz p1, :cond_7

    .line 5162
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5163
    invoke-virtual {v5, p1, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 5164
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5165
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 5167
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMiniPreviewBitmapForCamera1:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5175
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isVisibleBlackScreen()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 5176
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

    .line 4796
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-nez v0, :cond_0

    return-void

    .line 4797
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-eqz v0, :cond_1

    return-void

    .line 4799
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onPreviewStartSub()V

    .line 4801
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    if-eqz v0, :cond_2

    .line 4802
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->enable()V

    .line 4805
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    if-eqz v0, :cond_3

    .line 4806
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->clearStockData()V

    :cond_3
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 5809
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->reconstructLocalCache()V

    .line 5811
    array-length p2, p3

    const/4 v0, 0x1

    if-lez p2, :cond_8

    const/4 p2, 0x0

    if-ne p1, v0, :cond_1

    .line 5813
    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionsResult([I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5814
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    goto :goto_1

    .line 5816
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 5819
    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionsResult([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 5820
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    goto :goto_1

    .line 5822
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    .line 5825
    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionsResult([I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 5826
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    goto :goto_1

    .line 5828
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 5831
    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionsResult([I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 5832
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    goto :goto_0

    .line 5835
    :cond_6
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    :goto_0
    const-string p1, "ApplicationPreference"

    .line 5837
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "First Time Location"

    .line 5838
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5839
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    :goto_1
    const-string p1, "ApplicationPreference"

    .line 5844
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "First Launch"

    .line 5845
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5846
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 5848
    :cond_8
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    :goto_2
    return-void
.end method

.method protected onResume()V
    .locals 7

    const-string v0, "Camera2App"

    const-string v1, "onResume"

    .line 1086
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 1088
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    .line 1090
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-eqz v1, :cond_0

    return-void

    .line 1092
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1093
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setRequestedOrientation(I)V

    .line 1095
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCountDownTimer()V

    .line 1097
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 1098
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertSettingDialog:Z

    if-eqz v1, :cond_2

    .line 1099
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1100
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    goto :goto_0

    .line 1102
    :cond_1
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->showSettingDialog(I)V

    .line 1105
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeAlertOkDialog:Z

    if-eqz v1, :cond_3

    .line 1106
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->showOkDialog(I)V

    .line 1110
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showBlackScreen()V

    const/4 v1, 0x4

    .line 1112
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 1113
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->setMiniPreviewArrowsVisibility(Z)V

    .line 1115
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->registerGravitySensorListener()V

    .line 1117
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 1118
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    iput v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusionMode:I

    .line 1119
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    iget v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusionMode:I

    invoke-virtual {v4, v6}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setMode(I)I

    .line 1121
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    if-eq v4, v5, :cond_5

    .line 1122
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5, v6, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1124
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 1125
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5, v6, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1127
    :cond_6
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotationVector:Landroid/hardware/Sensor;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    if-ne v4, v1, :cond_7

    .line 1128
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorFusion:Lcom/sonyericsson/android/camera3d/SensorFusion;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mRotationVector:Landroid/hardware/Sensor;

    invoke-virtual {v1, v4, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1131
    :cond_7
    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$7;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1164
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    .line 1165
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    .line 1166
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    .line 1167
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1168
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1170
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mThermalAlertReceiver:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->bindThermalService()V

    .line 1172
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mResumeSequence:Z

    .line 1175
    invoke-direct {p0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCameraDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1177
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCameraCheckTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1178
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA_SECURITY:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void

    .line 1182
    :cond_8
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1183
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1184
    iget-boolean v1, v1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCanDisableShutterSound:Z

    .line 1185
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCanDisableShutterSound:Z

    if-nez v1, :cond_9

    const-string v1, "audio"

    .line 1186
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1187
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$8;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$8;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/media/AudioManager;)V

    .line 1193
    invoke-virtual {v1, v3, v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1197
    :cond_9
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->showPermissionOrStartCamera()V

    return-void
.end method

.method public onSelected(Lcom/sonyericsson/android/camera3d/base/SettingListBase;I)V
    .locals 7

    .line 7085
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 7086
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 7111
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_LICENSE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto/16 :goto_4

    .line 7106
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->translateSettingSubList(Landroid/view/View;)V

    .line 7107
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->open()V

    .line 7108
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->setActive(Z)V

    goto/16 :goto_4

    .line 7100
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    const/4 p2, 0x3

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isCameraSound()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    .line 7101
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isCameraSound()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    if-eqz p1, :cond_6

    .line 7102
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutterSoundId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto/16 :goto_4

    .line 7095
    :pswitch_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->translateSettingSubList(Landroid/view/View;)V

    .line 7096
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->open()V

    .line 7097
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->setActive(Z)V

    goto/16 :goto_4

    .line 7092
    :pswitch_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveLocation()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {p1, v1, p0}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    goto :goto_4

    .line 7087
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingDialog()V

    .line 7088
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(Z)Z

    goto :goto_4

    .line 7117
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListUseVolumeKey:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "HW_CAMERA_KEY"

    .line 7119
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingUseVolumeKeyList:[I

    aget v0, v0, p2

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    goto :goto_1

    :pswitch_6
    const-string p1, "ZOOM"

    goto :goto_1

    :pswitch_7
    const-string p1, "VOLUME"

    goto :goto_1

    :pswitch_8
    const-string p1, "HW_CAMERA_KEY"

    .line 7132
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setUseVolumeKey(Ljava/lang/String;)V

    .line 7133
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingSubDialog()V

    .line 7134
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingUseVolumeKeyList:[I

    aget p0, p0, p2

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera3d/SettingList;->setSummary(II)V

    goto :goto_4

    .line 7135
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSubListSaveDestination:Lcom/sonyericsson/android/camera3d/SettingSubList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7136
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingSaveDestinationList:[I

    aget p1, p1, p2

    const p2, 0x7f0c0071

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateSaveDestination(Z)V

    .line 7137
    invoke-direct {p0, v2, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->checkRemainingMemory(ZZ)Z

    .line 7138
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->closeSettingSubDialog()V

    .line 7139
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettingList:Lcom/sonyericsson/android/camera3d/SettingList;

    const/4 v0, 0x4

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveInternalStorage()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const p2, 0x7f0c0072

    :goto_3
    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/android/camera3d/SettingList;->setSummary(II)V

    :cond_6
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0c007f
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 4593
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsSensorAverage:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 4594
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    aget v4, v0, v2

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    add-float/2addr v4, v5

    aput v4, v0, v2

    .line 4595
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    aget v2, v0, v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    add-float/2addr v2, v4

    aput v2, v0, v3

    .line 4596
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    aget v2, v0, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 4597
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    goto :goto_0

    .line 4599
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    aput v4, v0, v2

    .line 4600
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v0, v3

    .line 4601
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGravities:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    aput p1, v0, v1

    .line 4602
    iput v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorCnt:I

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "Camera2App"

    const-string v1, "onStart"

    .line 1068
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 1071
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestToDimSystemUi()V

    .line 1074
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    .line 1075
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->enable()V

    .line 1077
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initializeThermalAlert()V

    const/4 v0, 0x2

    .line 1079
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mScreenCounter:I

    .line 1081
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->loadValues()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    const-string v0, "Camera2App"

    const-string v1, "onStop"

    .line 1310
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 1312
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    .line 1314
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finalizeThermalAlert()V

    .line 1316
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save()V

    .line 1317
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->saveValues()V

    .line 1319
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDialogShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1320
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    sget-object v2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SHUTDOWN:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->dismiss(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    :cond_0
    const/4 v1, 0x0

    .line 1322
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->setStatus(I)V

    .line 1323
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialogType:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 1324
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOverlayDialogNum:I

    .line 1325
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    .line 1327
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    .line 1328
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public onTakePictureCancel()V
    .locals 2

    .line 4938
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4939
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->finalizeEncoder()V

    :cond_0
    const/4 v0, 0x0

    .line 4941
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    .line 4942
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finishEngine()V

    .line 4943
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setAttachExit()V

    .line 4944
    new-instance v0, Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    .line 4946
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    if-eqz v0, :cond_1

    .line 4947
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mOrientationEventListener:Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method public onTakePictureFinish()Z
    .locals 1

    .line 4878
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4879
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

    .line 4887
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4888
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->finalizeEncoder()V

    :cond_0
    const/4 v0, 0x0

    .line 4890
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mGuiCapturePressed:Z

    if-nez p1, :cond_2

    .line 4892
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->hasImage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4893
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStopSoundId:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->playSound(I)V

    .line 4894
    new-instance p1, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 4895
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->setDefaultCameraState()V

    .line 4896
    new-instance v1, Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    .line 4898
    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$13;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$13;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4905
    new-instance p0, Lcom/sonyericsson/android/camera3d/SaveAsyncTask;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SaveAsyncTask;-><init>(Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;)V

    new-array p1, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/SaveAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 4910
    :cond_1
    new-instance p1, Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    goto :goto_0

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4916
    :pswitch_0
    new-instance p1, Lcom/sonyericsson/android/camera3d/Camera2App$14;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$14;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4928
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finishEngine()V

    .line 4929
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setAttachExit()V

    .line 4933
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startState()V

    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTakePicturePreprocess()V
    .locals 4

    .line 4840
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 4841
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDisplayRotation()I

    move-result v1

    .line 4842
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 4843
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mIsFrontCamera:Z

    if-eqz v3, :cond_1

    .line 4844
    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    if-ne v3, v0, :cond_0

    .line 4845
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    goto :goto_0

    .line 4847
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInitParam:Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mCurOrientation:I

    add-int/2addr v1, p0

    add-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    goto :goto_0

    .line 4850
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

    .line 4856
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$12;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$12;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4866
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->updateViewsForTakePictureStart()V

    .line 4867
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSensorSensitivityAverageManager:Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->init()V

    .line 4868
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mShutterSoundId:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->playSound(I)V

    .line 4869
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    .line 4870
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mPanoramaState:Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->setPanoramaStateEventListener(Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;)V

    .line 4871
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->initAttachQueue()V

    .line 4873
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startCaptureTimer()V

    return-void
.end method

.method public onTemperatureAlreadyHigh()V
    .locals 3

    const/4 v0, 0x1

    .line 7041
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    .line 7042
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->shutdownViews()V

    const v1, 0x7f0c0056

    .line 7044
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xdac

    invoke-direct {p0, v1, v2, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startRotatableToast(Ljava/lang/String;IZ)V

    return-void
.end method

.method public onTemperatureReachedHigh()V
    .locals 1

    .line 7049
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7050
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mTemperatureHigh:Z

    .line 7052
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->shutdownViews()V

    .line 7053
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->abortCamera()V

    .line 7055
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onTemperatureReachingHigh()V
    .locals 1

    .line 7060
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mActive:Z

    if-nez v0, :cond_0

    return-void

    .line 7061
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getInfoIconsFragment()Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7063
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->showTemperatureIcon()V

    .line 7065
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mStartTrackFlag:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isShowDialogThermal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7066
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7067
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 7070
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    .line 7072
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->setViewsVisibility(I)V

    .line 7073
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->updateViewsForPreview()V

    .line 7075
    :cond_3
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ALERT_THERMAL_WARNING:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->startDialog(Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_4
    return-void
.end method

.method public requestPermissionForCamera()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 5953
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSION_CAMERA:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5954
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_CAMERA_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 5955
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSION_CAMERA:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5956
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSION_CAMERA:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 5957
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5958
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 5959
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5960
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissions([Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public requestSdCardGranted()V
    .locals 2

    .line 7706
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7707
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->getSdCardGrantedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0x14

    .line 7708
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public requestUiRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 4833
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGravitySensorListener(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4990
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->registerGravitySensorListener()V

    goto :goto_0

    .line 4992
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->unregisterGravitySensorListener()V

    :goto_0
    return-void
.end method

.method public setNullDirectionFunction()V
    .locals 9

    .line 1848
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    .line 1849
    new-instance v8, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;-><init>(IIIIII)V

    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mDirectionFunction:Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    return-void
.end method

.method public setSdCardGranted(Landroid/net/Uri;)V
    .locals 0

    .line 7736
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mSettings:Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSdCardGranted(Landroid/net/Uri;)V

    return-void
.end method

.method public updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V
    .locals 0

    .line 5008
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    return-void
.end method

.method public updateTvValue()V
    .locals 0

    .line 5003
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App;->mInternalSettings:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->updateTvValue()V

    return-void
.end method
