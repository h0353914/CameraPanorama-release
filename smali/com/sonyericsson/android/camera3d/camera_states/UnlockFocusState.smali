.class public Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;
.super Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;
.source "UnlockFocusState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;-><init>()V

    return-void
.end method


# virtual methods
.method public canExit()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    new-instance p2, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState$1;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;)V

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->requestUiRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 17
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 19
    :try_start_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 20
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->previewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 21
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 22
    invoke-static {p0, v1, v2, v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setupPreviewRequest(Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;Landroid/hardware/camera2/CaptureRequest$Builder;ZLcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;)V

    .line 23
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;->backgroundHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v2, v1, v3, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 25
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 26
    iget-object p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onErrorCapture()V

    :goto_0
    return-void
.end method
