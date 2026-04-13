.class Lcom/sonyericsson/android/camera3d/Camera2App$26$1;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/Camera2App$26;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$26;)V
    .locals 0

    .line 6968
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$26$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 6971
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$26$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$26;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$26;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v0

    .line 6972
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$26$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$26;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$26;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 6973
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->updateGpsSearch(Z)V

    :cond_0
    return-void
.end method
