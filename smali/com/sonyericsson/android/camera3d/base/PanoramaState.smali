.class public Lcom/sonyericsson/android/camera3d/base/PanoramaState;
.super Ljava/lang/Object;
.source "PanoramaState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;
    }
.end annotation


# instance fields
.field protected listener:Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;

.field protected mAbort:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->mAbort:Z

    .line 36
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->clearListener()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->mAbort:Z

    return-void
.end method

.method protected clearListener()V
    .locals 1

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera3d/base/PanoramaState$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState$1;-><init>(Lcom/sonyericsson/android/camera3d/base/PanoramaState;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->listener:Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;

    return-void
.end method

.method public hasImage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAborted()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->mAbort:Z

    return p0
.end method

.method public isEnableTvAnalysis()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyTvAnalyzed()V
    .locals 0

    return-void
.end method

.method public onSaveImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public repeatTakePicture()V
    .locals 0

    return-void
.end method

.method public setPanoramaStateEventListener(Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->listener:Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;

    return-void
.end method
