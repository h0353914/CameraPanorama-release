.class Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonClickListener;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeSelectorButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 6037
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonClickListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 6037
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonClickListener;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 6040
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ModeSelectorButtonClickListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13100(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method
