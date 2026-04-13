.class public Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;
.super Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;
.source "Camera1AutoFocusState.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field private mCancel:Z

.field private mToNext:Z


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;-><init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mCancel:Z

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mToNext:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;-><init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mCancel:Z

    .line 37
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mToNext:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mCancel:Z

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mToNext:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;Z)V
    .locals 0

    .line 46
    check-cast p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mCancel:Z

    .line 47
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mToNext:Z

    return-void
.end method


# virtual methods
.method public canExit()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    .line 74
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mCancel:Z

    if-eqz p2, :cond_0

    const-string p0, "MorphoCamera1State"

    const-string p1, "AutoFocus canceled."

    .line 75
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p2, p1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onAutoFocusFinish(Z)V

    .line 80
    sget p1, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mToNext:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 88
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 89
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->toTakePictureState()V

    return-void

    .line 81
    :cond_2
    :goto_0
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 82
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 83
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStart()V

    return-void
.end method

.method public onCancel()V
    .locals 2

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mCancel:Z

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onAutoFocusFinish(Z)V

    .line 59
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    return-void
.end method

.method public setToNext(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1AutoFocusState;->mToNext:Z

    return-void
.end method
