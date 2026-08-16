.class Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;
.super Ljava/lang/Object;
.source "Camera2ParamsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalValues"
.end annotation


# instance fields
.field public exposureTime:J

.field public sensorSensitivity:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;->sensorSensitivity:I

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;->exposureTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$1;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;-><init>()V

    return-void
.end method
