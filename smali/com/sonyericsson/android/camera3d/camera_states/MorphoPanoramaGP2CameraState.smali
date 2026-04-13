.class public Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;
.super Lcom/sonyericsson/android/camera3d/camera_states/CameraState;
.source "MorphoPanoramaGP2CameraState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MorphoCamera2State"

.field private static cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

.field private static final mTvBuf:[D

.field private static mTvBufIndex:I

.field static final nullGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    .line 86
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->nullGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    const/16 v0, 0x8

    .line 263
    new-array v0, v0, [D

    sput-object v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->mTvBuf:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;-><init>()V

    return-void
.end method

.method static getSmoothenedEv(D)D
    .locals 5

    .line 266
    sget-object v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->mTvBuf:[D

    sget v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->mTvBufIndex:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->mTvBufIndex:I

    and-int/lit8 v1, v1, 0x7

    aput-wide p0, v0, v1

    const-wide/16 p0, 0x0

    const/4 v0, 0x3

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    int-to-double v1, v0

    .line 270
    sget-object v3, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->mTvBuf:[D

    sget v4, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->mTvBufIndex:I

    add-int/2addr v4, v0

    and-int/lit8 v4, v4, 0x7

    aget-wide v3, v3, v4

    mul-double/2addr v1, v3

    add-double/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static initialize(I)V
    .locals 1

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    return-void
.end method

.method static safeImageClose(Landroid/media/Image;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_0
    return-void
.end method

.method static setupFocusModeInfinity(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 291
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 292
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 293
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public backgroundHandler()Landroid/os/Handler;
    .locals 0

    .line 287
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->backgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;
    .locals 0

    .line 283
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->camera2Params:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    return-object p0
.end method

.method public getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;
    .locals 0

    .line 83
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    return-object p0
.end method

.method public setBackgroundHandlerThread(Landroid/os/HandlerThread;)V
    .locals 0

    .line 236
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->backgroundHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public setBurstRemaining(I)V
    .locals 0

    .line 260
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iput p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRemaining:I

    return-void
.end method

.method public setCamera2Params(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)V
    .locals 0

    .line 211
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->camera2Params:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    return-void
.end method

.method public setCameraInfo(Lcom/sonyericsson/android/camera3d/CameraInfo;)V
    .locals 0

    .line 215
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    return-void
.end method

.method public setCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    .locals 0

    .line 240
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method public setImageReader(Landroid/media/ImageReader;)V
    .locals 0

    .line 244
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public setImageReaderIdling(Landroid/media/ImageReader;)V
    .locals 0

    .line 248
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReaderIdling:Landroid/media/ImageReader;

    return-void
.end method

.method public setMiniPreviewSurface(Landroid/view/Surface;)V
    .locals 0

    .line 232
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->miniPreviewSurface:Landroid/view/Surface;

    return-void
.end method

.method public setMorphoPanoramaGP2Interface(Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;)V
    .locals 0

    if-nez p1, :cond_0

    .line 220
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    sget-object p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->nullGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    return-void

    .line 223
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    return-void
.end method

.method public setOnPreviewImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;)V
    .locals 0

    .line 252
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->previewAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-void
.end method

.method public setOnTakePictureImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;)V
    .locals 0

    .line 256
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->takePictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 0

    .line 228
    sget-object p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->cameraStartup:Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->previewSurface:Landroid/view/Surface;

    return-void
.end method
