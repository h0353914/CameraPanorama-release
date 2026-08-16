.class Lcom/sonyericsson/android/camera3d/InternalSettings$1;
.super Ljava/lang/Object;
.source "InternalSettings.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw$RawRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/InternalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/InternalSettings;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/InternalSettings;)V
    .locals 0

    .line 887
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings$1;->this$0:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw(Ljava/nio/ByteBuffer;Landroid/media/Image;)I
    .locals 0

    .line 891
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings$1;->this$0:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->access$000(Lcom/sonyericsson/android/camera3d/InternalSettings;)Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorderRaw;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 892
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->renderByteBuffer(Ljava/nio/ByteBuffer;Landroid/media/Image;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
