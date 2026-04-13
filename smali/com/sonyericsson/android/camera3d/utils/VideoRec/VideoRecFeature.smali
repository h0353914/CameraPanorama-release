.class public Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecFeature;
.super Ljava/lang/Object;
.source "VideoRecFeature.java"


# static fields
.field public static final FEATURE_VIDEO_REC:Z = true

.field public static final enable_rec:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnableVideoRec()Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecFeature;->isSupportVideoRec()Z

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportVideoRec()Z
    .locals 2

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
