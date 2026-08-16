.class Lcom/sonyericsson/android/camera3d/Camera2App$CameraCheckTimer;
.super Landroid/os/CountDownTimer;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraCheckTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;JJ)V
    .locals 0

    .line 6357
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$CameraCheckTimer;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 6358
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 6363
    const-string v0, "Camera2App"

    const-string v1, "CameraCheckTimer is timeout."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6364
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$CameraCheckTimer;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCamera()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
