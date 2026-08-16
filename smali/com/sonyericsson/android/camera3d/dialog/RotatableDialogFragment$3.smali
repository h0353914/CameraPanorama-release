.class Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$3;
.super Ljava/lang/Object;
.source "RotatableDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$3;->this$0:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$3;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 120
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$3;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$3;->this$0:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$3;->this$0:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    sget-object p1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_BACK_KEY:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->dismiss(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
