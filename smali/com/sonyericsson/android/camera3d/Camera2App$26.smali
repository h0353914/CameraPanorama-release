.class Lcom/sonyericsson/android/camera3d/Camera2App$26;
.super Ljava/util/TimerTask;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->checkLocationService()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 6965
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$26;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 6968
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$26;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$26$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$26$1;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$26;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
