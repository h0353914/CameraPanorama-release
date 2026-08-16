.class Lcom/sonyericsson/android/camera3d/Camera2App$11;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->onTakePictureStart(Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;)V
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

    .line 4700
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$11;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4703
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$11;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1800(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 4704
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$11;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12100(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 4705
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$11;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4706
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$11;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setPauseIcon()V

    :cond_0
    return-void
.end method
