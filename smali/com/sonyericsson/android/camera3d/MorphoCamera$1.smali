.class Lcom/sonyericsson/android/camera3d/MorphoCamera$1;
.super Ljava/lang/Object;
.source "MorphoCamera.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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

    .line 567
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$1;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 571
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$1;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$000(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$1;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onPreviewImageAvailable()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 577
    :try_start_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 584
    :try_start_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 586
    :cond_1
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 579
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 580
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$1;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onError()V

    .line 581
    monitor-exit v0

    return-void

    .line 589
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$1;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    .line 593
    :try_start_3
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_3

    .line 600
    :try_start_4
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 595
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 596
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$1;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onError()V

    .line 597
    monitor-exit v0

    return-void

    .line 603
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
