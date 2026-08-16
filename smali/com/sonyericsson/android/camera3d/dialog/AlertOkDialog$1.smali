.class Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$1;
.super Ljava/lang/Object;
.source "AlertOkDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$1;->this$0:Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App;

    if-eqz p1, :cond_0

    .line 90
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    check-cast p0, Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->requestPermissionForCamera()V

    :cond_0
    return-void
.end method
