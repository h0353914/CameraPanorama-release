.class Lcom/sonyericsson/android/camera3d/FpsParam;
.super Ljava/lang/Object;
.source "FpsParam.java"


# instance fields
.field public final Fps:F

.field public final FrameDuration:Ljava/lang/Long;


# direct methods
.method public constructor <init>(FLjava/lang/Long;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/sonyericsson/android/camera3d/FpsParam;->Fps:F

    .line 14
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/FpsParam;->FrameDuration:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getFpsString()Ljava/lang/String;
    .locals 0

    .line 18
    iget p0, p0, Lcom/sonyericsson/android/camera3d/FpsParam;->Fps:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
