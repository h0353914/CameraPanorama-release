.class public Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;
.super Ljava/lang/Object;
.source "MorphoSensorFusion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;
    }
.end annotation


# static fields
.field public static final MAXIMUM_DATA_SIZE:I = 0x200

.field public static final MODE_USE_ACCELEROMETER_AND_MAGNETIC_FIELD:I = 0x3

.field public static final MODE_USE_ALL_SENSORS:I = 0x0

.field public static final MODE_USE_GYROSCOPE:I = 0x1

.field public static final MODE_USE_GYROSCOPE_AND_ROTATION_VECTOR:I = 0x4

.field public static final MODE_USE_GYROSCOPE_WITH_ACCELEROMETER:I = 0x2

.field public static final OFFSET_MODE_DYNAMIC:I = 0x1

.field public static final OFFSET_MODE_STATIC:I = 0x0

.field public static final ROTATE_0:I = 0x0

.field public static final ROTATE_180:I = 0x2

.field public static final ROTATE_270:I = 0x3

.field public static final ROTATE_90:I = 0x1

.field public static final SENSOR_TYPE_ACCELEROMETER:I = 0x1

.field public static final SENSOR_TYPE_GYROSCOPE:I = 0x0

.field public static final SENSOR_TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final SENSOR_TYPE_ROTATION_VECTOR:I = 0x3

.field public static final STATE_CALC_OFFSET:I = 0x0

.field public static final STATE_PROCESS:I = 0x1


# instance fields
.field private mNative:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "morpho_sensor_fusion"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    .line 73
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->createNativeObject()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 76
    iput-wide v2, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    goto :goto_0

    .line 80
    :cond_0
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    :goto_0
    return-void
.end method

.method private native calc(J)I
.end method

.method private native createNativeObject()J
.end method

.method private native deleteNativeObject(J)V
.end method

.method private native finish(J)I
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 69
    invoke-static {}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native initialize(J)I
.end method

.method private static native nativeGetVersion()Ljava/lang/String;
.end method

.method private native outputRotationAngle(J[D)I
.end method

.method private native outputRotationMatrix3x3(JI[D)I
.end method

.method private native setAppState(JI)I
.end method

.method private native setMode(JI)I
.end method

.method private native setOffset(JLcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;I)I
.end method

.method private native setOffsetMode(JI)I
.end method

.method private native setRotation(JI)I
.end method

.method private native setSensorData(J[Ljava/lang/Object;I)I
.end method

.method private native setSensorReliability(JII)I
.end method


# virtual methods
.method public calc()I
    .locals 4

    .line 216
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 218
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->calc(J)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public finish()I
    .locals 6

    .line 102
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 104
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->finish(J)I

    move-result v0

    .line 105
    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->deleteNativeObject(J)V

    .line 106
    iput-wide v2, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    goto :goto_0

    :cond_0
    const v0, -0x7ffffffe

    :goto_0
    return v0
.end method

.method public initialize()I
    .locals 4

    .line 87
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 89
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->initialize(J)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public outputRotationAngle([D)I
    .locals 4

    .line 244
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 246
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->outputRotationAngle(J[D)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public outputRotationMatrix3x3(I[D)I
    .locals 4

    .line 230
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 232
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->outputRotationMatrix3x3(JI[D)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public setAppState(I)I
    .locals 4

    .line 132
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 134
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setAppState(JI)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public setMode(I)I
    .locals 4

    .line 118
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 120
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setMode(JI)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public setOffset(Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;I)I
    .locals 4

    .line 188
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 190
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setOffset(JLcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public setOffsetMode(I)I
    .locals 4

    .line 174
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 176
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setOffsetMode(JI)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public setRotation(I)I
    .locals 4

    .line 146
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 148
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setRotation(JI)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public setSensorData([Ljava/lang/Object;I)I
    .locals 4

    .line 202
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 204
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setSensorData(J[Ljava/lang/Object;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method

.method public setSensorReliability(II)I
    .locals 4

    .line 160
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 162
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->mNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setSensorReliability(JII)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, -0x7ffffffe

    :goto_0
    return p0
.end method
