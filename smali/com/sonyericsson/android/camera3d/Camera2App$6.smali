.class Lcom/sonyericsson/android/camera3d/Camera2App$6;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->onCreate(Landroid/os/Bundle;)V
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

    .line 957
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeSettingDialog()V
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2700(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 966
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2800(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    return-void
.end method

.method public isOpened()Z
    .locals 0

    .line 971
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p0

    return p0
.end method

.method public openSettingDialog()Z
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2600(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p0

    return p0
.end method
