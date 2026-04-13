.class Lcom/sonyericsson/android/camera3d/InternalSettings$3;
.super Ljava/lang/Object;
.source "InternalSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/InternalSettings;->initViews(Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;Landroid/os/Handler;Z)V
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

    .line 1018
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/InternalSettings$3;->this$0:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1021
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/InternalSettings$3;->this$0:Lcom/sonyericsson/android/camera3d/InternalSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->revertCamera2ParamsFragmentMode()V

    return-void
.end method
