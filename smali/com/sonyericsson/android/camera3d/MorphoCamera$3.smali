.class Lcom/sonyericsson/android/camera3d/MorphoCamera$3;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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

    .line 769
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 833
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->onCloseCamera(Landroid/hardware/camera2/CameraDevice;)V

    .line 834
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$702(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;

    .line 835
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setPreviewSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "MorphoCamera2"

    .line 840
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "CameraDevice.StateCallback.onError (%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onError()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 9
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 772
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$300(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenCameraDevice(Landroid/hardware/camera2/CameraDevice;)V

    .line 776
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$500(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$500(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_2

    const-string v1, "MorphoCamera2"

    const-string v2, "CameraDevice.StateCallback.onOpened SurfaceTexture is null!!"

    .line 780
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 782
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    .line 783
    monitor-exit v0

    return-void

    .line 785
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$600(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/media/ImageReader;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v1, "MorphoCamera2"

    const-string v2, "CameraDevice.StateCallback.onOpened ImageReader is null!!"

    .line 786
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 788
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    .line 789
    monitor-exit v0

    return-void

    .line 792
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onOpened()V

    .line 794
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "EVA-TL00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v3, 0x780

    const/16 v4, 0x5a0

    .line 795
    invoke-virtual {v1, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_1

    :cond_4
    const-string v4, "MorphoCamera2"

    .line 797
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "preview_size : %d x %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPreviewWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x1

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPreviewHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPreviewHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 800
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$702(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;

    .line 801
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$800(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 802
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$800(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 803
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$800(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$800(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 804
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$902(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    :cond_5
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 808
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$700(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$600(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$900(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 811
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$900(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$1000(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 822
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 824
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$700(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setPreviewSurface(Landroid/view/Surface;)V

    .line 825
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$900(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 826
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$900(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setMiniPreviewSurface(Landroid/view/Surface;)V

    .line 828
    :cond_7
    monitor-exit v0

    return-void

    :catch_1
    move-exception v1

    .line 815
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 816
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->onCloseCamera(Landroid/hardware/camera2/CameraDevice;)V

    .line 817
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$702(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;

    .line 818
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$902(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;

    .line 819
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$3;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onError()V

    .line 820
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 828
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
