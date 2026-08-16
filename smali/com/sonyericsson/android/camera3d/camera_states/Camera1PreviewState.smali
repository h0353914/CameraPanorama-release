.class public Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;
.super Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;
.source "Camera1PreviewState.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;-><init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onPreviewImage([B)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 33
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onPreviewStart()V

    .line 37
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->setNullDirectionFunction()V

    return-void
.end method

.method public onTakePictureStart()V
    .locals 1

    .line 49
    sget v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->toTakePictureState()V

    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 56
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStart()V

    return-void
.end method

.method public onTouch()V
    .locals 1

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 44
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStart()V

    return-void
.end method

.method public toTakePictureState()V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->onStop()V

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onTakePicturePreprocess()V

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1TakePictureState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 66
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStart()V

    return-void
.end method
