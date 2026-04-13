.class final Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$1;
.super Ljava/lang/Object;
.source "MorphoCameraBase.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method

.method public onOpened()V
    .locals 0

    return-void
.end method

.method public onPictureTaken(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreviewImage([B)V
    .locals 0

    return-void
.end method

.method public onPreviewImageAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
