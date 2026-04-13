.class public abstract Lcom/sonyericsson/android/camera3d/base/AttachRunnable;
.super Ljava/lang/Object;
.source "AttachRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final byteBuffer:[Ljava/nio/ByteBuffer;

.field private isNativeBuffer:Z

.field protected final pixelStride:[I

.field protected final rowStride:[I

.field private srcImage:Lcom/sonyericsson/android/camera3d/CaptureImage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 36
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    .line 37
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->rowStride:[I

    .line 38
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->pixelStride:[I

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->isNativeBuffer:Z

    return-void
.end method

.method private static createBuffer([BII)Ljava/nio/ByteBuffer;
    .locals 1

    .line 92
    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v0
.end method

.method private putImage(Landroid/content/ContentResolver;Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;DIIJJ)V
    .locals 13

    move-object v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p9

    move-wide/from16 v4, p10

    const/16 v6, 0x8

    const/16 v7, 0x10e

    const/16 v8, 0xb4

    const/16 v9, 0x5a

    if-eq v3, v9, :cond_2

    if-eq v3, v8, :cond_1

    if-eq v3, v7, :cond_0

    const/4 v10, 0x6

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    move v10, v6

    goto :goto_0

    :cond_2
    const/4 v10, 0x3

    :goto_0
    if-eq v3, v9, :cond_4

    if-eq v3, v8, :cond_5

    if-eq v3, v7, :cond_3

    move v7, v9

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    move v7, v8

    :cond_5
    :goto_1
    const-string v3, "yyyy:MM:dd kk:mm:ss"

    .line 222
    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_8

    const-string v8, "DateTime"

    .line 224
    invoke-virtual {v1, v8, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "DateTimeOriginal"

    .line 225
    invoke-virtual {v1, v8, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "DateTimeDigitized"

    .line 226
    invoke-virtual {v1, v8, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Make"

    .line 227
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Model"

    .line 228
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_6

    .line 232
    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    .line 233
    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    .line 235
    invoke-static {v8, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->locationValueToString(D)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v8, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->latitudeValueToNorS(D)Ljava/lang/String;

    move-result-object v8

    .line 238
    invoke-static {v11, v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->locationValueToString(D)Ljava/lang/String;

    move-result-object v9

    .line 239
    invoke-static {v11, v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->longitudeValueToEorW(D)Ljava/lang/String;

    move-result-object v11

    const-string v12, "GPSLatitude"

    .line 241
    invoke-virtual {v1, v12, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "GPSLatitudeRef"

    .line 242
    invoke-virtual {v1, v3, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "GPSLongitude"

    .line 244
    invoke-virtual {v1, v3, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "GPSLongitudeRef"

    .line 245
    invoke-virtual {v1, v3, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v3, "ExposureTime"

    .line 249
    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Orientation"

    .line 250
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v3, v8, :cond_7

    const-string v3, "ISOSpeedRatings"

    .line 252
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v3, "ISOSpeedRatings"

    .line 255
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_2
    :try_start_0
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 265
    :cond_8
    :goto_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "title"

    .line 266
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_display_name"

    .line 267
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetaken"

    .line 268
    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_added"

    const-wide/16 v8, 0x3e8

    .line 269
    div-long v3, v4, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_modified"

    .line 270
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "mime_type"

    const-string v3, "image/jpeg"

    .line 271
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_data"

    move-object/from16 v3, p3

    .line 272
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_size"

    .line 273
    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "orientation"

    .line 274
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, p1

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private setPlane(Landroid/media/Image$Plane;I)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v0, p2

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->rowStride:[I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    aput v1, v0, p2

    .line 88
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->pixelStride:[I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p1

    aput p1, p0, p2

    return-void
.end method


# virtual methods
.method protected closeSrc()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->srcImage:Lcom/sonyericsson/android/camera3d/CaptureImage;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CaptureImage;->close()V

    .line 70
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->isNativeBuffer:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aput-object v4, v0, v2

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aput-object v4, v0, v3

    .line 77
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->isNativeBuffer:Z

    :cond_0
    return-void
.end method

.method protected saveJpeg(Landroid/content/ContentResolver;Ljava/lang/String;IILjava/lang/String;Landroid/location/Location;DII)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v2, p5

    .line 99
    iget-object v3, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v15, 0x1

    aget-object v6, v6, v15

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    add-int/2addr v3, v6

    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    add-int/2addr v3, v6

    .line 100
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 101
    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v5

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const-string v6, "YVU420_SEMIPLANAR"

    .line 102
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 104
    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v15

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 106
    :cond_0
    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v15

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 107
    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 109
    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move/from16 v6, p3

    move/from16 v7, p4

    .line 111
    invoke-static {v3, v6, v7, v4, v2}, Lcom/sonyericsson/android/camera3d/core/JpegIO;->writeJPEG(Ljava/nio/ByteBuffer;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 112
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)V

    if-eqz v2, :cond_1

    const-string v1, "PanoramaGP2"

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeJPEG ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 118
    :cond_1
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v15

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    .line 121
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 123
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v2

    .line 125
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v13

    move-object/from16 v2, p1

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v1 .. v14}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->putImage(Landroid/content/ContentResolver;Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;DIIJJ)V

    return v15
.end method

.method protected saveJpeg2Sd(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/location/Location;DII)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v3, p8

    .line 132
    iget-object v5, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    iget-object v7, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v15, 0x1

    aget-object v7, v7, v15

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int/2addr v5, v7

    .line 133
    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 134
    iget-object v7, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const-string v7, "YVU420_SEMIPLANAR"

    .line 135
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    iget-object v7, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 137
    iget-object v7, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v15

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 139
    :cond_0
    iget-object v7, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v15

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 140
    iget-object v7, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 142
    :goto_0
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 144
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v15

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    .line 145
    invoke-static {v8, v9}, Landroid/support/v4/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v8

    .line 146
    invoke-virtual {v8}, Landroid/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DCIM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "DCIM"

    .line 147
    invoke-virtual {v8, v9}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v9, "DCIM"

    .line 149
    invoke-virtual {v8, v9}, Landroid/support/v4/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v8

    if-nez v8, :cond_2

    return v6

    :cond_1
    move-object v8, v9

    :cond_2
    move-object v9, v8

    move-object/from16 v8, p5

    .line 156
    invoke-virtual {v9, v8}, Landroid/support/v4/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v8

    const-string v9, "image/jpeg"

    .line 157
    invoke-virtual {v8, v9, v7}, Landroid/support/v4/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v8

    const/4 v9, 0x0

    .line 160
    :try_start_0
    invoke-virtual {v8}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v10

    const-string v11, "rw"

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 162
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v11

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-static {v5, v12, v13, v11, v3}, Lcom/sonyericsson/android/camera3d/core/JpegIO;->writeJPEG(Ljava/nio/ByteBuffer;IIILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :try_start_1
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    if-nez v3, :cond_4

    .line 165
    invoke-virtual {v8}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v10

    const-string v11, "rw"

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move v10, v3

    move-object v3, v0

    goto :goto_2

    :cond_3
    const v3, -0x7ffffff8

    :cond_4
    :goto_1
    move-object v13, v10

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v0

    move v10, v6

    .line 175
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v13, v9

    move v3, v10

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 171
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const v3, -0x7ffffff0

    move-object v13, v9

    .line 178
    :goto_3
    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)V

    if-eqz v3, :cond_5

    const-string v1, "PanoramaGP2"

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeJPEG ret = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_5
    if-eqz v13, :cond_6

    .line 187
    :try_start_2
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 188
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, v3}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 191
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v9

    goto :goto_5

    :cond_6
    move-object v5, v9

    :goto_4
    move-object v3, v5

    .line 194
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v8}, Landroid/support/v4/provider/DocumentFile;->length()J

    move-result-wide v16

    move-object v5, v7

    move-object/from16 v6, p9

    move-wide/from16 v7, p10

    move/from16 v9, p12

    move/from16 v10, p13

    move-object v15, v13

    move-wide/from16 v13, v16

    invoke-direct/range {v1 .. v14}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->putImage(Landroid/content/ContentResolver;Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;DIIJJ)V

    if-eqz v15, :cond_7

    .line 197
    :try_start_3
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_6
    const/4 v1, 0x1

    return v1
.end method

.method protected setImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)V
    .locals 10

    .line 44
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->image()Landroid/media/Image;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-direct {p0, v4, v1}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->setPlane(Landroid/media/Image$Plane;I)V

    .line 47
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->setPlane(Landroid/media/Image$Plane;I)V

    .line 48
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->setPlane(Landroid/media/Image$Plane;I)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->getWidth()I

    move-result v0

    .line 51
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->getHeight()I

    move-result v4

    .line 52
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->raw()[B

    move-result-object v5

    .line 53
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    mul-int/2addr v4, v0

    invoke-static {v5, v1, v4}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->createBuffer([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 54
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v4, 0x1

    div-int/lit8 v8, v4, 0x2

    add-int/lit8 v9, v8, -0x1

    invoke-static {v5, v7, v9}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->createBuffer([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 55
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    invoke-static {v5, v4, v8}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->createBuffer([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v6, v2

    .line 56
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->rowStride:[I

    aput v0, v4, v1

    .line 57
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->rowStride:[I

    aput v0, v4, v3

    .line 58
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->rowStride:[I

    aput v0, v4, v2

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->pixelStride:[I

    aput v3, v0, v1

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->pixelStride:[I

    aput v2, v0, v3

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->pixelStride:[I

    aput v2, v0, v2

    .line 62
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->isNativeBuffer:Z

    .line 65
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->srcImage:Lcom/sonyericsson/android/camera3d/CaptureImage;

    return-void
.end method
