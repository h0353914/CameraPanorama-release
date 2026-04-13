.class public Lcom/sonyericsson/android/camera3d/setting/SettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;
    }
.end annotation


# static fields
.field public static final INTENT_KEY_AOV:Ljava/lang/String; = "INTENT_KEY_AOV"

.field public static final INTENT_KEY_CAMERA:Ljava/lang/String; = "INTENT_KEY_CAMERA"

.field public static final INTENT_KEY_CAMERA2_IMAGE_QUALITY_SETTINGS:Ljava/lang/String; = "INTENT_KEY_CAMERA2_IMAGE_QUALITY_SETTINGS"

.field public static final INTENT_KEY_SENSOR_ASPECT:Ljava/lang/String; = "INTENT_KEY_SENSOR_ASPECT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    new-instance p1, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;-><init>()V

    const v0, 0x1020002

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
