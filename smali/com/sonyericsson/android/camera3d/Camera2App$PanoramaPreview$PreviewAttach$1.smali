.class Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$1;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;I)V
    .locals 0

    .line 2826
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iput p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$1;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2829
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$1;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$1;->val$resultCode:I

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$10500(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;I)V

    return-void
.end method
