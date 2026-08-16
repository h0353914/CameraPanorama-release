.class Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;
.super Lcom/sonyericsson/android/camera3d/base/PanoramaState;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaPreview"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;,
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;,
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;,
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;
    }
.end annotation


# static fields
.field private static final PREVIEW_SKIP_FRAME_NUM:I


# instance fields
.field private final detector:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

.field private mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

.field private final mDrawPreviewFitScale:F

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private preview_skip_count:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

.field private final uiUpdateRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 1

    const/4 v0, 0x0

    .line 3860
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Z)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3863
    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    const/4 v2, 0x0

    .line 2704
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->preview_skip_count:I

    .line 2710
    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->uiUpdateRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;

    .line 2714
    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    if-eqz p2, :cond_0

    .line 3864
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->abort()V

    .line 3865
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getScale()I

    move-result v2

    .line 3866
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getPreviewSize()Landroid/util/Size;

    move-result-object v3

    .line 3867
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v5, v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "previewSize %dx%d, scale %d"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Camera2App"

    invoke-static {v4, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3868
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getDirection()I

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    goto :goto_0

    .line 3874
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 3875
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewWidth:I

    .line 3876
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewHeight:I

    goto :goto_1

    .line 3870
    :cond_2
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 3871
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    iput v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewWidth:I

    .line 3872
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewHeight:I

    .line 3879
    :goto_1
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewWidth:I

    iget v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10402(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3881
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v3

    iget v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewWidth:I

    iget v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewHeight:I

    invoke-virtual {v3, v8, v9}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setPreviewImage(II)I

    move-result v3

    if-eqz v3, :cond_3

    .line 3883
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v9, "MorphoSensorFusion.setPreviewImage error ret:0x%08X"

    invoke-static {v8, v9, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3907
    :cond_3
    iput v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mDrawPreviewFitScale:F

    .line 3909
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 3910
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8300(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v3

    rsub-int v3, v3, 0x168

    int-to-float v3, v3

    invoke-virtual {v13, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3911
    invoke-virtual {v13, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3912
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10602(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3913
    new-instance v3, Landroid/graphics/Canvas;

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10600(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11702(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 3914
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11802(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 3915
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Paint;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3917
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11902(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 3918
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8300(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v3

    const/16 v4, 0x10e

    const/16 v8, 0x5a

    const/4 v9, 0x0

    if-eq v3, v8, :cond_5

    if-eq v3, v4, :cond_4

    .line 3920
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8300(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v10

    int-to-float v10, v10

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    invoke-virtual {v3, v10, v11, v13}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_2

    .line 3927
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8300(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v10

    rsub-int v10, v10, 0x168

    int-to-float v10, v10

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3928
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3, v10, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 3923
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8300(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v10

    rsub-int v10, v10, 0x168

    int-to-float v10, v10

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3924
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3931
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3933
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v11

    invoke-direct {v3, v0, v2, v10, v11}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;III)V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->detector:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    .line 3940
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v3

    .line 3942
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300()Z

    move-result v10

    const-wide/16 v11, 0x190

    if-eqz v10, :cond_6

    .line 3943
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3944
    invoke-virtual {v2, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3945
    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    .line 3947
    :cond_6
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x1

    invoke-direct {v10, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3948
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v14, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3953
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v7

    iget v7, v7, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    const v15, -0x4119999a    # -0.45f

    const v16, 0x3ee66666    # 0.45f

    if-eq v7, v8, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v7

    iget v7, v7, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    if-ne v7, v4, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_a

    if-eq v2, v13, :cond_9

    if-eq v2, v5, :cond_b

    if-eq v2, v6, :cond_c

    goto :goto_4

    :cond_8
    :goto_3
    if-eqz v2, :cond_c

    if-eq v2, v13, :cond_b

    if-eq v2, v5, :cond_a

    if-eq v2, v6, :cond_9

    :goto_4
    move/from16 v21, v9

    move/from16 v25, v21

    goto :goto_5

    :cond_9
    move/from16 v21, v9

    move/from16 v25, v15

    goto :goto_5

    :cond_a
    move/from16 v21, v9

    move/from16 v25, v16

    goto :goto_5

    :cond_b
    move/from16 v25, v9

    move/from16 v21, v15

    goto :goto_5

    :cond_c
    move/from16 v25, v9

    move/from16 v21, v16

    .line 3996
    :goto_5
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/16 v22, 0x2

    const/16 v24, 0x2

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v23, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v25}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 4001
    invoke-virtual {v10, v11, v12}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 4002
    invoke-virtual {v10, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4003
    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4004
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4005
    invoke-virtual {v3, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4008
    :goto_6
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    if-nez v2, :cond_d

    .line 4009
    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)V

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    .line 4010
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9500(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_d
    return-void
.end method

.method static synthetic access$10000(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Z
    .locals 0

    .line 2702
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAbort:Z

    return p0
.end method

.method static synthetic access$10200(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;I)V
    .locals 0

    .line 2702
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->attachEnd(I)V

    return-void
.end method

.method static synthetic access$10800(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;
    .locals 0

    .line 2702
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->detector:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;
    .locals 0

    .line 2702
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->uiUpdateRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I
    .locals 0

    .line 2702
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$11600(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I
    .locals 0

    .line 2702
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewHeight:I

    return p0
.end method

.method static synthetic access$9800(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I
    .locals 0

    .line 2702
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->preview_skip_count:I

    return p0
.end method

.method static synthetic access$9802(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;I)I
    .locals 0

    .line 2702
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->preview_skip_count:I

    return p1
.end method

.method static synthetic access$9810(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I
    .locals 2

    .line 2702
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->preview_skip_count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->preview_skip_count:I

    return v0
.end method

.method static synthetic access$9900(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;Lcom/sonyericsson/android/camera3d/PerformanceCounter;)V
    .locals 0

    .line 2702
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->createPreviewImage(Lcom/sonyericsson/android/camera3d/PerformanceCounter;)V

    return-void
.end method

.method private attachEnd(I)V
    .locals 1

    .line 4048
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12000(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 4049
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->listener:Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;->requestEnd(Lcom/sonyericsson/android/camera3d/base/PanoramaState;I)V

    return-void
.end method

.method private createPreviewImage(Lcom/sonyericsson/android/camera3d/PerformanceCounter;)V
    .locals 5

    const-string v0, "mMorphoPanoramaGP2.updatePreviewImage error ret:"

    .line 4015
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4016
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->start()V

    .line 4017
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->updatePreviewImage(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 4018
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->stop()V

    .line 4019
    const-string v3, "Camera2App"

    const-string v4, "mMorphoPanoramaGP2.updatePreviewImage"

    invoke-virtual {p1, v3, v4}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->putLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 4021
    const-string p0, "Camera2App"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    monitor-exit v1

    return-void

    .line 4025
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10600(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4026
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Canvas;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 4028
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public hasImage()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEnableTvAnalysis()Z
    .locals 0

    .line 4080
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->detector:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->isEnableTvAnalysis()Z

    move-result p0

    return p0
.end method

.method public notifyTvAnalyzed()V
    .locals 0

    .line 4085
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->detector:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->notifyTvAnalyzed()V

    return-void
.end method

.method public onSaveImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z
    .locals 1

    .line 4033
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4034
    const-string p0, "Camera2App"

    const-string v0, "PanoramaPreview.onSaveImage mMorphoPanoramaGP2 is null!!"

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4035
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->close()V

    const/4 p0, 0x0

    return p0

    .line 4039
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9400(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    .line 4040
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    if-nez p1, :cond_1

    .line 4041
    new-instance p1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    .line 4042
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9500(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public repeatTakePicture()V
    .locals 2

    .line 4060
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 4067
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePictureBurst()Z

    move-result v0

    goto :goto_0

    .line 4070
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePictureZSL()Z

    move-result v0

    goto :goto_0

    .line 4064
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePicture()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    .line 4074
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCapture()V

    :cond_3
    :goto_1
    return-void
.end method
