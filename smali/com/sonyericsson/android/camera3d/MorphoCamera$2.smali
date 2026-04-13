.class Lcom/sonyericsson/android/camera3d/MorphoCamera$2;
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

    .line 607
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$2;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    .line 613
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const-string p0, "MorphoCamera2"

    const-string p1, "ImageReader#acquireNextImage() is null."

    .line 620
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 624
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2Image;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera3d/Camera2Image;-><init>(Landroid/media/Image;)V

    .line 625
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$2;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onPictureTaken(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 627
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2Image;->close()V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 615
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 616
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera$2;->this$0:Lcom/sonyericsson/android/camera3d/MorphoCamera;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera;->access$100(Lcom/sonyericsson/android/camera3d/MorphoCamera;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onError()V

    return-void
.end method
