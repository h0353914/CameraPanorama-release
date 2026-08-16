.class Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;
.super Ljava/lang/Object;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureResult"
.end annotation


# instance fields
.field private mExposureTime:D

.field private mIsoValue:I


# direct methods
.method constructor <init>(DI)V
    .locals 0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->mExposureTime:D

    .line 374
    iput p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->mIsoValue:I

    return-void
.end method


# virtual methods
.method public getExposureTime()D
    .locals 2

    .line 383
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->mExposureTime:D

    return-wide v0
.end method

.method public getIsoValue()I
    .locals 0

    .line 391
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->mIsoValue:I

    return p0
.end method

.method public setExposureTime(D)V
    .locals 0

    .line 387
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->mExposureTime:D

    return-void
.end method

.method public setIsoValue(I)V
    .locals 0

    .line 395
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->mIsoValue:I

    return-void
.end method

.method public sets(DI)V
    .locals 0

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->setExposureTime(D)V

    .line 379
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->setIsoValue(I)V

    return-void
.end method
