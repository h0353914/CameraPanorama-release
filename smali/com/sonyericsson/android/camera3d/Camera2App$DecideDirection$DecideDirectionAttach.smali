.class Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;
.super Lcom/sonyericsson/android/camera3d/base/AttachRunnable;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecideDirectionAttach"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;,
        Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideRunnable;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;)V
    .locals 0

    .line 2284
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;-><init>()V

    return-void
.end method

.method private createDirection(I)V
    .locals 13

    .line 2485
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2487
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    .line 2488
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    const/16 v3, 0x10e

    if-ne v1, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "Camera2App"

    const-string v1, "direction : HORIZONTAL_RIGHT"

    .line 2569
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleV()I

    move-result v11

    .line 2571
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 2572
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v8

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v10

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v12, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2573
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    .line 2575
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v8

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v10

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v12, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2576
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    :pswitch_1
    const-string p1, "Camera2App"

    const-string v1, "direction : HORIZONTAL_LEFT"

    .line 2558
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2559
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleV()I

    move-result v11

    .line 2560
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 2561
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v8

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v10

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v12, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2562
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    .line 2564
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v8

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v10

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v12, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2565
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    :pswitch_2
    const-string p1, "Camera2App"

    const-string v4, "direction : VERTICAL_DOWN"

    .line 2547
    invoke-static {p1, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleH()I

    move-result v10

    .line 2549
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 2550
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v11, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2551
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    .line 2553
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v2, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v11, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2554
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    :pswitch_3
    const-string p1, "Camera2App"

    const-string v4, "direction : VERTICAL_UP"

    .line 2536
    invoke-static {p1, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleH()I

    move-result v10

    .line 2538
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 2539
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v2, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v11, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2540
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    .line 2542
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v11, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2543
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    :cond_6
    :goto_0
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_4
    const-string p1, "Camera2App"

    const-string v1, "direction : HORIZONTAL_RIGHT"

    .line 2518
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleH()I

    move-result v8

    .line 2520
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 2521
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v9, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto/16 :goto_1

    .line 2523
    :cond_7
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v9, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto/16 :goto_1

    :pswitch_5
    const-string p1, "Camera2App"

    const-string v1, "direction : HORIZONTAL_LEFT"

    .line 2509
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleH()I

    move-result v8

    .line 2511
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    if-ne p1, v2, :cond_8

    .line 2512
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v9, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto/16 :goto_1

    .line 2514
    :cond_8
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v9, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto/16 :goto_1

    :pswitch_6
    const-string p1, "Camera2App"

    const-string v1, "direction : VERTICAL_DOWN"

    .line 2500
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleV()I

    move-result v8

    .line 2502
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 2503
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v9, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto/16 :goto_1

    .line 2505
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v9, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto :goto_1

    :pswitch_7
    const-string p1, "Camera2App"

    const-string v1, "direction : VERTICAL_UP"

    .line 2491
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleV()I

    move-result v8

    .line 2493
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    if-ne p1, v2, :cond_a

    .line 2494
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v9, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto :goto_1

    .line 2496
    :cond_a
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v9, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;-><init>(IIIIII)V

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2529
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getDirection()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 2530
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2531
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->reverseDirection(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 2585
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p1, p1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2

    goto :goto_3

    :pswitch_8
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_3

    :pswitch_9
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_3

    :pswitch_a
    const/high16 v0, 0x43340000    # 180.0f

    .line 2601
    :goto_3
    :pswitch_b
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setRotation(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private getScaleH()I
    .locals 3

    .line 2295
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result p0

    div-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 2298
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getHeight()I

    move-result p0

    div-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getScaleV()I
    .locals 3

    .line 2288
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2289
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result p0

    div-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 2291
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getHeight()I

    move-result p0

    div-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 35

    move-object/from16 v15, p0

    const/4 v14, 0x0

    .line 2306
    :try_start_0
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera3d/InternalSettings;->ui_control_mode:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    const v13, -0x3fffffff    # -2.0000002f

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x5

    const/4 v11, 0x2

    const/16 v20, 0x0

    const/4 v12, 0x1

    if-ne v1, v11, :cond_a

    .line 2307
    :catch_0
    :goto_0
    :try_start_1
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7100(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/CaptureImage;

    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7200()Lcom/sonyericsson/android/camera3d/CaptureImage;

    move-result-object v2

    if-eq v1, v2, :cond_9

    .line 2308
    invoke-virtual {v15, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->setImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    .line 2310
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2311
    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2312
    :try_start_3
    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 2318
    :cond_0
    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getAttachCount()J

    move-result-wide v4

    .line 2319
    rem-long v4, v4, v18

    cmp-long v4, v4, v16

    if-nez v4, :cond_1

    .line 2320
    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7400(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2321
    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4, v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7502(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 2323
    :cond_1
    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7600(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2326
    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v21

    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v22, v4, v20

    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v23, v4, v12

    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v24, v4, v11

    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->rowStride:[I

    aget v25, v4, v20

    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->rowStride:[I

    aget v26, v4, v12

    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->rowStride:[I

    aget v27, v4, v11

    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->pixelStride:[I

    aget v28, v4, v20

    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->pixelStride:[I

    aget v29, v4, v12

    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->pixelStride:[I

    aget v30, v4, v11

    const/16 v31, 0x0

    invoke-virtual/range {v21 .. v31}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->attach(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[D)I

    move-result v4

    .line 2327
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->closeSrc()V

    .line 2328
    iget-object v5, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    if-ne v4, v13, :cond_2

    move v6, v12

    goto :goto_1

    :cond_2
    move/from16 v6, v20

    :goto_1
    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7702(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    if-eqz v4, :cond_4

    .line 2330
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7700(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Camera2App"

    .line 2331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMorphoPanoramaGP2.attach error ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    :cond_3
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;

    invoke-direct {v4, v15, v14}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2334
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 2337
    :cond_4
    :try_start_5
    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getDirection()I

    move-result v4

    .line 2338
    iget-object v5, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->direction:I

    if-ne v4, v5, :cond_5

    .line 2339
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 2341
    :cond_5
    :try_start_7
    new-array v5, v11, [I

    .line 2342
    iget-object v6, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getOutputImageSize([I)I

    move-result v6

    if-eqz v6, :cond_6

    const-string v7, "Camera2App"

    .line 2344
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "MorphoSensorFusion.getOutputImageSize error ret:0x%08X"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v20

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    :cond_6
    iget-object v6, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    aget v7, v5, v20

    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 2347
    iget-object v6, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    aget v5, v5, v12

    invoke-static {v6, v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5202(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 2348
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2349
    :try_start_8
    invoke-direct {v15, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->createDirection(I)V

    .line 2350
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2351
    :try_start_9
    iget-object v2, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->enabled()Z

    move-result v2
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v2, :cond_7

    goto :goto_3

    .line 2355
    :cond_7
    :try_start_a
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7900()J

    move-result-wide v1

    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8000()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    :cond_8
    :goto_2
    :try_start_b
    const-string v1, "Camera2App"

    const-string v4, "attach thread exit. (engine is stop.)"

    .line 2313
    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->closeSrc()V

    .line 2315
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 2348
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 2350
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v1
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1

    :cond_9
    :goto_3
    move-object v4, v14

    move-object v12, v15

    goto/16 :goto_12

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v4, v14

    move-object v12, v15

    goto/16 :goto_14

    :cond_a
    move v1, v12

    .line 2362
    :goto_4
    :try_start_10
    iget-object v2, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7100(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/CaptureImage;

    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7200()Lcom/sonyericsson/android/camera3d/CaptureImage;

    move-result-object v3

    if-eq v2, v3, :cond_19

    .line 2363
    invoke-virtual {v15, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->setImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    .line 2365
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8100()Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_3

    .line 2366
    :try_start_11
    iget-object v3, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    if-eqz v3, :cond_f

    if-eqz v1, :cond_e

    .line 2369
    :try_start_12
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4700(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 2371
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v7

    .line 2372
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v8

    .line 2373
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4100(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->getExposureTime()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    div-double/2addr v1, v3

    div-double v22, v1, v3

    .line 2374
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4100(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->getIsoValue()I

    move-result v24

    .line 2376
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveLocation()Z

    move-result v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v1, :cond_b

    .line 2377
    :try_start_13
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->getLocation()Landroid/location/Location;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    move-object/from16 v25, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v4, v14

    move-object v12, v15

    goto/16 :goto_10

    :cond_b
    move-object/from16 v25, v14

    .line 2379
    :goto_5
    :try_start_14
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v2, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8300(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8400(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 2380
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_c

    :try_start_15
    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3500(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2381
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d%s"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8500(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v20

    const-string v4, "ANDRO"

    aput-object v4, v3, v12

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2382
    iget-object v9, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->getSdCardGrantedUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v1

    iget-object v5, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_format:Ljava/lang/String;

    iget-object v1, v15, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v26
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    move-object v1, v15

    move-object/from16 v27, v5

    move-object v5, v10

    move-object v15, v9

    move-object/from16 v9, v27

    move-object/from16 v33, v10

    move-object/from16 v10, v25

    move-wide/from16 v11, v22

    move/from16 v13, v24

    move/from16 v14, v26

    :try_start_16
    invoke-virtual/range {v1 .. v14}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->saveJpeg2Sd(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/location/Location;DII)Z

    move-result v1

    invoke-static {v15, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->access$8602(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;Z)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    move-object/from16 v12, p0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    move-object/from16 v12, p0

    goto/16 :goto_10

    :cond_c
    move-object/from16 v33, v10

    move-object v12, v15

    .line 2384
    :try_start_17
    iget-object v13, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v1

    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_format:Ljava/lang/String;

    iget-object v1, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v11

    move-object v1, v12

    move-object/from16 v3, v33

    move v4, v7

    move v5, v8

    move-object/from16 v7, v25

    move-wide/from16 v8, v22

    move/from16 v10, v24

    invoke-virtual/range {v1 .. v11}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->saveJpeg(Landroid/content/ContentResolver;Ljava/lang/String;IILjava/lang/String;Landroid/location/Location;DII)Z

    move-result v1

    invoke-static {v13, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->access$8602(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;Z)Z

    .line 2386
    :goto_6
    iget-object v1, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    move-object/from16 v2, v33

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4902(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    :cond_d
    move-object v12, v15

    .line 2389
    :goto_7
    iget-object v1, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;

    invoke-direct {v2, v12}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    move/from16 v1, v20

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v12, v15

    move-object v1, v0

    move-object v4, v14

    goto/16 :goto_10

    :cond_e
    move-object v12, v15

    .line 2420
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->closeSrc()V

    .line 2421
    monitor-exit v21
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    move-object v15, v12

    const/4 v11, 0x2

    const/4 v12, 0x1

    const v13, -0x3fffffff    # -2.0000002f

    const/4 v14, 0x0

    goto/16 :goto_4

    :catchall_5
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_f
    move-object v12, v15

    .line 2423
    :try_start_18
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 2424
    :try_start_19
    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7300(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto/16 :goto_c

    .line 2430
    :cond_10
    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getAttachCount()J

    move-result-wide v4

    .line 2431
    rem-long v4, v4, v18
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    cmp-long v4, v4, v16

    if-nez v4, :cond_11

    .line 2432
    :try_start_1a
    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7400(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2433
    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7502(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    goto/16 :goto_e

    :cond_11
    const/4 v5, 0x1

    .line 2435
    :goto_9
    :try_start_1b
    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7600(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2438
    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v22

    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v23, v4, v20

    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v24, v4, v5

    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v6, 0x2

    aget-object v25, v4, v6

    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->rowStride:[I

    aget v26, v4, v20

    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->rowStride:[I

    aget v27, v4, v5

    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->rowStride:[I

    aget v28, v4, v6

    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->pixelStride:[I

    aget v29, v4, v20

    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->pixelStride:[I

    aget v30, v4, v5

    iget-object v4, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->pixelStride:[I

    aget v31, v4, v6

    const/16 v32, 0x0

    invoke-virtual/range {v22 .. v32}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->attach(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[D)I

    move-result v4

    .line 2439
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->closeSrc()V

    .line 2440
    iget-object v7, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v7, v7, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const v8, -0x3fffffff    # -2.0000002f

    if-ne v4, v8, :cond_12

    move v9, v5

    goto :goto_a

    :cond_12
    move/from16 v9, v20

    :goto_a
    invoke-static {v7, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7702(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    if-eqz v4, :cond_14

    .line 2442
    iget-object v1, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7700(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    if-nez v1, :cond_13

    :try_start_1c
    const-string v1, "Camera2App"

    .line 2443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMorphoPanoramaGP2.attach error ret:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 2445
    :cond_13
    :try_start_1d
    iget-object v1, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    const/4 v4, 0x0

    :try_start_1e
    invoke-direct {v2, v12, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2446
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :try_start_1f
    monitor-exit v21
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    return-void

    :cond_14
    const/4 v4, 0x0

    .line 2449
    :try_start_20
    iget-object v7, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v7, v7, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getDirection()I

    move-result v7

    .line 2450
    iget-object v9, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v9, v9, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v9

    iget v9, v9, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->direction:I

    if-ne v7, v9, :cond_15

    .line 2451
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    :try_start_21
    monitor-exit v21
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    goto :goto_b

    .line 2453
    :cond_15
    :try_start_22
    new-array v9, v6, [I

    .line 2454
    iget-object v10, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v10, v10, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getOutputImageSize([I)I

    move-result v10

    if-eqz v10, :cond_16

    const-string v11, "Camera2App"

    .line 2456
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "MorphoSensorFusion.getOutputImageSize error ret:0x%08X"

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v15, v20

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    :cond_16
    iget-object v10, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v10, v10, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    aget v11, v9, v20

    invoke-static {v10, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 2459
    iget-object v10, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v10, v10, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    aget v9, v9, v5

    invoke-static {v10, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5202(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 2460
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 2461
    :try_start_23
    invoke-direct {v12, v7}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->createDirection(I)V

    .line 2462
    monitor-exit v21
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    .line 2464
    :try_start_24
    iget-object v3, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->enabled()Z

    move-result v3
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_24} :catch_2

    if-eqz v3, :cond_17

    goto :goto_11

    :cond_17
    :goto_b
    move-object v14, v4

    move v11, v6

    move v13, v8

    move-object v15, v12

    move v12, v5

    goto/16 :goto_4

    :cond_18
    :goto_c
    const/4 v4, 0x0

    :try_start_25
    const-string v1, "Camera2App"

    const-string v2, "attach thread exit. (engine is stop.)"

    .line 2425
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->closeSrc()V

    .line 2427
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    :try_start_26
    monitor-exit v21
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    return-void

    :catchall_7
    move-exception v0

    const/4 v4, 0x0

    :goto_d
    move-object v1, v0

    .line 2460
    :goto_e
    :try_start_27
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    :try_start_28
    throw v1

    :catchall_8
    move-exception v0

    goto :goto_d

    :catchall_9
    move-exception v0

    const/4 v4, 0x0

    goto :goto_f

    :catchall_a
    move-exception v0

    move-object v4, v14

    move-object v12, v15

    :goto_f
    move-object v1, v0

    .line 2462
    :goto_10
    monitor-exit v21
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    :try_start_29
    throw v1
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_2

    :catch_2
    move-exception v0

    goto :goto_13

    :catchall_b
    move-exception v0

    goto :goto_f

    :cond_19
    move-object v4, v14

    move-object v12, v15

    :goto_11
    move-object v1, v2

    .line 2475
    :goto_12
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7200()Lcom/sonyericsson/android/camera3d/CaptureImage;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    const-string v1, "Camera2App"

    const-string v2, "attach thread exit. (request exit)"

    .line 2476
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2480
    :cond_1a
    iget-object v1, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8800(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2481
    iget-object v1, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideRunnable;

    invoke-direct {v2, v12, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_3
    move-exception v0

    move-object v4, v14

    move-object v12, v15

    :goto_13
    move-object v1, v0

    .line 2470
    :goto_14
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2471
    iget-object v1, v12, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;

    invoke-direct {v2, v12, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
