.class Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$2;
.super Ljava/lang/Object;
.source "LicenseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 85
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$2;->this$0:Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->access$101(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
