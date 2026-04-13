.class Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$2;
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

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$2;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$2;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    .line 78
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$400(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$2;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    .line 79
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$400(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;->isOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$2;->this$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->access$400(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;)Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$OnSettingDialogStateChangedListener;->closeSettingDialog()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
