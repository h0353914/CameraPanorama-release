.class Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$2;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$2;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 126
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$2;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$300(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$2;->val$view:Landroid/view/View;

    const p3, 0x7f08001e

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 137
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$2;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->evValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p3, v0, v2

    if-nez p3, :cond_1

    .line 139
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%dEV"

    invoke-static {p3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    cmpg-double p3, v2, v0

    if-gez p3, :cond_2

    .line 141
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "+%.2fEV"

    invoke-static {p3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_2
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.2fEV"

    invoke-static {p3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$2;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$400(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$2;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$500(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    move-result-object p0

    iput p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->aec:I

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$2;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;->onParamChanged()V

    return-void
.end method
