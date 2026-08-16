.class Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager$1;
.super Ljava/lang/Object;
.source "PanoramaGP2LocationManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->updateLocation(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

.field final synthetic val$locationListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager$1;->this$0:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager$1;->val$locationListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager$1;->this$0:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->access$000(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;)[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->setListener(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;)V

    .line 77
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager$1;->val$locationListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager$1;->this$0:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->access$000(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;)[Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener;->setListener(Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;)V

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager$1;->val$locationListener:Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;->onProviderDisabled()V

    return-void
.end method
