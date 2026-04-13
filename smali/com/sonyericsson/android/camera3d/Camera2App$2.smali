.class Lcom/sonyericsson/android/camera3d/Camera2App$2;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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

    .line 805
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$2;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 808
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$2;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 809
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$2;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1600(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 820
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$2;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1502(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/view/TextureView;)Landroid/view/TextureView;

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
