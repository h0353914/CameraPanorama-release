.class public Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RotatableDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;
    }
.end annotation


# static fields
.field public static final CHECKBOX_MESSAGE:Ljava/lang/String; = "CHECKBOX_MESSAGE"

.field public static final DIALOG_MESSAGE:Ljava/lang/String; = "DIALOG_MESSAGE"

.field public static final DIALOG_ORIENTATION:Ljava/lang/String; = "DIALOG_ORIENTATION"

.field public static final DIALOG_TITLE:Ljava/lang/String; = "DIALOG_TITLE"

.field public static final NEGATIVE_BUTTON_LABEL:Ljava/lang/String; = "NEGATIVE_BUTTON_LABEL"

.field public static final POSITIVE_BUTTON_LABEL:Ljava/lang/String; = "POSITIVE_BUTTON_LABEL"

.field public static final USE_NATIVE_LAYOUT:Ljava/lang/String; = "USE_NATIVE_LAYOUT"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mFactor:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

.field private mIsShow:Z

.field private final mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mIsShow:Z

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$1;-><init>(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 56
    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$2;-><init>(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->fireDismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    return-object p0
.end method

.method private fireDismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mIsShow:Z

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 178
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->isChecked()Z

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onDismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;Z)V

    :cond_0
    return-void
.end method

.method private isChecked()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dismiss(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mFactor:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    .line 157
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

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
    .locals 8

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x7f0a0041

    const/4 v2, 0x0

    .line 68
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f08004d

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08004c

    .line 70
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08004b

    .line 71
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 73
    new-instance v4, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;

    invoke-direct {v4, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "USE_NATIVE_LAYOUT"

    const/4 v6, 0x0

    .line 74
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v7, "DIALOG_TITLE"

    .line 75
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    .line 77
    invoke-virtual {v4, v7}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const-string v2, "DIALOG_MESSAGE"

    .line 80
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v5, :cond_2

    .line 82
    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    const-string v2, "CHECKBOX_MESSAGE"

    .line 85
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 87
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 90
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 91
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_2
    const-string v2, "POSITIVE_BUTTON_LABEL"

    .line 93
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 95
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v2, v7}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    const-string v2, "NEGATIVE_BUTTON_LABEL"

    .line 97
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 99
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v2, v7}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_6
    if-nez v5, :cond_7

    .line 102
    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_7
    const-string v1, "DIALOG_ORIENTATION"

    .line 105
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    move v0, v3

    .line 109
    :cond_8
    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;

    .line 111
    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$3;-><init>(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v4, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->setCancelable(Z)V

    .line 128
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mIsShow:Z

    .line 129
    sget-object p1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OTHER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mFactor:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    .line 130
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    .line 131
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$4;-><init>(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 143
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->show()V

    .line 144
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 150
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mIsShow:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mFactor:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    sget-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SHUTDOWN:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mFactor:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->fireDismissDialog(ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    if-eqz v0, :cond_2

    .line 162
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->setOrientation(I)V

    :cond_2
    return-void
.end method
