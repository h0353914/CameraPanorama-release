.class public Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;
.super Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;
.source "AutoFocusState.java"


# static fields
.field private static final AF_SAME_STATE_REPEAT_MAX:I = 0x1e

.field private static final STATE_INIT:I = -0x1

.field private static final STATE_WAITING_LOCK:I = 0x0

.field private static final STATE_WAITING_NON_PRECAPTURE:I = 0x2

.field private static final STATE_WAITING_PRECAPTURE:I = 0x1

.field private static final SUB_STATE_WAITING_LENS_STATIONARY:I


# instance fields
.field private mCancel:Z

.field private mIsFiredErrorCapture:Z

.field private mPreAFState:I

.field private mSameAFStateCount:I

.field private mState:I

.field private mSubState:I

.field private mToNext:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    .line 28
    iput v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mSubState:I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mSameAFStateCount:I

    .line 32
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mCancel:Z

    .line 35
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mIsFiredErrorCapture:Z

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mToNext:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    .line 28
    iput v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mSubState:I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mSameAFStateCount:I

    .line 32
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mCancel:Z

    .line 35
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mIsFiredErrorCapture:Z

    .line 44
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mToNext:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mCancel:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->toNextState()V

    return-void
.end method

.method private autoFocusEnd(Z)V
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    new-instance v1, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState$1;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;Z)V

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->requestUiRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fireErrorCapture()V
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mIsFiredErrorCapture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mIsFiredErrorCapture:Z

    .line 249
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onErrorCapture()V

    :cond_0
    return-void
.end method

.method private lockFocus()V
    .locals 5

    .line 202
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 204
    :try_start_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 205
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->previewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 206
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 207
    invoke-static {p0, v1, v3, v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setupPreviewRequest(Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;Landroid/hardware/camera2/CaptureRequest$Builder;ZLcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;)V

    .line 208
    sget v4, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-nez v4, :cond_0

    .line 209
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->backgroundHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v1, v0, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 210
    :cond_0
    sget v4, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-ne v4, v2, :cond_1

    .line 211
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 212
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->backgroundHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v1, v0, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 213
    :cond_1
    sget v2, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 214
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->backgroundHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v1, v0, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 216
    :cond_2
    :goto_0
    iput v3, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    .line 217
    iput v3, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mSameAFStateCount:I

    const/4 v0, -0x1

    .line 218
    iput v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mPreAFState:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 221
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->fireErrorCapture()V

    :goto_1
    return-void
.end method

.method private toNextState()V
    .locals 2

    .line 189
    sget v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mToNext:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;-><init>()V

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->capture_mode:I

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->toTakePictureState(I)V

    return-void

    .line 190
    :cond_1
    :goto_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;-><init>()V

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 192
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStart()V

    return-void
.end method

.method private unlockFocus()V
    .locals 6

    .line 226
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 228
    :try_start_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 229
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->previewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 230
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 231
    invoke-static {p0, v1, v3, v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->setupPreviewRequest(Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;Landroid/hardware/camera2/CaptureRequest$Builder;ZLcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;)V

    .line 232
    sget v3, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 233
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->backgroundHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 234
    :cond_0
    sget v3, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-ne v3, v2, :cond_1

    .line 235
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 236
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->backgroundHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 237
    :cond_1
    sget v2, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-ne v2, v4, :cond_2

    .line 238
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->backgroundHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 242
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->fireErrorCapture()V

    :cond_2
    :goto_0
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

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mCancel:Z

    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->unlockFocus()V

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onAutoFocusFinish(Z)V

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 9

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p1

    .line 77
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->camera2Params:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReaderIdling:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReaderIdling:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->safeImageClose(Landroid/media/Image;)V

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->safeImageClose(Landroid/media/Image;)V

    .line 88
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez v0, :cond_d

    .line 89
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const-string p1, "MorphoCamera2State"

    const-string p2, "AutoFocusState.onCaptureCompleted AF STATE is null"

    .line 91
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iput v6, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    .line 93
    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->autoFocusEnd(Z)V

    return-void

    .line 97
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v1, :cond_5

    .line 98
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "MorphoCamera2State"

    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AutoFocusState.onCaptureCompleted AF STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", AE STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->camera2Params:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->auto()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_a

    .line 101
    :cond_3
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    .line 103
    iput v6, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    .line 104
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->autoFocusEnd(Z)V

    :cond_4
    return-void

    .line 108
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 109
    iget v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mSubState:I

    if-nez v0, :cond_6

    .line 110
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_9

    .line 111
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_9

    .line 112
    iput v6, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mSubState:I

    iput v6, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    .line 113
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->autoFocusEnd(Z)V

    return-void

    .line 117
    :cond_6
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 118
    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->camera2Params:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->auto()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_9

    .line 119
    :cond_7
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_8

    .line 120
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_8

    .line 121
    iput v6, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    .line 122
    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->autoFocusEnd(Z)V

    return-void

    .line 125
    :cond_8
    iput v5, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mSubState:I

    :cond_9
    return-void

    .line 132
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mPreAFState:I

    if-ne p1, p2, :cond_b

    .line 133
    iget p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mSameAFStateCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mSameAFStateCount:I

    .line 134
    iget p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mSameAFStateCount:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_c

    .line 135
    iput v6, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    .line 136
    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->autoFocusEnd(Z)V

    return-void

    .line 140
    :cond_b
    iput v5, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mSameAFStateCount:I

    .line 142
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mPreAFState:I

    return-void

    .line 145
    :cond_d
    iget p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    if-ne p1, v3, :cond_11

    .line 146
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const-string p2, "MorphoCamera2State"

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAITING_PRECAPTURE AE STATE = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_f

    .line 149
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, v2, :cond_f

    .line 150
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_e

    goto :goto_0

    .line 152
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_10

    .line 153
    iput v6, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    .line 154
    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->autoFocusEnd(Z)V

    goto :goto_1

    .line 151
    :cond_f
    :goto_0
    iput v4, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    :cond_10
    :goto_1
    return-void

    .line 158
    :cond_11
    iget p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    if-ne p1, v4, :cond_13

    .line 159
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const-string p2, "MorphoCamera2State"

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WAITING_NON_PRECAPTURE AE STATE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 162
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v2, :cond_13

    .line 163
    :cond_12
    iput v6, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mState:I

    .line 164
    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->autoFocusEnd(Z)V

    :cond_13
    return-void
.end method

.method public onFinish()Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->onCancel()V

    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mIsFiredErrorCapture:Z

    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->lockFocus()V

    return-void
.end method

.method public setToNext(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->mToNext:Z

    return-void
.end method
