.class Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;
.super Ljava/lang/Object;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorSensitivityAverageManager"
.end annotation


# instance fields
.field private num:I

.field private sum:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 596
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 605
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->sum:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->sum:I

    .line 606
    iget p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->num:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->num:I

    return-void
.end method

.method public get()I
    .locals 1

    .line 610
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->num:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 613
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->sum:I

    div-int/2addr p0, v0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 601
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->num:I

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$SensorSensitivityAverageManager;->sum:I

    return-void
.end method
