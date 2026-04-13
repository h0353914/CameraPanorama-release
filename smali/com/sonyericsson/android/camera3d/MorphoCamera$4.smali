.class Lcom/sonyericsson/android/camera3d/MorphoCamera$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "MorphoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/MorphoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/MorphoCamera;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "MorphoCamera2"

    const-string v0, "CameraCaptureSession.StateCallback.onConfigureFailed"

    .line 859
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->onCloseCamera()V

    .line 861
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$702(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;

    .line 862
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setPreviewSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 848
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 849
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$1100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->isCameraEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 851
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setCaptureSession(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 852
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    new-instance v1, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;-><init>()V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$202(Lcom/sonyericsson/android/camera3d/MorphoCamera;Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    .line 853
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onStart()V

    .line 854
    monitor-exit v0

    return-void

    .line 850
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 854
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
