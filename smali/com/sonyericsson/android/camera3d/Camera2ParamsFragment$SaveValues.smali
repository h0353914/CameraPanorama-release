.class Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;
.super Ljava/lang/Object;
.source "Camera2ParamsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveValues"
.end annotation


# instance fields
.field public aec:I

.field public auto:Z

.field public fps:F

.field public fpsUpper:I

.field public iso:I

.field public shutterSpeed:I

.field public tv:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->auto:Z

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->tv:Z

    .line 42
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$000()[I

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$000()[I

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x6

    aget v1, v1, v2

    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->shutterSpeed:I

    .line 43
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$100()[I

    move-result-object v1

    aget v0, v1, v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->iso:I

    const/high16 v0, 0x41c00000    # 24.0f

    .line 44
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->fps:F

    const/16 v0, 0x18

    .line 45
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->fpsUpper:I

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->aec:I

    return-void
.end method
