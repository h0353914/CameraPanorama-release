.class public Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/setting/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingFragment"
.end annotation


# instance fields
.field private mAovs:[D

.field private mCamera:[Ljava/lang/String;

.field private mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

.field private mCameraSize:[Landroid/util/Size;

.field private mSensorAspect:Ljava/lang/String;

.field private mUseCamera1:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private automaticallyChanged()V
    .locals 4

    .line 454
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/setting/NoiseReductionParamPreference;

    .line 455
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0c008a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 458
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/setting/NoiseReductionParamPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/setting/NoiseReductionParamPreference;->setSummary()V

    :goto_0
    xor-int/lit8 p0, v1, 0x1

    .line 463
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/setting/NoiseReductionParamPreference;->setEnabled(Z)V

    return-void
.end method

.method private cameraChanged()V
    .locals 1

    const v0, 0x7f0c008d

    .line 505
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->exitSetting(I)V

    return-void
.end method

.method private captureModeChanged()V
    .locals 4

    .line 472
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 473
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 475
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 476
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 478
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 480
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 482
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 484
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v2, 0x4

    aget-object p0, p0, v2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private checkGpsSetting()V
    .locals 3

    .line 337
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 338
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 343
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "network"

    .line 344
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 348
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private checkSaveInputImages()V
    .locals 3

    .line 363
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 364
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    .line 365
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private exitSetting(I)V
    .locals 2

    .line 509
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 510
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 511
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment$1;-><init>(Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;)V

    const p0, 0x104000a

    .line 512
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 517
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private initializeImageQualitySettingsList(II)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entries:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 491
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    aget-object p0, p0, p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->entryValues:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setAntiBandingSummary()V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/ListPreference;

    .line 274
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAovGainSummary()V
    .locals 2

    .line 404
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;

    .line 405
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->setSummary()V

    return-void
.end method

.method private setAovxSummary()V
    .locals 4

    .line 288
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/setting/AovxPreference;

    .line 289
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mAovs:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/setting/AovxPreference;->setDefValue(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/setting/AovxPreference;->setSummary()V

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mSensorAspect:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Sensor)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/setting/AovxPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAovySummary()V
    .locals 4

    .line 295
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/setting/AovyPreference;

    .line 296
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mAovs:[D

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/setting/AovyPreference;->setDefValue(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/setting/AovyPreference;->setSummary()V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mSensorAspect:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Sensor)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/setting/AovyPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCalcseamPixnumSummary()V
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/CalcseamPixnumPreference;

    .line 303
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/CalcseamPixnumPreference;->setSummary()V

    return-void
.end method

.method private setCameraSizeSummary(Landroid/preference/ListPreference;)V
    .locals 6

    .line 267
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 269
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCameraSize:[Landroid/util/Size;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCameraSize:[Landroid/util/Size;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCameraSummary()V
    .locals 2

    .line 500
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/ListPreference;

    .line 501
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCaptureModeSummary()V
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/ListPreference;

    .line 279
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setColorCorrectionModeSummary()V
    .locals 3

    .line 374
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 375
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->isAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method

.method private setDistortionK1Summary()V
    .locals 2

    .line 409
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;

    .line 410
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->setSummary()V

    return-void
.end method

.method private setDistortionK2Summary()V
    .locals 2

    .line 414
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;

    .line 415
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->setSummary()V

    return-void
.end method

.method private setDistortionK3Summary()V
    .locals 2

    .line 419
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;

    .line 420
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->setSummary()V

    return-void
.end method

.method private setDistortionK4Summary()V
    .locals 2

    .line 424
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;

    .line 425
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->setSummary()V

    return-void
.end method

.method private setDrawThresholdSummary()V
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;

    .line 323
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->setSummary()V

    return-void
.end method

.method private setEdgeModeSummary()V
    .locals 3

    .line 380
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 381
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->isAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method

.method private setFocusModeSummary()V
    .locals 2

    .line 439
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/ListPreference;

    .line 440
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setInputMovieFpsSummary()V
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;

    .line 359
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->setSummary()V

    return-void
.end method

.method private setMotionDetectionModeSummary()V
    .locals 2

    .line 449
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/ListPreference;

    .line 450
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setNoiseReductionModeSummary()V
    .locals 3

    .line 386
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 387
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 388
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->isAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method

.method private setNoiseReductionParam()V
    .locals 2

    .line 467
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/NoiseReductionParamPreference;

    .line 468
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/NoiseReductionParamPreference;->setSummary()V

    return-void
.end method

.method private setProjectionModeSummary()V
    .locals 2

    .line 444
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/ListPreference;

    .line 445
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setRotationRatioSummary()V
    .locals 2

    .line 429
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;

    .line 430
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->setSummary()V

    return-void
.end method

.method private setSaveInputImagesSummary()V
    .locals 2

    .line 353
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0c001d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/ListPreference;

    .line 354
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSeamsearchRatioSummary()V
    .locals 2

    .line 312
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;

    .line 313
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->setSummary()V

    return-void
.end method

.method private setSensorModeSummary()V
    .locals 2

    .line 327
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/ListPreference;

    .line 328
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setShadingModeSummary()V
    .locals 3

    .line 392
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 393
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 394
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x3

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->isAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method

.method private setShrinkRatioSummary()V
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/ShrinkRatioPreference;

    .line 308
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/ShrinkRatioPreference;->setSummary()V

    return-void
.end method

.method private setTonemapModeSummary()V
    .locals 3

    .line 398
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 399
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const/4 v1, 0x4

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;->isAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method

.method private setUiControlModeSummary()V
    .locals 2

    .line 434
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Landroid/preference/ListPreference;

    .line 435
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setUnsharpStrength()V
    .locals 2

    .line 332
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/UnsharpStrengthPreference;

    .line 333
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/UnsharpStrengthPreference;->setSummary()V

    return-void
.end method

.method private setZrotationCoeffSummary()V
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;

    .line 318
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/DoublePreference;->setSummary()V

    return-void
.end method

.method private updateCaptureModeEnabled()V
    .locals 3

    .line 369
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 370
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mUseCamera1:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method

.method private useCamera2Changed()V
    .locals 1

    const v0, 0x7f0c008d

    .line 496
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->exitSetting(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0002

    .line 59
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;

    .line 62
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2Application;->getSupportedPictureSizes()[Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCameraSize:[Landroid/util/Size;

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "INTENT_KEY_AOV"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mAovs:[D

    const-string v0, "INTENT_KEY_SENSOR_ASPECT"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mSensorAspect:Ljava/lang/String;

    const-string v0, "INTENT_KEY_CAMERA2_IMAGE_QUALITY_SETTINGS"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera2ImageQualitySettings:[Lcom/sonyericsson/android/camera3d/Camera2ImageQualitySettings;

    const-string v0, "INTENT_KEY_CAMERA"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera:[Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 71
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mUseCamera1:Z

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c000a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCameraSize:[Landroid/util/Size;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/4 v8, 0x2

    if-ge v6, v4, :cond_0

    aget-object v9, v3, v6

    .line 79
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%dx%d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v5

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v10, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const v1, 0x7f0c000b

    .line 87
    invoke-direct {p0, v1, v5}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->initializeImageQualitySettingsList(II)V

    const v1, 0x7f0c0012

    .line 88
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->initializeImageQualitySettingsList(II)V

    const v0, 0x7f0c0018

    .line 89
    invoke-direct {p0, v0, v8}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->initializeImageQualitySettingsList(II)V

    const v0, 0x7f0c0020

    const/4 v1, 0x3

    .line 90
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->initializeImageQualitySettingsList(II)V

    const v0, 0x7f0c0022

    const/4 v1, 0x4

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->initializeImageQualitySettingsList(II)V

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    .line 95
    :goto_1
    array-length v2, v1

    if-ge v5, v2, :cond_1

    .line 96
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->mCamera:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 101
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setCameraSizeSummary(Landroid/preference/ListPreference;)V

    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setAntiBandingSummary()V

    .line 103
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setCaptureModeSummary()V

    .line 104
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setShrinkRatioSummary()V

    .line 105
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setCalcseamPixnumSummary()V

    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setAovxSummary()V

    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setAovySummary()V

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setSeamsearchRatioSummary()V

    .line 109
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setZrotationCoeffSummary()V

    .line 110
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setDrawThresholdSummary()V

    .line 111
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setSensorModeSummary()V

    .line 112
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setUnsharpStrength()V

    .line 113
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setSaveInputImagesSummary()V

    .line 114
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setInputMovieFpsSummary()V

    .line 115
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->checkSaveInputImages()V

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->updateCaptureModeEnabled()V

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setColorCorrectionModeSummary()V

    .line 119
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setEdgeModeSummary()V

    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setNoiseReductionModeSummary()V

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setShadingModeSummary()V

    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setTonemapModeSummary()V

    .line 123
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setAovGainSummary()V

    .line 124
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setDistortionK1Summary()V

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setDistortionK2Summary()V

    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setDistortionK3Summary()V

    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setDistortionK4Summary()V

    .line 128
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setRotationRatioSummary()V

    .line 129
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setUiControlModeSummary()V

    .line 130
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setFocusModeSummary()V

    .line 131
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setProjectionModeSummary()V

    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setMotionDetectionModeSummary()V

    .line 133
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setCameraSummary()V

    .line 134
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->automaticallyChanged()V

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f0c0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0c0088

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 184
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 178
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 192
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setCameraSizeSummary(Landroid/preference/ListPreference;)V

    goto/16 :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setAntiBandingSummary()V

    goto/16 :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 196
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setCaptureModeSummary()V

    .line 197
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->captureModeChanged()V

    goto/16 :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 199
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setAovxSummary()V

    goto/16 :goto_0

    .line 200
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 201
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setAovySummary()V

    goto/16 :goto_0

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 203
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setCalcseamPixnumSummary()V

    goto/16 :goto_0

    .line 204
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0021

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 205
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setShrinkRatioSummary()V

    goto/16 :goto_0

    .line 206
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->checkGpsSetting()V

    goto/16 :goto_0

    .line 208
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 209
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setSeamsearchRatioSummary()V

    goto/16 :goto_0

    .line 210
    :cond_8
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0027

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 211
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setZrotationCoeffSummary()V

    goto/16 :goto_0

    .line 212
    :cond_9
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0011

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 213
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setDrawThresholdSummary()V

    goto/16 :goto_0

    .line 214
    :cond_a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 215
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setSensorModeSummary()V

    goto/16 :goto_0

    .line 218
    :cond_b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0024

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 219
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setUnsharpStrength()V

    goto/16 :goto_0

    .line 220
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 221
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setInputMovieFpsSummary()V

    goto/16 :goto_0

    .line 222
    :cond_d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 223
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setSaveInputImagesSummary()V

    .line 224
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->checkSaveInputImages()V

    goto/16 :goto_0

    .line 225
    :cond_e
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 226
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setColorCorrectionModeSummary()V

    goto/16 :goto_0

    .line 227
    :cond_f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 228
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setEdgeModeSummary()V

    goto/16 :goto_0

    .line 229
    :cond_10
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 230
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setNoiseReductionModeSummary()V

    goto/16 :goto_0

    .line 231
    :cond_11
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0020

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 232
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setShadingModeSummary()V

    goto/16 :goto_0

    .line 233
    :cond_12
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 234
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setTonemapModeSummary()V

    goto/16 :goto_0

    .line 235
    :cond_13
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 236
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setAovGainSummary()V

    goto/16 :goto_0

    .line 237
    :cond_14
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 238
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setDistortionK1Summary()V

    goto/16 :goto_0

    .line 239
    :cond_15
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 240
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setDistortionK2Summary()V

    goto/16 :goto_0

    .line 241
    :cond_16
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 242
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setDistortionK3Summary()V

    goto/16 :goto_0

    .line 243
    :cond_17
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0010

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 244
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setDistortionK4Summary()V

    goto/16 :goto_0

    .line 245
    :cond_18
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 246
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setRotationRatioSummary()V

    goto/16 :goto_0

    .line 247
    :cond_19
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0023

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 248
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setUiControlModeSummary()V

    goto/16 :goto_0

    .line 249
    :cond_1a
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0013

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 250
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setFocusModeSummary()V

    goto/16 :goto_0

    .line 251
    :cond_1b
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 252
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setProjectionModeSummary()V

    goto :goto_0

    .line 253
    :cond_1c
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0017

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 254
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setMotionDetectionModeSummary()V

    goto :goto_0

    .line 255
    :cond_1d
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0025

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 256
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->useCamera2Changed()V

    goto :goto_0

    .line 257
    :cond_1e
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 258
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->cameraChanged()V

    goto :goto_0

    .line 259
    :cond_1f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 260
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->automaticallyChanged()V

    goto :goto_0

    .line 261
    :cond_20
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 262
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->setNoiseReductionParam()V

    :cond_21
    :goto_0
    return-void
.end method
