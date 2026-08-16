.class Lcom/sonyericsson/android/camera3d/Camera2App$CaptureTimer;
.super Landroid/os/CountDownTimer;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;JJ)V
    .locals 0

    .line 7139
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureTimer;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 7140
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 7145
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureTimer;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
