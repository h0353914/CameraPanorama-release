.class Lcom/sonyericsson/android/camera3d/Camera2App$8;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

.field final synthetic val$audioManager:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/media/AudioManager;)V
    .locals 0

    .line 1187
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$8;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$8;->val$audioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0

    .line 1190
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$8;->val$audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method
