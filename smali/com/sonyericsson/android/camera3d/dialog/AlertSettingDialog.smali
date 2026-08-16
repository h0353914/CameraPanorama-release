.class public Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "AlertSettingDialog.java"


# static fields
.field public static final DIALOG_ORIENTATION:Ljava/lang/String; = "DIALOG_ORIENTATION"

.field private static final REQUEST_PANORAMA_LOCATION_PERMISSION:I = 0x32

.field public static final SETTING_BODY_CAPTION_1:Ljava/lang/String; = "settingBodyCaption1"

.field public static final SETTING_BODY_CAPTION_2:Ljava/lang/String; = "settingBodyCaption2"

.field public static final SETTING_BODY_TEXT_1:Ljava/lang/String; = "settingBodyText1"

.field public static final SETTING_BODY_TEXT_2:Ljava/lang/String; = "settingBodyText2"


# instance fields
.field private mIsFinish:Z

.field private mIsStartCamera:Z

.field private mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->mIsFinish:Z

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->mIsStartCamera:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->mIsFinish:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->mIsStartCamera:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    return-object p0
.end method


# virtual methods
.method public isShowing()Z
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

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

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x7f0a001d

    const/4 v2, 0x0

    .line 47
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c0084

    .line 48
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080027

    .line 49
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 50
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0c0082

    .line 52
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080025

    .line 53
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080020

    .line 56
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080022

    .line 57
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080021

    .line 58
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080023

    .line 59
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 60
    const-string v6, "settingBodyCaption1"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    const-string v7, ""

    const/16 v8, 0x8

    if-eqz v6, :cond_0

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 62
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_0
    const-string v2, "settingBodyText1"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 67
    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 68
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :goto_1
    const-string v2, "settingBodyCaption2"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 73
    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :goto_2
    const-string v2, "settingBodyText2"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 79
    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 80
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    const v2, 0x7f080024

    .line 85
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0c0083

    .line 86
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;

    invoke-direct {v2, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    const-string v3, "DIALOG_ORIENTATION"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 93
    :cond_4
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    :cond_5
    const v0, 0x7f080026

    .line 96
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 97
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 98
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 99
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    :cond_6
    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$2;-><init>(Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;Landroidx/fragment/app/FragmentActivity;)V

    const p1, 0x7f0c007f

    .line 104
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$1;-><init>(Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;)V

    const v1, 0x7f0c0065

    .line 113
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->setCancelable(Z)V

    .line 126
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    .line 127
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog$3;-><init>(Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 139
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->show()V

    .line 140
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public setCancelWithFinish(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->mIsFinish:Z

    return-void
.end method

.method public setCancelWithStartCamera(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->mIsStartCamera:Z

    return-void
.end method
