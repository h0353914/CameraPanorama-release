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

    .line 6673
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 6676
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 6677
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    .line 6678
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6679
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2700(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 6680
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2800(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    .line 6684
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6685
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16302(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 6686
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1800(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 6687
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16400(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 6688
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->setShutterIcon()V

    .line 6689
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2500(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    goto/16 :goto_0

    .line 6691
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 6692
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 6693
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16302(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 6694
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16500(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 6695
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    goto :goto_0

    .line 6697
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 6698
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6699
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 6700
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_5

    .line 6701
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6702
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16302(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 6703
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1800(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 6704
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16500(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 6705
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6300(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 6706
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16600(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    goto :goto_0

    .line 6709
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 6710
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6711
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16302(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 6712
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1800(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 6713
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16500(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 6714
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6300(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 6715
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$24;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16600(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    :cond_5
    :goto_0
    return v2
.end method
