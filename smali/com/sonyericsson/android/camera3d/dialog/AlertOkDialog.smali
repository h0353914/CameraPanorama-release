.class public Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;
.super Landroid/support/v4/app/DialogFragment;
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
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

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
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

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
    .locals 11

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    .line 41
    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f0c0048

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const v4, 0x7f0c006a

    invoke-virtual {p0, v4, v2}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 42
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    const v3, 0x7f0c0069

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a001c

    const/4 v6, 0x0

    .line 44
    invoke-static {p1, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v6, 0x7f080028

    .line 45
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 46
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080026

    .line 47
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080021

    .line 50
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080023

    .line 51
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f080022

    .line 52
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f080024

    .line 53
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "okBodyCaption1"

    .line 54
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    if-eqz v8, :cond_0

    const-string v10, ""

    .line 55
    invoke-static {v8, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 56
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string v2, "okBodyText1"

    .line 60
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v8, ""

    .line 61
    invoke-static {v2, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 62
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const-string v2, "okBodyCaption2"

    .line 66
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ""

    .line 67
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 68
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const-string v2, "okBodyText2"

    .line 72
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, ""

    .line 73
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 74
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 76
    :cond_3
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_3
    new-instance v2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;

    invoke-direct {v2, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "DIALOG_ORIENTATION"

    .line 80
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 84
    :cond_4
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;

    .line 86
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0063

    new-instance v3, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$1;

    invoke-direct {v3, p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog$1;-><init>(Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;Landroid/support/v4/app/FragmentActivity;)V

    .line 87
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->setCancelable(Z)V

    .line 96
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    .line 97
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

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
