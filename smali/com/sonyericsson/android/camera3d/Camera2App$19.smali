.class Lcom/sonyericsson/android/camera3d/Camera2App$19;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCamera()V
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

    .line 5130
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$19;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 5133
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$19;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12400(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 5134
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$19;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12500(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 5135
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$19;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA_LAUNCH:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1900(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void
.end method
