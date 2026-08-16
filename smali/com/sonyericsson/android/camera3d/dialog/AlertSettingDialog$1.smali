.class Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$1;
.super Ljava/lang/Object;
.source "AlertSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App;

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->access$000(Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    .line 119
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->access$100(Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onCancelLocationSetting()V

    :cond_1
    return-void
.end method
