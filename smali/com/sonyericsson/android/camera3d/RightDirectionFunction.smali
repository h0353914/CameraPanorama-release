.class public Lcom/sonyericsson/android/camera3d/RightDirectionFunction;
.super Lcom/sonyericsson/android/camera3d/base/DirectionFunction;
.source "RightDirectionFunction.java"


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;-><init>(IIIIII)V

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->direction:I

    return-void
.end method

.method public static calcPreviewRect(Landroid/graphics/Rect;II)V
    .locals 0

    .line 49
    iget p1, p0, Landroid/graphics/Rect;->right:I

    iget p2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 51
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    .line 52
    iput p1, p0, Landroid/graphics/Rect;->top:I

    return-void
.end method


# virtual methods
.method public calcPreviewRect(Landroid/graphics/Rect;)Z
    .locals 3

    .line 28
    iget v0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->angle:I

    const/4 v1, 0x1

    const/16 v2, 0x5a

    if-ne v2, v0, :cond_0

    .line 29
    iget v0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->inputWidth:I

    iget p0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->inputHeight:I

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;->calcPreviewRect(Landroid/graphics/Rect;II)V

    return v1

    :cond_0
    const/16 v0, 0x10e

    .line 33
    iget v2, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->angle:I

    if-ne v0, v2, :cond_1

    .line 34
    iget v0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->inputWidth:I

    iget p0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->inputHeight:I

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;->calcPreviewRect(Landroid/graphics/Rect;II)V

    return v1

    .line 39
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->inputWidth:I

    iget p0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->inputHeight:I

    invoke-static {p1, v0, p0}, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->calcPreviewRect(Landroid/graphics/Rect;II)V

    return v1
.end method

.method public checkError(Landroid/graphics/Rect;)I
    .locals 2

    .line 68
    iget v0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->angle:I

    const/16 v1, 0x5a

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10e

    iget v1, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->angle:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 75
    iget p0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->inputHeight:I

    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 71
    iget p0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->inputWidth:I

    :goto_1
    if-lez v0, :cond_4

    .line 77
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

    .line 57
    iget v0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->angle:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x5a

    if-eq v3, v0, :cond_2

    const/16 v0, 0x10e

    iget v3, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->angle:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->maxWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-gt p0, p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 58
    :cond_2
    :goto_0
    iget p0, p0, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->maxWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

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

    .line 92
    invoke-virtual {p0, p1, p2, p4}, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->getHorizontalCenterLinePadding(Landroid/graphics/Rect;Landroid/graphics/Point;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getHorizontalNaviVisibility()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;->getHorizontalPreviewSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method
