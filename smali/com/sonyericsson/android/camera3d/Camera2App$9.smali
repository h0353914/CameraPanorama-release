.class Lcom/sonyericsson/android/camera3d/Camera2App$9;
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

    .line 1159
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1163
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1165
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Camera2App"

    if-eqz v0, :cond_0

    .line 1166
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SD card is inserted:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2800(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    goto/16 :goto_1

    .line 1168
    :cond_0
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1169
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SD card is ejected:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_SAVE_DST:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    if-ne p1, p2, :cond_1

    .line 1171
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OTHER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->dismiss(Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    goto :goto_0

    .line 1173
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object p2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_SELECT_SAVE_DST:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3400(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    .line 1175
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3500(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1176
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1177
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1178
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cancelState()V

    .line 1179
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->startState()V

    .line 1182
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3600(Lcom/sonyericsson/android/camera3d/Camera2App;Z)V

    .line 1183
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object p2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1900(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    .line 1185
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3700(Lcom/sonyericsson/android/camera3d/Camera2App;ZZ)V

    .line 1186
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->setSdcardInserted(Z)V

    .line 1187
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3900(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    :cond_4
    :goto_1
    return-void
.end method
