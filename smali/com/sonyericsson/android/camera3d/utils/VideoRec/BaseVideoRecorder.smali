.class abstract Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;
.super Ljava/lang/Object;
.source "BaseVideoRecorder.java"


# static fields
.field static final IFRAME_INTERVAL:I = 0x1

.field static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "MORPHO"

.field private static final VERBOSE:Z = false


# instance fields
.field private mBitRate:I

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mColorFormat:I

.field mEncoder:Landroid/media/MediaCodec;

.field private final mFrameRate:F

.field private mHeight:I

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private final mOutputPath:Ljava/lang/String;

.field mSurface:Landroid/view/Surface;

.field private mTrackIndex:I

.field private mWidth:I


# direct methods
.method constructor <init>(IIIFILjava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mWidth:I

    .line 46
    iput p2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mHeight:I

    .line 47
    iput p3, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBitRate:I

    .line 48
    iput p4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mFrameRate:F

    .line 49
    iput p5, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mColorFormat:I

    .line 50
    iput-object p6, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mOutputPath:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->prepareEncoder()V

    return-void
.end method

.method private prepareEncoder()V
    .locals 4

    .line 55
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 57
    iget v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mWidth:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mHeight:I

    const-string v2, "video/avc"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 59
    const-string v1, "color-format"

    iget v3, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mColorFormat:I

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 60
    const-string v1, "bitrate"

    iget v3, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBitRate:I

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 61
    const-string v1, "frame-rate"

    iget v3, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mFrameRate:F

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 62
    const-string v1, "i-frame-interval"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 66
    :try_start_0
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    .line 67
    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 68
    iget v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mColorFormat:I

    const v1, 0x7f000789

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mSurface:Landroid/view/Surface;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :try_start_1
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mOutputPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mTrackIndex:I

    .line 83
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mMuxerStarted:Z

    return-void

    :catch_0
    move-exception p0

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MediaMuxer creation failed"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Encoder creation failed"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private releaseEncoder()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 195
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 201
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    :cond_1
    return-void
.end method


# virtual methods
.method drainEncoder(Z)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 93
    iget v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mColorFormat:I

    const v2, 0x7f000789

    if-ne v1, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_1

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_1

    .line 99
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    if-ltz p1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 107
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 109
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mTrackIndex:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v1, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 110
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    return-void

    .line 124
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    if-nez p1, :cond_4

    goto/16 :goto_3

    :cond_5
    const/4 v2, -0x2

    .line 132
    const-string v3, "MORPHO"

    if-ne v1, v2, :cond_7

    .line 134
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mMuxerStarted:Z

    if-nez v1, :cond_6

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "encoder output format changed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mTrackIndex:I

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    const/4 v1, 0x1

    .line 143
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mMuxerStarted:Z

    goto :goto_1

    .line 135
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "format changed twice"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-gez v1, :cond_8

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 153
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    .line 158
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 161
    :cond_9
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_b

    .line 162
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mMuxerStarted:Z

    if-eqz v4, :cond_a

    .line 168
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget v5, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mTrackIndex:I

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v5, v2, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_2

    .line 163
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "muxer hasn\'t started"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    :cond_b
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 177
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    if-nez p1, :cond_c

    .line 179
    const-string p0, "reached end of stream unexpectedly"

    invoke-static {v3, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_3
    return-void

    .line 150
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "encoderOutputBuffer "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " was null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public end()V
    .locals 1

    const/4 v0, 0x1

    .line 206
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->drainEncoder(Z)V

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->releaseEncoder()V

    return-void
.end method
