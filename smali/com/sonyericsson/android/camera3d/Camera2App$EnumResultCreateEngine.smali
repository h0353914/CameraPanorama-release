.class final enum Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;
.super Ljava/lang/Enum;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EnumResultCreateEngine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

.field public static final enum RESULT_ALREADY_CREATED:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

.field public static final enum RESULT_ERROR:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

.field public static final enum RESULT_NEWLY_CREATED:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1552
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    const-string v1, "RESULT_NEWLY_CREATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_NEWLY_CREATED:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    .line 1553
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    const-string v1, "RESULT_ALREADY_CREATED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_ALREADY_CREATED:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    .line 1554
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    const-string v1, "RESULT_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_ERROR:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    const/4 v0, 0x3

    .line 1551
    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_NEWLY_CREATED:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_ALREADY_CREATED:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->RESULT_ERROR:Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->$VALUES:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1551
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;
    .locals 1

    .line 1551
    const-class v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;
    .locals 1

    .line 1551
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->$VALUES:[Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    return-object v0
.end method
