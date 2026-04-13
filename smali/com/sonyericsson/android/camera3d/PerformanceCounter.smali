.class public Lcom/sonyericsson/android/camera3d/PerformanceCounter;
.super Ljava/lang/Object;
.source "PerformanceCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/PerformanceCounter$PerformanceCounterOff;
    }
.end annotation


# instance fields
.field private mTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/PerformanceCounter$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;-><init>()V

    return-void
.end method

.method private getCurTime()J
    .locals 2

    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static newInstance(Z)Lcom/sonyericsson/android/camera3d/PerformanceCounter;
    .locals 1

    if-eqz p0, :cond_0

    .line 41
    new-instance p0, Lcom/sonyericsson/android/camera3d/PerformanceCounter;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sonyericsson/android/camera3d/PerformanceCounter$PerformanceCounterOff;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter$PerformanceCounterOff;-><init>(Lcom/sonyericsson/android/camera3d/PerformanceCounter$1;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public get()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->mTime:J

    return-wide v0
.end method

.method public putLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 37
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "PRINT_PROCESSING_TIME :%s : %2$,3d nsec"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->get()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v2, p2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->getCurTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->mTime:J

    return-void
.end method

.method public stop()V
    .locals 4

    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->getCurTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->mTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->mTime:J

    return-void
.end method
