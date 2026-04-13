.class Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;
.super Lcom/sonyericsson/android/camera3d/base/PanoramaState;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecideDirection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;
    }
.end annotation


# instance fields
.field private mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

.field private mSaveResult:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 1

    .line 2278
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    const/4 v0, 0x0

    .line 2275
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    const/4 v0, 0x0

    .line 2276
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->mSaveResult:Z

    .line 2279
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object p0

    iget p0, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5402(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    return-void
.end method

.method static synthetic access$8600(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;)Z
    .locals 0

    .line 2273
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->mSaveResult:Z

    return p0
.end method

.method static synthetic access$8602(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;Z)Z
    .locals 0

    .line 2273
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->mSaveResult:Z

    return p1
.end method

.method static synthetic access$9600(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;)Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;
    .locals 0

    .line 2273
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->listener:Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;)V
    .locals 0

    .line 2273
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->clearListener()V

    return-void
.end method


# virtual methods
.method public onSaveImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z
    .locals 1

    .line 2658
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Camera2App"

    const-string v0, "DecideDirection.onSaveImage mMorphoPanoramaGP2 is null!!"

    .line 2659
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->close()V

    const/4 p0, 0x0

    return p0

    .line 2664
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9800(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    .line 2665
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    if-nez p1, :cond_1

    .line 2666
    new-instance p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    .line 2667
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9900(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->mAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public repeatTakePicture()V
    .locals 1

    .line 2676
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2683
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePictureBurst()Z

    move-result v0

    goto :goto_0

    .line 2686
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePictureZSL()Z

    move-result v0

    goto :goto_0

    .line 2680
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePicture()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    .line 2690
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

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
