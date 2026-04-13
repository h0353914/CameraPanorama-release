.class public Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;
.super Ljava/lang/Object;
.source "Camera2ImageQualitySettings.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COLOR_CORRECTION_MODE:I = 0x0

.field public static final DEFAULT_INDEX_PREVIEW:I = 0x0

.field public static final DEFAULT_INDEX_STILL:I = 0x1

.field public static final DEFAULT_INDEX_ZSL:I = 0x2

.field public static final EDGE_MODE:I = 0x1

.field public static final NOISE_REDUCTION_MODE:I = 0x2

.field public static final NUM:I = 0x5

.field public static final SHADING_MODE:I = 0x3

.field public static final TONEMAP_MODE:I = 0x4


# instance fields
.field public defaultValues:[Ljava/lang/String;

.field public entries:[Ljava/lang/String;

.field public entryValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 32
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    array-length p1, p1

    if-ge v1, p1, :cond_2

    .line 45
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    aget-object v0, p0, v1

    :cond_2
    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->defaultValues:[Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
