.class Lcom/sonyericsson/android/camera3d/MorphoCamera$4;
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

    .line 797
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->onCloseCamera(Landroid/hardware/camera2/CameraDevice;)V

    .line 868
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$702(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;

    .line 869
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setPreviewSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    .line 874
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "CameraDevice.StateCallback.onError (%d)"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MorphoCamera2"

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onError()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 10

    .line 800
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$300(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 802
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenCameraDevice(Landroid/hardware/camera2/CameraDevice;)V

    .line 804
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$500(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 805
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

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

    .line 808
    const-string v1, "MorphoCamera2"

    const-string v2, "CameraDevice.StateCallback.onOpened SurfaceTexture is null!!"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 810
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    .line 811
    monitor-exit v0

    return-void

    .line 813
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$600(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/media/ImageReader;

    move-result-object v4

    if-nez v4, :cond_3

    .line 814
    const-string v1, "MorphoCamera2"

    const-string v2, "CameraDevice.StateCallback.onOpened ImageReader is null!!"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 816
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    .line 817
    monitor-exit v0

    return-void

    .line 820
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onOpened()V

    .line 822
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "EVA-TL00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x780

    const/16 v5, 0x5a0

    .line 823
    invoke-virtual {v1, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_1

    .line 825
    :cond_4
    const-string v4, "MorphoCamera2"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "preview_size : %d x %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPreviewWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPreviewHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPreviewWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getPreviewHeight()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 828
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$702(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;

    .line 829
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$800(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 830
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$800(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 831
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$800(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$800(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/TextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 832
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$902(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    :cond_5
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 836
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$700(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$600(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/media/ImageReader;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$900(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 839
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$900(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_6
    new-instance v4, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    .line 845
    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$1000(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    .line 846
    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$1100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v6

    invoke-direct {v4, v3, v1, v5, v6}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 847
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 856
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 858
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$700(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setPreviewSurface(Landroid/view/Surface;)V

    .line 859
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$900(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 860
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$200(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$900(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setMiniPreviewSurface(Landroid/view/Surface;)V

    .line 862
    :cond_7
    monitor-exit v0

    return-void

    :catch_1
    move-exception v1

    .line 849
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 850
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$400(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->onCloseCamera(Landroid/hardware/camera2/CameraDevice;)V

    .line 851
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$702(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;

    .line 852
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$902(Lcom/sonyericsson/android/camera3d/MorphoCamera;Landroid/view/Surface;)Landroid/view/Surface;

    .line 853
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$4;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onError()V

    .line 854
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 862
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
