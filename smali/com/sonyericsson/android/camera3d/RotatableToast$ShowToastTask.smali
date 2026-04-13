.class Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;
.super Landroid/os/AsyncTask;
.source "RotatableToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/RotatableToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowToastTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDuration:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/RotatableToast;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/RotatableToast;I)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->this$0:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 113
    iput p2, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->mDuration:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 121
    invoke-static {}, Lcom/sonyericsson/android/camera3d/RotatableToast;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpdatePreviewTask doInBackground()"

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :try_start_0
    iget p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->mDuration:I

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, -0x1

    .line 127
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move p0, p1

    .line 129
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 134
    invoke-static {}, Lcom/sonyericsson/android/camera3d/RotatableToast;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpdatePreviewTask onPostExecute()"

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->this$0:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->invisibleRotatableToast()V

    .line 136
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->this$0:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->access$100(Lcom/sonyericsson/android/camera3d/RotatableToast;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->this$0:Lcom/sonyericsson/android/camera3d/RotatableToast;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->access$200(Lcom/sonyericsson/android/camera3d/RotatableToast;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 108
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 117
    invoke-static {}, Lcom/sonyericsson/android/camera3d/RotatableToast;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowToastTask onPreExecute()"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->this$0:Lcom/sonyericsson/android/camera3d/RotatableToast;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->setVisibility(I)V

    return-void
.end method
