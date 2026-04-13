.class public Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;
.super Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;
.source "PreviewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;
    }
.end annotation


# static fields
.field private static final mNullCaptureCompletedWrapper:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;


# instance fields
.field private mCaptureCompleted:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

.field private final mContinuousTv:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

.field private final mRestartAuto:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mNullCaptureCompletedWrapper:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;-><init>()V

    .line 48
    sget-object v0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mNullCaptureCompletedWrapper:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mCaptureCompleted:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$2;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mRestartAuto:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$3;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mContinuousTv:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;)Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mCaptureCompleted:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    return-object p1
.end method

.method static synthetic access$100()Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;
    .locals 1

    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mNullCaptureCompletedWrapper:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 478
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v1

    .line 480
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v2, p1, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 481
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    if-ltz p2, :cond_0

    .line 545
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setupCaptureCompletedWrapper()V
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mContinuousTv:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mCaptureCompleted:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    goto :goto_0

    .line 226
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mNullCaptureCompletedWrapper:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mCaptureCompleted:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    :goto_0
    return-void
.end method

.method static setupPreviewRequest(Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;Landroid/hardware/camera2/CaptureRequest$Builder;ZLcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;)V
    .locals 5

    .line 485
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 489
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->auto()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 490
    iget-boolean v1, p3, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    if-eqz v1, :cond_1

    .line 491
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 492
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->evSteps()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 494
    :cond_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    iget-boolean v0, p3, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_scene_mode_sports:Z

    if-eqz v0, :cond_7

    .line 496
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 497
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 500
    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 502
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 503
    iget-boolean v1, p3, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    if-eqz v1, :cond_4

    .line 504
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 506
    :cond_4
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 507
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 508
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->frameDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 509
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 511
    :cond_5
    iget-boolean v1, p3, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    if-eqz v1, :cond_6

    .line 512
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 514
    :cond_6
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 515
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 516
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->frameDuration()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 517
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_7
    :goto_0
    if-eqz p2, :cond_8

    .line 520
    iget-boolean p2, p3, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_af_mode:Z

    if-eqz p2, :cond_8

    .line 521
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 525
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->isInfinityFocus()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 526
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setupFocusModeInfinity(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 529
    :cond_9
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 530
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 531
    iget-boolean p2, p3, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_antibanding_mode:Z

    if-eqz p2, :cond_a

    .line 532
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getAntiBanding()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 534
    :cond_a
    iget-boolean p2, p3, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    if-eqz p2, :cond_b

    .line 535
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p3

    iget-object p3, p3, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p3}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getColorCorrectionMode()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 536
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p3

    iget-object p3, p3, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p3}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getEdgeMode()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 537
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p3

    iget-object p3, p3, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p3}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getNoiseReductionMode()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 538
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p3

    iget-object p3, p3, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p3}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getShadingMode()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 539
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getTonemapMode()I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    :cond_b
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iput-object p2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 167
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mCaptureCompleted:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;->captureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 169
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCaptureSequenceCompleted(I)V
    .locals 0

    return-void
.end method

.method public onRequestParamChange()V
    .locals 4

    .line 462
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 464
    :try_start_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 465
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->previewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 466
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->miniPreviewSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 467
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->miniPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 469
    :cond_0
    invoke-static {p0, v1, v2, v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setupPreviewRequest(Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;Landroid/hardware/camera2/CaptureRequest$Builder;ZLcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;)V

    .line 470
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 471
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setupCaptureCompletedWrapper()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 473
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 178
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 179
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->isEngineRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 180
    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->backgroundHandler:Landroid/os/Handler;

    goto :goto_0

    .line 182
    :cond_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->backgroundHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    const-string p0, "MorphoCamera2State"

    const-string v0, "Activity has already been destroyed."

    .line 184
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 187
    :cond_1
    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->backgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->backgroundHandler:Landroid/os/Handler;

    .line 190
    :goto_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onPreviewStart()V

    .line 192
    :try_start_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 193
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->previewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 194
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->miniPreviewSurface:Landroid/view/Surface;

    if-eqz v3, :cond_2

    .line 195
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->miniPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 197
    :cond_2
    invoke-static {p0, v1, v2, v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setupPreviewRequest(Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;Landroid/hardware/camera2/CaptureRequest$Builder;ZLcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;)V

    .line 198
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 199
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setupCaptureCompletedWrapper()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    iget-object p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->setNullDirectionFunction()V

    return-void

    :catch_0
    move-exception p0

    .line 205
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 206
    iget-object p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onErrorCamera()V

    return-void

    :catch_1
    move-exception p0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    iget-object p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onErrorCapture()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 215
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mNullCaptureCompletedWrapper:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->mCaptureCompleted:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->backgroundHandler:Landroid/os/Handler;

    .line 218
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onTakePictureStart()V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->capture_mode:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->toTakePictureState(I)V

    return-void
.end method

.method public onTouch()V
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getHardwareLevel()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 234
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getHardwareLevel()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;-><init>()V

    .line 239
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 240
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStart()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public toTakePictureState(I)V
    .locals 14

    .line 249
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->onStop()V

    .line 251
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 252
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onTakePicturePreprocess()V

    .line 254
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    .line 259
    :try_start_0
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    goto :goto_0

    .line 267
    :pswitch_0
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    goto :goto_1

    .line 264
    :pswitch_1
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    goto :goto_1

    .line 259
    :goto_0
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 270
    :goto_1
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->previewSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 271
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 272
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->miniPreviewSurface:Landroid/view/Surface;

    if-eqz v5, :cond_0

    .line 273
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->miniPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 275
    :cond_0
    iget-boolean v5, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    if-eqz v5, :cond_1

    .line 276
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v6}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getColorCorrectionMode()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 277
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v6}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getEdgeMode()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 278
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v6}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getNoiseReductionMode()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 279
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v6}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getShadingMode()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 280
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v6}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getTonemapMode()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    :cond_1
    const/4 v5, 0x0

    if-ne p1, v2, :cond_2

    .line 284
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 285
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 286
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 288
    :cond_2
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v7}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->isAutoAELock()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 289
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v7}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->isAutoWBLock()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 290
    iget-boolean v6, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_antibanding_mode:Z

    if-eqz v6, :cond_3

    .line 291
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v7}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getAntiBanding()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 293
    :cond_3
    iget-boolean v6, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_af_mode:Z

    if-eqz v6, :cond_4

    .line 294
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 298
    :cond_4
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->auto()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 299
    iget-boolean v6, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    if-eqz v6, :cond_7

    .line 300
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 303
    :cond_5
    iget-boolean v6, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    if-eqz v6, :cond_6

    .line 304
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 306
    :cond_6
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 307
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 308
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->frameDuration()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 310
    :cond_7
    :goto_2
    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v6}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->isInfinityFocus()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 311
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setupFocusModeInfinity(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_8
    :goto_3
    const/4 v6, 0x3

    if-eq p1, v6, :cond_9

    const/4 v7, 0x4

    if-ne p1, v7, :cond_17

    .line 316
    :cond_9
    :try_start_1
    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    .line 317
    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->previewSurface:Landroid/view/Surface;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 318
    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 319
    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->miniPreviewSurface:Landroid/view/Surface;

    if-eqz v8, :cond_a

    .line 320
    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->miniPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 322
    :cond_a
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v9, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v9}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->isAutoAELock()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 323
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v9, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v9}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->isAutoWBLock()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 324
    iget-boolean v8, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_antibanding_mode:Z

    if-eqz v8, :cond_b

    .line 325
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v9, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v9}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getAntiBanding()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 327
    :cond_b
    iget-boolean v8, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    if-eqz v8, :cond_c

    .line 328
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v9, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v9}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getColorCorrectionMode()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 329
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v9, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v9}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getEdgeMode()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 330
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v9, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v9}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getNoiseReductionMode()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 331
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v9, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v9}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getShadingMode()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 332
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v9, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v9}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getTonemapMode()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setRequestIntParamIfEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 334
    :cond_c
    sget v8, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-eq v8, v2, :cond_d

    iget-boolean v8, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_af_mode:Z

    if-eqz v8, :cond_d

    .line 335
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 338
    :cond_d
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->auto()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 340
    iget-boolean v8, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    if-eqz v8, :cond_e

    .line 341
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 345
    :cond_e
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->fps()F

    move-result v8

    float-to-int v9, v8

    .line 347
    iget-object v10, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getTargetFpsRanges()Ljava/util/ArrayList;

    move-result-object v10

    .line 348
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v9

    :cond_f
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Range;

    .line 349
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v13, v13, v8

    if-nez v13, :cond_f

    .line 350
    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ge v13, v11, :cond_f

    .line 351
    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_4

    .line 355
    :cond_10
    iget-boolean v8, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    if-eqz v8, :cond_11

    .line 356
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v8

    .line 357
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v9, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 358
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->evSteps()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 361
    :cond_11
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v8, "Sony"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_scene_mode_sports:Z

    if-eqz v1, :cond_14

    .line 362
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 363
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5

    .line 367
    :cond_12
    iget-boolean v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    if-eqz v2, :cond_13

    .line 368
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 370
    :cond_13
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 371
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 372
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->frameDuration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 376
    :cond_14
    :goto_5
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->isInfinityFocus()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 377
    invoke-static {v7}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setupFocusModeInfinity(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 379
    :cond_15
    iput-object v7, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->currentBurstRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 380
    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 381
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-ne p1, v6, :cond_16

    const/16 v3, 0x258

    :cond_16
    move v2, v5

    :goto_6
    if-ge v2, v3, :cond_17

    .line 384
    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 392
    :cond_17
    :try_start_2
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateTvValue()V

    .line 423
    iput-object v4, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->currentRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 424
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 425
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    .line 426
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    packed-switch p1, :pswitch_data_1

    const-string p1, "MorphoCamera2State"

    goto :goto_7

    :pswitch_2
    const-string p1, "MorphoCamera2State"

    const-string v2, "onTakePictureStart : REPEATING_BURST"

    .line 437
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_8

    :pswitch_3
    const-string p1, "MorphoCamera2State"

    const-string v2, "onTakePictureStart : BURST"

    .line 441
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setBurstRemaining(I)V

    .line 443
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_8

    :pswitch_4
    const-string p1, "MorphoCamera2State"

    const-string v2, "onTakePictureStart : ZERO_SHUTTER_LAG"

    .line 446
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_8

    :pswitch_5
    const-string p1, "MorphoCamera2State"

    const-string v2, "onTakePictureStart : STILL"

    .line 433
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_8

    :goto_7
    const-string v2, "onTakePictureStart : PREVIEW"

    .line 429
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 455
    :goto_8
    new-instance p0, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;-><init>()V

    .line 456
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 457
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStart()V

    return-void

    :catch_0
    move-exception p0

    .line 387
    :try_start_3
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 388
    iget-object p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onErrorCapture()V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 451
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 452
    iget-object p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onErrorCapture()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
