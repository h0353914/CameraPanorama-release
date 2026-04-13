.class Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;
.super Lcom/sonyericsson/android/camera3d/camera_states/CameraState;
.source "Camera2App.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;


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

    .line 1935
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;-><init>()V

    const/4 p1, 0x1

    .line 1933
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->mIsUpdateUi:Z

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Z)V
    .locals 0

    .line 1939
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;-><init>()V

    const/4 p1, 0x1

    .line 1933
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->mIsUpdateUi:Z

    .line 1940
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->mIsUpdateUi:Z

    return-void
.end method

.method private showSaveErrorDialog()V
    .locals 1

    .line 1944
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->mIsUpdateUi:Z

    if-eqz v0, :cond_0

    .line 1945
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

    const-string v0, "Camera2App"

    .line 2015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveFinish result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    if-eqz v0, :cond_0

    .line 2019
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

    .line 2020
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

    .line 2019
    invoke-virtual/range {v1 .. v11}, Lcom/sonyericsson/android/camera3d/InternalSettings;->saveSettings(Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/android/camera3d/CameraInfo;IIIIIJ)V

    .line 2022
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->save_input_images:I

    if-eqz v0, :cond_1

    .line 2023
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

    .line 2026
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->mIsUpdateUi:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 2027
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5600(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v3, 0x4

    .line 2028
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2029
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5700(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2030
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1800(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    if-eqz p1, :cond_2

    .line 2032
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5900(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2033
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xdac

    invoke-static {p1, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6000(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 2036
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4902(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;

    .line 2037
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->showSaveErrorDialog()V

    .line 2042
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2043
    sget p1, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-nez p1, :cond_4

    .line 2044
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1PreviewState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    goto :goto_1

    .line 2046
    :cond_4
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera3d/camera_states/Camera1UnlockFocusState;-><init>(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    goto :goto_1

    .line 2049
    :cond_5
    sget p1, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    if-nez p1, :cond_6

    .line 2050
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera3d/camera_states/PreviewState;-><init>()V

    goto :goto_1

    .line 2052
    :cond_6
    new-instance p1, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera3d/camera_states/UnlockFocusState;-><init>()V

    .line 2055
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V

    .line 2056
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startState()V

    .line 2057
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 2059
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->clearThumbnail()V

    .line 2061
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6300(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    goto :goto_2

    :cond_8
    if-nez p1, :cond_9

    .line 2065
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4902(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;

    .line 2067
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3900(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2069
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5902(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 2070
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2072
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4500(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2074
    :cond_b
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5702(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 2076
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 2077
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2800(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    :cond_c
    return-void
.end method

.method public requestSaveProcess()Z
    .locals 20

    move-object/from16 v0, p0

    .line 1956
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "Camera2App"

    const-string v1, "mMorphoPanoramaGP2 is null"

    .line 1957
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1961
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1963
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "Camera2App"

    .line 1965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMorphoPanoramaGP2.getClippingRect error ret:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const-string v3, "Camera2App"

    .line 1968
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "ClippingRect(Save) (%d,%d)-(%d,%d) %dx%d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget v7, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x3

    aput-object v7, v6, v10

    const/4 v7, 0x4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v7

    const/4 v7, 0x5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 1971
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v18

    mul-int v3, v17, v18

    mul-int/2addr v3, v10

    .line 1972
    div-int/2addr v3, v9

    new-array v3, v3, [B

    .line 1974
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getOutputImage([BLandroid/graphics/Rect;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Camera2App"

    .line 1976
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMorphoPanoramaGP2.getOutputImage error ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1979
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_format:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->imageFormat:Ljava/lang/String;

    .line 1981
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4500(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 1983
    array-length v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1984
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1985
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v3, 0x0

    .line 1988
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveLocation()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1989
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->getLocation()Landroid/location/Location;

    move-result-object v3

    :cond_3
    move-object/from16 v19, v3

    .line 1993
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4700(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1995
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 1996
    iget-object v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object v13, v3

    move-object v14, v15

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v19}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4800(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;IILandroid/location/Location;)Z

    move-result v4

    .line 1998
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4902(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v4, v2

    .line 2001
    :goto_0
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/utils/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)V

    if-nez v4, :cond_5

    const-string v0, "Camera2App"

    const-string v1, "FileWriteErr"

    .line 2005
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    return v8
.end method
