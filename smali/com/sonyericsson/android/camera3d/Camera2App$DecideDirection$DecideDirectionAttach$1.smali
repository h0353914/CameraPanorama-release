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

    .line 2389
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2392
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5600(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    .line 2393
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2394
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5700(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2395
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2396
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xdac

    invoke-static {v0, v2, v3, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6000(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;IZ)V

    .line 2398
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1800(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 2399
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->finishState()Z

    .line 2401
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5902(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 2402
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5700(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2403
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 2404
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->setDefaultCameraState()V

    .line 2405
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->pause()V

    .line 2406
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->exit()V

    .line 2408
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2410
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4500(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2412
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5702(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 2413
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8202(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 2414
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2415
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2800(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    :cond_4
    return-void
.end method
