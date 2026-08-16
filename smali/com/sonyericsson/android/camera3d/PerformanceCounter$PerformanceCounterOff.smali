.class Lcom/sonyericsson/android/camera3d/PerformanceCounter$PerformanceCounterOff;
.super Lcom/sonyericsson/android/camera3d/PerformanceCounter;
.source "PerformanceCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/PerformanceCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerformanceCounterOff"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;-><init>(Lcom/sonyericsson/android/camera3d/PerformanceCounter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/PerformanceCounter$1;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter$PerformanceCounterOff;-><init>()V

    return-void
.end method


# virtual methods
.method public get()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public putLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
