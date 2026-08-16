.class Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;)V
    .locals 0

    .line 2401
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2404
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5600(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    .line 2405
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2406
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5700(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2407
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1800(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 2408
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->finishState()Z

    .line 2410
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5700(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2411
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 2412
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->setDefaultCameraState()V

    .line 2413
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->pause()V

    .line 2414
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->exit()V

    .line 2416
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2418
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4500(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2420
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5702(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 2421
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8002(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 2422
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2423
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2800(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    :cond_3
    return-void
.end method
