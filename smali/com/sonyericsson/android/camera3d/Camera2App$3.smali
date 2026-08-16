.class Lcom/sonyericsson/android/camera3d/Camera2App$3;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
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

    .line 698
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 10

    .line 702
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSurfaceTextureAvailable size : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " x "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Camera2App"

    invoke-static {p3, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 704
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 716
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$400(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    .line 717
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$500(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    .line 718
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "display size : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayEighteenToNine()Z

    move-result p2

    const p3, 0x7f080062

    const v2, 0x7f08006b

    const/4 v3, 0x3

    const/16 v4, 0xd

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-eqz p2, :cond_2

    .line 721
    invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 722
    :cond_2
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayNineteenPointFiveToNine()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 723
    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 724
    invoke-virtual {v1, v5, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_3
    const/16 p2, 0xa

    .line 726
    invoke-virtual {v1, p2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 728
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 731
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayEighteenToNine()Z

    move-result v1

    const/4 v7, 0x0

    const/16 v8, 0xe

    if-eqz v1, :cond_4

    .line 732
    invoke-virtual {p2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 733
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayNineteenPointFiveToNine()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 734
    invoke-virtual {p2, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 735
    invoke-virtual {p2, v5, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 736
    invoke-virtual {p2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 738
    :cond_5
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const v1, 0x7f07006e

    invoke-virtual {p3, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 739
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p3

    goto :goto_1

    :cond_6
    move p3, v7

    :goto_1
    sub-int/2addr p1, p3

    .line 740
    div-int/2addr p1, v5

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 741
    invoke-virtual {p2, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 743
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayNineteenPointFiveToNine()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 747
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060095

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_4

    .line 750
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double p1, p1

    const-wide v1, 0x3fd3333333333333L    # 0.3

    mul-double/2addr p1, v1

    double-to-int p1, p1

    .line 751
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const p3, 0x7f08003e

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 752
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplayEighteenToNine()Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f060060

    goto :goto_3

    :cond_8
    const v1, 0x7f06005f

    :goto_3
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    .line 757
    :goto_4
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p2

    .line 758
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const v1, 0x7f080090

    invoke-virtual {p3, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 759
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060091

    const v4, 0x7f060092

    if-eqz p2, :cond_9

    move v9, v3

    goto :goto_5

    :cond_9
    move v9, v4

    :goto_5
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 760
    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 761
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 764
    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 765
    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 766
    invoke-virtual {p3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 767
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1100(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 770
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_a

    goto :goto_6

    :cond_a
    move v3, v4

    :goto_6
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 771
    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 772
    invoke-virtual {p3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 773
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1100(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 776
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060093

    const v2, 0x7f060094

    if-eqz p2, :cond_b

    move v3, v1

    goto :goto_7

    :cond_b
    move v3, v2

    :goto_7
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 777
    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 778
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 781
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_c

    move v3, v1

    goto :goto_8

    :cond_c
    move v3, v2

    :goto_8
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 782
    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 783
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const v0, 0x7f08002b

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 786
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_d

    goto :goto_9

    :cond_d
    move v1, v2

    :goto_9
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    div-int/2addr p2, v5

    iput p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 787
    iget p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/2addr v1, v5

    sub-int/2addr p2, v1

    iput p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 788
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const p3, 0x7f0800d4

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 791
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 792
    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 793
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    .line 795
    :cond_e
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 796
    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 797
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    :goto_a
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 813
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1502(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/view/TextureView;)Landroid/view/TextureView;

    .line 814
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$3;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1600(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 821
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onSurfaceTextureSizeChanged size : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " x "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Camera2App"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
