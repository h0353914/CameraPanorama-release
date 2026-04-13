.class Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;
.super Ljava/lang/Object;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShotSettings"
.end annotation


# instance fields
.field public noiseReductionStrength:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 586
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$ShotSettings;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method
