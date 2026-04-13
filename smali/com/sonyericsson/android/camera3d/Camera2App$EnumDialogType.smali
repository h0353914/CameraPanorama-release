.class final enum Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;
.super Ljava/lang/Enum;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EnumDialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_ALERT_THERMAL_WARNING:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_ERROR_CAMERA:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_ERROR_CAMERA_LAUNCH:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_ERROR_CAMERA_SECURITY:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_ERROR_CAPTURE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_ERROR_LAUNCH:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_ERROR_NOT_GRANTED_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_ERROR_SAVE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_LICENSE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_MEMORY_FULL_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_MEMORY_FULL_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_SELECT_CHANGE_LOCATION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_SELECT_SAVE_DST:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

.field public static final enum DIALOG_TYPE_SELECT_VALIDATE_LOCATION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 309
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 310
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_SELECT_SAVE_DST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_SAVE_DST:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 311
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_SELECT_CHANGE_LOCATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_CHANGE_LOCATION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 312
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_SELECT_VALIDATE_LOCATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_VALIDATE_LOCATION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 313
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_ALERT_THERMAL_WARNING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ALERT_THERMAL_WARNING:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 314
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 315
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_MEMORY_FULL_INTERNAL"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 316
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_MEMORY_FULL_EXTERNAL"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 317
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_ERROR_CAPTURE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAPTURE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 318
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_ERROR_SAVE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_SAVE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 319
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 320
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 321
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_ERROR_NOT_GRANTED_EXTERNAL"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_GRANTED_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 322
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_ERROR_LAUNCH"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_LAUNCH:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 323
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_ERROR_CAMERA"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 324
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_ERROR_CAMERA_SECURITY"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA_SECURITY:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 325
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_ERROR_CAMERA_LAUNCH"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA_LAUNCH:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 326
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_LICENSE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_LICENSE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 327
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 328
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const-string v1, "DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/16 v0, 0x14

    .line 308
    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_SAVE_DST:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_CHANGE_LOCATION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_VALIDATE_LOCATION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ALERT_THERMAL_WARNING:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAPTURE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_SAVE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_GRANTED_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_LAUNCH:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA_SECURITY:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA_LAUNCH:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_LICENSE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->$VALUES:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;
    .locals 1

    .line 308
    const-class v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;
    .locals 1

    .line 308
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->$VALUES:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    return-object v0
.end method
