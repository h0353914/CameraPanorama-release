.class public Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw;
.super Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;
.source "VideoRecorderRaw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw$RawRenderListener;
    }
.end annotation


# instance fields
.field private final startTimeUs:J


# direct methods
.method public constructor <init>(IIIFLjava/lang/String;)V
    .locals 7

    .line 27
    invoke-static {p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw;->getColorFormat(IIIF)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;-><init>(IIIFILjava/lang/String;)V

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw;->startTimeUs:J

    return-void
.end method

.method private static getColorFormat(IIIF)I
    .locals 4

    .line 52
    const-string v0, "video/avc"

    invoke-static {v0, p0, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    .line 53
    const-string p1, "bitrate"

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 54
    const-string p1, "frame-rate"

    invoke-virtual {p0, p1, p3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 55
    const-string p1, "i-frame-interval"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 59
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 61
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    move-object p3, p1

    :goto_0
    const v0, 0x7f420888

    .line 64
    filled-new-array {v0}, [I

    move-result-object v0

    .line 67
    const-string v1, "color-format"

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_0

    .line 69
    aget v3, v0, v2

    invoke-virtual {p0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 71
    :try_start_1
    invoke-virtual {p3, p0, p1, p1, p2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "format: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoRecorderRaw"

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Landroid/media/MediaCodec;->stop()V

    .line 86
    invoke-virtual {p3}, Landroid/media/MediaCodec;->release()V

    goto :goto_2

    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :cond_0
    :goto_2
    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public encodeFrame(Landroid/media/Image;JLcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw$RawRenderListener;)V
    .locals 10

    .line 33
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_0

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 38
    invoke-interface {p4, v0, p1}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw$RawRenderListener;->onDraw(Ljava/nio/ByteBuffer;Landroid/media/Image;)I

    move-result v6

    .line 39
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw;->mEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-wide v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_0
    const/4 p1, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->drainEncoder(Z)V

    return-void
.end method

.method public encodeFrame(Landroid/media/Image;Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw$RawRenderListener;)V
    .locals 4

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw;->startTimeUs:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw;->encodeFrame(Landroid/media/Image;JLcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw$RawRenderListener;)V

    return-void
.end method

.method public bridge synthetic end()V
    .locals 0

    .line 19
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->end()V

    return-void
.end method
