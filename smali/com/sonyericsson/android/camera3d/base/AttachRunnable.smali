.class public abstract Lcom/sonyericsson/android/camera3d/base/AttachRunnable;
.super Ljava/lang/Object;
.source "AttachRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final PREFIX_DIR:Ljava/lang/String; = "Camera"

.field private static final STORAGE_PATH_PREFIX:Ljava/lang/String;


# instance fields
.field protected final byteBuffer:[Ljava/nio/ByteBuffer;

.field private isNativeBuffer:Z

.field protected final pixelStride:[I

.field protected final rowStride:[I

.field private srcImage:Lcom/sonyericsson/android/camera3d/CaptureImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    sput-object v0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->STORAGE_PATH_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 38
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    .line 39
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->rowStride:[I

    .line 40
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->pixelStride:[I

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->isNativeBuffer:Z

    return-void
.end method

.method private static createBuffer([BII)Ljava/nio/ByteBuffer;
    .locals 1

    .line 97
    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v0
.end method

.method private insertPhotoMedia(ZLandroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v7, p4

    .line 249
    const-string v8, "Camera"

    invoke-static/range {p1 .. p2}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getVolume(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    return-object v9

    .line 254
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 255
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 256
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 257
    const-string v11, "_display_name"

    invoke-virtual {v2, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v5, "mime_type"

    const-string v6, "image/jpeg"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v5, "relative_path"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v3, "is_pending"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 264
    const-string v1, "_size"

    const-string v13, "bucket_display_name"

    filled-new-array {v11, v13, v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p3

    move-object v2, v12

    .line 269
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 272
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->STORAGE_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {v0, v12, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v3, p0

    move v4, p1

    move-object/from16 v5, p2

    .line 283
    invoke-direct {p0, p1, v5, v0, v2}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->insertPhotoMedia(ZLandroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v0

    goto :goto_0

    :cond_1
    move-object v2, v7

    .line 288
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 289
    throw v0

    :cond_2
    move-object v2, v7

    .line 292
    :goto_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v12, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private putImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/media/ExifInterface;Landroid/location/Location;DIIJJ)V
    .locals 12

    move-object v1, p2

    move-object v0, p3

    move/from16 v2, p8

    move-wide/from16 v3, p9

    const/16 v5, 0x10e

    const/16 v6, 0xb4

    const/16 v7, 0x5a

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_0

    const/4 v8, 0x6

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/16 v8, 0x8

    goto :goto_0

    :cond_2
    const/4 v8, 0x3

    :goto_0
    const/4 v9, 0x0

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v9

    goto :goto_1

    :cond_4
    move v5, v6

    .line 192
    :cond_5
    :goto_1
    const-string v2, "yyyy:MM:dd kk:mm:ss"

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_7

    .line 194
    const-string v6, "DateTime"

    invoke-virtual {p3, v6, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v6, "DateTimeOriginal"

    invoke-virtual {p3, v6, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v6, "DateTimeDigitized"

    invoke-virtual {p3, v6, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "Make"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p3, v2, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "Model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p3, v2, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_6

    .line 202
    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 203
    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 205
    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->locationValueToString(D)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->latitudeValueToNorS(D)Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-static {v10, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->locationValueToString(D)Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-static {v10, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->longitudeValueToEorW(D)Ljava/lang/String;

    move-result-object v10

    .line 211
    const-string v11, "GPSLatitude"

    invoke-virtual {p3, v11, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "GPSLatitudeRef"

    invoke-virtual {p3, v2, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "GPSLongitude"

    invoke-virtual {p3, v2, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v2, "GPSLongitudeRef"

    invoke-virtual {p3, v2, v10}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_6
    const-string v2, "ExposureTime"

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v2, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "Orientation"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v2, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v2, "ISOSpeedRatings"

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v2, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :try_start_0
    invoke-virtual {p3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 231
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 236
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 237
    const-string v2, "datetaken"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v6, 0x3e8

    .line 238
    div-long v2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "date_added"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    const-string v4, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    const-string v2, "_size"

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    const-string v2, "orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v2, "is_pending"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    move-object v3, p1

    .line 243
    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method private setPlane(Landroid/media/Image$Plane;I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v0, p2

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->rowStride:[I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    aput v1, v0, p2

    .line 93
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->pixelStride:[I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p1

    aput p1, p0, p2

    return-void
.end method


# virtual methods
.method protected closeSrc()V
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->srcImage:Lcom/sonyericsson/android/camera3d/CaptureImage;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CaptureImage;->close()V

    .line 75
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->isNativeBuffer:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 80
    aput-object v4, v0, v2

    .line 81
    aput-object v4, v0, v3

    .line 82
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->isNativeBuffer:Z

    :cond_0
    return-void
.end method

.method protected saveJpeg(ZLandroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;IILjava/lang/String;Landroid/location/Location;DII)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v0, p7

    .line 108
    iget-object v3, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    iget-object v5, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v7, 0x2

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v3, v5

    .line 109
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 110
    iget-object v5, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 111
    const-string v5, "YVU420_SEMIPLANAR"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    iget-object v5, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v7

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 113
    iget-object v5, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 115
    :cond_0
    iget-object v5, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 116
    iget-object v5, v1, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v7

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 118
    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 123
    :try_start_0
    invoke-direct/range {p0 .. p4}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->insertPhotoMedia(ZLandroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 124
    const-string v9, "rw"

    if-eqz v8, :cond_1

    .line 125
    :try_start_1
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/net/Uri;

    invoke-virtual {v2, v10, v9, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_1
    move-object v10, v5

    :goto_1
    if-eqz v10, :cond_2

    .line 129
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v11

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-static {v3, v12, v13, v11, v0}, Lcom/sonyericsson/android/camera3d/core/JpegIO;->writeJPEG(Ljava/nio/ByteBuffer;IIILjava/lang/String;)I

    move-result v4

    .line 130
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    if-nez v4, :cond_3

    .line 132
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v2, v0, v9, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 133
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_2
    const v4, -0x7ffffff8

    :cond_3
    :goto_2
    move-wide v12, v6

    move-object v14, v8

    move-object v15, v10

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v8, v5

    .line 143
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v8, v5

    .line 139
    :goto_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const v4, -0x7ffffff0

    :goto_5
    move-object v15, v5

    move-wide v12, v6

    move-object v14, v8

    .line 146
    :goto_6
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)V

    if-eqz v4, :cond_4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "writeJPEG ret = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaGP2"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_4
    if-eqz v15, :cond_5

    .line 155
    :try_start_2
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 156
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v5, v3

    goto :goto_7

    :catch_4
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_7
    move-object v4, v5

    .line 162
    iget-object v0, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move/from16 v8, p11

    move/from16 v9, p12

    .line 162
    invoke-direct/range {v1 .. v13}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->putImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/media/ExifInterface;Landroid/location/Location;DIIJJ)V

    if-eqz v15, :cond_6

    .line 166
    :try_start_3
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 168
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 171
    :cond_6
    :goto_8
    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected setImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)V
    .locals 10

    .line 49
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->image()Landroid/media/Image;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-direct {p0, v4, v1}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->setPlane(Landroid/media/Image$Plane;I)V

    .line 52
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->setPlane(Landroid/media/Image$Plane;I)V

    .line 53
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->setPlane(Landroid/media/Image$Plane;I)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->getWidth()I

    move-result v0

    .line 56
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->getHeight()I

    move-result v4

    .line 57
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->raw()[B

    move-result-object v5

    .line 58
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    mul-int/2addr v4, v0

    invoke-static {v5, v1, v4}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->createBuffer([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 59
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v4, 0x1

    div-int/lit8 v8, v4, 0x2

    add-int/lit8 v9, v8, -0x1

    invoke-static {v5, v7, v9}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->createBuffer([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 60
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->byteBuffer:[Ljava/nio/ByteBuffer;

    invoke-static {v5, v4, v8}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->createBuffer([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v6, v2

    .line 61
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->rowStride:[I

    aput v0, v4, v1

    .line 62
    aput v0, v4, v3

    .line 63
    aput v0, v4, v2

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->pixelStride:[I

    aput v3, v0, v1

    .line 65
    aput v2, v0, v3

    .line 66
    aput v2, v0, v2

    .line 67
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->isNativeBuffer:Z

    .line 70
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;->srcImage:Lcom/sonyericsson/android/camera3d/CaptureImage;

    return-void
.end method
