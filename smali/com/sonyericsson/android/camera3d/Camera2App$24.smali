.class Lcom/sonyericsson/android/camera3d/Camera2App$24;
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

    .line 6545
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 6548
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 6549
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    .line 6550
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15802(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    goto :goto_0

    .line 6551
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 6552
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6553
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15802(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 6554
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    goto :goto_0

    .line 6556
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 6557
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6558
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 6559
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_4

    .line 6560
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6561
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15802(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    goto :goto_0

    .line 6564
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 6565
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6566
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15802(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    :cond_4
    :goto_0
    return v1
.end method
