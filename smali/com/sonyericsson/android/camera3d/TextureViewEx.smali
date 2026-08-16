.class Lcom/sonyericsson/android/camera3d/TextureViewEx;
.super Landroid/view/TextureView;
.source "Camera2App.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 7573
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 7577
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7581
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 7586
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 7588
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7590
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 7592
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;

    .line 7593
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->getPreviewSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    .line 7594
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    .line 7593
    invoke-virtual {p1, p2, p0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    return-void
.end method
