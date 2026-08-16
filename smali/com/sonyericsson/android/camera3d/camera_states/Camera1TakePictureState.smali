.class public Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;
.super Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;
.source "Camera1TakePictureState.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private mResultCode:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;-><init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mResultCode:I

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mResultCode:I

    return-void
.end method

.method private commonTerminate()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 77
    sget v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 79
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 85
    :goto_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->setGravitySensorListener(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public canExit()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCancel()V
    .locals 2

    .line 59
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->setGravitySensorListener(Z)V

    .line 63
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onAttachEnd()V

    .line 65
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->commonTerminate()V

    .line 66
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onTakePictureCancel()V

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onFinish()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onTakePictureFinish()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onAttachEnd()V

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->commonTerminate()V

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mResultCode:I

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onTakePictureFinish2NextState(I)V

    return v1
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    .line 100
    new-instance p2, Lcom/sonyericsson/android/camera3d/Camera1Image;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v1

    invoke-direct {p2, p1, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera1Image;-><init>([BII)V

    .line 101
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    invoke-interface {p0, p2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onPictureTaken(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 103
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera1Image;->close()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onTakePictureStart(Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;)V

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->isAutoAELock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 41
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->isAutoWBLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 42
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public requestEnd(Lcom/sonyericsson/android/camera3d/base/PanoramaState;I)V
    .locals 0

    .line 92
    iput p2, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mResultCode:I

    .line 93
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onAttachEnd()V

    .line 94
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->commonTerminate()V

    .line 95
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;->mResultCode:I

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onTakePictureFinish2NextState(I)V

    return-void
.end method
