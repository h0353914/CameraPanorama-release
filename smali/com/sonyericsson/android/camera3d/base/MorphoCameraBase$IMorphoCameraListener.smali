.class public interface abstract Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;
.super Ljava/lang/Object;
.source "MorphoCameraBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMorphoCameraListener"
.end annotation


# virtual methods
.method public abstract onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
.end method

.method public abstract onError()V
.end method

.method public abstract onOpened()V
.end method

.method public abstract onPictureTaken(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z
.end method

.method public abstract onPreviewImage([B)V
.end method

.method public abstract onPreviewImageAvailable()Z
.end method
