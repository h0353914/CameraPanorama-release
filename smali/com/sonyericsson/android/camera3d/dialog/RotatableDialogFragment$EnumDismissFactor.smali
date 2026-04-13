.class public final enum Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;
.super Ljava/lang/Enum;
.source "RotatableDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnumDismissFactor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

.field public static final enum DISMISS_FACTOR_BACK_KEY:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

.field public static final enum DISMISS_FACTOR_EVENT_LISTENER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

.field public static final enum DISMISS_FACTOR_OTHER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

.field public static final enum DISMISS_FACTOR_OVERLAY:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

.field public static final enum DISMISS_FACTOR_SHUTDOWN:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

.field public static final enum DISMISS_FACTOR_SUSPEND:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    const-string v1, "DISMISS_FACTOR_EVENT_LISTENER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_EVENT_LISTENER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    const-string v1, "DISMISS_FACTOR_BACK_KEY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_BACK_KEY:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    const-string v1, "DISMISS_FACTOR_SUSPEND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SUSPEND:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    const-string v1, "DISMISS_FACTOR_OVERLAY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OVERLAY:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    const-string v1, "DISMISS_FACTOR_SHUTDOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SHUTDOWN:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    const-string v1, "DISMISS_FACTOR_OTHER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OTHER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    const/4 v0, 0x6

    .line 35
    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    sget-object v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_EVENT_LISTENER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_BACK_KEY:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SUSPEND:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OVERLAY:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_SHUTDOWN:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OTHER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->$VALUES:[Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;
    .locals 1

    .line 35
    const-class v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;
    .locals 1

    .line 35
    sget-object v0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->$VALUES:[Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    return-object v0
.end method
