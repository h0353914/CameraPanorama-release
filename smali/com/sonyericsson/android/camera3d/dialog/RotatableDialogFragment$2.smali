.class Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$2;
.super Ljava/lang/Object;
.source "RotatableDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$2;->this$0:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$2;->this$0:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    sget-object p1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_EVENT_LISTENER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    const/4 p2, 0x0

    invoke-static {p0, p2, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->access$000(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;ZLcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    return-void
.end method
