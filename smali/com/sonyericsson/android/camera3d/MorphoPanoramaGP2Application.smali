.class public Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;
.super Landroid/app/Application;
.source "MorphoPanoramaGP2Application.java"


# instance fields
.field private mPreviewSize:Landroid/util/Size;

.field private mSupportedPictureSizes:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 55
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->mSupportedPictureSizes:[I

    .line 57
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->mPreviewSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getSupportedPictureSizes()[Landroid/util/Size;
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->mSupportedPictureSizes:[I

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    .line 61
    new-array v1, v0, [Landroid/util/Size;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 63
    new-instance v3, Landroid/util/Size;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->mSupportedPictureSizes:[I

    mul-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->mSupportedPictureSizes:[I

    add-int/lit8 v5, v5, 0x1

    aget v5, v6, v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public setPreviewSize(Landroid/util/Size;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public setSupportedPictureSizes([I)V
    .locals 0

    .line 69
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->mSupportedPictureSizes:[I

    return-void
.end method
