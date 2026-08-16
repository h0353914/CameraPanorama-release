.class Lcom/sonyericsson/android/camera3d/Camera2App$20;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->startCamera()V
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

    .line 5288
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$20;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 5291
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$20;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5292
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$20;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2700(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 5293
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$20;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2800(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 5295
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$20;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12600(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/ScaleGestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
