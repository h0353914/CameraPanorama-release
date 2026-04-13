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

    .line 2143
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 2143
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method


# virtual methods
.method public onSaveImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z
    .locals 12

    .line 2147
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->close()V

    .line 2148
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->setNullDirectionFunction()V

    .line 2150
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "Camera2App"

    const-string p1, "PanoramaFirst.onSaveImage mMorphoPanoramaGP2 is null!!"

    .line 2151
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2155
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object p1

    .line 2157
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2158
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 2159
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 2163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6800(J)Ljava/lang/String;

    move-result-object v1

    .line 2164
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6900(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "input"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5002(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;

    .line 2165
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    if-nez v1, :cond_1

    .line 2166
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->disableSaveInputImages()V

    goto :goto_0

    .line 2168
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5000(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2170
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 2174
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2179
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5000(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->enableSaveInputImages(Ljava/lang/String;)V

    goto :goto_0

    .line 2176
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5000(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/InternalSettings;->initializeEncoder(Ljava/lang/String;II)V

    .line 2186
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v2

    iget-wide v2, v2, Lcom/sonyericsson/android/camera3d/InternalSettings;->shrink_ratio:D

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setShrinkRatio(D)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const-string v3, "Camera2App"

    .line 2188
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setShrinkRatio error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->calcseam_pixnum:I

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setCalcseamPixnum(I)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v3, "Camera2App"

    .line 2192
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setCalcseamPixnum error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_deform:Z

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setUseDeform(Z)I

    move-result v1

    if-eqz v1, :cond_5

    const-string v3, "Camera2App"

    .line 2196
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setUseDeform error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->use_luminance_correction:Z

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setUseLuminanceCorrection(Z)I

    move-result v1

    if-eqz v1, :cond_6

    const-string v3, "Camera2App"

    .line 2200
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setUseLuminanceCorrection error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v3

    iget-wide v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->seamsearch_ratio:D

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setSeamsearchRatio(D)I

    move-result v1

    if-eqz v1, :cond_7

    const-string v3, "Camera2App"

    .line 2204
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setSeamsearchRatio error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    :cond_7
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v3

    iget-wide v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->zrotation_coeff:D

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setZrotationCoeff(D)I

    move-result v1

    if-eqz v1, :cond_8

    const-string v3, "Camera2App"

    .line 2208
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setZrotationCoeff error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    :cond_8
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v3

    iget-wide v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->draw_threshold:D

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setDrawThreshold(D)I

    move-result v1

    if-eqz v1, :cond_9

    const-string v3, "Camera2App"

    .line 2212
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setDrawThreshold error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    :cond_9
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->unsharp_strength:I

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setUnsharpStrength(I)I

    move-result v1

    if-eqz v1, :cond_a

    const-string v3, "Camera2App"

    .line 2216
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setUnsharpStrength error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    :cond_a
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v3

    iget-wide v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->aov_gain:D

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setAovGain(D)I

    move-result v1

    if-eqz v1, :cond_b

    const-string v3, "Camera2App"

    .line 2220
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setAovGain error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    :cond_b
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v3

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v1

    iget-wide v4, v1, Lcom/sonyericsson/android/camera3d/InternalSettings;->distortion_k1:D

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v1

    iget-wide v6, v1, Lcom/sonyericsson/android/camera3d/InternalSettings;->distortion_k2:D

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v1

    iget-wide v8, v1, Lcom/sonyericsson/android/camera3d/InternalSettings;->distortion_k3:D

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v1

    iget-wide v10, v1, Lcom/sonyericsson/android/camera3d/InternalSettings;->distortion_k4:D

    invoke-virtual/range {v3 .. v11}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setDistortionCorrectionParam(DDDD)I

    move-result v1

    if-eqz v1, :cond_c

    const-string v3, "Camera2App"

    .line 2224
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setDistortionCorrectionParam error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    :cond_c
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v3

    iget-wide v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->rotation_ratio:D

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setRotationRatio(D)I

    move-result v1

    if-eqz v1, :cond_d

    const-string v3, "Camera2App"

    .line 2228
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setRotationRatio error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    :cond_d
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->projection_mode:I

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setProjectionMode(I)I

    move-result v1

    if-eqz v1, :cond_e

    const-string v3, "Camera2App"

    .line 2232
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setProjectionMode error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    :cond_e
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/InternalSettings;->motion_detection_mode:I

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setMotionDetectionMode(I)I

    move-result v1

    if-eqz v1, :cond_f

    const-string v3, "Camera2App"

    .line 2236
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "MorphoPanoramaGP2.setMotionDetectionMode error ret:0x%08X"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    :cond_f
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result p1

    invoke-virtual {v1, v3, p1}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->start(II)I

    move-result p1

    if-eqz p1, :cond_10

    const-string v1, "Camera2App"

    .line 2240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMorphoPanoramaGP2.start error ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCapture()V

    return v0

    .line 2245
    :cond_10
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6602(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/PanoramaState;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    .line 2246
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->listener:Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->setPanoramaStateEventListener(Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;)V

    .line 2247
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->clearListener()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public repeatTakePicture()V
    .locals 1

    .line 2254
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2261
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePictureBurst()Z

    move-result v0

    goto :goto_0

    .line 2264
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePictureZSL()Z

    move-result v0

    goto :goto_0

    .line 2258
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePicture()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    .line 2268
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

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
