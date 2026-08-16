.class public Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;
.super Ljava/lang/Object;
.source "MorphoPanoramaGP2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GravityParam"
.end annotation


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;->x:D

    .line 92
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;->y:D

    .line 93
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;->z:D

    return-void
.end method


# virtual methods
.method public copyInstance()Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;
    .locals 3

    .line 97
    new-instance v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;-><init>()V

    .line 98
    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;->x:D

    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;->x:D

    .line 99
    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;->y:D

    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;->y:D

    .line 100
    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;->z:D

    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$GravityParam;->z:D

    return-object v0
.end method
