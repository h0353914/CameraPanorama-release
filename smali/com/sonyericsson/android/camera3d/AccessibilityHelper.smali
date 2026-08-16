.class public Lcom/sonyericsson/android/camera3d/AccessibilityHelper;
.super Ljava/lang/Object;
.source "AccessibilityHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AccessibilityHelper"

.field private static rootViewFocused:Z

.field private static final sRectForHit:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/AccessibilityHelper;->sRectForHit:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/sonyericsson/android/camera3d/AccessibilityHelper;->rootViewFocused:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkToTouch(Landroid/view/View;II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 164
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera3d/AccessibilityHelper;->sRectForHit:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    .line 165
    const-string v2, "AccessibilityHelper"

    if-nez p0, :cond_2

    .line 166
    const-string p0, "checkToTouch: This view exists out of the parent view."

    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 194
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "checkToTouch: GlobalVisibleRect = "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "checkToTouch: Point = ("

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/sonyericsson/android/camera3d/AccessibilityHelper;->rootViewFocused:Z

    return-void
.end method

.method public static requestAccessibilityFocus(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    .line 47
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/AccessibilityHelper;->searchContentDescribedView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    .line 49
    const-string v1, "AccessibilityHelper"

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Description: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-boolean v1, Lcom/sonyericsson/android/camera3d/AccessibilityHelper;->rootViewFocused:Z

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 54
    sput-boolean v0, Lcom/sonyericsson/android/camera3d/AccessibilityHelper;->rootViewFocused:Z

    .line 56
    :cond_0
    invoke-virtual {p1, v3, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 59
    :cond_1
    const-string v4, "TalkingView is not found."

    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 62
    sput-boolean v0, Lcom/sonyericsson/android/camera3d/AccessibilityHelper;->rootViewFocused:Z

    :goto_0
    return-object p1
.end method

.method private static searchContentDescribedView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7

    .line 92
    const-string v0, "searchContentDescribedView() is called."

    const-string v1, "AccessibilityHelper"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 107
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_6

    .line 111
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 113
    invoke-static {v4, v1, v2}, Lcom/sonyericsson/android/camera3d/AccessibilityHelper;->checkToTouch(Landroid/view/View;II)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 118
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_1

    .line 120
    :cond_2
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 122
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v5, p1}, Lcom/sonyericsson/android/camera3d/AccessibilityHelper;->searchContentDescribedView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_4

    return-object v5

    .line 132
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 133
    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_5

    return-object v4

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_6
    return-object v0

    .line 96
    :cond_7
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchContentDescribedView : Arg is null.[viewGroup = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", event = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
