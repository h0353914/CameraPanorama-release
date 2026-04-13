.class public Lcom/sonyericsson/android/camera3d/VerticalTextView;
.super Landroid/widget/TextView;
.source "VerticalTextView.java"


# instance fields
.field private mTextPaint:Landroid/text/TextPaint;

.field private final text_bounds:Landroid/graphics/Rect;

.field private final topDown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 24
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getGravity()I

    move-result p1

    .line 25
    invoke-static {p1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result p2

    if-eqz p2, :cond_0

    and-int/lit8 p2, p1, 0x70

    const/16 v0, 0x50

    if-ne p2, v0, :cond_0

    and-int/lit8 p1, p1, 0x7

    or-int/lit8 p1, p1, 0x30

    .line 26
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->setGravity(I)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->topDown:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->topDown:Z

    :goto_0
    return-void
.end method

.method private measureHeight(I)I
    .locals 3

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 83
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    return p1
.end method

.method private measureWidth(I)I
    .locals 3

    .line 51
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 63
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 94
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->topDown:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 100
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 103
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 106
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 35
    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->onMeasure(II)V

    .line 37
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->mTextPaint:Landroid/text/TextPaint;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->mTextPaint:Landroid/text/TextPaint;

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 42
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->getDrawableState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 43
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->measureWidth(I)I

    move-result p1

    .line 46
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->measureHeight(I)I

    move-result p2

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/VerticalTextView;->setMeasuredDimension(II)V

    return-void
.end method
