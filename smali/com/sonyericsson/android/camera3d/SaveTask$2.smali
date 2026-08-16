.class Lcom/sonyericsson/android/camera3d/SaveTask$2;
.super Ljava/lang/Object;
.source "SaveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/SaveTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SaveTask;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/SaveTask;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SaveTask$2;->this$0:Lcom/sonyericsson/android/camera3d/SaveTask;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/SaveTask$2;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SaveTask$2;->this$0:Lcom/sonyericsson/android/camera3d/SaveTask;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/SaveTask;->access$000(Lcom/sonyericsson/android/camera3d/SaveTask;)Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;

    move-result-object v0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/SaveTask$2;->val$result:Z

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;->onSaveFinish(Z)V

    return-void
.end method
