.class Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;
.super Ljava/lang/Object;
.source "PanoramaGP2LocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Camera2App"

.field private static final nullListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;


# instance fields
.field private volatile mListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;

.field private mLocation:Landroid/location/Location;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->nullListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mLocation:Landroid/location/Location;

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mStartTime:J

    .line 41
    sget-object v0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->nullListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public getTargetLocation()Landroid/location/Location;
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mLocation:Landroid/location/Location;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 69
    :cond_0
    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mStartTime:J

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mLocation:Landroid/location/Location;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 78
    const-string v0, "Camera2App"

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->setLocation(Landroid/location/Location;)V

    .line 80
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationListener("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ").onProviderDisabled"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2App"

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;->onProviderDisabled()V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "LocationListener("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ").onProviderEnabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Camera2App"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 45
    sget-object p1, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->nullListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;

    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public start()V
    .locals 2

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->mStartTime:J

    return-void
.end method
