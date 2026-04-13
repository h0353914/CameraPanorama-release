.class Lcom/sonyericsson/android/camera3d/Camera2App$18;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->onError()V
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

    .line 5259
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$18;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5262
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$18;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12800(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 5263
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$18;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1800(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 5264
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$18;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1900(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    return-void
.end method
