.class public Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;
.super Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;
.source "Camera1UnlockFocusState.java"


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;-><init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;)V

    return-void
.end method


# virtual methods
.method public canExit()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 31
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 32
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;->onStart()V

    return-void
.end method
