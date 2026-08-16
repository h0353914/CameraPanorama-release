.class public final synthetic Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->lambda$onCreateView$1$com-sonyericsson-android-camera3d-HeaderButtonsFragment(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
