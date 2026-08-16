.class public Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;
.super Lcom/sonyericsson/android/camera3d/camera_states/CameraState;
.source "Camera1State.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MorphoCamera1State"


# instance fields
.field final mCamera:Landroid/hardware/Camera;

.field final mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

.field final mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

.field final mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Lcom/sonyericsson/android/camera3d/CameraInfo;Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mCamera:Landroid/hardware/Camera;

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    if-nez p3, :cond_0

    .line 33
    sget-object p1, Lcom/sonyericsson/android/camera3d/camera_states/MorphoPanoramaGP2CameraState;->nullGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    goto :goto_0

    .line 35
    :cond_0
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    .line 37
    :goto_0
    iput-object p4, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/camera_states/CameraState;-><init>()V

    .line 41
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mCamera:Landroid/hardware/Camera;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mCamera:Landroid/hardware/Camera;

    .line 42
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mCameraInfo:Lcom/sonyericsson/android/camera3d/CameraInfo;

    .line 43
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mGP2Callback:Lcom/sonyericsson/android/camera3d/camera_states/IMorphoPanoramaGP2Callback;

    .line 44
    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/camera_states/Camera1State;->mListener:Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase$IMorphoCameraListener;

    return-void
.end method
