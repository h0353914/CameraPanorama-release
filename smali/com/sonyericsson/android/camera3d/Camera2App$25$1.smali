.class Lcom/sonyericsson/android/camera3d/Camera2App$25$1;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/Camera2App$25;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$25;)V
    .locals 0

    .line 6782
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 6785
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$25;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$25;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v0

    .line 6786
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$25;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 6787
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->updateGpsSearch(Z)V

    :cond_0
    return-void
.end method
