.class public Lcom/sonyericsson/android/camera3d/ErrorCaseHandler$ErrorCode;
.super Ljava/lang/Object;
.source "ErrorCaseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCode"
.end annotation


# static fields
.field public static final STATUS_CAMERA_UNAVAILABLE:I = 0x3

.field public static final STATUS_DURING_VOICE_CALL:I = 0x5

.field public static final STATUS_FINISH_VOICE_CALL:I = 0x7

.field public static final STATUS_GENERAL_ERROR:I = 0x6

.field public static final STATUS_MEMORY_UNDER_60MB:I = 0x4

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_TEMPERATURE_ALREADY_HIGH:I = 0x1

.field public static final STATUS_TEMPERATURE_REACHED_HIGH:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
