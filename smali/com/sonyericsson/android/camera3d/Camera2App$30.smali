.class synthetic Lcom/sonyericsson/android/camera3d/Camera2App$30;
.super Ljava/lang/Object;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumResultCreateEngine:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera3d$dialog$RotatableDialogFragment$EnumDismissFactor:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5582
    invoke-static {}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->values()[Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$dialog$RotatableDialogFragment$EnumDismissFactor:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_EVENT_LISTENER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$dialog$RotatableDialogFragment$EnumDismissFactor:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_BACK_KEY:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 5387
    :catch_1
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->values()[Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA_SECURITY:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_MEMORY_FULL_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_SAVE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAPTURE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_LAUNCH:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_CAMERA_LAUNCH:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/16 v4, 0x9

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_SAVE_DST:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/16 v4, 0xa

    aput v4, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/16 v4, 0xb

    aput v4, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/16 v4, 0xc

    aput v4, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ALERT_THERMAL_WARNING:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/16 v4, 0xd

    aput v4, v2, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_CHANGE_LOCATION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/16 v4, 0xe

    aput v4, v2, v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_VALIDATE_LOCATION:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/16 v4, 0xf

    aput v4, v2, v3
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_LICENSE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/16 v4, 0x10

    aput v4, v2, v3
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumDialogType:[I

    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->ordinal()I

    move-result v3

    const/16 v4, 0x11

    aput v4, v2, v3
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 2102
    :catch_12
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->values()[Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumResultCreateEngine:[I

    :try_start_13
    sget-object v3, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_NEWLY_CREATED:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$30;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumResultCreateEngine:[I

    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_ALREADY_CREATED:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method
