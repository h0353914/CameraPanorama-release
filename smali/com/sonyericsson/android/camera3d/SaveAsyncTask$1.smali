.class Lcom/sonyericsson/android/camera3d/SaveAsyncTask$1;
.super Ljava/lang/Object;
.source "SaveAsyncTask.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/SaveAsyncTask;-><init>(Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SaveAsyncTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/SaveAsyncTask;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SaveAsyncTask$1;->this$0:Lcom/sonyericsson/android/camera3d/SaveAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveFinish(Z)V
    .locals 0

    return-void
.end method

.method public requestSaveProcess()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
