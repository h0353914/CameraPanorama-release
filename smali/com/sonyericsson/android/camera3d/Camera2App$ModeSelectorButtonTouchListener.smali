.class Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonTouchListener;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeSelectorButtonTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 5808
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonTouchListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 5808
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonTouchListener;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 5815
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonTouchListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->getModeSelectorButton()Landroid/widget/ImageView;

    move-result-object p0

    .line 5816
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5817
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f05003e

    .line 5818
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 5820
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
