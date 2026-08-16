.class public Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;
.super Landroidx/fragment/app/Fragment;
.source "HeaderButtonsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;
    }
.end annotation


# instance fields
.field private mOnSettingDialogStateChangedListener:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

.field private mSettingsButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mOnSettingDialogStateChangedListener:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-sonyericsson-android-camera3d-HeaderButtonsFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 32
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mOnSettingDialogStateChangedListener:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    if-eqz p2, :cond_1

    .line 33
    invoke-interface {p2}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;->isOpened()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 34
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0056

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    const p2, 0x7f070074

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 37
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mOnSettingDialogStateChangedListener:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;->closeSettingDialog()V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mOnSettingDialogStateChangedListener:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;->openSettingDialog()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 40
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0050

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    const p1, 0x7f070073

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-sonyericsson-android-camera3d-HeaderButtonsFragment(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 49
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mOnSettingDialogStateChangedListener:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    if-eqz p2, :cond_0

    .line 51
    invoke-interface {p2}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;->isOpened()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f0c0050

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    const p2, 0x7f070073

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 55
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mOnSettingDialogStateChangedListener:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;->closeSettingDialog()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifySettingDialogClosed()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0056

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0a0024

    .line 28
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080073

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    .line 31
    new-instance p3, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    new-instance p2, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method public rotateView(I)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setRotation(F)V

    return-void
.end method

.method public setOnSettingDialogStateChangedListener(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mOnSettingDialogStateChangedListener:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    return-void
.end method

.method public setViewsEnabled(Z)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public setViewsVisibility(I)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
