.class Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;)V
    .locals 0

    .line 6031
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6034
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13502(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 6035
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13600(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 6038
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6042
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13100(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6043
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->clearThumbnail()V

    goto :goto_2

    .line 6045
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setThumbnailBitmap(Landroid/graphics/Bitmap;Z)V

    .line 6046
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 6047
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p0

    add-int/2addr p0, v2

    rem-int/lit16 p0, p0, 0x168

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask$1;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$GetLatestImageTask;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p0

    .line 6048
    :goto_1
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->rotateView(I)V

    :cond_5
    :goto_2
    return-void
.end method
