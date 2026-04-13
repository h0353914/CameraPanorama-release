.class Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCameraInfoViewRunnable"
.end annotation


# instance fields
.field private mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 1904
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 1904
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1912
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v1, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1914
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v2, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1916
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4100(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1917
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;-><init>(DI)V

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4102(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;)Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    goto :goto_0

    .line 1919
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4100(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->sets(DI)V

    .line 1921
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->updateCameraInfoView(JI)V

    .line 1922
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1923
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isAutoEdgeNR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1924
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->add(I)V

    :cond_2
    return-void
.end method

.method public setTotalCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1908
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$UpdateCameraInfoViewRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method
