.class Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ServiceConnectionSysmon;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionSysmon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ServiceConnectionSysmon;-><init>(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    .line 86
    invoke-static {p2}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object p2

    .line 85
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->access$102(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    .line 87
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->access$100(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->access$100(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    move-result-object p1

    invoke-interface {p1}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;->getThermalLevelForCamera()I

    move-result p1

    const-string p2, "sysmon"

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->access$200(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 91
    invoke-static {}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sysmon ServiceConnection failed."

    invoke-static {p1, p2, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ServiceConnectionSysmon;->this$0:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->access$102(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-void
.end method
