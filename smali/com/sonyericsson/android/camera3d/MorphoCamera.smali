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

.field private mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

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

    .line 109
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureView:Landroid/view/TextureView;

    .line 65
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureViewMini:Landroid/view/TextureView;

    .line 71
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 595
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$2;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 635
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTakePictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 797
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 879
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$5;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 900
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$6;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 957
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$7;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mSizeComparator:Ljava/util/Comparator;

    .line 110
    const-string v0, "camera"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 111
    new-instance p2, Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-direct {p2}, Lcom/sonyericsson/android/camera3d/CameraInfo;-><init>()V

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 112
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setCameraId(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 115
    sget-object p1, Lcom/sonyericsson/android/camera3d/MorphoCamera;->nullMorphoCameraListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    .line 119
    new-instance p1, Lcom/sonyericsson/android/camera3d/MorphoCamera$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera$1;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 131
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    .line 132
    invoke-static {p4}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->initialize(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera3d/MorphoCamera;Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/media/ImageReader;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$702(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureViewMini:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurfaceMini:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$902(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurfaceMini:Landroid/view/Surface;

    return-object p1
.end method

.method private calculateExposureTime(J)J
    .locals 7

    .line 784
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 786
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long/2addr p1, v3

    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetExposureTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    goto :goto_0

    .line 787
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    const-wide/32 v5, -0x7a120

    cmp-long v1, v1, v5

    if-gez v1, :cond_1

    .line 788
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

    .line 769
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v1

    sub-int v1, p1, v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 771
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result p1

    add-int/2addr p1, v2

    iget p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetSensorSensitivity:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 772
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v1

    sub-int v1, p1, v1

    const/4 v3, -0x5

    if-ge v1, v3, :cond_1

    .line 773
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x3

    .line 1264
    new-array v0, v0, [Ljava/lang/String;

    .line 1268
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 1269
    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-nez v2, :cond_1

    return-object v1

    .line 1282
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v2, 0x2

    .line 1285
    :try_start_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    .line 1286
    invoke-virtual {v5, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 1288
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    goto :goto_0

    .line 1290
    :cond_2
    aget-object v5, v0, v4

    aput-object v5, v0, v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1299
    :catch_0
    aget-object v5, v0, v4

    aput-object v5, v0, v3

    .line 1302
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->isEnabledZsl()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1304
    :try_start_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    .line 1305
    invoke-virtual {v5, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 1307
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    goto :goto_1

    .line 1309
    :cond_3
    aget-object v5, v0, v4

    aput-object v5, v0, v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1318
    :catch_1
    aget-object v1, v0, v4

    aput-object v1, v0, v2

    .line 1319
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setEnabledZsl(Z)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 1315
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return-object v1

    :catch_3
    move-exception p0

    .line 1312
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-object v1

    .line 1322
    :cond_4
    aget-object p0, v0, v4

    aput-object p0, v0, v2

    .line 1326
    :goto_1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1327
    const-string p0, "COLOR_CORRECTION_MODE"

    goto :goto_2

    .line 1328
    :cond_5
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1329
    const-string p0, "EDGE_MODE"

    goto :goto_2

    .line 1330
    :cond_6
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1331
    const-string p0, "NOISE_REDUCTION_MODE"

    goto :goto_2

    .line 1332
    :cond_7
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1333
    const-string p0, "SHADING_MODE"

    goto :goto_2

    .line 1334
    :cond_8
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1335
    const-string p0, "TONEMAP_MODE"

    goto :goto_2

    .line 1334
    :cond_9
    const-string p0, ""

    .line 1337
    :goto_2
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget-object v1, v0, v4

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "getImageQualitySettingsDefaultValues %s[PREVIEW] : %s"

    invoke-static {p1, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MorphoCamera2"

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget-object v3, v0, v3

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getImageQualitySettingsDefaultValues %s[STILL]   : %s"

    invoke-static {p1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget-object v2, v0, v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "getImageQualitySettingsDefaultValues %s[ZSL]     : %s"

    invoke-static {p1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_4
    move-exception p0

    .line 1296
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return-object v1

    :catch_5
    move-exception p0

    .line 1293
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :catch_6
    return-object v1

    :catch_7
    move-exception p0

    .line 1277
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return-object v1

    :catch_8
    move-exception p0

    .line 1274
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-object v1
.end method

.method private tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1354
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1356
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "tryGetCharacteristics: Unknown key: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MorphoCamera2"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public burstRemaining()I
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRemaining:I

    return p0
.end method

.method public calculateNewRequest(D)V
    .locals 9

    .line 668
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 669
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v2, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 670
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v2, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 677
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v2

    .line 678
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->evSteps()I

    move-result v3

    if-nez v3, :cond_1

    .line 681
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraInfo;->CAPTURE_GAIN_RANGE:Landroid/util/Range;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 683
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

    .line 685
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v3, v1

    mul-double/2addr p1, v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    mul-double/2addr p1, v0

    .line 686
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->shutterSpeedInNanoSeconds()J

    move-result-wide v0

    .line 687
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    long-to-double v0, v0

    div-double v0, p1, v0

    double-to-int v0, v0

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->clampSensitivityRange(I)I

    move-result v0

    .line 688
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

    .line 690
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 694
    iput v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetSensorSensitivity:I

    .line 695
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetExposureTime:J

    .line 696
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->calculateSensorSensitivity(I)I

    move-result v0

    .line 697
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->calculateExposureTime(J)J

    move-result-wide p0

    .line 698
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->setSensorSensitivity(I)V

    .line 699
    invoke-virtual {v2, p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->setExposureTime(J)V

    return-void

    .line 673
    :cond_2
    :goto_1
    const-string p0, "MorphoCamera2"

    const-string p1, "SENSOR_SENSITIVITY or SENSOR_EXPOSURE_TIME is null."

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    return-object p0
.end method

.method public final cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    return-object p0
.end method

.method public canExitState()Z
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->canExit()Z

    move-result p0

    return p0
.end method

.method public cancelState()V
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onCancel()V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 137
    sget-object v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->nullMorphoCameraListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureSessionCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public finishState()Z
    .locals 0

    .line 577
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onFinish()Z

    move-result p0

    return p0
.end method

.method public getAllCameras()[Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 222
    array-length v2, v1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 226
    :goto_0
    array-length v8, v1

    const/4 v9, 0x1

    if-ge v4, v8, :cond_3

    .line 227
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    aget-object v10, v1, v4

    invoke-virtual {v8, v10}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    .line 228
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    const-string v10, "Other %d"

    if-eqz v8, :cond_2

    .line 230
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_1

    if-eq v8, v9, :cond_0

    .line 232
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v3

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v4

    goto :goto_1

    .line 238
    :cond_0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Back %d"

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v3

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v4

    goto :goto_1

    .line 235
    :cond_1
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Front %d"

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v3

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v4

    goto :goto_1

    .line 242
    :cond_2
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v3

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v4
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    :cond_3
    const-string p0, ""

    const-string v1, " 1"

    if-ne v5, v9, :cond_5

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_5

    .line 247
    :try_start_2
    aget-object v5, v0, v4

    const-string v8, "Other"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 248
    aget-object v5, v0, v4

    invoke-virtual {v5, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-ne v6, v9, :cond_7

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_7

    .line 254
    aget-object v5, v0, v4

    const-string v6, "Front"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 255
    aget-object v5, v0, v4

    invoke-virtual {v5, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    if-ne v7, v9, :cond_9

    :goto_4
    if-ge v3, v2, :cond_9

    .line 261
    aget-object v4, v0, v3

    const-string v5, "Back"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 262
    aget-object v4, v0, v3

    invoke-virtual {v4, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_0
    move-exception p0

    .line 267
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_9
    return-object v0
.end method

.method public getAvailableColorCorrectionMode()[Ljava/lang/String;
    .locals 1

    .line 970
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 974
    :cond_0
    const-string p0, "FAST"

    .line 975
    const-string v0, "HIGH_QUALITY"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableColorCorrectionModeValues()[Ljava/lang/String;
    .locals 1

    .line 981
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    .line 985
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 986
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableEdgeMode()[Ljava/lang/String;
    .locals 6

    .line 997
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1002
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 1003
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_5

    .line 1005
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, p0, v3

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 1015
    :cond_1
    const-string v4, "HIGH_QUALITY"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1012
    :cond_2
    const-string v4, "FAST"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1009
    :cond_3
    const-string v4, "OFF"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1026
    :cond_4
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

    .line 1029
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_5
    :goto_2
    return-object v1
.end method

.method public getAvailableEdgeModeValues()[Ljava/lang/String;
    .locals 6

    .line 1036
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1041
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 1042
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_3

    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p0, v3

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 1052
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1058
    :cond_2
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

    .line 1061
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v1
.end method

.method public getAvailableNoiseReductionMode()[Ljava/lang/String;
    .locals 6

    .line 1073
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1078
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 1079
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_5

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, p0, v3

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 1091
    :cond_1
    const-string v4, "HIGH_QUALITY"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1088
    :cond_2
    const-string v4, "FAST"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1085
    :cond_3
    const-string v4, "OFF"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1105
    :cond_4
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

    .line 1108
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_5
    :goto_2
    return-object v1
.end method

.method public getAvailableNoiseReductionModeValues()[Ljava/lang/String;
    .locals 6

    .line 1115
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1120
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 1121
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_3

    .line 1123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p0, v3

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 1132
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1138
    :cond_2
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

    .line 1141
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v1
.end method

.method public getAvailableShadingMode()[Ljava/lang/String;
    .locals 1

    .line 1153
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1157
    :cond_0
    const-string p0, "OFF"

    .line 1158
    const-string v0, "FAST"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableShadingModeValues()[Ljava/lang/String;
    .locals 1

    .line 1164
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 1168
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 1169
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableTonemapMode()[Ljava/lang/String;
    .locals 6

    .line 1180
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1185
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 1186
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->TONEMAP_AVAILABLE_TONE_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_4

    .line 1188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, p0, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 1195
    :cond_1
    const-string v4, "HIGH_QUALITY"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1192
    :cond_2
    const-string v4, "FAST"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1213
    :cond_3
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

    :cond_4
    :goto_2
    return-object v1
.end method

.method public getAvailableTonemapModeValues()[Ljava/lang/String;
    .locals 6

    .line 1223
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1228
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 1229
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->TONEMAP_AVAILABLE_TONE_MAP_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_3

    .line 1231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p0, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 1241
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1247
    :cond_2
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

    .line 1250
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v1
.end method

.method public getColorCorrectionModeDefaultValues()[Ljava/lang/String;
    .locals 1

    .line 992
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->getImageQualitySettingsDefaultValues(Landroid/hardware/camera2/CaptureRequest$Key;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEdgeModeDefaultValues()[Ljava/lang/String;
    .locals 1

    .line 1068
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->getImageQualitySettingsDefaultValues(Landroid/hardware/camera2/CaptureRequest$Key;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoiseReductionModeDefaultValues()[Ljava/lang/String;
    .locals 1

    .line 1148
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->getImageQualitySettingsDefaultValues(Landroid/hardware/camera2/CaptureRequest$Key;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShadingModeDefaultValues()[Ljava/lang/String;
    .locals 1

    .line 1175
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->getImageQualitySettingsDefaultValues(Landroid/hardware/camera2/CaptureRequest$Key;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedPreviewSizes()[I
    .locals 6

    .line 931
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->isCameraEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 932
    new-array p0, v1, [I

    return-object p0

    .line 936
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 937
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v0, :cond_1

    .line 939
    new-array p0, v1, [I

    return-object p0

    :cond_1
    const/16 v2, 0x23

    .line 941
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 942
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mSizeComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 944
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [I

    .line 946
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

    .line 947
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    aput v5, p0, v2

    add-int/lit8 v2, v2, 0x2

    .line 948
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

    .line 952
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 953
    new-array p0, v1, [I

    return-object p0
.end method

.method public getTonemapModeDefaultValues()[Ljava/lang/String;
    .locals 1

    .line 1257
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

    .line 276
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 277
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 278
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

    .line 280
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

    .line 477
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

    .line 470
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->prepareCamera(Landroid/view/TextureView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 471
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

    .line 445
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 450
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 452
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    if-eqz p1, :cond_1

    .line 455
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

    .line 457
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

    .line 461
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    :cond_2
    :goto_1
    return v1
.end method

.method public pause()V
    .locals 4

    .line 147
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 148
    :try_start_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setPreviewSurface(Landroid/view/Surface;)V

    .line 152
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 155
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 156
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

    .line 158
    :try_start_2
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 162
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->onCloseCamera()V

    .line 163
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 167
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReaderIdling:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 171
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReaderIdling:Landroid/media/ImageReader;

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setImageReader(Landroid/media/ImageReader;)V

    .line 174
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setImageReaderIdling(Landroid/media/ImageReader;)V

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    .line 177
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 178
    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 180
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setBackgroundHandlerThread(Landroid/os/HandlerThread;)V

    .line 181
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

    .line 287
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->prepareCamera(Landroid/view/TextureView;Landroid/view/TextureView;)Z

    move-result p0

    return p0
.end method

.method public prepareCamera(Landroid/view/TextureView;Landroid/view/TextureView;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 292
    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureView:Landroid/view/TextureView;

    move-object/from16 v1, p2

    .line 293
    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTextureViewMini:Landroid/view/TextureView;

    .line 295
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v1

    .line 296
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 298
    :try_start_0
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 299
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 300
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v4, :cond_28

    if-nez v5, :cond_0

    goto/16 :goto_15

    .line 304
    :cond_0
    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setHardwareLevel(I)V

    .line 305
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOrientation(I)V

    .line 306
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 307
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SizeF;

    .line 308
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    .line 309
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 311
    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getHardwareLevel()I

    move-result v8
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    const/4 v11, 0x2

    const-string v12, "MorphoCamera2"

    const/4 v13, 0x1

    if-eq v8, v11, :cond_8

    :try_start_1
    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 312
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getHardwareLevel()I

    move-result v8

    if-eqz v8, :cond_8

    .line 313
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Range;

    .line 314
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_MAX_FRAME_DURATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 315
    sget-object v15, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v15}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Range;

    if-eqz v15, :cond_1

    .line 316
    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/Integer;

    const/16 v16, 0x320

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v3, v11}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v15

    .line 317
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v8, :cond_2

    .line 318
    iget-object v11, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v11, v9, v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setExposureTimeRange(Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_2
    if-eqz v14, :cond_3

    .line 319
    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v8, v14}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setMaxFrameDuration(Ljava/lang/Long;)V

    :cond_3
    if-eqz v15, :cond_4

    .line 320
    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v8, v9, v11}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setSensitivityRange(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 321
    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v8, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setMaxAnalogSensitivity(Ljava/lang/Integer;)V

    .line 323
    :cond_5
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 324
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Rational;

    if-eqz v3, :cond_6

    .line 325
    iget-object v9, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v9, v11, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setAeCompensationRange(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_6
    if-eqz v8, :cond_7

    .line 326
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v3, v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setAeCompensationStep(Landroid/util/Rational;)V

    .line 328
    :cond_7
    iput-boolean v13, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    .line 329
    iput-boolean v13, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_af_mode:Z

    .line 330
    iput-boolean v13, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_scene_mode_sports:Z

    .line 331
    iput-boolean v13, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_antibanding_mode:Z

    .line 332
    iput-boolean v13, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    goto/16 :goto_10

    .line 334
    :cond_8
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-eqz v3, :cond_b

    .line 338
    array-length v8, v3

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v9, v8, :cond_c

    aget v15, v3, v9

    if-ne v15, v13, :cond_9

    move/from16 v16, v13

    goto :goto_1

    :cond_9
    const/16 v16, 0x0

    :goto_1
    or-int v11, v11, v16

    if-nez v15, :cond_a

    move v15, v13

    goto :goto_2

    :cond_a
    const/4 v15, 0x0

    :goto_2
    or-int/2addr v14, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_b
    const/4 v11, 0x0

    const/4 v14, 0x0

    :cond_c
    if-eqz v11, :cond_d

    if-eqz v14, :cond_d

    move v3, v13

    goto :goto_3

    :cond_d
    const/4 v3, 0x0

    .line 343
    :goto_3
    iput-boolean v3, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    .line 350
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-eqz v3, :cond_10

    .line 354
    array-length v8, v3

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v9, v8, :cond_11

    aget v15, v3, v9

    if-ne v15, v13, :cond_e

    move/from16 v16, v13

    goto :goto_5

    :cond_e
    const/16 v16, 0x0

    :goto_5
    or-int v14, v14, v16

    if-ne v15, v10, :cond_f

    move v15, v13

    goto :goto_6

    :cond_f
    const/4 v15, 0x0

    :goto_6
    or-int/2addr v11, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_10
    const/4 v11, 0x0

    const/4 v14, 0x0

    :cond_11
    if-eqz v14, :cond_12

    if-eqz v11, :cond_12

    move v3, v13

    goto :goto_7

    :cond_12
    const/4 v3, 0x0

    .line 359
    :goto_7
    iput-boolean v3, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_af_mode:Z

    .line 361
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-eqz v3, :cond_14

    .line 364
    array-length v8, v3

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_8
    if-ge v9, v8, :cond_15

    aget v14, v3, v9

    const/16 v15, 0xd

    if-ne v14, v15, :cond_13

    move v14, v13

    goto :goto_9

    :cond_13
    const/4 v14, 0x0

    :goto_9
    or-int/2addr v11, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_14
    const/4 v11, 0x0

    .line 368
    :cond_15
    iput-boolean v11, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_scene_mode_sports:Z

    .line 370
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-eqz v3, :cond_1a

    .line 376
    array-length v8, v3

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_a
    if-ge v9, v8, :cond_1b

    aget v10, v3, v9

    if-nez v10, :cond_16

    move/from16 v17, v13

    goto :goto_b

    :cond_16
    const/16 v17, 0x0

    :goto_b
    or-int v11, v11, v17

    const/4 v13, 0x3

    if-ne v10, v13, :cond_17

    const/4 v13, 0x1

    goto :goto_c

    :cond_17
    const/4 v13, 0x0

    :goto_c
    or-int/2addr v14, v13

    const/4 v13, 0x1

    if-ne v10, v13, :cond_18

    const/4 v13, 0x1

    goto :goto_d

    :cond_18
    const/4 v13, 0x0

    :goto_d
    or-int/2addr v15, v13

    const/4 v13, 0x2

    if-ne v10, v13, :cond_19

    const/4 v10, 0x1

    goto :goto_e

    :cond_19
    const/4 v10, 0x0

    :goto_e
    or-int v16, v16, v10

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x4

    const/4 v13, 0x1

    goto :goto_a

    :cond_1a
    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :cond_1b
    if-eqz v11, :cond_1c

    if-eqz v14, :cond_1c

    if-eqz v15, :cond_1c

    if-eqz v16, :cond_1c

    const/4 v3, 0x1

    goto :goto_f

    :cond_1c
    const/4 v3, 0x0

    .line 383
    :goto_f
    iput-boolean v3, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_antibanding_mode:Z

    .line 386
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "AVAILABLE AE_MODE(%s), AF_MODE(%s), SM_SPORTS(%s), ANTIBANDING_MODE(%s)"

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Object;

    iget-boolean v9, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    .line 387
    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    iget-boolean v9, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_af_mode:Z

    .line 388
    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v10, v11

    iget-boolean v9, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_scene_mode_sports:Z

    .line 389
    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v10, v11

    iget-boolean v9, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_antibanding_mode:Z

    .line 390
    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v10, v11

    .line 386
    invoke-static {v3, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_10
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/util/Range;

    invoke-virtual {v3, v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setTargetFpsRanges([Landroid/util/Range;)V

    .line 395
    sget-object v3, Lcom/sonyericsson/android/camera3d/device/SomcCameraCharacteristicsKeys;->SONYMOBILE_LOGICAL_MULTI_CAMERA_AVAILABLE_FALLBACK_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v0, v2, v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->tryGetCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-eqz v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_11

    :cond_1d
    const/4 v3, 0x0

    .line 397
    :goto_11
    iput-boolean v3, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_fallback_mode:Z

    .line 399
    const-string v1, "CameraCharacteristics ======= ========= =========="

    invoke-static {v12, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "INFO_SUPPORTED_HARDWARE_LEVEL=%d"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getHardwareLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-static {v1, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SENSOR_ORIENTATION=%d"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOrientation()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-static {v1, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_20

    .line 406
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_12
    if-ge v3, v2, :cond_21

    aget v10, v1, v3

    .line 407
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "REQUEST_AVAILABLE_CAPABILITIES : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1e

    const/4 v8, 0x1

    :cond_1e
    const/4 v11, 0x7

    if-ne v10, v11, :cond_1f

    const/4 v9, 0x1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_20
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 416
    :cond_21
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    if-eqz v8, :cond_22

    if-eqz v9, :cond_22

    const/4 v2, 0x1

    goto :goto_13

    :cond_22
    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setEnabledZsl(Z)V

    .line 418
    const-string v1, "TARGET_FPS_RANGES"

    invoke-static {v12, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getTargetFpsRanges()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 420
    invoke-virtual {v2}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 422
    :cond_23
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "AE Step=%f (%d/%d), Range(%d, %d)"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationStep()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9

    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 423
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationNumerator()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v3, v9

    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationDenominator()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v3, v9

    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 424
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationMin()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v3, v9

    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationMax()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v3, v9

    .line 422
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v1, "========= ========= ========= ========= =========="

    invoke-static {v12, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_24

    .line 427
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    const/4 v2, 0x0

    aget v3, v4, v2

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setFocalLength(F)V

    :cond_24
    if-eqz v5, :cond_25

    .line 428
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-virtual {v5}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setPhysicalSize(FF)V

    :cond_25
    if-eqz v6, :cond_26

    .line 429
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setPixelArraySize(II)V

    :cond_26
    if-eqz v7, :cond_27

    .line 430
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setActiveArraySize(IIII)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_27
    const/4 v0, 0x1

    return v0

    :cond_28
    :goto_15
    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public resume(Landroid/util/Size;Landroid/util/Size;)V
    .locals 5

    .line 186
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setCaptureSize(II)V

    .line 188
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setPreviewSize(II)V

    .line 190
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "BackgroundHandlerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 191
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 192
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setBackgroundHandlerThread(Landroid/os/HandlerThread;)V

    .line 195
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p1

    .line 196
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 197
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result p2

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v1

    const/4 v2, 0x3

    const/16 v3, 0x23

    .line 196
    invoke-static {p2, v1, v3, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p2, v1, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    const/16 p2, 0x140

    int-to-float v1, p2

    .line 201
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

    .line 203
    invoke-static {p2, v1, v3, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReaderIdling:Landroid/media/ImageReader;

    .line 204
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p2, v1, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 206
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setCameraInfo(Lcom/sonyericsson/android/camera3d/CameraInfo;)V

    .line 207
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    .line 208
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setImageReader(Landroid/media/ImageReader;)V

    .line 209
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReaderIdling:Landroid/media/ImageReader;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setImageReaderIdling(Landroid/media/ImageReader;)V

    .line 210
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setOnPreviewImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;)V

    .line 211
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTakePictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setOnTakePictureImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;)V

    const/4 p1, 0x1

    .line 213
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    .line 214
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

    .line 97
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setBurstRemaining(I)V

    return-void
.end method

.method public setCamera2Params(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setCamera2Params(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)V

    return-void
.end method

.method public setDefaultCameraState()V
    .locals 1

    .line 592
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    return-void
.end method

.method public setMorphoPanoramaGP2Interface(Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setMorphoPanoramaGP2Interface(Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;)V

    return-void
.end method

.method public startState()V
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onStart()V

    return-void
.end method

.method public startTakePictureNewRequest(I)Z
    .locals 11

    .line 703
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 704
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->currentRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 705
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->currentBurstRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 706
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v3

    .line 707
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 708
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 710
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v4

    .line 711
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v7

    .line 712
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->frameDuration()Ljava/lang/Long;

    move-result-object v3

    .line 714
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 715
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v8, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 716
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v8, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq p1, v9, :cond_0

    if-ne p1, v8, :cond_1

    .line 718
    :cond_0
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v10, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 719
    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v10, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 720
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 721
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 722
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 723
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 724
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 727
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->backgroundHandler()Landroid/os/Handler;

    move-result-object v2

    .line 733
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 734
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    .line 735
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v6, 0x2

    if-eq p1, v6, :cond_4

    if-eq p1, v9, :cond_3

    if-eq p1, v8, :cond_2

    .line 738
    :try_start_1
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, p1, p0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 744
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 745
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, p1, p0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 748
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setBurstRemaining(I)V

    .line 749
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, p1, p0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 752
    :cond_4
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, p1, p0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 741
    :cond_5
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, p1, p0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 755
    :goto_0
    monitor-exit v3

    return v4

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

    .line 757
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v5
.end method

.method public startTakePictureState()V
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onTakePictureStart()V

    return-void
.end method

.method public stopState()V
    .locals 0

    .line 572
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onStop()V

    return-void
.end method

.method public takePicture()Z
    .locals 4

    .line 482
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 484
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

    .line 486
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v1
.end method

.method public takePictureBurst()Z
    .locals 4

    .line 494
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 496
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    const/16 v2, 0x258

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setBurstRemaining(I)V

    .line 497
    const-string v0, "MorphoCamera2"

    const-string v2, "captureBurst"

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
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

    .line 500
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v1
.end method

.method public takePictureZSL()Z
    .locals 5

    .line 508
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mIsAvailable:Z

    const/4 v1, 0x0

    .line 515
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_0

    return v1

    .line 511
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 512
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 513
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 515
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 516
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 517
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 542
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

    .line 544
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v1
.end method

.method public updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V
    .locals 1

    .line 552
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    if-eqz v0, :cond_0

    .line 553
    check-cast p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    goto :goto_0

    .line 555
    :cond_0
    const-string p1, "MorphoCamera2"

    const-string v0, "#updateCameraState, argument is invalid."

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->setDefaultCameraState()V

    :goto_0
    return-void
.end method

.method public updateTvValue()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetSensorSensitivity:I

    .line 663
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera;->mTvTargetExposureTime:J

    return-void
.end method
