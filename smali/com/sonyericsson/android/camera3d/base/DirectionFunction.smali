.class public Lcom/sonyericsson/android/camera3d/base/DirectionFunction;
.super Ljava/lang/Object;
.source "DirectionFunction.java"


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field private static final DIRECTION_NONE:I = -0x1

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2

.field public static final ERROR_NO_EFFECTIVE_PIXEL:I = -0x1

.field public static final ERROR_OVER_SWING:I = -0x2

.field public static final SUCCEEDED:I


# instance fields
.field protected final angle:I

.field protected direction:I

.field protected final inputHeight:I

.field protected final inputWidth:I

.field protected final maxHeight:I

.field protected final maxWidth:I

.field private requestQuitFlag:Z

.field private final scale:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 163
    iput v0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->direction:I

    .line 45
    iput p1, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->inputWidth:I

    .line 46
    iput p2, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->inputHeight:I

    mul-int/lit8 p5, p5, 0x2

    .line 47
    iput p5, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    .line 48
    iput p6, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->angle:I

    .line 49
    iput p3, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->maxWidth:I

    .line 50
    iput p4, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->maxHeight:I

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->requestQuitFlag:Z

    return-void
.end method

.method private getAngle()I
    .locals 0

    .line 33
    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->angle:I

    return p0
.end method

.method private getPaddingLeft(IIII)I
    .locals 0

    sub-int/2addr p2, p1

    shr-int/lit8 p1, p2, 0x1

    sub-int/2addr p1, p3

    shr-int/lit8 p2, p4, 0x1

    .line 147
    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    div-int/2addr p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method private getPaddingTop(IIII)I
    .locals 0

    sub-int/2addr p2, p1

    shr-int/lit8 p1, p2, 0x1

    sub-int/2addr p1, p3

    shr-int/lit8 p2, p4, 0x1

    .line 130
    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    div-int/2addr p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method public static reverseDirection(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x0

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public calcPreviewRect(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkError(Landroid/graphics/Rect;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected checkImageComplete(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public enabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCenterLinePadding(Landroid/graphics/Rect;Landroid/graphics/Point;II)Landroid/graphics/Rect;
    .locals 0

    .line 113
    new-instance p0, Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getDirection()I
    .locals 0

    .line 165
    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->direction:I

    return p0
.end method

.method protected getHorizontalCenterLinePadding(Landroid/graphics/Rect;Landroid/graphics/Point;I)Landroid/graphics/Rect;
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getAngle()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10e

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getAngle()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getPaddingTop(IIII)I

    move-result p0

    goto :goto_1

    .line 120
    :cond_1
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getPaddingTop(IIII)I

    move-result p0

    .line 124
    :goto_1
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public getHorizontalNaviVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getHorizontalPreviewSize()Landroid/util/Size;
    .locals 3

    .line 72
    iget v0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->maxWidth:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    div-int/2addr v0, v1

    .line 74
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getAngle()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v2, v1, :cond_1

    const/16 v1, 0x10e

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getAngle()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->inputHeight:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    div-int/2addr v1, p0

    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->inputWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    div-int/2addr v1, p0

    :goto_1
    and-int/lit8 p0, v0, -0x2

    and-int/lit8 v0, v1, -0x2

    .line 81
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p0, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 2

    .line 55
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->inputWidth:I

    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->inputHeight:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getScale()I
    .locals 0

    .line 21
    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    return p0
.end method

.method protected getVerticalCenterLinePadding(Landroid/graphics/Rect;Landroid/graphics/Point;I)Landroid/graphics/Rect;
    .locals 2

    .line 135
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getAngle()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10e

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getAngle()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getPaddingLeft(IIII)I

    move-result p0

    goto :goto_1

    .line 137
    :cond_1
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getPaddingLeft(IIII)I

    move-result p0

    .line 141
    :goto_1
    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public getVerticalNaviVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getVerticalPreviewSize()Landroid/util/Size;
    .locals 3

    .line 60
    iget v0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->maxHeight:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    div-int/2addr v0, v1

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getAngle()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v2, v1, :cond_1

    const/16 v1, 0x10e

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getAngle()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->inputWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    div-int/2addr v1, p0

    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->inputHeight:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->scale:I

    div-int/2addr v1, p0

    :goto_1
    and-int/lit8 p0, v1, -0x2

    and-int/lit8 v0, v0, -0x2

    .line 68
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p0, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public isImageComplete()Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->requestQuitFlag:Z

    return p0
.end method

.method public isImageComplete(Landroid/graphics/Rect;)Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->requestQuitFlag:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->checkImageComplete(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public requestQuit()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->requestQuitFlag:Z

    return-void
.end method
