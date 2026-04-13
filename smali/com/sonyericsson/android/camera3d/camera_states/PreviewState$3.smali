.class Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$3;
.super Ljava/lang/Object;
.source "PreviewState.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$3;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setNewRequest(D)V
    .locals 9

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$3;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    .line 68
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v2, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 69
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    sget-object v3, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v1, :cond_9

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$3;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->camera2Params()Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->evSteps()I

    move-result v4

    if-nez v4, :cond_1

    .line 80
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraInfo;->PREVIEW_GAIN_RANGE:Landroid/util/Range;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 82
    :cond_1
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraInfo;->PREVIEW_GAIN_RANGE:Landroid/util/Range;

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->evValue()D

    move-result-wide v7

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    mul-double/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 84
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr p1, v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    mul-double/2addr p1, v1

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->getSmoothenedEv(D)D

    move-result-wide p1

    .line 85
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->shutterSpeedInNanoSeconds()J

    move-result-wide v1

    .line 86
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    long-to-double v1, v1

    div-double v1, p1, v1

    double-to-int v1, v1

    invoke-virtual {v4, v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->clampSensitivityRange(I)I

    move-result v1

    .line 87
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    int-to-double v4, v1

    div-double/2addr p1, v4

    double-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->clampExposureTime(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/32 v4, 0xfe502a

    .line 88
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 89
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x7a120

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    return-void

    :cond_2
    const-wide/32 v4, 0x3938700

    .line 92
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 94
    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->setSensorSensitivity(I)V

    .line 95
    invoke-virtual {v3, p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->setExposureTime(J)V

    .line 102
    :try_start_0
    iget-object p1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getOpenCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 103
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->previewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 104
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->miniPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 105
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->miniPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 107
    :cond_3
    iget-boolean v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_af_mode:Z

    if-eqz v1, :cond_4

    .line 108
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 110
    :cond_4
    iget-boolean v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 111
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 114
    :cond_5
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 115
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->exposureTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 116
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->frameDuration()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 117
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 118
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 119
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 121
    iget-boolean p2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_antibanding_mode:Z

    if-eqz p2, :cond_6

    .line 122
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getAntiBanding()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 124
    :cond_6
    iget-boolean p2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    if-eqz p2, :cond_7

    .line 125
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getColorCorrectionMode()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->access$200(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 126
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getEdgeMode()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->access$200(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 127
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getNoiseReductionMode()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->access$200(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 128
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getShadingMode()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->access$200(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 129
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->getTonemapMode()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->access$200(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;I)V

    .line 131
    :cond_7
    iget-object p2, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p2}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->isInfinityFocus()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 132
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->setupFocusModeInfinity(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 134
    :cond_8
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$3;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->access$300(Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;Landroid/hardware/camera2/CaptureRequest;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 138
    iget-object p0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onErrorCapture()V

    :goto_1
    return-void

    :cond_9
    :goto_2
    const-string p0, "MorphoCamera2State"

    const-string p1, "SENSOR_SENSITIVITY or SENSOR_EXPOSURE_TIME is null."

    .line 72
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public captureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 144
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$3;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p1

    .line 145
    iget-object p2, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReaderIdling:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 147
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->isTvLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->safeImageClose(Landroid/media/Image;)V

    goto :goto_1

    .line 151
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getGain(Landroid/media/Image;)D

    move-result-wide v0

    .line 152
    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->safeImageClose(Landroid/media/Image;)V

    .line 153
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$3;->setNewRequest(D)V

    .line 156
    :goto_1
    iget-object p2, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReaderIdling:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p2

    goto :goto_0

    .line 159
    :cond_1
    iget-object p0, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p0

    .line 160
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->safeImageClose(Landroid/media/Image;)V

    return-void
.end method
