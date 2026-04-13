.class Lcom/sonyericsson/android/camera3d/Camera2App$3;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
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

    .line 841
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 862
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2400(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    .line 863
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->startPreview(I)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;

    .line 846
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->openCamera(Landroid/view/SurfaceHolder;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 848
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1800(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 849
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object p1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1900(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void

    .line 853
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget v1, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->viewAngleH:F

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2002(Lcom/sonyericsson/android/camera3d/Camera2App;F)F

    .line 854
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget v1, v0, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->viewAngleV:F

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2102(Lcom/sonyericsson/android/camera3d/Camera2App;F)F

    .line 855
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/MorphoCamera1;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p1

    .line 856
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/InternalSettings;->initializeUI(Lcom/sonyericsson/android/camera3d/CameraInfo;)V

    .line 857
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2300(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
