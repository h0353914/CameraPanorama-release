.class Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->exitSetting(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment$1;->this$0:Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/setting/SettingActivity$SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
