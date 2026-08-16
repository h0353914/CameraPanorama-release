.class Lcom/sonyericsson/android/camera3d/InternalSettings$2;
.super Ljava/lang/Object;
.source "InternalSettings.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/InternalSettings;->initViews(Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/InternalSettings;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/InternalSettings;)V
    .locals 0

    .line 997
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings$2;->this$0:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamChanged()V
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings$2;->this$0:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->access$100(Lcom/sonyericsson/android/camera3d/InternalSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings$2;->this$0:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->access$200(Lcom/sonyericsson/android/camera3d/InternalSettings;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings$2;->this$0:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->access$300(Lcom/sonyericsson/android/camera3d/InternalSettings;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings$2;->this$0:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->access$300(Lcom/sonyericsson/android/camera3d/InternalSettings;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings$2;->this$0:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->access$400(Lcom/sonyericsson/android/camera3d/InternalSettings;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onRequestParamChange()V

    return-void
.end method
