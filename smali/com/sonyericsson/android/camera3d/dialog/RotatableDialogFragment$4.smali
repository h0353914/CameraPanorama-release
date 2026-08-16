.class Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$4;
.super Ljava/lang/Object;
.source "RotatableDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$4;->this$0:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 133
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$4;->this$0:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->access$100(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$4;->this$0:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->access$100(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/high16 v0, 0x41600000    # 14.0f

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$4;->this$0:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->access$100(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 138
    invoke-virtual {p0, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_1
    return-void
.end method
