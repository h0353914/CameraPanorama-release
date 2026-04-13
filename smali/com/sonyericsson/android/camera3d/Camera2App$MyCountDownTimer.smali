.class Lcom/sonyericsson/android/camera3d/Camera2App$MyCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;JJ)V
    .locals 0

    .line 6531
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$MyCountDownTimer;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 6532
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 6539
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$MyCountDownTimer;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setResult(I)V

    .line 6540
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$MyCountDownTimer;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->finish()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
