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
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;,
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;,
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;,
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;
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

    .line 3853
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3856
    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    const/4 v2, 0x0

    .line 2697
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->preview_skip_count:I

    .line 2703
    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->uiUpdateRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;

    .line 2707
    iput-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    if-eqz p2, :cond_0

    .line 3857
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->abort()V

    .line 3858
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getScale()I

    move-result v3

    .line 3859
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    const-string v5, "Camera2App"

    .line 3860
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "previewSize %dx%d, scale %d"

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x2

    aput-object v3, v9, v10

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3861
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getDirection()I

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v3, v8, :cond_2

    if-ne v3, v10, :cond_1

    goto :goto_0

    .line 3867
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 3868
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewWidth:I

    .line 3869
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    iput v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewHeight:I

    goto :goto_1

    .line 3863
    :cond_2
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 3864
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    iput v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewWidth:I

    .line 3865
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewHeight:I

    .line 3872
    :goto_1
    iget v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewWidth:I

    iget v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10702(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3874
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v4

    iget v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewWidth:I

    iget v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewHeight:I

    invoke-virtual {v4, v6, v7}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setPreviewImage(II)I

    move-result v4

    if-eqz v4, :cond_3

    const-string v6, "Camera2App"

    .line 3876
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "MorphoSensorFusion.setPreviewImage error ret:0x%08X"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v2

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3900
    :cond_3
    iput v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mDrawPreviewFitScale:F

    .line 3902
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 3903
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v4

    rsub-int v4, v4, 0x168

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3904
    iget v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mDrawPreviewFitScale:F

    iget v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mDrawPreviewFitScale:F

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3905
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v18, 0x1

    move-object/from16 v17, v2

    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10902(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3906
    new-instance v2, Landroid/graphics/Canvas;

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12002(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 3907
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12102(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 3908
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12100(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Paint;

    move-result-object v2

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3910
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12202(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 3911
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v2

    const/16 v4, 0x10e

    const/16 v6, 0x5a

    const/4 v7, 0x0

    if-eq v2, v6, :cond_5

    if-eq v2, v4, :cond_4

    .line 3913
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    int-to-float v8, v8

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    invoke-virtual {v2, v8, v9, v12}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_2

    .line 3920
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    rsub-int v8, v8, 0x168

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3921
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2, v8, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 3916
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    rsub-int v8, v8, 0x168

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3917
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3924
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mDrawPreviewFitScale:F

    iget v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mDrawPreviewFitScale:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3926
    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    invoke-direct {v2, v0, v3, v8, v9}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;III)V

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->detector:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    .line 3933
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v2

    .line 3935
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11600()Z

    move-result v8

    const-wide/16 v9, 0x190

    if-eqz v8, :cond_6

    .line 3936
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v5, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3937
    invoke-virtual {v3, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3938
    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    .line 3940
    :cond_6
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3941
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v5, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v14, 0x0

    const/16 v18, 0x0

    .line 3946
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    const v12, -0x4119999a    # -0.45f

    const v13, 0x3ee66666    # 0.45f

    if-eq v5, v6, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    if-ne v5, v4, :cond_7

    goto :goto_3

    :cond_7
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    :cond_8
    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_4

    :pswitch_0
    move/from16 v16, v7

    move/from16 v20, v12

    goto :goto_5

    :pswitch_1
    move/from16 v16, v7

    move/from16 v20, v13

    goto :goto_5

    :pswitch_2
    move/from16 v20, v7

    move/from16 v16, v12

    goto :goto_5

    :pswitch_3
    move/from16 v20, v7

    move/from16 v16, v13

    goto :goto_5

    :goto_4
    move/from16 v16, v7

    move/from16 v20, v16

    .line 3989
    :goto_5
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x2

    const/4 v15, 0x2

    const/16 v17, 0x2

    const/16 v19, 0x2

    move-object v12, v3

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3994
    invoke-virtual {v8, v9, v10}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 3995
    invoke-virtual {v8, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3996
    invoke-virtual {v8, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3997
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v8, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3998
    invoke-virtual {v2, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4001
    :goto_6
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    if-nez v2, :cond_9

    .line 4002
    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)V

    iput-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    .line 4003
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9900(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$10200(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I
    .locals 0

    .line 2695
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->preview_skip_count:I

    return p0
.end method

.method static synthetic access$10202(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;I)I
    .locals 0

    .line 2695
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->preview_skip_count:I

    return p1
.end method

.method static synthetic access$10210(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I
    .locals 2

    .line 2695
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->preview_skip_count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->preview_skip_count:I

    return v0
.end method

.method static synthetic access$10300(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;Lcom/sonyericsson/android/camera3d/PerformanceCounter;)V
    .locals 0

    .line 2695
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->createPreviewImage(Lcom/sonyericsson/android/camera3d/PerformanceCounter;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Z
    .locals 0

    .line 2695
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAbort:Z

    return p0
.end method

.method static synthetic access$10500(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;I)V
    .locals 0

    .line 2695
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->attachEnd(I)V

    return-void
.end method

.method static synthetic access$11100(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;
    .locals 0

    .line 2695
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->detector:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;
    .locals 0

    .line 2695
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->uiUpdateRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I
    .locals 0

    .line 2695
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewWidth:I

    return p0
.end method

.method static synthetic access$11900(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I
    .locals 0

    .line 2695
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mPreviewHeight:I

    return p0
.end method

.method private attachEnd(I)V
    .locals 1

    .line 4041
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12300(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 4042
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->listener:Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;->requestEnd(Lcom/sonyericsson/android/camera3d/base/PanoramaState;I)V

    return-void
.end method

.method private createPreviewImage(Lcom/sonyericsson/android/camera3d/PerformanceCounter;)V
    .locals 4

    .line 4008
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10600()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4009
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->start()V

    .line 4010
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->updatePreviewImage(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 4011
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->stop()V

    const-string v2, "Camera2App"

    const-string v3, "mMorphoPanoramaGP2.updatePreviewImage"

    .line 4012
    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->putLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string p0, "Camera2App"

    .line 4014
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMorphoPanoramaGP2.updatePreviewImage error ret:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    monitor-exit v0

    return-void

    .line 4018
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4019
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Canvas;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12200(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12100(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 4021
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
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

    .line 4073
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->detector:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->isEnableTvAnalysis()Z

    move-result p0

    return p0
.end method

.method public notifyTvAnalyzed()V
    .locals 0

    .line 4078
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->detector:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->notifyTvAnalyzed()V

    return-void
.end method

.method public onSaveImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z
    .locals 1

    .line 4026
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Camera2App"

    const-string v0, "PanoramaPreview.onSaveImage mMorphoPanoramaGP2 is null!!"

    .line 4027
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4028
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->close()V

    const/4 p0, 0x0

    return p0

    .line 4032
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9800(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    .line 4033
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    if-nez p1, :cond_1

    .line 4034
    new-instance p1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    .line 4035
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9900(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public repeatTakePicture()V
    .locals 1

    .line 4053
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    .line 4060
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePictureBurst()Z

    move-result v0

    goto :goto_0

    .line 4063
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePictureZSL()Z

    move-result v0

    goto :goto_0

    .line 4057
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePicture()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    .line 4067
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCapture()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
