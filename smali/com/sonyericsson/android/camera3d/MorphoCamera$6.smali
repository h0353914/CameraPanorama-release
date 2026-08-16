.class Lcom/sonyericsson/android/camera3d/MorphoCamera$6;
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

    .line 900
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$6;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 910
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$6;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 911
    sget-object p1, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter p1

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$6;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$1300(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    .line 913
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$6;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 914
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

    .line 925
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "CameraCaptureSession.CaptureCallback.onCaptureFailed >Reason:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MorphoCamera2"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 904
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$6;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onProgressed(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    .line 920
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$6;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->onCaptureSequenceCompleted(I)V

    return-void
.end method
