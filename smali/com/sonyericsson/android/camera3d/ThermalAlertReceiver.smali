.class public Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThermalAlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;,
        Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ServiceConnectionSysmon;
    }
.end annotation


# static fields
.field public static final ACTION_CAMERA_HEATED_CLOSE_TO_SHUTDOWN:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

.field public static final ACTION_CAMERA_HEATED_OVER_CRITICAL:Ljava/lang/String; = "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

.field private static final CAMERA_CRITICAL:I = 0x25c

.field private static final CAMERA_NORMAL:I = 0x258

.field private static final CAMERA_WARNING:I = 0x25b

.field private static final EXPLICIT_INTENT_SYSMON_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.sonyericsson.psm.sysmonservice.SysmonService"

.field private static final EXPLICIT_INTENT_SYSMON_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.psm.sysmonservice"

.field private static final SYSMON_SERVICE:Ljava/lang/String; = "com.sonyericsson.psm.sysmonservice.ISysmonService"

.field private static final TAG:Ljava/lang/String; = "ThermalAlertReceiver"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mIsBindSysmonService:Z

.field private final mServiceConnectionSysmon:Landroid/content/ServiceConnection;

.field private mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

.field private mThermalAlertListener:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mThermalAlertListener:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    .line 71
    new-instance p1, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ServiceConnectionSysmon;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ServiceConnectionSysmon;-><init>(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$1;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    .line 73
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->setThermalAlertListener(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;Lcom/sonyericsson/psm/sysmonservice/ISysmonService;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mSysmonService:Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->checkStartupStatus(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkStartupStatus(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x258

    .line 104
    const-string v1, "Startup status of service["

    if-eq p1, v0, :cond_2

    const/16 v0, 0x25b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x25c

    if-eq p1, v0, :cond_0

    .line 122
    sget-object p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] is unknown."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "] is CRITICAL."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mThermalAlertListener:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;->onTemperatureAlreadyHigh()V

    goto :goto_0

    .line 112
    :cond_1
    sget-object p1, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "] is WARNING."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mThermalAlertListener:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;->onTemperatureAlreadyHigh()V

    goto :goto_0

    .line 118
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] is NORMAL."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindThermalService()V
    .locals 4

    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    const-string v1, "com.sonyericsson.psm.sysmonservice"

    const-string v2, "com.sonyericsson.psm.sysmonservice.SysmonService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-eqz v0, :cond_0

    .line 140
    sget-object p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->TAG:Ljava/lang/String;

    const-string v0, "bind sysmon service"

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 159
    sget-object p2, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mThermalAlertListener:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;->onTemperatureReachingHigh()V

    goto :goto_0

    .line 168
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mThermalAlertListener:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;->onTemperatureReachedHigh()V

    :goto_0
    return-void
.end method

.method public setThermalAlertListener(Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mThermalAlertListener:Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver$ThermalAlertInterface;

    return-void
.end method

.method public unbindThermalService()V
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mIsBindSysmonService:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mIsBindSysmonService:Z

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/ThermalAlertReceiver;->mServiceConnectionSysmon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method
