.class public Lcom/sonyericsson/android/camera3d/Camera1Image;
.super Lcom/sonyericsson/android/camera3d/CaptureImage;
.source "Camera1Image.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;-><init>([B)V

    .line 15
    iput p2, p0, Lcom/sonyericsson/android/camera3d/Camera1Image;->mWidth:I

    .line 16
    iput p3, p0, Lcom/sonyericsson/android/camera3d/Camera1Image;->mHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera1Image;->mHeight:I

    return p0
.end method

.method public getImageFormat()Ljava/lang/String;
    .locals 0

    .line 21
    const-string p0, "YVU420_SEMIPLANAR"

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera1Image;->mWidth:I

    return p0
.end method
