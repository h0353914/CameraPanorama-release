.class public Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;
.super Landroid/app/AlertDialog$Builder;
.source "RotatableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mSensorOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createRotatableDialog()Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;
    .locals 3

    .line 65
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;-><init>(Landroid/app/AlertDialog;Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$1;)V

    .line 67
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->setViewAsScrollable(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 69
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->setCancelable(Z)V

    .line 72
    iget p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->mSensorOrientation:I

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->setOrientation(I)V

    return-object v1
.end method

.method public setOrientation(I)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;
    .locals 0

    .line 56
    iput p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->mSensorOrientation:I

    return-object p0
.end method
