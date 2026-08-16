.class Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState$1;
.super Ljava/lang/Object;
.source "AutoFocusState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->autoFocusEnd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState$1;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState$1;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->access$000(Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string p0, "MorphoCamera2State"

    const-string v0, "AutoFocus canceled."

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState$1;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->getCameraStartupInfo()Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState$CameraStartupInfo;->gp2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState$1;->val$success:Z

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;->onAutoFocusFinish(Z)V

    .line 187
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState$1;->this$0:Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;->access$100(Lcom/sonyericsson/android/camera3d/camera_states/AutoFocusState;)V

    return-void
.end method
