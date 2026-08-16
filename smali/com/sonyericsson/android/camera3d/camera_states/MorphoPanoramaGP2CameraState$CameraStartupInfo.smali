.class public Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;
.super Ljava/lang/Object;
.source "MorphoPanoramaGP2CameraState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraStartupInfo"
.end annotation


# instance fields
.field public available_ae_mode:Z

.field public available_af_mode:Z

.field public available_antibanding_mode:Z

.field public available_fallback_mode:Z

.field public available_image_quality_settings:Z

.field public available_scene_mode_sports:Z

.field public backgroundHandler:Landroid/os/Handler;

.field public backgroundHandlerThread:Landroid/os/HandlerThread;

.field public burstRemaining:I

.field public final burstRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field public camera2Params:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;

.field public cameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

.field public captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field public captureRequest:Landroid/hardware/camera2/CaptureRequest;

.field public final capture_mode:I

.field public currentBurstRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public currentRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

.field public imageReader:Landroid/media/ImageReader;

.field public imageReaderIdling:Landroid/media/ImageReader;

.field public miniPreviewSurface:Landroid/view/Surface;

.field public previewAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public previewSurface:Landroid/view/Surface;

.field public takePictureAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field public totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->previewSurface:Landroid/view/Surface;

    .line 35
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->miniPreviewSurface:Landroid/view/Surface;

    .line 36
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->backgroundHandler:Landroid/os/Handler;

    .line 37
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->backgroundHandlerThread:Landroid/os/HandlerThread;

    .line 40
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReader:Landroid/media/ImageReader;

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->imageReaderIdling:Landroid/media/ImageReader;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_ae_mode:Z

    .line 53
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_af_mode:Z

    .line 54
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_scene_mode_sports:Z

    .line 55
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_antibanding_mode:Z

    .line 56
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_image_quality_settings:Z

    .line 57
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->available_fallback_mode:Z

    .line 60
    iput p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->capture_mode:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    goto :goto_0

    .line 69
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x258

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->burstRequestList:Ljava/util/List;

    .line 72
    :goto_0
    sget-object p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->nullGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    return-void
.end method
