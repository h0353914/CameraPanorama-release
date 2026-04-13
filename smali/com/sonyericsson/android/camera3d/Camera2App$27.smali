.class Lcom/sonyericsson/android/camera3d/Camera2App$27;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationListener$IPanoramaGP2LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->checkLocationService()Z
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

    .line 6984
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$27;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6988
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$27;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$17000(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 6990
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$27;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6992
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->updateGpsSearch(Z)V

    :cond_2
    return-void
.end method

.method public onProviderDisabled()V
    .locals 2

    .line 6998
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$27;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$17000(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 6999
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$27;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingList;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/SettingList;->setChecked(IZ)V

    return-void
.end method
