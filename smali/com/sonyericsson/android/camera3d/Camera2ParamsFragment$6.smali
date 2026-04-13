.class Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;
.super Ljava/lang/Object;
.source "Camera2ParamsFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 577
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 8

    .line 581
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 582
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->auto()Z

    move-result p2

    const v0, 0x7f08001f

    const/4 v1, -0x1

    const/16 v2, 0x8

    const v3, 0x7f08005c

    const v4, 0x7f0800bf

    const v5, 0x7f08006d

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p2, :cond_1

    .line 583
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1400(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 584
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 585
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1500(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 586
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 587
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 588
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 589
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$900(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 590
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 591
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2, v2, v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1100(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;Landroid/widget/SeekBar;ILjava/util/ArrayList;)V

    .line 592
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 593
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$500(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    move-result-object p2

    iget p2, p2, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->aec:I

    if-ltz p2, :cond_0

    .line 594
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$500(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->aec:I

    invoke-virtual {p2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 596
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 597
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;->onParamChanged()V

    .line 598
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p0, v6}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1702(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;I)I

    return-void

    .line 601
    :cond_1
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 602
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1400(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 603
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 604
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1500(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 605
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 606
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$900(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 607
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 608
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 609
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$900(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 610
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$900(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1000(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2, v2, v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1100(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;Landroid/widget/SeekBar;ILjava/util/ArrayList;)V

    .line 611
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 612
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$500(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    move-result-object p2

    iget p2, p2, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->aec:I

    if-ltz p2, :cond_2

    .line 613
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$500(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->aec:I

    invoke-virtual {p2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 615
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 616
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;->onParamChanged()V

    .line 617
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p0, v7}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1702(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;I)I

    return-void

    .line 620
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$400(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 621
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1400(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 622
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 623
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1500(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 624
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 625
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$900(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 626
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 627
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 628
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$900(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 629
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$900(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1000(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2, v2, v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1100(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;Landroid/widget/SeekBar;ILjava/util/ArrayList;)V

    .line 630
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$300(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 631
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 632
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 633
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 634
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;->onParamChanged()V

    .line 635
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;->this$0:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->access$1702(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;I)I

    return-void

    :cond_4
    const-string p0, "Camera2App"

    const-string p1, "mode radio buttons all off. (onCheckedChanged)"

    .line 638
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
