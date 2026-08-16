.class Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;
.super Ljava/lang/Object;
.source "ErrorCaseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/ErrorCaseHandler$ErrorCode;
    }
.end annotation


# static fields
.field private static final FILE_PATH_ERROR:I = -0x1

.field private static sStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatus()I
    .locals 1

    .line 36
    sget v0, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->sStatus:I

    return v0
.end method

.method public static setStatus(I)V
    .locals 0

    .line 44
    sput p0, Lcom/sonyericsson/android/camera3d/ErrorCaseHandler;->sStatus:I

    return-void
.end method
