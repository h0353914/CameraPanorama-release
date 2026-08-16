.class public Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;
.super Ljava/lang/Object;
.source "AccessibilityUtil.java"


# static fields
.field private static volatile sInstance:Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mIsTalkBackEnabled:Z

.field private mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 41
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mIsTalkBackEnabled:Z

    .line 42
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    new-instance p1, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil$1;-><init>(Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 54
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mIsTalkBackEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;
    .locals 2

    .line 28
    sget-object v0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->sInstance:Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->sInstance:Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->sInstance:Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 35
    :cond_1
    :goto_0
    sget-object p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->sInstance:Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;

    return-object p0
.end method


# virtual methods
.method public isTalkBackEnabled()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mIsTalkBackEnabled:Z

    return p0
.end method

.method public registerTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mTouchExplorationStateChangeListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method public unregisterTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/AccessibilityUtil;->mListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
