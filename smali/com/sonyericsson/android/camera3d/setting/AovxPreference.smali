.class public Lcom/sonyericsson/android/camera3d/setting/AovxPreference;
.super Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;
.source "AovxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getInputType()I
    .locals 0

    const/16 p0, 0x2002

    return p0
.end method

.method protected isValidInputText(Ljava/lang/String;)Z
    .locals 0

    .line 18
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setDefValue(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->setDefValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSummary()V
    .locals 0

    .line 12
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/setting/EditTextPreferenceDialog;->setSummary()V

    return-void
.end method
