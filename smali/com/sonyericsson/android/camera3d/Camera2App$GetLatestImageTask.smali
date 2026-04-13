.class Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;
.super Landroid/os/AsyncTask;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLatestImageTask"
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
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 6208
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 6208
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 6

    .line 6222
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13400()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 6223
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-object v1

    .line 6226
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13500(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 6227
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13600(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6228
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 6229
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13800(Lcom/sonyericsson/android/camera3d/Camera2App;)J

    move-result-wide v3

    const/4 v5, 0x1

    .line 6228
    invoke-static {v2, v3, v4, v5, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13702(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 6230
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14000(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13902(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;

    .line 6231
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 6232
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13800(Lcom/sonyericsson/android/camera3d/Camera2App;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14102(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/net/Uri;)Landroid/net/Uri;

    .line 6234
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 6235
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6234
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6208
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .line 6239
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14202(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;)Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    if-nez p1, :cond_0

    return-void

    .line 6241
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 6244
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 6248
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13600(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6249
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->clearThumbnail()V

    goto :goto_0

    .line 6251
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setThumbnailBitmap(Landroid/graphics/Bitmap;Z)V

    .line 6252
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14300(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14300(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    :cond_4
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->rotateView(I)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 6208
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 6211
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6214
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6216
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->showThumbnail()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
