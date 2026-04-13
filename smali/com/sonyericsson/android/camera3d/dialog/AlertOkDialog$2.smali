.class Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$2;
.super Ljava/lang/Object;
.source "AlertOkDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->access$000(Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->access$000(Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    const/high16 v0, 0x41600000    # 14.0f

    .line 103
    invoke-virtual {p0, p1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    return-void
.end method
