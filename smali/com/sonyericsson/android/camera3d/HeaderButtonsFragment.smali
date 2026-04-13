.class public Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;
.super Landroid/support/v4/app/Fragment;
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

.field private mSettingsButtonBg:Landroid/widget/ImageView;

.field private mSettingsButtonPressed:Landroid/widget/ImageView;

.field private touchRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->touchRect:Landroid/graphics/Rect;

    .line 25
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mOnSettingDialogStateChangedListener:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonPressed:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->showSettingButtonPressed()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Landroid/graphics/Rect;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->touchRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->touchRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->hideSettingButtonPressed()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mOnSettingDialogStateChangedListener:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->hideSettingButtonBg()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->showSettingButtonBg()V

    return-void
.end method

.method private hideSettingButtonBg()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 138
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonBg:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideSettingButtonPressed()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonPressed:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonPressed:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showSettingButtonBg()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 132
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonBg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showSettingButtonPressed()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonPressed:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonPressed:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public notifySettingDialogClosed()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->hideSettingButtonPressed()V

    .line 115
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->hideSettingButtonBg()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0a0024

    .line 35
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080068

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    const p2, 0x7f0800b9

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonPressed:Landroid/widget/ImageView;

    const p2, 0x7f0800b8

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonBg:Landroid/widget/ImageView;

    .line 40
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    new-instance p3, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;

    invoke-direct {p3, p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;-><init>(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    new-instance p2, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$2;

    invoke-direct {p2, p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$2;-><init>(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method public rotateView(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonPressed:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public setOnSettingDialogStateChangedListener(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mOnSettingDialogStateChangedListener:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    return-void
.end method

.method public setViewsEnabled(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 106
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonPressed:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setViewsVisibility(I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonPressed:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->mSettingsButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->touchRect:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method
