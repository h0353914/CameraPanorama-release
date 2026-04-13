.class Lcom/sonyericsson/android/camera3d/Camera2App$16;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 5097
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$16;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5100
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$16;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5101
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$16;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5102
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$16;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5103
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$16;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5104
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$16;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5107
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$16;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5108
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$16;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$16;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$16;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$16;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method
