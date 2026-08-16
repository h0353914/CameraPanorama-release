.class public Lcom/sonyericsson/android/camera3d/CameraInfo;
.super Ljava/lang/Object;
.source "CameraInfo.java"


# static fields
.field public static final CAPTURE_GAIN_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "Camera2App"

.field public static final OPEN_STATE_CLOSE:I = 0x0

.field public static final OPEN_STATE_OPENED:I = 0x2

.field public static final OPEN_STATE_OPEN_REQUEST:I = 0x1

.field public static final PREVIEW_GAIN_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveArray:Landroid/graphics/Rect;

.field private mAeCompensationRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAeCompensationStep:Landroid/util/Rational;

.field private mCameraId:Ljava/lang/String;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureSize:Landroid/util/Size;

.field private mExposureTimeRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFocalLength:F

.field private mHardwareLevel:I

.field private mIsEnabledZsl:Z

.field private mMaxAnalogSensitivity:Ljava/lang/Integer;

.field private mMaxFrameDuration:Ljava/lang/Long;

.field private mOpenCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mOpenState:I

.field private mOrientation:I

.field private mPhysicalSize:Landroid/util/SizeF;

.field private mPixelArraySize:Landroid/util/Size;

.field private mPreviewSize:Landroid/util/Size;

.field private mSensitivityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetFpsRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Landroid/util/Range;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraInfo;->PREVIEW_GAIN_RANGE:Landroid/util/Range;

    .line 41
    new-instance v0, Landroid/util/Range;

    const-wide v1, 0x3fef5c28f5c28f5cL    # 0.98

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide v2, 0x3ff051eb851eb852L    # 1.02

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraInfo;->CAPTURE_GAIN_RANGE:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mTargetFpsRanges:Ljava/util/ArrayList;

    .line 246
    new-instance v0, Landroid/util/Range;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mExposureTimeRange:Landroid/util/Range;

    .line 276
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mMaxFrameDuration:Ljava/lang/Long;

    .line 294
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mSensitivityRange:Landroid/util/Range;

    const/4 v0, 0x1

    .line 324
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mMaxAnalogSensitivity:Ljava/lang/Integer;

    .line 333
    new-instance v3, Landroid/util/Rational;

    invoke-direct {v3, v0, v0}, Landroid/util/Rational;-><init>(II)V

    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mAeCompensationStep:Landroid/util/Rational;

    .line 350
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v2, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mAeCompensationRange:Landroid/util/Range;

    .line 136
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->clearCameraId()V

    const/4 v0, 0x2

    .line 137
    iput v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mHardwareLevel:I

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mOpenCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 139
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 140
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setPreviewSize(II)V

    .line 141
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setCaptureSize(II)V

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mFocalLength:F

    .line 143
    invoke-virtual {p0, v0, v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setPhysicalSize(FF)V

    .line 144
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setPixelArraySize(II)V

    .line 145
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setActiveArraySize(IIII)V

    .line 146
    iput v1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mOpenState:I

    .line 147
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mIsEnabledZsl:Z

    return-void
.end method

.method private clearCameraId()V
    .locals 1

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCameraId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abortCaptures()V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p0, :cond_0

    .line 239
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 241
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public clampExposureTime(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mExposureTimeRange:Landroid/util/Range;

    invoke-virtual {p0, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public clampSensitivityRange(I)I
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mSensitivityRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public containsExposureTime(Ljava/lang/Long;)Z
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mExposureTimeRange:Landroid/util/Range;

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public containsFrameDuration(Ljava/lang/Long;)Z
    .locals 2

    .line 291
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mMaxFrameDuration:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsSensitivity(Ljava/lang/Integer;)Z
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mSensitivityRange:Landroid/util/Range;

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public getActiveArrayBottom()I
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mActiveArray:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getActiveArrayHeight()I
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getActiveArrayLeft()I
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mActiveArray:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getActiveArrayRight()I
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mActiveArray:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getActiveArrayTop()I
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mActiveArray:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getActiveArrayWidth()I
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mActiveArray:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getAeCompensationDenominator()I
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mAeCompensationStep:Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result p0

    return p0
.end method

.method public getAeCompensationMax()I
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mAeCompensationRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAeCompensationMin()I
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mAeCompensationRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAeCompensationNumerator()I
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mAeCompensationStep:Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result p0

    return p0
.end method

.method public getAeCompensationStep()D
    .locals 2

    .line 339
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mAeCompensationStep:Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getCaptureHeight()I
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCaptureSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    return p0
.end method

.method public getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p0, :cond_0

    return-object p0

    .line 116
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method public getCaptureWidth()I
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCaptureSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0
.end method

.method public getExposureTimeMax()Ljava/lang/Long;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mExposureTimeRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public getExposureTimeMin()Ljava/lang/Long;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mExposureTimeRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public getExposureTimeRangeLength()Ljava/lang/Long;
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mExposureTimeRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mExposureTimeRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getFocalLength()F
    .locals 0

    .line 163
    iget p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mFocalLength:F

    return p0
.end method

.method public getHardwareLevel()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mHardwareLevel:I

    return p0
.end method

.method public getMaxAnalogSensitivity()I
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mMaxAnalogSensitivity:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMaxFrameDuration()Ljava/lang/Long;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mMaxFrameDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mOpenCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p0, :cond_0

    return-object p0

    .line 71
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method public getOpenState()I
    .locals 0

    .line 368
    iget p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mOpenState:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mOrientation:I

    return p0
.end method

.method public getPhysicalHeight()F
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mPhysicalSize:Landroid/util/SizeF;

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    return p0
.end method

.method public getPhysicalWidth()F
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mPhysicalSize:Landroid/util/SizeF;

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    return p0
.end method

.method public getPixelArrayHeight()I
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mPixelArraySize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    return p0
.end method

.method public getPixelArrayWidth()I
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mPixelArraySize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0
.end method

.method public getPreviewHeight()I
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    return p0
.end method

.method public getPreviewWidth()I
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0
.end method

.method public getSensitivityMax()I
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mSensitivityRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSensitivityMin()I
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mSensitivityRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSensitivityRangeLength()I
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mSensitivityRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mSensitivityRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getTargetFpsRanges()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mTargetFpsRanges:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isCameraEnabled()Z
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEnabledZsl()Z
    .locals 0

    .line 376
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mIsEnabledZsl:Z

    return p0
.end method

.method public onCloseCamera()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mOpenCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->onCloseCamera(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public onCloseCamera(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 221
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mOpenCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    .line 225
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 226
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mOpenCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    const/4 p1, 0x0

    .line 229
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    return-void
.end method

.method public setActiveArraySize(IIII)V
    .locals 1

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mActiveArray:Landroid/graphics/Rect;

    return-void
.end method

.method public setAeCompensationRange(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 352
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mAeCompensationRange:Landroid/util/Range;

    return-void
.end method

.method public setAeCompensationStep(Landroid/util/Rational;)V
    .locals 2

    .line 335
    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Rational;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mAeCompensationStep:Landroid/util/Rational;

    return-void
.end method

.method public setCameraId(Ljava/lang/String;)V
    .locals 1

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCameraId:Ljava/lang/String;

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CameraId=\'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Camera2App"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCaptureHeight(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCaptureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setCaptureSize(II)V

    return-void
.end method

.method public setCaptureSession(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method public setCaptureSize(II)V
    .locals 1

    .line 111
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCaptureSize:Landroid/util/Size;

    return-void
.end method

.method public setCaptureWidth(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mCaptureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setCaptureSize(II)V

    return-void
.end method

.method public setEnabledZsl(Z)V
    .locals 0

    .line 372
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mIsEnabledZsl:Z

    return-void
.end method

.method public setExposureTimeRange(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .line 248
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mExposureTimeRange:Landroid/util/Range;

    return-void
.end method

.method public setFocalLength(F)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mFocalLength:F

    return-void
.end method

.method public setHardwareLevel(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mHardwareLevel:I

    return-void
.end method

.method public setMaxAnalogSensitivity(Ljava/lang/Integer;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mMaxAnalogSensitivity:Ljava/lang/Integer;

    return-void
.end method

.method public setMaxFrameDuration(Ljava/lang/Long;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mMaxFrameDuration:Ljava/lang/Long;

    return-void
.end method

.method public setOpenCameraDevice(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mOpenCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 78
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setOpenState(I)V

    :cond_0
    return-void
.end method

.method public setOpenState(I)V
    .locals 0

    .line 364
    iput p1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mOpenState:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mOrientation:I

    return-void
.end method

.method public setPhysicalSize(FF)V
    .locals 1

    .line 167
    new-instance v0, Landroid/util/SizeF;

    invoke-direct {v0, p1, p2}, Landroid/util/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mPhysicalSize:Landroid/util/SizeF;

    return-void
.end method

.method public setPixelArraySize(II)V
    .locals 1

    .line 179
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mPixelArraySize:Landroid/util/Size;

    return-void
.end method

.method public setPreviewHeight(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setPreviewSize(II)V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    .line 95
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public setPreviewWidth(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->setPreviewSize(II)V

    return-void
.end method

.method public setSensitivityRange(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 296
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mSensitivityRange:Landroid/util/Range;

    return-void
.end method

.method public setTargetFpsRanges([Landroid/util/Range;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mTargetFpsRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 130
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraInfo;->mTargetFpsRanges:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v4, v5, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
