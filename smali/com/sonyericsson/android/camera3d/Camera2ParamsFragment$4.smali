.class Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$4;
.super Ljava/lang/Object;
.source "Camera2ParamsFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;Landroid/view/View;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$4;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 187
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$4;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$800(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$4;->val$view:Landroid/view/View;

    const p3, 0x7f0800bf

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 191
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "1/%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$4;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$800(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$4;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;->onParamChanged()V

    return-void
.end method
