.class public Lcom/sonyericsson/android/camera3d/core/JpegIO;
.super Ljava/lang/Object;
.source "JpegIO.java"


# static fields
.field public static final MORPHO_JPEGIO_ROTATEMODE_0:I = 0x0

.field public static final MORPHO_JPEGIO_ROTATEMODE_180:I = 0x2

.field public static final MORPHO_JPEGIO_ROTATEMODE_270:I = 0x3

.field public static final MORPHO_JPEGIO_ROTATEMODE_90:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MorphoJpegIO"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "morpho_jpeg_io"

    .line 24
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "MorphoJpegIO"

    const-string v1, "load libmorpho_jpeg_io.so"

    .line 25
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MorphoJpegIO"

    .line 28
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MorphoJpegIO"

    const-string v1, "can\'t loadLibrary"

    .line 29
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getJPEGSize(Ljava/lang/String;[I)I
.end method

.method public static native readJPEG(Ljava/nio/ByteBuffer;IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native readJPEG(Ljava/nio/ByteBuffer;IILjava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native readJPEG(Ljava/nio/ByteBuffer;II[ILjava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native writeJPEG(Ljava/nio/ByteBuffer;IIILjava/lang/String;)I
.end method

.method public static native writeJPEG(Ljava/nio/ByteBuffer;IILjava/lang/String;Ljava/lang/String;)I
.end method
