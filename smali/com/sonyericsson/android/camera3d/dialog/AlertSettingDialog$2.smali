.class Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$2;
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

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$2;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 107
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    const/16 v0, 0x32

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->changeTrackingFlag(Z)V

    return-void
.end method
