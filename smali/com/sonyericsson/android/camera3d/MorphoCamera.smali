.class public Lcom/sonyericsson/android/camera3d/MorphoCamera;
.super Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;
.source "MorphoCamera.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MorphoCamera2"


# instance fields
.field private mBackgroundHandlerThread:Landroid/os/HandlerThread;

.field private final mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mImageReader:Landroid/media/ImageReader;

.field private mImageReaderIdling:Landroid/media/ImageReader;

.field private mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

.field private final mPreviewAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mPreviewSurfaceMini:Landroid/view/Surface;

.field private final mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final mSizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mTakePictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mTextureViewMini:Landroid/view/TextureView;

.field private mTvTargetExposureTime:J

.field private mTvTargetSensorSensitivity:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;Landroid/app/Activity;II)V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureView:Landroid/view/TextureView;

    .line 60
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureViewMini:Landroid/view/TextureView;

    .line 66
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 567
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$1;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 607
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$2;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTakePictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 769
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 845
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 866
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$5;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 923
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$6;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mSizeComparator:Ljava/util/Comparator;

    const-string v0, "camera"

    .line 103
    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 104
    new-instance p2, Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-direct {p2}, Lcom/sonyericsson/android/camera3d/CameraInfo;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 105
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setCameraId(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 108
    sget-object p1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->nullMorphoCameraListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    .line 112
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    .line 113
    invoke-static {p4}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->initialize(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera3d/MorphoCamera;Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/media/ImageReader;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$702(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureViewMini:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurfaceMini:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$902(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurfaceMini:Landroid/view/Surface;

    return-object p1
.end method

.method private calculateExposureTime(J)J
    .locals 7

    .line 756
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    .line 757
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 758
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long/2addr p1, v3

    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetExposureTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    goto :goto_0

    .line 759
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/32 v5, -0x7a120

    cmp-long v1, v1, v5

    if-gez v1, :cond_1

    .line 760
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr p1, v3

    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetExposureTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    :goto_0
    return-wide p1
.end method

.method private calculateSensorSensitivity(I)I
    .locals 4

    .line 741
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    .line 742
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v1

    sub-int v1, p1, v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 743
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result p1

    add-int/2addr p1, v2

    iget p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetSensorSensitivity:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 744
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v1

    sub-int v1, p1, v1

    const/4 v3, -0x5

    if-ge v1, v3, :cond_1

    .line 745
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result p1

    sub-int/2addr p1, v2

    iget p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetSensorSensitivity:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private getImageQualitySettingsDefaultValues(Landroid/hardware/camera2/CaptureRequest$Key;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1227
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x3

    .line 1230
    new-array v0, v0, [Ljava/lang/String;

    .line 1234
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 1235
    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-nez v2, :cond_1

    return-object v1

    .line 1248
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v2, 0x2

    .line 1251
    :try_start_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    .line 1252
    invoke-virtual {v5, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 1254
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    goto :goto_0

    .line 1256
    :cond_2
    aget-object v5, v0, v4

    aput-object v5, v0, v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1265
    :catch_0
    aget-object v5, v0, v4

    aput-object v5, v0, v3

    .line 1268
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->isEnabledZsl()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1270
    :try_start_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    .line 1271
    invoke-virtual {v5, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 1273
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    goto :goto_1

    .line 1275
    :cond_3
    aget-object v5, v0, v4

    aput-object v5, v0, v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1284
    :catch_1
    aget-object v1, v0, v4

    aput-object v1, v0, v2

    .line 1285
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setEnabledZsl(Z)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 1281
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return-object v1

    :catch_3
    move-exception p0

    .line 1278
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-object v1

    .line 1288
    :cond_4
    aget-object p0, v0, v4

    aput-object p0, v0, v2

    :goto_1
    const-string p0, ""

    .line 1292
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "COLOR_CORRECTION_MODE"

    goto :goto_2

    .line 1294
    :cond_5
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "EDGE_MODE"

    goto :goto_2

    .line 1296
    :cond_6
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p0, "NOISE_REDUCTION_MODE"

    goto :goto_2

    .line 1298
    :cond_7
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p0, "SHADING_MODE"

    goto :goto_2

    .line 1300
    :cond_8
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p0, "TONEMAP_MODE"

    :cond_9
    :goto_2
    const-string p1, "MorphoCamera2"

    .line 1303
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "getImageQualitySettingsDefaultValues %s[PREVIEW] : %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v4

    aget-object v7, v0, v4

    aput-object v7, v6, v3

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MorphoCamera2"

    .line 1304
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "getImageQualitySettingsDefaultValues %s[STILL]   : %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v4

    aget-object v7, v0, v3

    aput-object v7, v6, v3

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MorphoCamera2"

    .line 1305
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "getImageQualitySettingsDefaultValues %s[ZSL]     : %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v4

    aget-object p0, v0, v2

    aput-object p0, v6, v3

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_4
    move-exception p0

    .line 1262
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return-object v1

    :catch_5
    move-exception p0

    .line 1259
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-object v1

    :catch_6
    return-object v1

    :catch_7
    move-exception p0

    .line 1243
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return-object v1

    :catch_8
    move-exception p0

    .line 1240
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public burstRemaining()I
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRemaining:I

    return p0
.end method

.method public calculateNewRequest(D)V
    .locals 9

    .line 640
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 641
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v2, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 642
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v2, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v2

    .line 650
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->evSteps()I

    move-result v3

    if-nez v3, :cond_1

    .line 653
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraInfo;->CAPTURE_GAIN_RANGE:Landroid/util/Range;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 655
    :cond_1
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraInfo;->CAPTURE_GAIN_RANGE:Landroid/util/Range;

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationStep()D

    move-result-wide v7

    mul-double/2addr v5, v7

    int-to-double v7, v3

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    mul-double/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 657
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v3, v1

    mul-double/2addr p1, v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    mul-double/2addr p1, v0

    .line 658
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->shutterSpeedInNanoSeconds()J

    move-result-wide v0

    .line 659
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    long-to-double v0, v0

    div-double v0, p1, v0

    double-to-int v0, v0

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->clampSensitivityRange(I)I

    move-result v0

    .line 660
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    int-to-double v3, v0

    div-double/2addr p1, v3

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->clampExposureTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/32 v3, 0xfe502a

    .line 662
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 666
    iput v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetSensorSensitivity:I

    .line 667
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetExposureTime:J

    .line 668
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->calculateSensorSensitivity(I)I

    move-result v0

    .line 669
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->calculateExposureTime(J)J

    move-result-wide p0

    .line 670
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->setSensorSensitivity(I)V

    .line 671
    invoke-virtual {v2, p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->setExposureTime(J)V

    return-void

    :cond_2
    :goto_1
    const-string p0, "MorphoCamera2"

    const-string p1, "SENSOR_SENSITIVITY or SENSOR_EXPOSURE_TIME is null."

    .line 645
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    return-object p0
.end method

.method public final cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    return-object p0
.end method

.method public canExitState()Z
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->canExit()Z

    move-result p0

    return p0
.end method

.method public cancelState()V
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onCancel()V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 118
    sget-object v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->nullMorphoCameraListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    return-void
.end method

.method public finishState()Z
    .locals 0

    .line 549
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onFinish()Z

    move-result p0

    return p0
.end method

.method public getAllCameras()[Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 198
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 202
    :goto_0
    :try_start_1
    array-length v7, v1

    const/4 v8, 0x1

    if-ge v3, v7, :cond_1

    .line 203
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    aget-object v9, v1, v3

    invoke-virtual {v7, v9}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 204
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    .line 206
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 208
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_1

    .line 214
    :pswitch_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Back %d"

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v0

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    goto :goto_2

    .line 211
    :pswitch_1
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Front %d"

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v0

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    goto :goto_2

    :goto_1
    const-string v9, "Other %d"

    .line 208
    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v0

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    goto :goto_2

    .line 218
    :cond_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Other %d"

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v0

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ne v4, v8, :cond_3

    move p0, v0

    .line 222
    :goto_3
    array-length v1, v2

    if-ge p0, v1, :cond_3

    .line 223
    aget-object v1, v2, p0

    const-string v3, "Other"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    aget-object v1, v2, p0

    const-string v3, " 1"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    if-ne v5, v8, :cond_5

    move p0, v0

    .line 229
    :goto_4
    array-length v1, v2

    if-ge p0, v1, :cond_5

    .line 230
    aget-object v1, v2, p0

    const-string v3, "Front"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    aget-object v1, v2, p0

    const-string v3, " 1"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, p0

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_5
    if-ne v6, v8, :cond_7

    .line 236
    :goto_5
    array-length p0, v2

    if-ge v0, p0, :cond_7

    .line 237
    aget-object p0, v2, v0

    const-string v1, "Back"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 238
    aget-object p0, v2, v0

    const-string v1, " 1"

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    move-object v2, v0

    .line 243
    :goto_6
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_7
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAvailableColorCorrectionMode()[Ljava/lang/String;
    .locals 1

    .line 936
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "FAST"

    const-string v0, "HIGH_QUALITY"

    .line 939
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableColorCorrectionModeValues()[Ljava/lang/String;
    .locals 4

    .line 947
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    .line 950
    new-array v0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 951
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 952
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    return-object v0
.end method

.method public getAvailableEdgeMode()[Ljava/lang/String;
    .locals 5

    .line 963
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 968
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 969
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    .line 971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 972
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v4, "HIGH_QUALITY"

    .line 981
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-string v4, "FAST"

    .line 978
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    const-string v4, "OFF"

    .line 975
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 992
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 995
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAvailableEdgeModeValues()[Ljava/lang/String;
    .locals 5

    .line 1002
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1007
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 1008
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    .line 1010
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 1018
    :pswitch_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1024
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1027
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAvailableNoiseReductionMode()[Ljava/lang/String;
    .locals 5

    .line 1039
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1044
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 1045
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    .line 1047
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v4, "HIGH_QUALITY"

    .line 1057
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-string v4, "FAST"

    .line 1054
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    const-string v4, "OFF"

    .line 1051
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1071
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1074
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAvailableNoiseReductionModeValues()[Ljava/lang/String;
    .locals 5

    .line 1081
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1086
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 1087
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    .line 1089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 1098
    :pswitch_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1104
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1107
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAvailableShadingMode()[Ljava/lang/String;
    .locals 1

    .line 1119
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "OFF"

    const-string v0, "FAST"

    .line 1122
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableShadingModeValues()[Ljava/lang/String;
    .locals 2

    .line 1130
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    .line 1133
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1134
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    .line 1135
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    return-object p0
.end method

.method public getAvailableTonemapMode()[Ljava/lang/String;
    .locals 5

    .line 1146
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1151
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 1152
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->TONEMAP_AVAILABLE_TONE_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    .line 1154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v4, "HIGH_QUALITY"

    .line 1161
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-string v4, "FAST"

    .line 1158
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1179
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1182
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAvailableTonemapModeValues()[Ljava/lang/String;
    .locals 5

    .line 1189
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1194
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 1195
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->TONEMAP_AVAILABLE_TONE_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2

    .line 1197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p0, v3

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 1207
    :pswitch_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1213
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1216
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getColorCorrectionModeDefaultValues()[Ljava/lang/String;
    .locals 1

    .line 958
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->getImageQualitySettingsDefaultValues(Landroid/hardware/camera2/CaptureRequest$Key;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEdgeModeDefaultValues()[Ljava/lang/String;
    .locals 1

    .line 1034
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->getImageQualitySettingsDefaultValues(Landroid/hardware/camera2/CaptureRequest$Key;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoiseReductionModeDefaultValues()[Ljava/lang/String;
    .locals 1

    .line 1114
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->getImageQualitySettingsDefaultValues(Landroid/hardware/camera2/CaptureRequest$Key;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShadingModeDefaultValues()[Ljava/lang/String;
    .locals 1

    .line 1141
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->getImageQualitySettingsDefaultValues(Landroid/hardware/camera2/CaptureRequest$Key;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedPreviewSizes()[I
    .locals 6

    .line 897
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->isCameraEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 898
    new-array p0, v1, [I

    return-object p0

    .line 902
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 903
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v0, :cond_1

    .line 905
    new-array p0, v1, [I

    return-object p0

    :cond_1
    const/16 v2, 0x23

    .line 907
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 908
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mSizeComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 910
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [I

    .line 912
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    add-int/lit8 v4, v2, 0x1

    .line 913
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    aput v5, p0, v2

    add-int/lit8 v2, v4, 0x1

    .line 914
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    aput v3, p0, v4
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    .line 918
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 919
    new-array p0, v1, [I

    return-object p0
.end method

.method public getTonemapModeDefaultValues()[Ljava/lang/String;
    .locals 1

    .line 1223
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->getImageQualitySettingsDefaultValues(Landroid/hardware/camera2/CaptureRequest$Key;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFrontCamera(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 252
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 253
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 254
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 256
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public openCamera(Landroid/view/TextureView;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->openCamera(Landroid/view/TextureView;Z)Z

    move-result p0

    return p0
.end method

.method public openCamera(Landroid/view/TextureView;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 442
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->prepareCamera(Landroid/view/TextureView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 443
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->openCamera(Z)Z

    move-result p1

    :cond_0
    return p1
.end method

.method public openCamera(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 417
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 422
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 424
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    if-eqz p1, :cond_1

    .line 427
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v5, Landroid/os/Handler;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->backgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, p1, v3, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception p1

    .line 433
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    return v1

    :cond_2
    :goto_1
    return v1
.end method

.method public pause()V
    .locals 4

    .line 123
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 124
    :try_start_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    .line 126
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setPreviewSurface(Landroid/view/Surface;)V

    .line 128
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 130
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 131
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 132
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v3, v1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 134
    :try_start_2
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 138
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->onCloseCamera()V

    .line 139
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 143
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReaderIdling:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReaderIdling:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 147
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReaderIdling:Landroid/media/ImageReader;

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setImageReader(Landroid/media/ImageReader;)V

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setImageReaderIdling(Landroid/media/ImageReader;)V

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 154
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 156
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setBackgroundHandlerThread(Landroid/os/HandlerThread;)V

    .line 157
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public prepareCamera(Landroid/view/TextureView;)Z
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->prepareCamera(Landroid/view/TextureView;Landroid/view/TextureView;)Z

    move-result p0

    return p0
.end method

.method public prepareCamera(Landroid/view/TextureView;Landroid/view/TextureView;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 268
    iput-object v2, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureView:Landroid/view/TextureView;

    move-object/from16 v2, p2

    .line 269
    iput-object v2, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureViewMini:Landroid/view/TextureView;

    .line 271
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v2

    .line 272
    iget-object v3, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 274
    :try_start_0
    iget-object v5, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 275
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 276
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v5, :cond_27

    if-nez v6, :cond_0

    goto/16 :goto_14

    .line 280
    :cond_0
    iget-object v7, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setHardwareLevel(I)V

    .line 281
    iget-object v5, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOrientation(I)V

    .line 282
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 283
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SizeF;

    .line 284
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    .line 285
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 287
    iget-object v9, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getHardwareLevel()I

    move-result v9

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v9, v12, :cond_8

    iget-object v9, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 288
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getHardwareLevel()I

    move-result v9

    if-eqz v9, :cond_8

    .line 289
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Range;

    .line 290
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 291
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Range;

    if-eqz v15, :cond_1

    .line 292
    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    const/16 v12, 0x320

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v4, v12}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v15

    .line 293
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v9, :cond_2

    .line 294
    iget-object v12, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v12, v10, v9}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setExposureTimeRange(Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_2
    if-eqz v14, :cond_3

    .line 295
    iget-object v9, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v9, v14}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setMaxFrameDuration(Ljava/lang/Long;)V

    :cond_3
    if-eqz v15, :cond_4

    .line 296
    iget-object v9, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v9, v10, v12}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setSensitivityRange(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 297
    iget-object v9, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v9, v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setMaxAnalogSensitivity(Ljava/lang/Integer;)V

    .line 299
    :cond_5
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    .line 300
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Rational;

    if-eqz v4, :cond_6

    .line 301
    iget-object v10, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v10, v12, v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setAeCompensationRange(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_6
    if-eqz v9, :cond_7

    .line 302
    iget-object v4, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v4, v9}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setAeCompensationStep(Landroid/util/Rational;)V

    .line 304
    :cond_7
    iput-boolean v13, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    .line 305
    iput-boolean v13, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_af_mode:Z

    .line 306
    iput-boolean v13, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_scene_mode_sports:Z

    .line 307
    iput-boolean v13, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_antibanding_mode:Z

    .line 308
    iput-boolean v13, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    goto/16 :goto_10

    .line 310
    :cond_8
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-eqz v4, :cond_b

    .line 314
    array-length v9, v4

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v10, v9, :cond_c

    aget v15, v4, v10

    if-ne v15, v13, :cond_9

    move/from16 v16, v13

    goto :goto_1

    :cond_9
    const/16 v16, 0x0

    :goto_1
    or-int v12, v12, v16

    if-nez v15, :cond_a

    move v15, v13

    goto :goto_2

    :cond_a
    const/4 v15, 0x0

    :goto_2
    or-int/2addr v14, v15

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_b
    const/4 v12, 0x0

    const/4 v14, 0x0

    :cond_c
    if-eqz v12, :cond_d

    if-eqz v14, :cond_d

    move v4, v13

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    .line 319
    :goto_3
    iput-boolean v4, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    .line 326
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-eqz v4, :cond_10

    .line 330
    array-length v9, v4

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v10, v9, :cond_11

    aget v15, v4, v10

    if-ne v15, v13, :cond_e

    move/from16 v16, v13

    goto :goto_5

    :cond_e
    const/16 v16, 0x0

    :goto_5
    or-int v12, v12, v16

    if-ne v15, v11, :cond_f

    move v15, v13

    goto :goto_6

    :cond_f
    const/4 v15, 0x0

    :goto_6
    or-int/2addr v14, v15

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_10
    const/4 v12, 0x0

    const/4 v14, 0x0

    :cond_11
    if-eqz v12, :cond_12

    if-eqz v14, :cond_12

    move v4, v13

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    .line 335
    :goto_7
    iput-boolean v4, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_af_mode:Z

    .line 337
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-eqz v4, :cond_14

    .line 340
    array-length v9, v4

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_8
    if-ge v10, v9, :cond_15

    aget v14, v4, v10

    const/16 v15, 0xd

    if-ne v14, v15, :cond_13

    move v14, v13

    goto :goto_9

    :cond_13
    const/4 v14, 0x0

    :goto_9
    or-int/2addr v12, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_14
    const/4 v12, 0x0

    .line 344
    :cond_15
    iput-boolean v12, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_scene_mode_sports:Z

    .line 346
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-eqz v4, :cond_1a

    .line 352
    array-length v9, v4

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_a
    if-ge v10, v9, :cond_1b

    aget v11, v4, v10

    if-nez v11, :cond_16

    move/from16 v17, v13

    goto :goto_b

    :cond_16
    const/16 v17, 0x0

    :goto_b
    or-int v12, v12, v17

    const/4 v13, 0x3

    if-ne v11, v13, :cond_17

    const/4 v13, 0x1

    goto :goto_c

    :cond_17
    const/4 v13, 0x0

    :goto_c
    or-int/2addr v14, v13

    const/4 v13, 0x1

    if-ne v11, v13, :cond_18

    const/4 v13, 0x1

    goto :goto_d

    :cond_18
    const/4 v13, 0x0

    :goto_d
    or-int/2addr v15, v13

    const/4 v13, 0x2

    if-ne v11, v13, :cond_19

    const/4 v11, 0x1

    goto :goto_e

    :cond_19
    const/4 v11, 0x0

    :goto_e
    or-int v16, v16, v11

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x4

    const/4 v13, 0x1

    goto :goto_a

    :cond_1a
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :cond_1b
    if-eqz v12, :cond_1c

    if-eqz v14, :cond_1c

    if-eqz v15, :cond_1c

    if-eqz v16, :cond_1c

    const/4 v4, 0x1

    goto :goto_f

    :cond_1c
    const/4 v4, 0x0

    .line 359
    :goto_f
    iput-boolean v4, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_antibanding_mode:Z

    const-string v4, "MorphoCamera2"

    .line 362
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "AVAILABLE AE_MODE(%s), AF_MODE(%s), SM_SPORTS(%s), ANTIBANDING_MODE(%s)"

    const/4 v11, 0x4

    new-array v12, v11, [Ljava/lang/Object;

    iget-boolean v11, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    .line 363
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    iget-boolean v11, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_af_mode:Z

    .line 364
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v12, v13

    iget-boolean v11, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_scene_mode_sports:Z

    .line 365
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v12, v13

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_antibanding_mode:Z

    .line 366
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x3

    aput-object v2, v12, v11

    .line 362
    invoke-static {v9, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_10
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/util/Range;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setTargetFpsRanges([Landroid/util/Range;)V

    const-string v2, "MorphoCamera2"

    const-string v4, "CameraCharacteristics ======= ========= =========="

    .line 371
    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MorphoCamera2"

    .line 372
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "INFO_SUPPORTED_HARDWARE_LEVEL=%d"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getHardwareLevel()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-static {v4, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MorphoCamera2"

    .line 373
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SENSOR_ORIENTATION=%d"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOrientation()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-static {v4, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_1f

    .line 378
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_11
    if-ge v4, v3, :cond_20

    aget v11, v2, v4

    const-string v12, "MorphoCamera2"

    .line 379
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "REQUEST_AVAILABLE_CAPABILITIES : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1d

    const/4 v9, 0x1

    :cond_1d
    const/4 v12, 0x7

    if-ne v11, v12, :cond_1e

    const/4 v10, 0x1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1f
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 388
    :cond_20
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    if-eqz v9, :cond_21

    if-eqz v10, :cond_21

    const/4 v3, 0x1

    goto :goto_12

    :cond_21
    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setEnabledZsl(Z)V

    const-string v2, "MorphoCamera2"

    const-string v3, "TARGET_FPS_RANGES"

    .line 390
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getTargetFpsRanges()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    const-string v4, "MorphoCamera2"

    .line 392
    invoke-virtual {v3}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_22
    const-string v2, "MorphoCamera2"

    .line 394
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "AE Step=%f (%d/%d), Range(%d, %d)"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationStep()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget-object v10, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 395
    invoke-virtual {v10}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationNumerator()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget-object v10, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationDenominator()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    iget-object v10, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 396
    invoke-virtual {v10}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationMin()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    iget-object v10, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationMax()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v9, v11

    .line 394
    invoke-static {v3, v4, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MorphoCamera2"

    const-string v3, "========= ========= ========= ========= =========="

    .line 397
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_23

    .line 399
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    const/4 v3, 0x0

    aget v4, v5, v3

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setFocalLength(F)V

    :cond_23
    if-eqz v6, :cond_24

    .line 400
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v6}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    invoke-virtual {v6}, Landroid/util/SizeF;->getHeight()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setPhysicalSize(FF)V

    :cond_24
    if-eqz v7, :cond_25

    .line 401
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setPixelArraySize(II)V

    :cond_25
    if-eqz v8, :cond_26

    .line 402
    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    iget v2, v8, Landroid/graphics/Rect;->left:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, v8, Landroid/graphics/Rect;->right:I

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setActiveArraySize(IIII)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_26
    const/4 v1, 0x1

    return v1

    :cond_27
    :goto_14
    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 409
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public resume(Landroid/util/Size;Landroid/util/Size;)V
    .locals 5

    .line 162
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setCaptureSize(II)V

    .line 164
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setPreviewSize(II)V

    .line 166
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "BackgroundHandlerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 167
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 168
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setBackgroundHandlerThread(Landroid/os/HandlerThread;)V

    .line 171
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p1

    .line 172
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 173
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result p2

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v1

    const/4 v2, 0x3

    const/16 v3, 0x23

    .line 172
    invoke-static {p2, v1, v3, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    .line 175
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p2, v1, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    const/16 p2, 0x140

    int-to-float v1, p2

    .line 177
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    and-int/lit8 v1, v1, -0x2

    .line 179
    invoke-static {p2, v1, v3, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReaderIdling:Landroid/media/ImageReader;

    .line 180
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReaderIdling:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p2, v1, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 182
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setCameraInfo(Lcom/sonyericsson/android/camera3d/CameraInfo;)V

    .line 183
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 184
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setImageReader(Landroid/media/ImageReader;)V

    .line 185
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReaderIdling:Landroid/media/ImageReader;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setImageReaderIdling(Landroid/media/ImageReader;)V

    .line 186
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setOnPreviewImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;)V

    .line 187
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTakePictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setOnTakePictureImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;)V

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    .line 190
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBurstRemaining(I)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setBurstRemaining(I)V

    return-void
.end method

.method public setCamera2Params(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setCamera2Params(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)V

    return-void
.end method

.method public setDefaultCameraState()V
    .locals 1

    .line 564
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    return-void
.end method

.method public setMorphoPanoramaGP2Interface(Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setMorphoPanoramaGP2Interface(Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;)V

    return-void
.end method

.method public startState()V
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onStart()V

    return-void
.end method

.method public startTakePictureNewRequest(I)Z
    .locals 10

    .line 675
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 676
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->currentRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 677
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->currentBurstRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 678
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v3

    .line 679
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 680
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 682
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v4

    .line 683
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v6

    .line 684
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->frameDuration()Ljava/lang/Long;

    move-result-object v3

    .line 686
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 687
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v7, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 688
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v7, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eq p1, v8, :cond_0

    const/4 v8, 0x4

    if-ne p1, v8, :cond_1

    .line 690
    :cond_0
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 691
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 692
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 693
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 694
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 695
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 696
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v3, v5

    :goto_0
    if-ge v3, v7, :cond_1

    .line 699
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 704
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->backgroundHandler()Landroid/os/Handler;

    move-result-object v2

    .line 705
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 706
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    .line 707
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    .line 710
    :try_start_1
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    goto :goto_1

    .line 716
    :pswitch_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 717
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, p1, p0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_2

    .line 720
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setBurstRemaining(I)V

    .line 721
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, p1, p0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_2

    .line 724
    :pswitch_2
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, p1, p0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_2

    .line 713
    :pswitch_3
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, p1, p0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_2

    .line 710
    :goto_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, p1, p0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 727
    :goto_2
    monitor-exit v3

    return v7

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 729
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTakePictureState()V
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onTakePictureStart()V

    return-void
.end method

.method public stopState()V
    .locals 0

    .line 544
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onStop()V

    return-void
.end method

.method public takePicture()Z
    .locals 4

    .line 454
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 456
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v2, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 458
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v1
.end method

.method public takePictureBurst()Z
    .locals 4

    .line 466
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 468
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    const/16 v2, 0x258

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setBurstRemaining(I)V

    const-string v0, "MorphoCamera2"

    const-string v2, "captureBurst"

    .line 469
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v2, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 472
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v1
.end method

.method public takePictureZSL()Z
    .locals 5

    .line 480
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 483
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 484
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 485
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 487
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 488
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 489
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 514
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v2, v0, v4, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    .line 516
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v1
.end method

.method public updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V
    .locals 1

    .line 524
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    if-eqz v0, :cond_0

    .line 525
    check-cast p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    goto :goto_0

    :cond_0
    const-string p1, "MorphoCamera2"

    const-string v0, "#updateCameraState, argument is invalid."

    .line 527
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->setDefaultCameraState()V

    :goto_0
    return-void
.end method

.method public updateTvValue()V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetSensorSensitivity:I

    .line 635
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetExposureTime:J

    return-void
.end method
