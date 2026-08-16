.class Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil$1;
.super Ljava/lang/Object;
.source "AccessibilityUtil.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil$1;->this$0:Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil$1;->this$0:Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->access$002(Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;Z)Z

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil$1;->this$0:Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->access$100(Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 50
    invoke-interface {v0, p1}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
