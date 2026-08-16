.class Lcom/sonyericsson/android/camera3d/SaveTask;
.super Ljava/lang/Object;
.source "SaveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/SaveTask;->mUiHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lcom/sonyericsson/android/camera3d/SaveTask$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/SaveTask$1;-><init>(Lcom/sonyericsson/android/camera3d/SaveTask;)V

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SaveTask;->mListener:Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/SaveTask;)Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/SaveTask;->mListener:Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SaveTask;->mListener:Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;->requestSaveProcess()Z

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SaveTask;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/android/camera3d/SaveTask$2;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera3d/SaveTask$2;-><init>(Lcom/sonyericsson/android/camera3d/SaveTask;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
