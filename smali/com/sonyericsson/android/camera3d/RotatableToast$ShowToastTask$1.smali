.class Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask$1;
.super Ljava/lang/Object;
.source "RotatableToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask$1;->this$1:Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask$1;->this$1:Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->this$0:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->invisibleRotatableToast()V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask$1;->this$1:Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->this$0:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->access$000(Lcom/sonyericsson/android/camera3d/RotatableToast;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask$1;->this$1:Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->this$0:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->access$100(Lcom/sonyericsson/android/camera3d/RotatableToast;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
