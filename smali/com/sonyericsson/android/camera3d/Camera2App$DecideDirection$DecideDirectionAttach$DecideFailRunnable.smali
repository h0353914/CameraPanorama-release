.class Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecideFailRunnable"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;)V
    .locals 0

    .line 2645
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 2645
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2649
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 2650
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startState()V

    .line 2651
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5902(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    return-void
.end method
