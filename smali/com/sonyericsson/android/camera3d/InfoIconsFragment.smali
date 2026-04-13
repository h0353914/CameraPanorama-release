.class public Lcom/sonyericsson/android/camera3d/InfoIconsFragment;
.super Landroid/support/v4/app/Fragment;
.source "InfoIconsFragment.java"


# static fields
.field private static final GPS_ACQUIRING_ICON_NUM:I = 0x3

.field private static final IDS_GPS_ACQUIRING_ICON:[I


# instance fields
.field private mGpsIcon:Landroid/widget/ImageView;

.field private mMemoryIcon:Landroid/widget/ImageView;

.field private mTemperatureIcon:Landroid/widget/ImageView;

.field private mUpdateCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->IDS_GPS_ACQUIRING_ICON:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f070054
        0x7f070055
        0x7f070056
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hideMemoryIcon()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mMemoryIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mMemoryIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mMemoryIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideTemperatureIcon()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mTemperatureIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mTemperatureIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mTemperatureIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p3, 0x7f0a0025

    .line 26
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f08005e

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mGpsIcon:Landroid/widget/ImageView;

    .line 28
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mGpsIcon:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    const p2, 0x7f080076

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mMemoryIcon:Landroid/widget/ImageView;

    .line 30
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mMemoryIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    const p2, 0x7f0800d1

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mTemperatureIcon:Landroid/widget/ImageView;

    .line 32
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mTemperatureIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-object p1
.end method

.method public rotateView(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mGpsIcon:Landroid/widget/ImageView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mMemoryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 82
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mTemperatureIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public setViewsVisibility(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mGpsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mGpsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mMemoryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mMemoryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mTemperatureIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mTemperatureIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public showMemoryIcon()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mMemoryIcon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mMemoryIcon:Landroid/widget/ImageView;

    const v1, 0x7f070071

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mMemoryIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showTemperatureIcon()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mTemperatureIcon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mTemperatureIcon:Landroid/widget/ImageView;

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mTemperatureIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startGpsSearch()V
    .locals 4

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mUpdateCount:I

    .line 39
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mGpsIcon:Landroid/widget/ImageView;

    sget-object v2, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->IDS_GPS_ACQUIRING_ICON:[I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mUpdateCount:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mGpsIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mGpsIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public stopGpsSearch()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mGpsIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mGpsIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mGpsIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public updateGpsSearch(Z)V
    .locals 1

    .line 45
    iget v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mUpdateCount:I

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mGpsIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p0, 0x7f070053

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->IDS_GPS_ACQUIRING_ICON:[I

    iget p0, p0, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->mUpdateCount:I

    aget p0, p1, p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
