.class Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$2;
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

    .line 51
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$2;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public captureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 55
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$2;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-static {}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->access$100()Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->access$002(Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;)Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$ICaptureCompletedWrapper;

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState$2;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p1

    iget p1, p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->capture_mode:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;->toTakePictureState(I)V

    :cond_1
    return-void
.end method
