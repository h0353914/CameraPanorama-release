.class Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;
.super Ljava/lang/Object;
.source "HeaderButtonsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$000(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$100(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)V

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$202(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 48
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$200(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$300(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)V

    .line 53
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$300(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)V

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$200(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 56
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$400(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 57
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$400(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;->isOpened()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 58
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$400(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;->closeSettingDialog()V

    .line 59
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$500(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)V

    goto :goto_0

    .line 61
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$400(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;->openSettingDialog()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 62
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$600(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)V

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/View;->playSoundEffect(I)V

    .line 68
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_6
    return v1
.end method
