.class public abstract Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;
.super Ljava/lang/Object;
.source "MorphoCameraBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;
    }
.end annotation


# static fields
.field protected static final nullMorphoCameraListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;


# instance fields
.field protected mIsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->nullMorphoCameraListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->mIsAvailable:Z

    return-void
.end method


# virtual methods
.method public abstract burstRemaining()I
.end method

.method public abstract cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;
.end method

.method public abstract cameraState()Lcom/sonyericsson/android/camera3d/camera_states/CameraState;
.end method

.method public abstract canExitState()Z
.end method

.method public abstract cancelState()V
.end method

.method public abstract exit()V
.end method

.method public abstract finishState()Z
.end method

.method public abstract getAllCameras()[Ljava/lang/String;
.end method

.method public getAvailableColorCorrectionMode()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableColorCorrectionModeValues()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableEdgeMode()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableEdgeModeValues()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableNoiseReductionMode()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableNoiseReductionModeValues()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableShadingMode()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableShadingModeValues()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableTonemapMode()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableTonemapModeValues()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getColorCorrectionModeDefaultValues()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEdgeModeDefaultValues()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNoiseReductionModeDefaultValues()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShadingModeDefaultValues()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getSupportedPreviewSizes()[I
.end method

.method public getTonemapModeDefaultValues()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract isFrontCamera(I)Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume(Landroid/util/Size;Landroid/util/Size;)V
.end method

.method public abstract setBurstRemaining(I)V
.end method

.method public abstract setDefaultCameraState()V
.end method

.method public abstract setMorphoPanoramaGP2Interface(Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;)V
.end method

.method public abstract startState()V
.end method

.method public abstract startTakePictureState()V
.end method

.method public abstract stopState()V
.end method

.method public abstract takePicture()Z
.end method

.method public abstract takePictureBurst()Z
.end method

.method public abstract takePictureZSL()Z
.end method

.method public abstract updateCameraState(Lcom/sonyericsson/android/camera3d/camera_states/CameraState;)V
.end method
