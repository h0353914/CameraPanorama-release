.class Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;
.super Lcom/sonyericsson/android/camera3d/base/AttachRunnable;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewAttach"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;
    }
.end annotation


# instance fields
.field private mIsAttachEnd:Z

.field private mResultCode:I

.field private final pc:Lcom/sonyericsson/android/camera3d/PerformanceCounter;

.field private final postAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;

.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)V
    .locals 2

    .line 2715
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;-><init>()V

    const/4 p1, 0x0

    .line 2712
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->mIsAttachEnd:Z

    .line 2713
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->postAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;

    .line 2716
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->newInstance(Z)Lcom/sonyericsson/android/camera3d/PerformanceCounter;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->pc:Lcom/sonyericsson/android/camera3d/PerformanceCounter;

    return-void
.end method

.method private attach([D)Z
    .locals 14

    .line 2872
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7600(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2874
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->pc:Lcom/sonyericsson/android/camera3d/PerformanceCounter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->start()V

    .line 2875
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v12, 0x0

    aget-object v2, v0, v12

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v13, 0x1

    aget-object v3, v0, v13

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->rowStride:[I

    aget v5, v5, v12

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->rowStride:[I

    aget v6, v6, v13

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->rowStride:[I

    aget v7, v7, v4

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->pixelStride:[I

    aget v8, v8, v12

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->pixelStride:[I

    aget v9, v9, v13

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->pixelStride:[I

    aget v10, v10, v4

    move-object v4, v0

    move-object v11, p1

    invoke-virtual/range {v1 .. v11}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->attach(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[D)I

    move-result p1

    .line 2876
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->pc:Lcom/sonyericsson/android/camera3d/PerformanceCounter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->stop()V

    .line 2877
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->pc:Lcom/sonyericsson/android/camera3d/PerformanceCounter;

    const-string v0, "Camera2App"

    const-string v1, "mMorphoPanoramaGP2.attach"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/PerformanceCounter;->putLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "Camera2App"

    .line 2879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMorphoPanoramaGP2.attach error ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_0
    return v13
.end method

.method private checkAttachEnd([D)V
    .locals 7

    .line 2886
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11100(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    const/4 v4, 0x1

    aget-wide v5, p1, v4

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->detect(DD)I

    move-result p1

    if-eq p1, v4, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2891
    :cond_0
    :pswitch_0
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->mResultCode:I

    .line 2892
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->mIsAttachEnd:Z

    .line 2897
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11200(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;->setDetectResult(I)V

    .line 2898
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11200(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$UiUpdateRunnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2900
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->mIsAttachEnd:Z

    if-eqz p1, :cond_1

    return-void

    .line 2904
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->isImageComplete()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2905
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->mResultCode:I

    .line 2906
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->mIsAttachEnd:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x2

    .line 2722
    new-array v1, v0, [D

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2725
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/InternalSettings;->ui_control_mode:I

    if-ne v5, v0, :cond_5

    .line 2726
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7100(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CaptureImage;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7200()Lcom/sonyericsson/android/camera3d/CaptureImage;

    move-result-object v4

    if-eq v0, v4, :cond_b

    .line 2727
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->setImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    .line 2729
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2730
    :try_start_2
    sget-object v5, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2731
    :try_start_3
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 2737
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->attach([D)Z

    move-result v6

    .line 2738
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2739
    :try_start_4
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->closeSrc()V

    if-nez v6, :cond_1

    const-string v1, "Camera2App"

    const-string v5, "PreviewAttach.run() attach error."

    .line 2741
    invoke-static {v1, v5}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->mResultCode:I

    .line 2744
    monitor-exit v4

    goto/16 :goto_7

    .line 2748
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$10200(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I

    move-result v5

    if-gtz v5, :cond_2

    .line 2749
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->pc:Lcom/sonyericsson/android/camera3d/PerformanceCounter;

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$10300(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;Lcom/sonyericsson/android/camera3d/PerformanceCounter;)V

    .line 2750
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v5, v3}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$10202(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;I)I

    goto :goto_1

    .line 2752
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$10210(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I

    .line 2755
    :goto_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->checkAttachEnd([D)V

    .line 2756
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2757
    :try_start_5
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->mIsAttachEnd:Z

    if-eqz v4, :cond_3

    goto/16 :goto_7

    .line 2761
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->postAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2763
    :try_start_6
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7900()J

    move-result-wide v4

    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8000()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-object v4, v0

    goto/16 :goto_0

    :cond_4
    :goto_2
    :try_start_7
    const-string v1, "Camera2App"

    const-string v6, "attach thread exit. (engine is stop.)"

    .line 2732
    invoke-static {v1, v6}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->closeSrc()V

    .line 2734
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    .line 2738
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v1

    :catchall_1
    move-exception v1

    .line 2756
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    move-exception v1

    goto/16 :goto_6

    .line 2769
    :cond_5
    :goto_3
    :try_start_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7100(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CaptureImage;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2

    :try_start_d
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7200()Lcom/sonyericsson/android/camera3d/CaptureImage;

    move-result-object v4

    if-eq v0, v4, :cond_b

    .line 2770
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->setImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    .line 2772
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v4
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1

    .line 2773
    :try_start_e
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    .line 2779
    :cond_6
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->attach([D)Z

    move-result v5

    .line 2780
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 2781
    :try_start_f
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->closeSrc()V

    if-nez v5, :cond_7

    const-string v1, "Camera2App"

    const-string v4, "PreviewAttach.run() attach error."

    .line 2783
    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->mResultCode:I

    goto :goto_7

    .line 2790
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$10200(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I

    move-result v4

    if-gtz v4, :cond_8

    .line 2791
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->pc:Lcom/sonyericsson/android/camera3d/PerformanceCounter;

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$10300(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;Lcom/sonyericsson/android/camera3d/PerformanceCounter;)V

    .line 2792
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v4, v3}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$10202(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;I)I

    goto :goto_4

    .line 2794
    :cond_8
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$10210(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I

    .line 2797
    :goto_4
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->checkAttachEnd([D)V

    .line 2799
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->mIsAttachEnd:Z

    if-eqz v4, :cond_9

    goto :goto_7

    .line 2803
    :cond_9
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->postAttachRunnable:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1

    move-object v4, v0

    goto :goto_3

    :cond_a
    :goto_5
    :try_start_10
    const-string v1, "Camera2App"

    const-string v5, "attach thread exit. (engine is stop.)"

    .line 2774
    invoke-static {v1, v5}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->closeSrc()V

    .line 2776
    monitor-exit v4

    return-void

    :catchall_2
    move-exception v1

    .line 2780
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v1
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_1

    :catch_2
    move-exception v1

    move-object v0, v4

    .line 2807
    :goto_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2809
    iput v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->mResultCode:I

    .line 2812
    :cond_b
    :goto_7
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$10400(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "Camera2App"

    const-string v1, "attach thread exit. (abort)"

    .line 2813
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onAttachEnd()V

    .line 2815
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App$SavePictureState;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Z)V

    .line 2816
    new-instance p0, Lcom/sonyericsson/android/camera3d/SaveAsyncTask;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/SaveAsyncTask;-><init>(Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/SaveAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 2820
    :cond_c
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7200()Lcom/sonyericsson/android/camera3d/CaptureImage;

    move-result-object v1

    if-ne v0, v1, :cond_d

    const-string p0, "Camera2App"

    const-string v0, "attach thread exit. (request exit)"

    .line 2821
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2825
    :cond_d
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->mResultCode:I

    .line 2826
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach$1;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PreviewAttach;I)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p0, "Camera2App"

    const-string v0, "attach thread exit."

    .line 2832
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
