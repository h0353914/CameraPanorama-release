.class Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;
.super Lcom/sonyericsson/android/camera3d/camera_states/CameraState;
.source "Camera2App.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavePictureState"
.end annotation


# instance fields
.field private imageFormat:Ljava/lang/String;

.field private mIsUpdateUi:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 1953
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;-><init>()V

    const/4 p1, 0x1

    .line 1951
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->mIsUpdateUi:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Z)V
    .locals 0

    .line 1957
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;-><init>()V

    .line 1958
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->mIsUpdateUi:Z

    return-void
.end method

.method private showSaveErrorDialog()V
    .locals 1

    .line 1962
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->mIsUpdateUi:Z

    if-eqz v0, :cond_0

    .line 1963
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_SAVE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1900(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFinish()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSaveFinish(Z)V
    .locals 12

    .line 2033
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSaveFinish result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2App"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    if-eqz v0, :cond_0

    .line 2037
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5000(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->imageFormat:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v4

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 2038
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v5

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getScale()I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5400(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getDirection()I

    move-result v9

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5500(Lcom/sonyericsson/android/camera3d/Camera2App;)J

    move-result-wide v10

    .line 2037
    invoke-virtual/range {v1 .. v11}, Lcom/sonyericsson/android/camera3d/InternalSettings;->saveSettings(Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/android/camera3d/CameraInfo;IIIIIJ)V

    .line 2040
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    if-eqz v0, :cond_1

    .line 2041
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5000(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->imageFormat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/InternalSettings;->putParamFile(Ljava/lang/String;Lcom/sonyericsson/android/camera3d/CameraInfo;Ljava/lang/String;)V

    .line 2044
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->mIsUpdateUi:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 2045
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5600(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v3, 0x4

    .line 2046
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2047
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5700(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2048
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1800(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    if-nez p1, :cond_2

    .line 2050
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4902(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;

    .line 2051
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->showSaveErrorDialog()V

    .line 2056
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2057
    sget p1, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-nez p1, :cond_3

    .line 2058
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    goto :goto_0

    .line 2060
    :cond_3
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    goto :goto_0

    .line 2063
    :cond_4
    sget p1, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-nez p1, :cond_5

    .line 2064
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;-><init>()V

    goto :goto_0

    .line 2066
    :cond_5
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;-><init>()V

    .line 2069
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 2070
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startState()V

    .line 2071
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2073
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->clearThumbnail()V

    .line 2075
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6100(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    .line 2079
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4902(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;

    .line 2081
    :cond_8
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3900(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2083
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2085
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4500(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2087
    :cond_a
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5702(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 2089
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 2090
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2800(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    :cond_b
    return-void
.end method

.method public requestSaveProcess()Z
    .locals 11

    .line 1974
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Camera2App"

    if-nez v0, :cond_0

    .line 1975
    const-string p0, "mMorphoPanoramaGP2 is null"

    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1979
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1981
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1983
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "mMorphoPanoramaGP2.getClippingRect error ret:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1986
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "ClippingRect(Save) (%d,%d)-(%d,%d) %dx%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 1989
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v3, v7, v8

    mul-int/lit8 v3, v3, 0x3

    .line 1990
    div-int/lit8 v3, v3, 0x2

    new-array v4, v3, [B

    .line 1992
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getOutputImage([BLandroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1994
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "mMorphoPanoramaGP2.getOutputImage error ret:"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1997
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_format:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->imageFormat:Ljava/lang/String;

    .line 1999
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4500(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2001
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2002
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2003
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2006
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveLocation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2007
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->getLocation()Landroid/location/Location;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    move-object v9, v3

    .line 2011
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4700(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2013
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    move-object v6, v0

    invoke-static/range {v4 .. v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4800(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;Ljava/nio/ByteBuffer;IILandroid/location/Location;)Landroid/util/Pair;

    move-result-object v3

    .line 2015
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 2016
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4902(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_4
    move v4, v1

    .line 2019
    :goto_1
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)V

    if-nez v4, :cond_5

    .line 2023
    const-string p0, "FileWriteErr"

    invoke-static {v2, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
