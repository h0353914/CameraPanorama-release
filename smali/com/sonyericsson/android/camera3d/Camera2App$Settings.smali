.class Lcom/sonyericsson/android/camera3d/Camera2App$Settings;
.super Ljava/lang/Object;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Settings"
.end annotation


# instance fields
.field private camera_sound:Z

.field private loaded:Z

.field private not_show_dialog_location:Z

.field private not_show_dialog_thermal:Z

.field private save_internal_storage:Z

.field private save_location:Z

.field private sdcard_inserted:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

.field private use_volume_key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 1

    .line 495
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 486
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->loaded:Z

    .line 496
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save_location:Z

    .line 497
    const-string v0, "HW_CAMERA_KEY"

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->use_volume_key:Ljava/lang/String;

    const/4 v0, 0x1

    .line 498
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->camera_sound:Z

    .line 499
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save_internal_storage:Z

    .line 500
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->sdcard_inserted:Z

    .line 501
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->not_show_dialog_location:Z

    .line 502
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->not_show_dialog_thermal:Z

    return-void
.end method


# virtual methods
.method public getUseVolumeKey()Ljava/lang/String;
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->use_volume_key:Ljava/lang/String;

    return-object p0
.end method

.method public isCameraSound()Z
    .locals 0

    .line 550
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->camera_sound:Z

    return p0
.end method

.method public isSaveInternalStorage()Z
    .locals 0

    .line 558
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save_internal_storage:Z

    return p0
.end method

.method public isSaveLocation()Z
    .locals 0

    .line 533
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save_location:Z

    return p0
.end method

.method public isSdcardInserted()Z
    .locals 0

    .line 566
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->sdcard_inserted:Z

    return p0
.end method

.method public isShowDialogLocation()Z
    .locals 0

    .line 574
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->not_show_dialog_location:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isShowDialogThermal()Z
    .locals 0

    .line 582
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->not_show_dialog_thermal:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public load()V
    .locals 5

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->loaded:Z

    .line 507
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 508
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->sdcard_inserted:Z

    .line 509
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c00dd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->not_show_dialog_thermal:Z

    .line 510
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c00df

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save_location:Z

    .line 511
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c00e2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "HW_CAMERA_KEY"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->use_volume_key:Ljava/lang/String;

    .line 512
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c00db

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->camera_sound:Z

    .line 513
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c00de

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save_internal_storage:Z

    .line 514
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c00dc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->not_show_dialog_location:Z

    return-void
.end method

.method public save()V
    .locals 3

    .line 518
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->loaded:Z

    if-nez v0, :cond_0

    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 520
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->sdcard_inserted:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 522
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->not_show_dialog_thermal:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 523
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save_location:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 524
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->use_volume_key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 525
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->camera_sound:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 526
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save_internal_storage:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 527
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->not_show_dialog_location:Z

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 529
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCameraSound(Z)V
    .locals 0

    .line 554
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->camera_sound:Z

    return-void
.end method

.method public setSaveInternalStorage(Z)V
    .locals 0

    .line 562
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save_internal_storage:Z

    return-void
.end method

.method public setSaveLocation(Z)V
    .locals 0

    .line 537
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save_location:Z

    .line 538
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->save()V

    return-void
.end method

.method public setSdcardInserted(Z)V
    .locals 0

    .line 570
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->sdcard_inserted:Z

    return-void
.end method

.method public setShowDialogLocation(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 578
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->not_show_dialog_location:Z

    return-void
.end method

.method public setShowDialogThermal(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 586
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->not_show_dialog_thermal:Z

    return-void
.end method

.method public setUseVolumeKey(Ljava/lang/String;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->use_volume_key:Ljava/lang/String;

    return-void
.end method
