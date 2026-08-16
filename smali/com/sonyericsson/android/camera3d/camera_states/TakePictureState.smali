.class public Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;
.super Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;
.source "TakePictureState.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;


# instance fields
.field private mResultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->mResultCode:I

    return-void
.end method

.method private commonTerminate()V
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 63
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReader:Landroid/media/ImageReader;

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->previewAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 66
    :cond_0
    sget p0, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-nez p0, :cond_1

    .line 67
    new-instance p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;-><init>()V

    .line 68
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1, p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    goto :goto_0

    .line 70
    :cond_1
    new-instance p0, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;-><init>()V

    .line 71
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1, p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 74
    :goto_0
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 75
    iget-object p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->setGravitySensorListener(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public canExit()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCancel()V
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    .line 44
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Sony"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 45
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->setGravitySensorListener(Z)V

    .line 48
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onAttachEnd()V

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->commonTerminate()V

    .line 51
    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onTakePictureCancel()V

    .line 52
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    .line 91
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method

.method public onFinish()Z
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onTakePictureFinish()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    .line 35
    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onAttachEnd()V

    .line 36
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->commonTerminate()V

    .line 37
    iget p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->mResultCode:I

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onTakePictureFinish2NextState(I)V

    return v1
.end method

.method public onStart()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 24
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1, p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onTakePictureStart(Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;)V

    .line 25
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReader:Landroid/media/ImageReader;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->takePictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public requestEnd(Lcom/sonyericsson/android/camera3d/base/PanoramaState;I)V
    .locals 0

    .line 81
    iput p2, p0, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->mResultCode:I

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    .line 83
    invoke-interface {p1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onAttachEnd()V

    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->commonTerminate()V

    .line 85
    iget p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/TakePictureState;->mResultCode:I

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onTakePictureFinish2NextState(I)V

    return-void
.end method
