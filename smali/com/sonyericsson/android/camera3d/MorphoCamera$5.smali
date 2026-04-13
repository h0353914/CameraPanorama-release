.class Lcom/sonyericsson/android/camera3d/MorphoCamera$5;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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

    .line 866
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$5;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 876
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$5;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 877
    sget-object p1, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter p1

    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$5;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$1200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    .line 879
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$5;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 880
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureFailure;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "MorphoCamera2"

    .line 891
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CameraCaptureSession.CaptureCallback.onCaptureFailed >Reason:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 870
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$5;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onProgressed(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 886
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$5;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onCaptureSequenceCompleted(I)V

    return-void
.end method
