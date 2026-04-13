.class public Lcom/sonyericsson/android/camera3d/CameraConstants;
.super Ljava/lang/Object;
.source "CameraConstants.java"


# static fields
.field public static final AutoFocusType:I

.field public static final BURST_SHOT_NUM:I = 0x258

.field public static final CAPTURE_MODE_BURST:I = 0x3

.field public static final CAPTURE_MODE_PREVIEW:I = 0x0

.field public static final CAPTURE_MODE_REPEATING_BURST:I = 0x4

.field public static final CAPTURE_MODE_STILL:I = 0x1

.field public static final CAPTURE_MODE_ZERO_SHUTTER_LAG:I = 0x2

.field public static final CameraSynchronizedObject:Ljava/lang/Object;

.field public static final EngineSynchronizedObject:Ljava/lang/Object;

.field public static final MAX_ISO_VALUE:I = 0x320

.field public static final REPEATING_BURST_SHOT_NUM:I = 0x1

.field public static final SHOW_UI_CONTROL_MODE:Z = true

.field public static final TV_EXPOSURE_TIME_DIFF:J = 0x7a120L

.field public static final TV_EXPOSURE_TIME_MAX:J = 0xfe502aL

.field public static final TV_SENSOR_SENSITIVITY_DIFF:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->AutoFocusType:I

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
