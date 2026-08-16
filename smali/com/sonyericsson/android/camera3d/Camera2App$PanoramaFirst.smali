.class Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;
.super Lcom/sonyericsson/android/camera3d/base/PanoramaState;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaFirst"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 2156
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 2156
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method


# virtual methods
.method public onSaveImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z
    .locals 13

    .line 2160
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->close()V

    .line 2161
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setNullDirectionFunction()V

    .line 2163
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "Camera2App"

    if-nez p1, :cond_0

    .line 2164
    const-string p0, "PanoramaFirst.onSaveImage mMorphoPanoramaGP2 is null!!"

    invoke-static {v1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2168
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p1

    .line 2170
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 2171
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 2172
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v3

    div-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 2176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6600(J)Ljava/lang/String;

    move-result-object v2

    .line 2177
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2178
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6700()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "input"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2177
    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5002(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;

    .line 2179
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 2180
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->disableSaveInputImages()V

    goto :goto_0

    .line 2182
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5000(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2184
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 2188
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_3

    goto :goto_0

    .line 2193
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5000(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->enableSaveInputImages(Ljava/lang/String;)V

    goto :goto_0

    .line 2190
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5000(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v6

    iget v6, v6, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/sonyericsson/android/camera3d/InternalSettings;->initializeEncoder(Ljava/lang/String;II)V

    .line 2200
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v4

    iget-wide v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->shrink_ratio:D

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setShrinkRatio(D)I

    move-result v2

    if-eqz v2, :cond_5

    .line 2202
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setShrinkRatio error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->calcseam_pixnum:I

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setCalcseamPixnum(I)I

    move-result v2

    if-eqz v2, :cond_6

    .line 2206
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setCalcseamPixnum error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    :cond_6
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_deform:Z

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setUseDeform(Z)I

    move-result v2

    if-eqz v2, :cond_7

    .line 2210
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setUseDeform error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_luminance_correction:Z

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setUseLuminanceCorrection(Z)I

    move-result v2

    if-eqz v2, :cond_8

    .line 2214
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setUseLuminanceCorrection error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    :cond_8
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v4

    iget-wide v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->seamsearch_ratio:D

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setSeamsearchRatio(D)I

    move-result v2

    if-eqz v2, :cond_9

    .line 2218
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setSeamsearchRatio error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    :cond_9
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v4

    iget-wide v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->zrotation_coeff:D

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setZrotationCoeff(D)I

    move-result v2

    if-eqz v2, :cond_a

    .line 2222
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setZrotationCoeff error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    :cond_a
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v4

    iget-wide v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->draw_threshold:D

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setDrawThreshold(D)I

    move-result v2

    if-eqz v2, :cond_b

    .line 2226
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setDrawThreshold error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    :cond_b
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->unsharp_strength:I

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setUnsharpStrength(I)I

    move-result v2

    if-eqz v2, :cond_c

    .line 2230
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setUnsharpStrength error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    :cond_c
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v4

    iget-wide v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_gain:D

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setAovGain(D)I

    move-result v2

    if-eqz v2, :cond_d

    .line 2234
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setAovGain error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    :cond_d
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v4

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v2

    iget-wide v5, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->distortion_k1:D

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v2

    iget-wide v7, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->distortion_k2:D

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v2

    iget-wide v9, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->distortion_k3:D

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v2

    iget-wide v11, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->distortion_k4:D

    invoke-virtual/range {v4 .. v12}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setDistortionCorrectionParam(DDDD)I

    move-result v2

    if-eqz v2, :cond_e

    .line 2238
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setDistortionCorrectionParam error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    :cond_e
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v4

    iget-wide v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->rotation_ratio:D

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setRotationRatio(D)I

    move-result v2

    if-eqz v2, :cond_f

    .line 2242
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setRotationRatio error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    :cond_f
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->projection_mode:I

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setProjectionMode(I)I

    move-result v2

    if-eqz v2, :cond_10

    .line 2246
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setProjectionMode error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    :cond_10
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/InternalSettings;->motion_detection_mode:I

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setMotionDetectionMode(I)I

    move-result v2

    if-eqz v2, :cond_11

    .line 2250
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "MorphoPanoramaGP2.setMotionDetectionMode error ret:0x%08X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    :cond_11
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result p1

    invoke-virtual {v2, v4, p1}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->start(II)I

    move-result p1

    if-eqz p1, :cond_12

    .line 2254
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mMorphoPanoramaGP2.start error ret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCapture()V

    return v0

    .line 2259
    :cond_12
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6402(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/PanoramaState;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    .line 2260
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->listener:Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->setPanoramaStateEventListener(Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;)V

    .line 2261
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->clearListener()V

    return v3
.end method

.method public repeatTakePicture()V
    .locals 2

    .line 2268
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

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

    .line 2275
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePictureBurst()Z

    move-result v0

    goto :goto_0

    .line 2278
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePictureZSL()Z

    move-result v0

    goto :goto_0

    .line 2272
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePicture()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    .line 2282
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCapture()V

    :cond_3
    :goto_1
    return-void
.end method
