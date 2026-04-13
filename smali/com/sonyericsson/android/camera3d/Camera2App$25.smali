.class Lcom/sonyericsson/android/camera3d/Camera2App$25;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->initializeLayoutObjects()V
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

    .line 6721
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 6724
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 6725
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    .line 6726
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16302(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    goto :goto_0

    .line 6727
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 6728
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6729
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16302(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 6730
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    goto :goto_0

    .line 6732
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 6733
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6734
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 6735
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_4

    .line 6736
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6737
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16302(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    goto :goto_0

    .line 6740
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 6741
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6742
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$25;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16302(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    :cond_4
    :goto_0
    return v2
.end method
