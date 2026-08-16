.class public Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;
.super Landroidx/fragment/app/Fragment;
.source "FooterButtonsFragment.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mActivity:Lcom/sonyericsson/android/camera3d/Camera2App;

.field private mDensityDpi:I

.field private mDensityStable:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mIsValidThumbnail:Z

.field private mModeSelectorButton:Landroid/widget/ImageView;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mTakePictureButton:Landroid/widget/ImageButton;

.field private mThumbnailButton:Landroid/widget/ImageButton;

.field private mThumbnailButtonBg:Landroid/widget/ImageButton;

.field private mThumbnailLayout:Landroid/widget/FrameLayout;

.field private mThumbnailVideo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mIsValidThumbnail:Z

    return-void
.end method

.method private updateViewWidthAndHeight(Landroid/view/View;)V
    .locals 6

    .line 61
    iget v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityDpi:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityStable:I

    if-eq v0, v1, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 64
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    iget v3, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityStable:I

    mul-int v4, v1, v3

    iget v5, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityDpi:I

    div-int/2addr v4, v5

    mul-int/2addr v3, v2

    .line 67
    div-int/2addr v3, v5

    .line 69
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "View = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " -- onCreateView() before:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", after: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private viewWidthAndHeightStable()V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 79
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityDpi:I

    .line 80
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    iput v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityStable:I

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateView() mDensityDpi:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",DENSITY_DEVICE_STABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityStable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViewWidthAndHeight(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButtonBg:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViewWidthAndHeight(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViewWidthAndHeight(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViewWidthAndHeight(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViewWidthAndHeight(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViewWidthAndHeight(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clearThumbnail()V
    .locals 3

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mIsValidThumbnail:Z

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->hideThumbnail()V

    return-void
.end method

.method public getModeSelectorButton()Landroid/widget/ImageView;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getTakePictureButton()Landroid/widget/ImageButton;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public getThumbnailMaxSize()Landroid/util/Size;
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    .line 132
    new-instance p0, Landroid/util/Size;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    const v0, 0x7f08003e

    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    .line 135
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, -0x2

    .line 136
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getHeight()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    and-int/lit8 p0, p0, -0x2

    .line 138
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public hideModeSelector()V
    .locals 1

    .line 176
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideThumbnail()V
    .locals 1

    .line 117
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0a0023

    .line 41
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0800e7

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0800e5

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    const p2, 0x7f0800e6

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButtonBg:Landroid/widget/ImageButton;

    const p2, 0x7f0800e8

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    const p2, 0x7f08003e

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    const p2, 0x7f08003f

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    const p2, 0x7f080072

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    .line 50
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera3d/Camera2App;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mActivity:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 53
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayEighteenToNine()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mActivity:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayTwentyOneToNine()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mActivity:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 54
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayNineteenPointFiveToNine()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->viewWidthAndHeightStable()V

    :cond_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->clearThumbnail()V

    .line 94
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public rotateView(I)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButtonBg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setRotation(F)V

    return-void
.end method

.method public setPauseIcon()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->sendAccessibilityEvent(I)V

    .line 152
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestFocus()Z

    return-void
.end method

.method public setShutterIcon()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->sendAccessibilityEvent(I)V

    .line 145
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestFocus()Z

    return-void
.end method

.method public setStopPictureButtonOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setStopPictureButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setTakePictureButtonOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setTakePictureButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mIsValidThumbnail:Z

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    const v0, 0x7f070064

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->showThumbnail()V

    return-void
.end method

.method public setViewsEnabled(Z)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButtonBg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 201
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_0
    return-void
.end method

.method public setViewsVisibility(I)V
    .locals 1

    if-nez p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->showThumbnail()V

    goto :goto_1

    .line 185
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->hideThumbnail()V

    .line 189
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 191
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showModeSelector()V
    .locals 1

    .line 180
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showThumbnail()V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mIsValidThumbnail:Z

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 123
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    .line 124
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 123
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateViews()V
    .locals 1

    .line 172
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
