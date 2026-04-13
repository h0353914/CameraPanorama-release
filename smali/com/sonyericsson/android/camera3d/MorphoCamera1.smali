.class public Lcom/sonyericsson/android/camera3d/MorphoCamera1;
.super Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;
.source "MorphoCamera1.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MorphoCamera1"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private final mCameraId:I

.field private final mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

.field private mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

.field private mDisplayOrientation:I

.field private mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

.field private final mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

.field private mResumed:Z

.field private final mSizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public viewAngleH:F

.field public viewAngleV:F


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;I)V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    .line 32
    new-instance v1, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    .line 33
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mResumed:Z

    .line 35
    iput v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mDisplayOrientation:I

    .line 346
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoCamera1$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1$1;-><init>(Lcom/sonyericsson/android/camera3d/MorphoCamera1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mSizeComparator:Ljava/util/Comparator;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setCameraId(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 71
    sget-object p1, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->nullMorphoCameraListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    .line 74
    iput p2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraId:I

    return-void
.end method

.method public static getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .line 358
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 359
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    return-object v0
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 0

    .line 366
    :try_start_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 368
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private releaseCamera()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 151
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    .line 152
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    :cond_0
    return-void
.end method

.method private startPreviewLocal(I)V
    .locals 7

    .line 275
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mResumed:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->openCamera(Landroid/view/SurfaceHolder;)Z

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    const-string v2, "MorphoCamera1"

    .line 284
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "format:%d, displayOrientation:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraId:I

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 289
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v6, :cond_2

    .line 290
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, p1

    rem-int/lit16 v1, v1, 0x168

    rsub-int p1, v1, 0x168

    .line 291
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 293
    :cond_2
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v1, p1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 p1, v1, 0x168

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 296
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 297
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 299
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;-><init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    .line 300
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStart()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public burstRemaining()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    return-object p0
.end method

.method public final cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    return-object p0
.end method

.method public canExitState()Z
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->canExit()Z

    move-result p0

    return p0
.end method

.method public cancelState()V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onCancel()V

    return-void
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public finishState()Z
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onFinish()Z

    move-result p0

    return p0
.end method

.method public getAllCameras()[Ljava/lang/String;
    .locals 11

    .line 98
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result p0

    .line 99
    new-array v0, p0, [Ljava/lang/String;

    .line 103
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v3, p0, :cond_0

    .line 105
    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 106
    iget v8, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    packed-switch v8, :pswitch_data_0

    .line 108
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Other %d"

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v2

    invoke-static {v8, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    goto :goto_1

    .line 111
    :pswitch_0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Front %d"

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v2

    invoke-static {v8, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    goto :goto_1

    .line 114
    :pswitch_1
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Back %d"

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v2

    invoke-static {v8, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ne v4, v7, :cond_2

    move p0, v2

    .line 119
    :goto_2
    array-length v1, v0

    if-ge p0, v1, :cond_2

    .line 120
    aget-object v1, v0, p0

    const-string v3, "Other"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    aget-object v1, v0, p0

    const-string v3, " 1"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    if-ne v6, v7, :cond_4

    move p0, v2

    .line 126
    :goto_3
    array-length v1, v0

    if-ge p0, v1, :cond_4

    .line 127
    aget-object v1, v0, p0

    const-string v3, "Front"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    aget-object v1, v0, p0

    const-string v3, " 1"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_4
    if-ne v5, v7, :cond_6

    .line 133
    :goto_4
    array-length p0, v0

    if-ge v2, p0, :cond_6

    .line 134
    aget-object p0, v0, v2

    const-string v1, "Back"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 135
    aget-object p0, v0, v2

    const-string v1, " 1"

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaxPictureSize()Landroid/util/Size;
    .locals 6

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    const/16 v1, 0xf0

    const/16 v2, 0x140

    if-nez v0, :cond_0

    .line 323
    iget v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraId:I

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 325
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v2, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    const/4 v3, 0x0

    .line 330
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 331
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v4

    .line 332
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 333
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v2, v1}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 340
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 341
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    :cond_1
    return-object v4

    .line 335
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mSizeComparator:Ljava/util/Comparator;

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 337
    new-instance v1, Landroid/util/Size;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v4}, Landroid/util/Size;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_3

    .line 340
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 341
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v1

    .line 339
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_4

    .line 340
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 341
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    .line 343
    :cond_4
    throw v1
.end method

.method public getSupportedPreviewSizes()[I
    .locals 8

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 243
    iget v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraId:I

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 245
    new-array p0, v1, [I

    return-object p0

    .line 250
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 252
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mSizeComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 254
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 256
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    add-int/lit8 v6, v4, 0x1

    .line 257
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    aput v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    .line 258
    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    aput v5, v3, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_2

    .line 263
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 264
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    :cond_2
    return-object v3

    :catchall_0
    move-exception v2

    .line 262
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_3

    .line 263
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 264
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    .line 266
    :cond_3
    throw v2
.end method

.method public isFrontCamera(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public openCamera(Landroid/view/SurfaceHolder;)Z
    .locals 2

    .line 157
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->releaseCamera()V

    .line 158
    iget v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraId:I

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 165
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->viewAngleH:F

    .line 174
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->viewAngleV:F

    .line 177
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result p1

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setFocalLength(F)V

    .line 189
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    .line 190
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;->onOpened()V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 168
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->releaseCamera()V

    return v1
.end method

.method public pause()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->releaseCamera()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mResumed:Z

    return-void
.end method

.method public resume(Landroid/util/Size;Landroid/util/Size;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setCaptureSize(II)V

    .line 91
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setPreviewSize(II)V

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mResumed:Z

    .line 93
    iget p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mDisplayOrientation:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->startPreviewLocal(I)V

    return-void
.end method

.method public setBurstRemaining(I)V
    .locals 0

    return-void
.end method

.method public setDefaultCameraState()V
    .locals 5

    .line 236
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;-><init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    return-void
.end method

.method public setMorphoPanoramaGP2Interface(Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    return-void
.end method

.method public startPreview(I)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->startPreviewLocal(I)V

    .line 271
    iput p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mDisplayOrientation:I

    return-void
.end method

.method public startState()V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStart()V

    return-void
.end method

.method public startTakePictureState()V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onTakePictureStart()V

    return-void
.end method

.method public stopState()V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStop()V

    return-void
.end method

.method public takePicture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public takePictureBurst()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public takePictureZSL()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V
    .locals 1

    .line 196
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;

    if-eqz v0, :cond_0

    .line 197
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->mCameraState:Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    goto :goto_0

    :cond_0
    const-string p1, "MorphoCamera1"

    const-string v0, "#updateCameraState, argument is invalid."

    .line 199
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->setDefaultCameraState()V

    :goto_0
    return-void
.end method
