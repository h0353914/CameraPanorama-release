.class public Lcom/sonyericsson/android/camera3d/Camera2Image;
.super Lcom/sonyericsson/android/camera3d/CaptureImage;
.source "Camera2Image.java"


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;-><init>(Landroid/media/Image;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2Image;->mImage:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    return p0
.end method

.method public getImageFormat()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2Image;->mImage:Landroid/media/Image;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2ImageFormat;->getImageFormat(Landroid/media/Image;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2Image;->mImage:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result p0

    return p0
.end method
