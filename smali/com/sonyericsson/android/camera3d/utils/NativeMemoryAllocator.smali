.class public Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;
.super Ljava/lang/Object;
.source "NativeMemoryAllocator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeMemoryAllocator"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-string v0, "NativeMemoryAllocator"

    :try_start_0
    const-string v1, "morpho_memory_allocator"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    const-string v1, "load libmorpho_memory_allocator.so"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "can\'t loadLibrary"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native allocateBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static native freeBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public static native getAddress(Ljava/nio/ByteBuffer;)J
.end method
