.class public abstract Lcom/sonyericsson/android/camera3d/CaptureImage;
.super Ljava/lang/Object;
.source "CaptureImage.java"


# instance fields
.field mImage:Landroid/media/Image;

.field private mRaw:[B


# direct methods
.method constructor <init>(Landroid/media/Image;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CaptureImage;->mImage:Landroid/media/Image;

    const/4 p1, 0x0

    .line 33
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CaptureImage;->mRaw:[B

    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CaptureImage;->mRaw:[B

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CaptureImage;->mImage:Landroid/media/Image;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CaptureImage;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CaptureImage;->mImage:Landroid/media/Image;

    :cond_0
    const/4 v0, 0x0

    .line 48
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CaptureImage;->mRaw:[B

    return-void
.end method

.method public abstract getHeight()I
.end method

.method public abstract getImageFormat()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public image()Landroid/media/Image;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CaptureImage;->mImage:Landroid/media/Image;

    return-object p0
.end method

.method public raw()[B
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CaptureImage;->mRaw:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method
