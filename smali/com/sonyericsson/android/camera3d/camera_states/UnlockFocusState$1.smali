.class Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState$1;
.super Ljava/lang/Object;
.source "UnlockFocusState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;->onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState$1;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;-><init>()V

    .line 38
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState$1;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 39
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;->onStart()V

    return-void
.end method
