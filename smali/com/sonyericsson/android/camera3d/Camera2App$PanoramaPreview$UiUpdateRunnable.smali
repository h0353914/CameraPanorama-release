.class Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiUpdateRunnable"
.end annotation


# instance fields
.field private mDetectResult:I

.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)V
    .locals 0

    .line 2911
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 2911
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2920
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2923
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->mDetectResult:I

    const v1, 0x7f0c0060

    packed-switch v0, :pswitch_data_0

    .line 2937
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2933
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2929
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2941
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11100(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->getFrameRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 2942
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    .line 2943
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    .line 2944
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2945
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-lez v2, :cond_1

    if-lez v3, :cond_1

    .line 2946
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2948
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2951
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 2952
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2953
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2954
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2955
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2956
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v4, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11500(Lcom/sonyericsson/android/camera3d/Camera2App;ZZ)V

    .line 2959
    :cond_2
    iget v0, v1, Landroid/graphics/RectF;->left:F

    .line 2960
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 2961
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11600()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2962
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11100(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->getPreviewCenteringMarginLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 2963
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11100(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->getPreviewCenteringMarginTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 2964
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-lez v3, :cond_3

    .line 2965
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11100(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->getPreviewCenteringMarginLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 2966
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11100(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->getPreviewCenteringMarginTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 2969
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    move v4, v5

    :cond_4
    if-eqz v4, :cond_5

    .line 2971
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 2972
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2973
    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 2974
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v0, v3

    .line 2976
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2977
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2979
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v3

    if-nez v3, :cond_6

    return-void

    .line 2985
    :cond_6
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_4

    .line 3007
    :pswitch_3
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    .line 3008
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v2, v1

    goto/16 :goto_4

    .line 3003
    :pswitch_4
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    .line 3004
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    goto :goto_4

    :pswitch_5
    if-eqz v4, :cond_7

    .line 2996
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    goto :goto_2

    .line 2998
    :cond_7
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v0, v3

    .line 3000
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    add-float/2addr v2, v1

    goto :goto_4

    :pswitch_6
    if-eqz v4, :cond_8

    .line 2988
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v0, v3

    goto :goto_3

    .line 2990
    :cond_8
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 2992
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    add-float/2addr v2, v1

    .line 3013
    :goto_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 3014
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setDetectResult(I)V
    .locals 0

    .line 2915
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->mDetectResult:I

    return-void
.end method
