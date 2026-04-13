.class Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostAttachRunnable"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;)V
    .locals 0

    .line 2835
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 2835
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2838
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->ui_control_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2839
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2840
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2841
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2842
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10800(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2843
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 2846
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2847
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2849
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2851
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2852
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    .line 2851
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :catchall_1
    move-exception p0

    .line 2852
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    .line 2856
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10600()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2857
    :try_start_7
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2858
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10800(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2859
    monitor-exit v0

    return-void

    .line 2862
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2863
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 2865
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;->this$2:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2867
    :goto_1
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0
.end method
