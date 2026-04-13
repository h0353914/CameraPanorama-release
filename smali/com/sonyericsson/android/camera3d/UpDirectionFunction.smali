.class public Lcom/sonyericsson/android/camera3d/UpDirectionFunction;
.super Lcom/sonyericsson/android/camera3d/base/DirectionFunction;
.source "UpDirectionFunction.java"


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;-><init>(IIIIII)V

    const/4 p1, 0x2

    .line 18
    iput p1, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->direction:I

    return-void
.end method

.method public static calcPreviewRect(Landroid/graphics/Rect;II)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 44
    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 45
    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public calcPreviewRect(Landroid/graphics/Rect;)Z
    .locals 3

    .line 28
    iget v0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->angle:I

    const/4 v1, 0x1

    const/16 v2, 0x10e

    if-ne v2, v0, :cond_0

    .line 29
    iget v0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->inputWidth:I

    iget p0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->inputHeight:I

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->calcPreviewRect(Landroid/graphics/Rect;II)V

    return v1

    :cond_0
    const/16 v0, 0x5a

    .line 32
    iget v2, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->angle:I

    if-ne v0, v2, :cond_1

    .line 33
    iget v0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->inputWidth:I

    iget p0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->inputHeight:I

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;->calcPreviewRect(Landroid/graphics/Rect;II)V

    return v1

    .line 36
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->inputWidth:I

    iget p0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->inputHeight:I

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->calcPreviewRect(Landroid/graphics/Rect;II)V

    return v1
.end method

.method public checkError(Landroid/graphics/Rect;)I
    .locals 2

    .line 61
    iget v0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->angle:I

    const/16 v1, 0x5a

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10e

    iget v1, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->angle:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 68
    iget p0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->inputWidth:I

    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 64
    iget p0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->inputHeight:I

    :goto_1
    if-lez v0, :cond_4

    .line 70
    div-int/lit8 v0, p0, 0x3

    if-gt p1, v0, :cond_2

    goto :goto_2

    :cond_2
    if-le p1, p0, :cond_3

    const/4 p0, -0x2

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p0, -0x1

    :goto_3
    return p0
.end method

.method protected checkImageComplete(Landroid/graphics/Rect;)Z
    .locals 4

    .line 50
    iget v0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->angle:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x5a

    if-eq v3, v0, :cond_2

    const/16 v0, 0x10e

    iget v3, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->angle:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->maxHeight:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-gt p0, p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 51
    :cond_2
    :goto_0
    iget p0, p0, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->maxHeight:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-gt p0, p1, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public enabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCenterLinePadding(Landroid/graphics/Rect;Landroid/graphics/Point;II)Landroid/graphics/Rect;
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->getVerticalCenterLinePadding(Landroid/graphics/Rect;Landroid/graphics/Point;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->getVerticalPreviewSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalNaviVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
