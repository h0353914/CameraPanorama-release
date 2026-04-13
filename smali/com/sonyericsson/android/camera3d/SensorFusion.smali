.class Lcom/sonyericsson/android/camera3d/SensorFusion;
.super Ljava/lang/Object;
.source "SensorFusion.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SensorFusion"

.field private static final MAX_DATA_NUM:I = 0x200

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

.field public static final SENSOR_TYPE_NUM:I = 0x4

.field public static final SENSOR_TYPE_ROTATION_VECTOR:I = 0x3

.field public static final STATE_CALC_OFFSET:I = 0x0

.field public static final STATE_PROCESS:I = 0x1


# instance fields
.field private mAllValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

.field private final mPartOfAccelerometerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private final mPartOfGyroscopeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private final mPartOfMagneticFieldList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private final mPartOfRotationVectorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorMatrix:[[D

.field private final mStock:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    .line 66
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mStock:Z

    .line 67
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mStock:Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 70
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-array p1, v0, [[D

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    move p1, v1

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->createMatrix()[D

    move-result-object v2

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 78
    :cond_1
    new-instance p1, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    .line 79
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->initialize()I

    move-result p0

    if-eqz p0, :cond_2

    const-string p1, "SensorFusion"

    .line 81
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MorphoSensorFusion.initialize error ret:0x%08X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private calcRotationMatrix([DDDD)V
    .locals 8

    .line 365
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->createMatrix()[D

    move-result-object v0

    .line 366
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->createMatrix()[D

    move-result-object v1

    .line 367
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->createMatrix()[D

    move-result-object v2

    .line 368
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->createMatrix()[D

    move-result-object v3

    .line 370
    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const/4 v6, 0x4

    aput-wide v4, v0, v6

    .line 371
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    const/4 v7, 0x5

    aput-wide v4, v0, v7

    .line 372
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const/4 v7, 0x7

    aput-wide v4, v0, v7

    .line 373
    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    const/16 v4, 0x8

    aput-wide p4, v0, v4

    .line 375
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    const/4 v5, 0x0

    aput-wide p4, v1, v5

    .line 376
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    const/4 v7, 0x2

    aput-wide p4, v1, v7

    .line 377
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    neg-double p4, p4

    const/4 v7, 0x6

    aput-wide p4, v1, v7

    .line 378
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    aput-wide p2, v1, v4

    .line 380
    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    aput-wide p2, v2, v5

    .line 381
    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    neg-double p2, p2

    const/4 p4, 0x1

    aput-wide p2, v2, p4

    .line 382
    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const/4 p4, 0x3

    aput-wide p2, v2, p4

    .line 383
    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    aput-wide p2, v2, v6

    .line 385
    invoke-direct {p0, v3, v0, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->multMatrix([D[D[D)V

    .line 386
    invoke-direct {p0, p1, v3, v2}, Lcom/sonyericsson/android/camera3d/SensorFusion;->multMatrix([D[D[D)V

    return-void
.end method

.method private clearArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 331
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private createMatrix()[D
    .locals 0

    const/16 p0, 0x9

    .line 390
    new-array p0, p0, [D

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method private getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 336
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_2

    .line 340
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v0, 0x200

    if-le p0, v0, :cond_1

    move p0, v0

    .line 346
    :cond_1
    new-array v0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    .line 348
    new-instance v3, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;

    iget-wide v4, v4, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;->mValues:[D

    invoke-direct {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;-><init>(J[D)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    if-ge v2, p0, :cond_3

    .line 351
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private isExistValue(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;",
            ">;)Z"
        }
    .end annotation

    .line 264
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isUpdateSensorMatrix()Z
    .locals 2

    .line 236
    iget v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMode:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 254
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    .line 255
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result p0

    and-int/2addr p0, v0

    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    .line 251
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result p0

    and-int/2addr p0, v0

    goto :goto_0

    .line 246
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    .line 247
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result p0

    and-int/2addr p0, v0

    goto :goto_0

    .line 243
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result p0

    goto :goto_0

    .line 238
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    .line 239
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result v1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    .line 240
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->isExistValue(Ljava/util/ArrayList;)Z

    move-result p0

    and-int/2addr p0, v0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private multMatrix([D[D[D)V
    .locals 11

    const/16 p0, 0x9

    .line 398
    new-array p0, p0, [D

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    const-wide/16 v4, 0x0

    move-wide v5, v4

    move v4, v0

    :goto_2
    if-ge v4, v2, :cond_0

    mul-int/lit8 v7, v1, 0x3

    add-int/2addr v7, v4

    .line 403
    aget-wide v7, p2, v7

    mul-int/lit8 v9, v4, 0x3

    add-int/2addr v9, v3

    aget-wide v9, p3, v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v3

    .line 405
    aput-wide v5, p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_2
    array-length p2, p0

    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private setInputSensorData([Ljava/lang/Object;I)I
    .locals 0

    if-nez p1, :cond_0

    const p0, -0x7fffffff

    return p0

    .line 360
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setSensorData([Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method private updateSensorMatrix()I
    .locals 10

    .line 271
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mStock:Z

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v0, v4

    .line 280
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 282
    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setInputSensorData([Ljava/lang/Object;I)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v5, "SensorFusion"

    .line 284
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SensorFusion.setSensorData(SENSOR_TYPE_GYROSCOPE) error ret:0x%08X"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 289
    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setInputSensorData([Ljava/lang/Object;I)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v5, "SensorFusion"

    .line 291
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SensorFusion.setSensorData(SENSOR_TYPE_ACCELEROMETER) error ret:0x%08X"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 296
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setInputSensorData([Ljava/lang/Object;I)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v5, "SensorFusion"

    .line 298
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SensorFusion.setSensorData(SENSOR_TYPE_MAGNETIC_FIELD) error ret:0x%08X"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 303
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera3d/SensorFusion;->setInputSensorData([Ljava/lang/Object;I)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v5, "SensorFusion"

    .line 305
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "SensorFusion.setSensorData(SENSOR_TYPE_ROTATION_VECTOR) error ret:0x%08X"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_5
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->calc()I

    move-result v5

    or-int/2addr v0, v5

    .line 309
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    .line 310
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    .line 311
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    .line 312
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    :cond_6
    move v5, v4

    goto :goto_1

    :cond_7
    :goto_0
    move v5, v3

    :goto_1
    if-nez v5, :cond_1

    .line 314
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->clearArrayList(Ljava/util/ArrayList;)V

    .line 315
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->clearArrayList(Ljava/util/ArrayList;)V

    .line 316
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->clearArrayList(Ljava/util/ArrayList;)V

    .line 317
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/SensorFusion;->clearArrayList(Ljava/util/ArrayList;)V

    .line 319
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    aget-object v5, v5, v3

    invoke-virtual {v1, v3, v5}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    move-result v1

    or-int/2addr v0, v1

    .line 321
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    aget-object v3, v3, v4

    invoke-virtual {v1, v4, v3}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    move-result v1

    or-int/2addr v0, v1

    .line 323
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    aget-object p0, p0, v2

    invoke-virtual {v1, v2, p0}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public clearStockData()V
    .locals 2

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mStock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSensorMatrix([D[D[D[I)I
    .locals 4

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->isUpdateSensorMatrix()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SensorFusion;->updateSensorMatrix()I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 162
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    aget-object v3, v3, v1

    array-length v3, v3

    invoke-static {v2, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-eqz p2, :cond_2

    .line 166
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    const/4 v2, 0x3

    aget-object p1, p1, v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    aget-object v2, v3, v2

    array-length v2, v2

    invoke-static {p1, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    const/4 p1, 0x1

    if-eqz p3, :cond_3

    .line 170
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    aget-object p2, p2, p1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    aget-object v2, v2, p1

    array-length v2, v2

    invoke-static {p2, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    :cond_3
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mStock:Z

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    array-length p2, p4

    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_4

    .line 174
    :goto_1
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_4

    .line 175
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, p1

    aput p2, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    :cond_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getStockData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;",
            ">;>;"
        }
    .end annotation

    .line 184
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mStock:Z

    if-eqz v0, :cond_0

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mAllValueList:Ljava/util/ArrayList;

    .line 187
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;-><init>(J[F)V

    .line 210
    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 216
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x200

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 228
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 229
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_4

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 230
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_5

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 231
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 6

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->finish()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SensorFusion"

    .line 89
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "MorphoSensorFusion.finish error ret:0x%08X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetOffsetValue()V
    .locals 2

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setAppState(I)I

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->calc()I

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppState(I)I
    .locals 1

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setAppState(I)I

    move-result p1

    const/4 v0, 0x0

    or-int/2addr p1, v0

    .line 129
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setInitialOrientation(I)V
    .locals 10

    int-to-double v0, p1

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 143
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    const/4 v2, 0x0

    aget-object v3, p1, v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/android/camera3d/SensorFusion;->calcRotationMatrix([DDDD)V

    .line 144
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    const/4 v2, 0x3

    aget-object v3, p1, v2

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/android/camera3d/SensorFusion;->calcRotationMatrix([DDDD)V

    .line 145
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mSensorMatrix:[[D

    const/4 v2, 0x1

    aget-object v3, p1, v2

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/android/camera3d/SensorFusion;->calcRotationMatrix([DDDD)V

    return-void
.end method

.method public setMode(I)I
    .locals 1

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iput p1, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMode:I

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setMode(I)I

    move-result p1

    const/4 v0, 0x0

    or-int/2addr p1, v0

    .line 100
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOffset(Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;I)I
    .locals 2

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setOffset(Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion$SensorData;I)I

    move-result p1

    const/4 p2, 0x0

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const p1, -0x7ffffffe

    .line 121
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOffsetMode(I)I
    .locals 1

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setOffsetMode(I)I

    move-result p1

    const/4 v0, 0x0

    or-int/2addr p1, v0

    .line 108
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRotation(I)I
    .locals 1

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SensorFusion;->mMorphoSensorFusion:Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/core/MorphoSensorFusion;->setRotation(I)I

    move-result p1

    const/4 v0, 0x0

    or-int/2addr p1, v0

    .line 137
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
