.class Lcom/sonyericsson/android/camera3d/Camera2App$28;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->showPanoramaGuideDirection()V
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

    .line 7260
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$28;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 7263
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$28;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7264
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$28;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$17100(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    :cond_0
    return-void
.end method
