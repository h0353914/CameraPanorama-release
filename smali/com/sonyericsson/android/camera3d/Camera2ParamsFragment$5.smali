.class Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$5;
.super Ljava/lang/Object;
.source "Camera2ParamsFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$5;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 236
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$5;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$900(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p3

    if-ne p1, p3, :cond_0

    .line 237
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$5;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$5;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1000(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p3, p1, p2, p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1100(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;Landroid/widget/SeekBar;ILjava/util/ArrayList;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$5;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p3

    if-ne p1, p3, :cond_1

    .line 239
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$5;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$5;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p3, p1, p2, p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1100(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;Landroid/widget/SeekBar;ILjava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$5;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;->onParamChanged()V

    return-void
.end method
