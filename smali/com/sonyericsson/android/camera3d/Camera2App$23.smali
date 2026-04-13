.class Lcom/sonyericsson/android/camera3d/Camera2App$23;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->initializeLayoutObjects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

.field final synthetic val$layoutFooter:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 6636
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->val$layoutFooter:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 6639
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->val$layoutFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6640
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplay18_9()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f06005a

    goto :goto_0

    :cond_0
    const v2, 0x7f060059

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 6641
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isDisplay18_9()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6643
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$16100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 6644
    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x9

    .line 6646
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v1

    .line 6647
    rem-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 6649
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 6650
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 6651
    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 6653
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    div-float/2addr v4, v1

    .line 6656
    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    add-float/2addr v4, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v4, v1

    float-to-int v1, v4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 6657
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 6658
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->val$layoutFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "Camera2App"

    .line 6659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leftMargin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->val$layoutFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Camera2App"

    .line 6660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rightMargin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->val$layoutFooter:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6662
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$23;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 6663
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 6664
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 6665
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 6666
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
