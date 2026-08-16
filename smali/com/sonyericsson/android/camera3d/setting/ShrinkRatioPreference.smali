.class public Lcom/sonyericsson/android/camera3d/setting/ShrinkRatioPreference;
.super Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;
.source "ShrinkRatioPreference.java"


# static fields
.field public static final DEFAULT_VALUE:D = 7.5

.field private static final MAX_VALUE:D = 32.0

.field private static final MIN_VALUE:D = 1.0


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-wide/high16 v0, 0x401e000000000000L    # 7.5

    .line 33
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getInputType()I
    .locals 0

    const/16 p0, 0x3002

    return p0
.end method

.method protected isValidInputText(Ljava/lang/String;)Z
    .locals 4

    const/4 p0, 0x0

    .line 19
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_1

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :catch_0
    :cond_1
    :goto_0
    return p0
.end method

.method public bridge synthetic setDefValue(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->setDefValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSummary()V
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->setSummary()V

    return-void
.end method
