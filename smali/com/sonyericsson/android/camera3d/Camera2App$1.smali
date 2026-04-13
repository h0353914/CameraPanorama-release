.class Lcom/sonyericsson/android/camera3d/Camera2App$1;
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

    .line 693
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 9

    const-string p1, "Camera2App"

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureAvailable size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 699
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 711
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$400(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    .line 712
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$500(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p2

    .line 713
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v0, "Camera2App"

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$600(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    const/16 v1, 0xd

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    :goto_0
    const/4 v2, -0x1

    .line 716
    invoke-virtual {p3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 717
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 720
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$600(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0xe

    if-eqz v0, :cond_3

    .line 721
    invoke-virtual {p3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 723
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const v1, 0x7f07006d

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 724
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v3

    .line 725
    :goto_1
    iget v1, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    iput v1, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 726
    invoke-virtual {p3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 728
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double v0, p1

    const-wide v5, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v5

    double-to-int p1, v0

    .line 731
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const v0, 0x7f08003f

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 732
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplay18_9()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f06005a

    goto :goto_3

    :cond_5
    const v1, 0x7f060059

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p3, v0

    sub-int/2addr p1, p3

    .line 735
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p3

    .line 736
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 737
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060083

    const v7, 0x7f060082

    if-eqz p3, :cond_6

    move v8, v7

    goto :goto_4

    :cond_6
    move v8, v6

    :goto_4
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 738
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 739
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1100(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 742
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 743
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 744
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 745
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1100(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 748
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p3, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 749
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 750
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 751
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 754
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060085

    const v2, 0x7f060084

    if-eqz p3, :cond_8

    move v4, v2

    goto :goto_5

    :cond_8
    move v4, v1

    :goto_5
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 755
    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 756
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 759
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p3, :cond_9

    move v4, v2

    goto :goto_6

    :cond_9
    move v4, v1

    :goto_6
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 760
    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 761
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const v0, 0x7f08002b

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 764
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p3, :cond_a

    move v1, v2

    :cond_a
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 765
    iget p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p3, v1

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 766
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p3, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const p3, 0x7f0800ca

    invoke-virtual {p2, p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 769
    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 770
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 784
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1502(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/view/TextureView;)Landroid/view/TextureView;

    .line 785
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$1;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1600(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    const-string p0, "Camera2App"

    .line 792
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureSizeChanged size : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
