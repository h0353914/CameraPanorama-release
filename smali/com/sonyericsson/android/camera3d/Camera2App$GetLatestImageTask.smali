.class Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLatestImageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 6015
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 6015
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 6019
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12900()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6020
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 6023
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13000(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 6024
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13100(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6025
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 6026
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13300(Lcom/sonyericsson/android/camera3d/Camera2App;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 6025
    invoke-static {v2, v3, v4, v5, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13202(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 6027
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 6028
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13300(Lcom/sonyericsson/android/camera3d/Camera2App;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13402(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/net/Uri;)Landroid/net/Uri;

    .line 6031
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6052
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
