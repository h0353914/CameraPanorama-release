.class Lcom/sonyericsson/android/camera3d/SaveAsyncTask;
.super Landroid/os/AsyncTask;
.source "SaveAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/sonyericsson/android/camera3d/SaveAsyncTask$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/SaveAsyncTask$1;-><init>(Lcom/sonyericsson/android/camera3d/SaveAsyncTask;)V

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SaveAsyncTask;->mListener:Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/SaveAsyncTask;->mListener:Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;->requestSaveProcess()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/SaveAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 46
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/SaveAsyncTask;->mListener:Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;->onSaveFinish(Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/SaveAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
