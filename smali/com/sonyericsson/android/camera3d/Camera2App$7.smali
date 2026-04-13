.class Lcom/sonyericsson/android/camera3d/Camera2App$7;
.super Landroid/content/BroadcastReceiver;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1135
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    .line 1137
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "Camera2App"

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SD card is inserted:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2800(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    .line 1140
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Camera2App"

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SD card is ejected:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_SAVE_DST:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    if-ne p1, p2, :cond_1

    .line 1143
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OTHER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->dismiss(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    goto :goto_0

    .line 1145
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object p2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_SAVE_DST:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3400(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    .line 1147
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3500(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1148
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1149
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1150
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 1151
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startState()V

    .line 1154
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3600(Lcom/sonyericsson/android/camera3d/Camera2App;Z)V

    .line 1155
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object p2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1900(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    .line 1157
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3700(Lcom/sonyericsson/android/camera3d/Camera2App;ZZ)V

    .line 1158
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSdcardInserted(Z)V

    .line 1159
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$7;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3900(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    :cond_4
    :goto_1
    return-void
.end method
