.class public Lcom/sonyericsson/android/camera3d/setting/NoiseReductionParamPreference;
.super Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;
.source "NoiseReductionParamPreference.java"


# static fields
.field public static final DEFAULT_VALUE:I = 0x0

.field private static final MAX_VALUE:I = 0x32

.field private static final MIN_VALUE:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getInputType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected isValidInputText(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    .line 15
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    const/16 v0, 0x32

    if-gt p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catch_0
    return p0
.end method

.method public bridge synthetic setDefValue(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->setDefValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSummary()V
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->setSummary()V

    return-void
.end method
