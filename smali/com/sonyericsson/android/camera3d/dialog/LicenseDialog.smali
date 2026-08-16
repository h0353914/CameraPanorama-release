.class public Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "LicenseDialog.java"


# static fields
.field public static final DIALOG_ORIENTATION:Ljava/lang/String; = "DIALOG_ORIENTATION"


# instance fields
.field private mIsShow:Z

.field private mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mIsShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->fireDismissDialog()V

    return-void
.end method

.method static synthetic access$101(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;)V
    .locals 0

    .line 29
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    return-object p0
.end method

.method private fireDismissDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mIsShow:Z

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 127
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onDismissLicenseDialog()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mIsShow:Z

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

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
    .locals 7

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x7f0a0021

    const/4 v2, 0x0

    .line 41
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c0095

    .line 42
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080053

    .line 43
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f08004f

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    .line 48
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 49
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 51
    new-instance v2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;

    invoke-direct {v2, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v4, "DIALOG_ORIENTATION"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 56
    :cond_0
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    :cond_1
    const v0, 0x7f080026

    .line 59
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 60
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 61
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x43480000    # 200.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 62
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    :cond_2
    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$1;-><init>(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;)V

    const v4, 0x7f0c007a

    .line 67
    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$2;-><init>(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->setCancelable(Z)V

    .line 90
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mIsShow:Z

    .line 91
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    .line 92
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$3;-><init>(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 102
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->show()V

    .line 103
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 118
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mIsShow:Z

    if-eqz p1, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->fireDismissDialog()V

    :cond_0
    return-void
.end method
