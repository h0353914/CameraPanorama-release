.class Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;
.super Ljava/lang/Object;
.source "PanoramaGP2LocationManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Camera2App"

.field private static final USE_GPS:I = 0x0

.field private static final USE_NETWORK:I = 0x1


# instance fields
.field private final mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    new-instance v1, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 33
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    new-instance v1, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;)[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    return-object p0
.end method

.method private getLocationProviderName()Ljava/lang/String;
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "gps"

    return-object p0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "network"

    return-object p0

    .line 123
    :cond_1
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 127
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, ""

    :cond_2
    return-object p0
.end method


# virtual methods
.method public clearLocation()V
    .locals 4

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->setLocation(Landroid/location/Location;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->getLocationProviderName()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->clearLocation()V

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Camera2App"

    const-string v1, "gps no location. use network location."

    .line 113
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->getLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public isValidLocationService()Z
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public removeUpdates()V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 47
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public requestLocation()V
    .locals 7

    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->getLocationProviderName()Ljava/lang/String;

    move-result-object v6

    const-string v0, "Camera2App"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS provider is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x1f4

    const v4, 0x3dcccccd    # 0.1f

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v0, "network"

    .line 64
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    const/4 v0, 0x1

    aget-object v6, p0, v0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLocation(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->start()V

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    aget-object v0, v0, v1

    new-instance v1, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager$1;-><init>(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->setListener(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;)V

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->start()V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->mLocationListeners:[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    aget-object v0, v0, v1

    new-instance v1, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager$2;-><init>(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->setListener(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;)V

    return-void
.end method
