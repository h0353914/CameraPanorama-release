.class public Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;
.super Landroid/support/v4/app/Fragment;
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

.field private mThumbnailVideo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mIsValidThumbnail:Z

    return-void
.end method

.method private showVideoThumbnail()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateViewWidthAndHeight(Landroid/view/View;)V
    .locals 6

    .line 57
    iget v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityDpi:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityStable:I

    if-eq v0, v1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 60
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    iget v3, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityStable:I

    mul-int/2addr v3, v1

    iget v4, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityDpi:I

    div-int/2addr v3, v4

    .line 63
    iget v4, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityStable:I

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityDpi:I

    div-int/2addr v4, v5

    .line 65
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- onCreateView() before:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", after: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private viewWidthAndHeightStable()V
    .locals 3

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityDpi:I

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    iput v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityStable:I

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView() mDensityDpi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",DENSITY_DEVICE_STABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mDensityStable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViewWidthAndHeight(Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButtonBg:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViewWidthAndHeight(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViewWidthAndHeight(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViewWidthAndHeight(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViewWidthAndHeight(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->updateViewWidthAndHeight(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clearThumbnail()V
    .locals 3

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mIsValidThumbnail:Z

    .line 95
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->hideThumbnail()V

    return-void
.end method

.method public getModeSelectorButton()Landroid/widget/ImageView;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getThumbnailMaxSize()Landroid/util/Size;
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    .line 130
    new-instance p0, Landroid/util/Size;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    const v0, 0x7f08003f

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    .line 133
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, -0x2

    .line 134
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getHeight()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    and-int/lit8 p0, p0, -0x2

    .line 136
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public hideModeSelector()V
    .locals 1

    .line 167
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideThumbnail()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButtonBg:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 115
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0a0023

    .line 39
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0800d8

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    const p2, 0x7f0800d9

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButtonBg:Landroid/widget/ImageButton;

    const p2, 0x7f0800da

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    const p2, 0x7f08003f

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    const p2, 0x7f080040

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    const p2, 0x7f080067

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    .line 47
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera3d/Camera2App;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mActivity:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 50
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mActivity:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplay18_9()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mActivity:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplay21_9()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->viewWidthAndHeightStable()V

    :cond_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->clearThumbnail()V

    .line 90
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public rotateView(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButtonBg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 155
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public setPauseIcon()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setShutterIcon()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 141
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setStopPictureButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setTakePictureButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mIsValidThumbnail:Z

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    const v0, 0x7f070063

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->showThumbnail()V

    return-void
.end method

.method public setViewsEnabled(Z)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButtonBg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 198
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_0
    return-void
.end method

.method public setViewsVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->hideThumbnail()V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButtonBg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->showVideoThumbnail()V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mTakePictureButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 188
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showModeSelector()V
    .locals 1

    .line 171
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showThumbnail()V
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mIsValidThumbnail:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButtonBg:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mThumbnailButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->showVideoThumbnail()V

    :cond_0
    return-void
.end method

.method public updateViews()V
    .locals 1

    .line 163
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->mModeSelectorButton:Landroid/widget/ImageView;

    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
