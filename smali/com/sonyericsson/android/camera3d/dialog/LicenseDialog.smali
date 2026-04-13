.class public Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "LicenseDialog.java"


# static fields
.field public static final DIALOG_ORIENTATION:Ljava/lang/String; = "DIALOG_ORIENTATION"


# instance fields
.field private mIsShow:Z

.field private mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mIsShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->fireDismissDialog()V

    return-void
.end method

.method static synthetic access$101(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;)V
    .locals 0

    .line 32
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    return-object p0
.end method

.method private fireDismissDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mIsShow:Z

    .line 127
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onDismissLicenseDialog()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mIsShow:Z

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

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

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x7f0a0021

    const/4 v2, 0x0

    .line 44
    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c007d

    .line 45
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08004e

    .line 46
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 47
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f08004a

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    .line 51
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 52
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 54
    new-instance v2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;

    invoke-direct {v2, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "DIALOG_ORIENTATION"

    .line 55
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 59
    :cond_0
    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setOrientation(I)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    const v0, 0x7f080027

    .line 61
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 62
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 63
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x43480000    # 200.0f

    mul-float/2addr v6, v5

    float-to-int v5, v6

    .line 64
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    :cond_1
    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0063

    new-instance v4, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$1;-><init>(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;)V

    .line 69
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$2;-><init>(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->setCancelable(Z)V

    .line 92
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mIsShow:Z

    .line 93
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;->createRotatableDialog()Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    .line 94
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog$3;-><init>(Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 104
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->show()V

    .line 105
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mRotatableDialog:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->getDialog()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 120
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->mIsShow:Z

    if-eqz p1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/dialog/LicenseDialog;->fireDismissDialog()V

    :cond_0
    return-void
.end method
