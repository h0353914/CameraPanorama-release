.class Lcom/sonyericsson/android/camera3d/InternalSettings;
.super Ljava/lang/Object;
.source "InternalSettings.java"


# static fields
.field private static final CAMERA2_PARAM_FILE:Ljava/lang/String; = "camera2.ini"

.field private static final DEFAULT_CAPTURE_RESOLUTION:[[I

.field public static final DEFAULT_SETTING_ANTI_BANDING:I = 0x1

.field public static final DEFAULT_SETTING_AOV_GAIN:D = 1.0

.field public static final DEFAULT_SETTING_AUTO_AE_LOCK:Z = true

.field public static final DEFAULT_SETTING_AUTO_WB_LOCK:Z = true

.field public static final DEFAULT_SETTING_CAMERA_ID:I = 0x0

.field public static final DEFAULT_SETTING_CAPTURE_MODE:I = 0x0

.field public static final DEFAULT_SETTING_CAPTURE_SIZE_INDEX:I = 0x0

.field public static final DEFAULT_SETTING_COLOR_CORRECTION_MODE:Ljava/lang/String; = "-1"

.field public static final DEFAULT_SETTING_DEFORM:Z = false

.field public static final DEFAULT_SETTING_DISTORTION_K1:D = 0.0

.field public static final DEFAULT_SETTING_DISTORTION_K2:D = 0.0

.field public static final DEFAULT_SETTING_DISTORTION_K3:D = 0.0

.field public static final DEFAULT_SETTING_DISTORTION_K4:D = 0.0

.field public static final DEFAULT_SETTING_DRAW_THRESHOLD:D = 0.5

.field public static final DEFAULT_SETTING_EDGE_MODE:Ljava/lang/String; = "-1"

.field public static final DEFAULT_SETTING_FOCUS_MODE:I = 0x0

.field public static final DEFAULT_SETTING_INPUT_MOVIE_FPS:D = 15.0

.field public static final DEFAULT_SETTING_LUMINANCE_CORRECTION:Z = false

.field private static final DEFAULT_SETTING_MOTION_DETECTION_MODE:I = 0x0

.field public static final DEFAULT_SETTING_NOISE_REDUCTION_MODE:Ljava/lang/String; = "-1"

.field private static final DEFAULT_SETTING_NR_AUTO:Z = true

.field private static final DEFAULT_SETTING_PROJECTION_MODE:I = 0x1

.field public static final DEFAULT_SETTING_ROTATION_RATIO:D = 0.96

.field public static final DEFAULT_SETTING_SAVE_INPUT_IMAGES:I = 0x0

.field public static final DEFAULT_SETTING_SEAMSEARCH_RATIO:D = 1.0

.field public static final DEFAULT_SETTING_SENSOR_MODE:I = 0x1

.field public static final DEFAULT_SETTING_SHADING_MODE:Ljava/lang/String; = "-1"

.field public static final DEFAULT_SETTING_TONEMAP_MODE:Ljava/lang/String; = "-1"

.field public static final DEFAULT_SETTING_USE_CAMERA2:Z = true

.field public static final DEFAULT_SETTING_USE_GPS:Z = false

.field public static final DEFAULT_SETTING_USE_GRAVITY_SENSOR:Z = false

.field public static final DEFAULT_SETTING_ZROTATION_COEFF:D = 0.95

.field private static final DEFAULT_UI_CONTROL_MODES:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "Camera2App"

.field private static final OPERATING_MODE_DEBUG:Z = false

.field public static final SETTING_ANTI_BANDING_50HZ:I = 0x2

.field public static final SETTING_ANTI_BANDING_60HZ:I = 0x3

.field public static final SETTING_ANTI_BANDING_AUTO:I = 0x1

.field public static final SETTING_ANTI_BANDING_OFF:I = 0x0

.field public static final SETTING_FILE_NAME:Ljava/lang/String; = "setting.txt"

.field public static final SETTING_FOCUS_MODE_AUTO:I = 0x0

.field public static final SETTING_FOCUS_MODE_INFINITY:I = 0x1

.field public static final SETTING_KEY_ANGLE:Ljava/lang/String; = "angle"

.field public static final SETTING_KEY_ANTI_BANDING:Ljava/lang/String; = "anti_banding(0,OFF 1,AUTO 2,50Hz 3,60Hz)"

.field public static final SETTING_KEY_ATTACH_NUM_DIRECTION_UNDECIDED:Ljava/lang/String; = "attached num during direction-undecided"

.field public static final SETTING_KEY_AUTO_AE_LOCK:Ljava/lang/String; = "auto_ae_lock"

.field public static final SETTING_KEY_AUTO_WB_LOCK:Ljava/lang/String; = "auto_wb_lock"

.field public static final SETTING_KEY_BUILD_MODEL:Ljava/lang/String; = "build_model"

.field public static final SETTING_KEY_CAMERA_ID:Ljava/lang/String; = "camera_id"

.field public static final SETTING_KEY_CAPTURE_MODE:Ljava/lang/String; = "capture_mode"

.field public static final SETTING_KEY_COLOR_CORRECTION_MODE:Ljava/lang/String; = "color_correction_mode"

.field public static final SETTING_KEY_EDGE_MODE:Ljava/lang/String; = "edge_mode"

.field public static final SETTING_KEY_FORMAT:Ljava/lang/String; = "image format"

.field public static final SETTING_KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final SETTING_KEY_MAX_HEIGHT:Ljava/lang/String; = "max height"

.field public static final SETTING_KEY_MAX_WIDTH:Ljava/lang/String; = "max width"

.field private static final SETTING_KEY_MOTION_DETECTION_MODE:Ljava/lang/String; = "motion_detection_mode"

.field public static final SETTING_KEY_NOISE_REDUCTION_MODE:Ljava/lang/String; = "noise_reduction_mode"

.field private static final SETTING_KEY_NR_AUTO:Ljava/lang/String; = "nr auto"

.field private static final SETTING_KEY_NR_STRENGTH:Ljava/lang/String; = "nr strength"

.field public static final SETTING_KEY_PANORAMA_DIRECTION:Ljava/lang/String; = "panorama direction(0,left 1,right 2,up 3,down)"

.field public static final SETTING_KEY_PREVIEW_SCALE:Ljava/lang/String; = "preview scale"

.field private static final SETTING_KEY_PROJECTION_MODE:Ljava/lang/String; = "projection_mode"

.field public static final SETTING_KEY_SENSOR_MODE:Ljava/lang/String; = "sensor_mode"

.field public static final SETTING_KEY_SHADING_MODE:Ljava/lang/String; = "shading_mode"

.field public static final SETTING_KEY_TONEMAP_MODE:Ljava/lang/String; = "tonemap_mode"

.field public static final SETTING_KEY_UNSHARP_STRENGTH:Ljava/lang/String; = "unsharp strength"

.field public static final SETTING_KEY_USE_CAMERA2:Ljava/lang/String; = "use_camera2"

.field public static final SETTING_KEY_USE_GRAVITY_SENSOR:Ljava/lang/String; = "use_gravity_sensor"

.field public static final SETTING_KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final SETTING_MOTION_DETECTION_MODE_FAST:I = 0x0

.field private static final SETTING_MOTION_DETECTION_MODE_HQ:I = 0x1

.field private static final SETTING_PROJECTION_MODE_CENTRAL_CYLINDRICAL:I = 0x1

.field private static final SETTING_PROJECTION_MODE_CENTRAL_CYLINDRICAL2:I = 0x2

.field private static final SETTING_PROJECTION_MODE_EQUIRECTANGULAR:I = 0x0

.field public static final SETTING_SAVE_INPUT_IMAGES_MOVIE:I = 0x1

.field public static final SETTING_SAVE_INPUT_IMAGES_OFF:I = 0x0

.field public static final SETTING_SAVE_INPUT_IMAGES_RAW:I = 0x2

.field public static final SETTING_SENSOR_MODE_OFF:I = -0x1

.field public static final SETTING_SEPARATOR:Ljava/lang/String; = ":"

.field public static final UI_CONTROL_MODE1:I = 0x0

.field public static final UI_CONTROL_MODE2:I = 0x1

.field public static final UI_CONTROL_MODE3:I = 0x2

.field private static final mRecorderLock:Ljava/lang/Object;


# instance fields
.field public anti_banding:I

.field public aov_gain:D

.field public aov_x:D

.field public aov_y:D

.field public auto_ae_lock:Z

.field public auto_wb_lock:Z

.field public calcseam_pixnum:I

.field public camera_id:I

.field public capture_mode:I

.field public capture_size_index:I

.field public color_correction_mode:I

.field public distortion_k1:D

.field public distortion_k2:D

.field public distortion_k3:D

.field public distortion_k4:D

.field public draw_threshold:D

.field public edge_mode:I

.field public focus_mode:I

.field public input_movie_fps:D

.field private isValidCameraParamFrame:Z

.field private final mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mCamera2ParamsFragment:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

.field private mCamera2ParamsFragmentSelectedMode:I

.field private mIsTvLock:Z

.field private mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

.field private mNumEncodedFrames:I

.field private final mRawRenderListener:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw$RawRenderListener;

.field private mRecordTimeStamp:J

.field private mRecordTimeStampStart:J

.field private mRecorder:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw;

.field private mTvView:Landroid/view/View;

.field public motion_detection_mode:I

.field public noise_reduction_mode:I

.field public nr_auto:Z

.field public nr_strength:I

.field public projection_mode:I

.field public rotation_ratio:D

.field public save_input_images:I

.field public seamsearch_ratio:D

.field public sensor_mode:I

.field public shading_mode:I

.field public shrink_ratio:D

.field public tonemap_mode:I

.field public ui_control_mode:I

.field public unsharp_strength:I

.field public use_camera2:Z

.field public use_deform:Z

.field public use_gps:Z

.field public use_gravity_sensor:Z

.field public use_luminance_correction:Z

.field public zrotation_coeff:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mRecorderLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->DEFAULT_UI_CONTROL_MODES:Landroid/support/v4/util/SimpleArrayMap;

    .line 67
    sget-object v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->DEFAULT_UI_CONTROL_MODES:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "E6653,21"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->DEFAULT_UI_CONTROL_MODES:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "E6653,22"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->DEFAULT_UI_CONTROL_MODES:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "E6653,23"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->DEFAULT_UI_CONTROL_MODES:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "E6683,21"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->DEFAULT_UI_CONTROL_MODES:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "E6683,22"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->DEFAULT_UI_CONTROL_MODES:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "E6683,23"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->DEFAULT_UI_CONTROL_MODES:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "LG-H961N,22"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 75
    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->DEFAULT_CAPTURE_RESOLUTION:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0xf00
        0x870
    .end array-data

    :array_1
    .array-data 4
        0x780
        0x438
    .end array-data

    :array_2
    .array-data 4
        0x500
        0x2d0
    .end array-data
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 7

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z

    .line 886
    new-instance v1, Lcom/sonyericsson/android/camera3d/InternalSettings$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/InternalSettings$1;-><init>(Lcom/sonyericsson/android/camera3d/InternalSettings;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mRawRenderListener:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw$RawRenderListener;

    .line 212
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 214
    iput v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->capture_size_index:I

    .line 215
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_gps:Z

    .line 216
    iput v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    const/4 p1, 0x1

    .line 217
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->auto_ae_lock:Z

    .line 218
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->auto_wb_lock:Z

    .line 219
    iput p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->anti_banding:I

    .line 220
    iput v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->capture_mode:I

    const-wide/high16 v1, 0x401e000000000000L    # 7.5

    .line 221
    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->shrink_ratio:D

    const/16 v1, 0x7e90

    .line 222
    iput v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->calcseam_pixnum:I

    const-wide/16 v1, 0x0

    .line 223
    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_x:D

    .line 224
    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_y:D

    .line 225
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_deform:Z

    .line 226
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_luminance_correction:Z

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 227
    iput-wide v3, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->seamsearch_ratio:D

    const-wide v5, 0x3fee666666666666L    # 0.95

    .line 228
    iput-wide v5, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->zrotation_coeff:D

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 229
    iput-wide v5, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->draw_threshold:D

    .line 230
    iput p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->sensor_mode:I

    .line 231
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_gravity_sensor:Z

    const/16 v5, 0x600

    .line 232
    iput v5, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->unsharp_strength:I

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    .line 233
    iput-wide v5, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->input_movie_fps:D

    .line 234
    iput-wide v3, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_gain:D

    .line 235
    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->distortion_k1:D

    .line 236
    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->distortion_k2:D

    .line 237
    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->distortion_k3:D

    .line 238
    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->distortion_k4:D

    const-wide v1, 0x3feeb851eb851eb8L    # 0.96

    .line 239
    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->rotation_ratio:D

    .line 240
    iput v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->ui_control_mode:I

    .line 241
    iput v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->focus_mode:I

    .line 242
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_camera2:Z

    .line 243
    iput v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->camera_id:I

    const-string v1, "-1"

    .line 244
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->color_correction_mode:I

    const-string v1, "-1"

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->edge_mode:I

    const-string v1, "-1"

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->noise_reduction_mode:I

    const-string v1, "-1"

    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->shading_mode:I

    const-string v1, "-1"

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->tonemap_mode:I

    .line 249
    iput p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->projection_mode:I

    .line 250
    iput v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->motion_detection_mode:I

    .line 251
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->nr_auto:Z

    .line 252
    iput v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->nr_strength:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/InternalSettings;)Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mRecorder:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/InternalSettings;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/InternalSettings;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCamera2ParamsFragment()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/InternalSettings;)Landroid/view/View;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getTvView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/InternalSettings;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    return-object p0
.end method

.method private getCamera2ParamsFragment()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mCamera2ParamsFragment:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    if-nez v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 934
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f08003a

    .line 935
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mCamera2ParamsFragment:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    .line 937
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mCamera2ParamsFragment:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    return-object p0
.end method

.method private getIndexOfDefaultCaptureSize(Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;)I
    .locals 8

    .line 331
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->getSupportedPictureSizes()[Landroid/util/Size;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    .line 332
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 333
    aget-object v1, p0, v0

    .line 334
    sget-object v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->DEFAULT_CAPTURE_RESOLUTION:[[I

    array-length v3, v2

    move v4, p1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 335
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    aget v7, v5, p1

    if-ne v6, v7, :cond_0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    aget v5, v5, v7

    if-ne v6, v5, :cond_0

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method private getTvView()Landroid/view/View;
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mTvView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 943
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0800e4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mTvView:Landroid/view/View;

    .line 945
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mTvView:Landroid/view/View;

    return-object p0
.end method

.method private isVisibleCameraParamFrame()Z
    .locals 2

    .line 1043
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1045
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 1046
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private print(Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;)V
    .locals 0

    return-void
.end method

.method private setVisibilityCameraParamFrame(I)V
    .locals 1

    .line 1050
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z

    if-nez v0, :cond_0

    return-void

    .line 1052
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 1053
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public encodeFrame(Landroid/media/Image;)V
    .locals 0

    return-void
.end method

.method public finalizeEncoder()V
    .locals 0

    return-void
.end method

.method public getAntiBanding()I
    .locals 1

    .line 302
    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->anti_banding:I

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    :goto_0
    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCaptureMode()I
    .locals 1

    .line 323
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_camera2:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->capture_mode:I

    :goto_0
    return p0
.end method

.method public getSettingValue(Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;)V
    .locals 6

    .line 391
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getIndexOfDefaultCaptureSize(Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->capture_size_index:I

    .line 392
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->getSupportedPictureSizes()[Landroid/util/Size;

    move-result-object p1

    const-string v0, "Camera2App"

    .line 393
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "capture_size : %d x %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->capture_size_index:I

    aget-object v4, p1, v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->capture_size_index:I

    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initViews(Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;Landroid/os/Handler;Z)V
    .locals 0

    .line 976
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCamera2ParamsFragment()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object p2

    .line 977
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_camera2:Z

    if-eqz p0, :cond_0

    .line 978
    check-cast p1, Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->setCamera2Params(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)V

    :cond_0
    return-void
.end method

.method public initializeEncoder(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public initializeUI(Lcom/sonyericsson/android/camera3d/CameraInfo;)V
    .locals 1

    .line 967
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCamera2ParamsFragment()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    .line 968
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->initializeUI(Lcom/sonyericsson/android/camera3d/CameraInfo;)V

    .line 969
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_camera2:Z

    if-eqz p0, :cond_0

    .line 970
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getSensitivityMin()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->setSensorSensitivity(I)V

    .line 971
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->frameDuration()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->setExposureTime(J)V

    :cond_0
    return-void
.end method

.method public isInfinityFocus()Z
    .locals 1

    .line 327
    iget p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->focus_mode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTvLock()Z
    .locals 1

    .line 1157
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v0, 0x7f0800e2

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUseCamera1(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadValues()V
    .locals 0

    return-void
.end method

.method public onBackKeyDown()Z
    .locals 2

    .line 1067
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1069
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->isVisibleCameraParamFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 1070
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->setVisibilityCameraParamFrame(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public putParamFile(Ljava/lang/String;Lcom/sonyericsson/android/camera3d/CameraInfo;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removePreviewSize(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public resetValues()V
    .locals 0

    return-void
.end method

.method public declared-synchronized revertCamera2ParamsFragmentMode()V
    .locals 3

    monitor-enter p0

    .line 1132
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 1134
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCamera2ParamsFragment()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    .line 1135
    iget v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mCamera2ParamsFragmentSelectedMode:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1141
    :pswitch_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->setManual()V

    .line 1142
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->setEnabled(Z)V

    goto :goto_0

    .line 1137
    :pswitch_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->setTv()V

    .line 1138
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->setEnabled(Z)V

    :goto_0
    const/4 v0, -0x1

    .line 1148
    iput v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mCamera2ParamsFragmentSelectedMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1131
    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveSettings(Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/android/camera3d/CameraInfo;IIIIIJ)V
    .locals 0

    return-void
.end method

.method public saveValues()V
    .locals 0

    return-void
.end method

.method public settingCaptureMode(Landroid/content/Context;)V
    .locals 1

    .line 362
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_camera2:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "EVA-TL00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 376
    :goto_0
    iput p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->capture_mode:I

    return-void
.end method

.method public startSettingActivity(Landroid/content/Context;[DLjava/lang/String;[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public toggleVisibilityCameraParamFrame()V
    .locals 1

    .line 1057
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z

    if-nez v0, :cond_0

    return-void

    .line 1059
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->isVisibleCameraParamFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 1060
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->setVisibilityCameraParamFrame(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1062
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->setVisibilityCameraParamFrame(I)V

    :goto_0
    return-void
.end method

.method public tv()Z
    .locals 1

    .line 1152
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCamera2ParamsFragment()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateCamera2ImageQualitySettings(Landroid/content/Context;[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;)V
    .locals 2

    const/4 p1, 0x0

    .line 779
    aget-object v0, p2, p1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->color_correction_mode:I

    const-string v1, "-1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 780
    aget-object p1, p2, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    .line 781
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->color_correction_mode:I

    :cond_0
    const/4 p1, 0x1

    .line 787
    aget-object v0, p2, p1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->edge_mode:I

    const-string v1, "-1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 788
    aget-object p1, p2, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    .line 789
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->edge_mode:I

    :cond_1
    const/4 p1, 0x2

    .line 795
    aget-object v0, p2, p1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->noise_reduction_mode:I

    const-string v1, "-1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 796
    aget-object p1, p2, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    .line 797
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->noise_reduction_mode:I

    :cond_2
    const/4 p1, 0x3

    .line 803
    aget-object v0, p2, p1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->shading_mode:I

    const-string v1, "-1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 804
    aget-object p1, p2, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    .line 805
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->shading_mode:I

    :cond_3
    const/4 p1, 0x4

    .line 811
    aget-object v0, p2, p1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->tonemap_mode:I

    const-string v1, "-1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 812
    aget-object p1, p2, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    .line 813
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->tonemap_mode:I

    :cond_4
    return-void
.end method

.method public updateCameraInfoView(JI)V
    .locals 5

    .line 1077
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z

    if-nez v0, :cond_0

    return-void

    .line 1078
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const v0, 0x7f08003c

    .line 1079
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/CameraInfoViewFragment;

    if-eqz p0, :cond_1

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "ISO:%n %d%nExposureTime:%n "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "nsec"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1083
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraInfoViewFragment;->update(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateTvValue()V
    .locals 1

    .line 1123
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z

    if-nez v0, :cond_0

    return-void

    .line 1125
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCamera2ParamsFragment()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    .line 1126
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mMorphoCamera:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    check-cast p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->updateTvValue()V

    :cond_1
    return-void
.end method

.method public updateViewsForPreviewStart()V
    .locals 2

    .line 1088
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z

    if-nez v0, :cond_0

    return-void

    .line 1090
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCamera2ParamsFragment()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0800e1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mIsTvLock:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1101
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const v0, 0x7f08003c

    .line 1102
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/CameraInfoViewFragment;

    if-eqz p0, :cond_2

    .line 1104
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfoViewFragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 1105
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public updateViewsForTakePictureStart()V
    .locals 2

    .line 1110
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->isValidCameraParamFrame:Z

    if-nez v0, :cond_0

    return-void

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCamera2ParamsFragment()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0800e1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mIsTvLock:Z

    .line 1117
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Switch;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    return-void
.end method
