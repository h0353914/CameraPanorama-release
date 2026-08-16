.class Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;
.super Ljava/lang/Object;
.source "RotatableToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/RotatableToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowToastTask"
.end annotation


# instance fields
.field private final mDuration:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/RotatableToast;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/RotatableToast;I)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->this$0:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p2, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->mDuration:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->mDuration:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->this$0:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->access$200(Lcom/sonyericsson/android/camera3d/RotatableToast;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask$1;-><init>(Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
