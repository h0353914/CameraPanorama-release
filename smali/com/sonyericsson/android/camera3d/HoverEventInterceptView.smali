.class public Lcom/sonyericsson/android/camera3d/HoverEventInterceptView;
.super Landroid/widget/RelativeLayout;
.source "HoverEventInterceptView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    .line 36
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/AccessibilityHelper;->requestAccessibilityFocus(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    const/4 p0, 0x1

    return p0
.end method
