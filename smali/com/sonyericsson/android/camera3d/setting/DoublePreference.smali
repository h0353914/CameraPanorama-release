.class public Lcom/sonyericsson/android/camera3d/setting/DoublePreference;
.super Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;
.source "DoublePreference.java"


# instance fields
.field private final mDef:D

.field private final mMax:D

.field private final mMin:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget-object v0, Lcom/sonyericsson/android/camera3d/R$styleable;->DoublePreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 40
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->mMin:D

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->mMax:D

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    float-to-double v0, p2

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->mDef:D

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    iget-wide p1, p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->mDef:D

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->setDefValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getInputType()I
    .locals 0

    const/16 p0, 0x3002

    return p0
.end method

.method protected isValidInputText(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 24
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->mMin:D

    cmpg-double p1, v1, v3

    if-ltz p1, :cond_1

    iget-wide p0, p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->mMax:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double p0, v1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0

    :catch_0
    return v0
.end method

.method public bridge synthetic setDefValue(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->setDefValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSummary()V
    .locals 0

    .line 15
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->setSummary()V

    return-void
.end method
