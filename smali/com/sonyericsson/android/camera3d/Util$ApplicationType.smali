.class public final enum Lcom/sonyericsson/android/camera3d/Util$ApplicationType;
.super Ljava/lang/Enum;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera3d/Util$ApplicationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

.field public static final enum OTHER:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

.field public static final enum SYSTEM:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

.field public static final enum UPDATED_SYSTEM_APP:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera3d/Util$ApplicationType;
    .locals 3

    .line 107
    sget-object v0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->SYSTEM:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    sget-object v1, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->UPDATED_SYSTEM_APP:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    sget-object v2, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->OTHER:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 108
    new-instance v0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->SYSTEM:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    .line 109
    new-instance v0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    const-string v1, "UPDATED_SYSTEM_APP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->UPDATED_SYSTEM_APP:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    .line 110
    new-instance v0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    const-string v1, "OTHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->OTHER:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    .line 107
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->$values()[Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->$VALUES:[Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/Util$ApplicationType;
    .locals 1

    .line 107
    const-class v0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/Util$ApplicationType;
    .locals 1

    .line 107
    sget-object v0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->$VALUES:[Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    return-object v0
.end method
