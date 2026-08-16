.class public Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "AlertOkDialog.java"


# static fields
.field public static final DIALOG_ORIENTATION:Ljava/lang/String; = "DIALOG_ORIENTATION"

.field public static final OK_BODY_CAPTION_1:Ljava/lang/String; = "okBodyCaption1"

.field public static final OK_BODY_CAPTION_2:Ljava/lang/String; = "okBodyCaption2"

.field public static final OK_BODY_TEXT_1:Ljava/lang/String; = "okBodyText1"

.field public static final OK_BODY_TEXT_2:Ljava/lang/String; = "okBodyText2"


# instance fields
.field private mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    return-object p0
.end method


# virtual methods
.method public isShowing()Z
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x7f0c0059

    .line 41
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0c0081

    invoke-virtual {p0, v3, v2}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f0c0080

    invoke-virtual {p0, v3, v1}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a001c

    const/4 v4, 0x0

    .line 44
    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f080027

    .line 45
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 46
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080025

    .line 47
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080020

    .line 50
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080022

    .line 51
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f080021

    .line 52
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080023

    .line 53
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 54
    const-string v6, "okBodyCaption1"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    const-string v7, ""

    const/16 v8, 0x8

    if-eqz v6, :cond_0

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 56
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    :goto_0
    const-string v1, "okBodyText1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    invoke-static {v1, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 62
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_1
    const-string v1, "okBodyCaption2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 67
    invoke-static {v1, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :goto_2
    const-string v1, "okBodyText2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 73
    invoke-static {v1, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 74
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 76
    :cond_3
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_3
    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    const-string v2, "DIALOG_ORIENTATION"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 84
    :cond_4
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;

    .line 86
    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$1;-><init>(Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;Landroidx/fragment/app/FragmentActivity;)V

    const p1, 0x7f0c007a

    .line 87
    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->setCancelable(Z)V

    .line 96
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    .line 97
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$2;-><init>(Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 107
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->show()V

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
