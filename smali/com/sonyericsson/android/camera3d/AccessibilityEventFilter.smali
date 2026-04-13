.class public Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityEventFilter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AccessibilityEventFilter"


# instance fields
.field private mAllowedClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .line 47
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/high16 v3, 0x10000

    if-eq v0, v3, :cond_1

    const v3, 0x8000

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 56
    :goto_1
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v3

    if-gtz v3, :cond_3

    .line 57
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;->mAllowedClassName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "AccessibilityEventFilter"

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onRequestSendAccessibilityEvent: This event should be ignored. Ignored event = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 72
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
