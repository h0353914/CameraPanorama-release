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

    .line 2297
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/AttachRunnable;-><init>()V

    return-void
.end method

.method private createDirection(I)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2493
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2495
    :cond_0
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v2

    .line 2496
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    const-string v4, "direction : HORIZONTAL_RIGHT"

    const-string v5, "direction : HORIZONTAL_LEFT"

    const-string v6, "direction : VERTICAL_DOWN"

    const-string v7, "direction : VERTICAL_UP"

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v13, 0x3

    const-string v14, "Camera2App"

    const/16 v15, 0x5a

    if-eq v3, v15, :cond_a

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    const/16 v12, 0x10e

    if-ne v3, v12, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    if-eq v1, v13, :cond_8

    if-eq v1, v10, :cond_6

    if-eq v1, v9, :cond_4

    if-eq v1, v8, :cond_2

    goto/16 :goto_2

    .line 2577
    :cond_2
    invoke-static {v14, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleV()I

    move-result v21

    .line 2579
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    if-ne v1, v15, :cond_3

    .line 2580
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v17

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v18

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v19

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v20

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object/from16 v16, v3

    move/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2581
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1, v13}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    .line 2583
    :cond_3
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v17

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v18

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v19

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v20

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object/from16 v16, v3

    move/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2584
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    .line 2566
    :cond_4
    invoke-static {v14, v5}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleV()I

    move-result v7

    .line 2568
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    if-ne v1, v15, :cond_5

    .line 2569
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v9, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v4

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v5

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v8, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2570
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1, v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    .line 2572
    :cond_5
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v9, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v4

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v5

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v8, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2573
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1, v13}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    .line 2555
    :cond_6
    invoke-static {v14, v6}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleH()I

    move-result v1

    .line 2557
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v4

    if-ne v4, v15, :cond_7

    .line 2558
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v12, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v14, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v6

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v10, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v4, v14

    move v9, v1

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;-><init>(IIIIII)V

    invoke-static {v12, v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2559
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    .line 2561
    :cond_7
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v9, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v10, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v4

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v5

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v8, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v2, v10

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;-><init>(IIIIII)V

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2562
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    .line 2544
    :cond_8
    invoke-static {v14, v7}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleH()I

    move-result v9

    .line 2546
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    if-ne v1, v15, :cond_9

    .line 2547
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v10, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v5

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v3, v10

    move v8, v9

    move v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2548
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    .line 2550
    :cond_9
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v12, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v6

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v10, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v4, v12

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2551
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    goto/16 :goto_2

    :cond_a
    :goto_0
    if-eq v1, v13, :cond_11

    if-eq v1, v10, :cond_f

    if-eq v1, v9, :cond_d

    if-eq v1, v8, :cond_b

    goto/16 :goto_1

    .line 2526
    :cond_b
    invoke-static {v14, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleH()I

    move-result v9

    .line 2528
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    if-ne v1, v15, :cond_c

    .line 2529
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v6

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v10, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto/16 :goto_1

    .line 2531
    :cond_c
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v6

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v10, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto/16 :goto_1

    .line 2517
    :cond_d
    invoke-static {v14, v5}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleH()I

    move-result v21

    .line 2519
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    if-ne v1, v15, :cond_e

    .line 2520
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v17

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v18

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v19

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v20

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object/from16 v16, v3

    move/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera3d/UpDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto/16 :goto_1

    .line 2522
    :cond_e
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v17

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v18

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v19

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v20

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object/from16 v16, v3

    move/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera3d/DownDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto/16 :goto_1

    .line 2508
    :cond_f
    invoke-static {v14, v6}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleV()I

    move-result v9

    .line 2510
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    if-ne v1, v15, :cond_10

    .line 2511
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v6

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v10, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto/16 :goto_1

    .line 2513
    :cond_10
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v6

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v7

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v8

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v10, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto/16 :goto_1

    .line 2499
    :cond_11
    invoke-static {v14, v7}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->getScaleV()I

    move-result v21

    .line 2501
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    if-ne v1, v15, :cond_12

    .line 2502
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v17

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v18

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v19

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v20

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object/from16 v16, v3

    move/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera3d/RightDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    goto :goto_1

    .line 2504
    :cond_12
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v17

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v18

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v19

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v20

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    move-object/from16 v16, v3

    move/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Lcom/sonyericsson/android/camera3d/LeftDirectionFunction;-><init>(IIIIII)V

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5302(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/DirectionFunction;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    .line 2537
    :goto_1
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->getDirection()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 2538
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2539
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->reverseDirection(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 2593
    :cond_13
    :goto_2
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_17

    if-eq v1, v11, :cond_15

    if-eq v1, v13, :cond_14

    goto :goto_3

    :cond_14
    const/high16 v2, 0x42b40000    # 90.0f

    goto :goto_3

    :cond_15
    const/high16 v2, 0x43870000    # 270.0f

    goto :goto_3

    :cond_16
    const/high16 v2, 0x43340000    # 180.0f

    .line 2609
    :cond_17
    :goto_3
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8900(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method private getScaleH()I
    .locals 3

    .line 2308
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2309
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result p0

    div-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 2311
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5200(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;

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

    .line 2301
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2302
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6800(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result p0

    div-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 2304
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/TextureViewEx;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/TextureViewEx;

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
    .locals 43

    move-object/from16 v14, p0

    const/4 v15, 0x0

    .line 2319
    :try_start_0
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->ui_control_mode:I

    const v13, -0x3fffffff    # -2.0000002f

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x5

    const/4 v12, 0x2

    const/16 v20, 0x0

    const/4 v10, 0x1

    if-ne v0, v12, :cond_9

    .line 2320
    :catch_0
    :goto_0
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6900(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CaptureImage;

    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7000()Lcom/sonyericsson/android/camera3d/CaptureImage;

    move-result-object v1

    if-eq v0, v1, :cond_18

    .line 2321
    invoke-virtual {v14, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->setImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    .line 2323
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2324
    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2325
    :try_start_2
    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 2331
    :cond_0
    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getAttachCount()J

    move-result-wide v3

    .line 2332
    rem-long v3, v3, v18

    cmp-long v3, v3, v16

    if-nez v3, :cond_1

    .line 2333
    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7200(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2334
    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3, v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7302(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 2336
    :cond_1
    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7400(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2339
    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v21

    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v22, v3, v20

    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v23, v3, v10

    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v24, v3, v12

    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->rowStride:[I

    aget v25, v3, v20

    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->rowStride:[I

    aget v26, v3, v10

    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->rowStride:[I

    aget v27, v3, v12

    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->pixelStride:[I

    aget v28, v3, v20

    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->pixelStride:[I

    aget v29, v3, v10

    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->pixelStride:[I

    aget v30, v3, v12

    const/16 v31, 0x0

    invoke-virtual/range {v21 .. v31}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->attach(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[D)I

    move-result v3

    .line 2340
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->closeSrc()V

    .line 2341
    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    if-ne v3, v13, :cond_2

    move v5, v10

    goto :goto_1

    :cond_2
    move/from16 v5, v20

    :goto_1
    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7502(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    if-eqz v3, :cond_4

    .line 2343
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7500(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2344
    const-string v0, "Camera2App"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMorphoPanoramaGP2.attach error ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    :cond_3
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;

    invoke-direct {v3, v14, v15}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2347
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 2350
    :cond_4
    :try_start_4
    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getDirection()I

    move-result v3

    .line 2351
    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->direction:I

    if-ne v3, v4, :cond_5

    .line 2352
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 2354
    :cond_5
    :try_start_6
    new-array v4, v12, [I

    .line 2355
    iget-object v5, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getOutputImageSize([I)I

    move-result v5

    if-eqz v5, :cond_6

    .line 2357
    const-string v6, "Camera2App"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "MorphoSensorFusion.getOutputImageSize error ret:0x%08X"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v20

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    :cond_6
    iget-object v5, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    aget v6, v4, v20

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 2360
    iget-object v5, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    aget v4, v4, v10

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5202(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 2361
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2362
    :try_start_7
    invoke-direct {v14, v3}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->createDirection(I)V

    .line 2363
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2364
    :try_start_8
    iget-object v1, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->enabled()Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    if-eqz v1, :cond_7

    goto/16 :goto_c

    .line 2368
    :cond_7
    :try_start_9
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7700()J

    move-result-wide v0

    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7800()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 2326
    :cond_8
    :goto_2
    :try_start_a
    const-string v0, "Camera2App"

    const-string v3, "attach thread exit. (engine is stop.)"

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->closeSrc()V

    .line 2328
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 2361
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v0

    :catchall_1
    move-exception v0

    .line 2363
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0

    :cond_9
    move v0, v10

    .line 2375
    :goto_3
    iget-object v1, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6900(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/CaptureImage;

    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7000()Lcom/sonyericsson/android/camera3d/CaptureImage;

    move-result-object v2

    if-eq v1, v2, :cond_17

    .line 2376
    invoke-virtual {v14, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->setImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)V

    .line 2378
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7900()Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1

    .line 2379
    :try_start_f
    iget-object v2, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8000(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v0, :cond_c

    .line 2382
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4700(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 2384
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureWidth()I

    move-result v6

    .line 2385
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->cameraInfo()Lcom/sonyericsson/android/camera3d/CameraInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getCaptureHeight()I

    move-result v7

    .line 2386
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4100(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->getExposureTime()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    div-double v22, v0, v2

    .line 2387
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4100(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$CaptureResult;->getIsoValue()I

    move-result v0

    .line 2389
    iget-object v1, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App$Settings;->isSaveLocation()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2390
    iget-object v1, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/PanoramaGP2LocationManager;->getLocation()Landroid/location/Location;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :cond_a
    move-object v9, v15

    .line 2392
    :goto_4
    iget-object v1, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v2, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8100(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8200(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 2393
    iget-object v1, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v11, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v1, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 2394
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3500(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v2

    iget-object v1, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 2395
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 2396
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v1, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 2397
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v1

    iget-object v8, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_format:Ljava/lang/String;

    iget-object v1, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 2398
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8300(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v24

    move-object/from16 v1, p0

    move-object v15, v11

    move-wide/from16 v10, v22

    move v12, v0

    move v0, v13

    move/from16 v13, v24

    .line 2393
    invoke-virtual/range {v1 .. v13}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->saveJpeg(ZLandroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;IILjava/lang/String;Landroid/location/Location;DII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4902(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    :cond_b
    move v0, v13

    .line 2401
    :goto_5
    iget-object v1, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;

    invoke-direct {v2, v14}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$1;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    move v2, v0

    move/from16 v0, v20

    goto :goto_6

    :cond_c
    move v2, v13

    .line 2428
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->closeSrc()V

    .line 2429
    monitor-exit v21

    move v13, v2

    const/4 v10, 0x1

    const/4 v12, 0x2

    :goto_7
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_d
    move v2, v13

    .line 2431
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 2432
    :try_start_10
    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto/16 :goto_a

    .line 2438
    :cond_e
    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getAttachCount()J

    move-result-wide v4

    .line 2439
    rem-long v4, v4, v18

    cmp-long v4, v4, v16

    if-nez v4, :cond_f

    .line 2440
    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7200(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2441
    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7302(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    .line 2443
    :cond_f
    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7400(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2446
    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v32

    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    aget-object v33, v4, v20

    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    aget-object v34, v4, v5

    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->byteBuffer:[Ljava/nio/ByteBuffer;

    const/4 v5, 0x2

    aget-object v35, v4, v5

    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->rowStride:[I

    aget v36, v4, v20

    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->rowStride:[I

    const/4 v6, 0x1

    aget v37, v4, v6

    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->rowStride:[I

    aget v38, v4, v5

    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->pixelStride:[I

    aget v39, v4, v20

    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->pixelStride:[I

    const/4 v6, 0x1

    aget v40, v4, v6

    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->pixelStride:[I

    aget v41, v4, v5

    const/16 v42, 0x0

    invoke-virtual/range {v32 .. v42}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->attach(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII[D)I

    move-result v4

    .line 2447
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->closeSrc()V

    .line 2448
    iget-object v6, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    if-ne v4, v2, :cond_10

    const/4 v10, 0x1

    goto :goto_8

    :cond_10
    move/from16 v10, v20

    :goto_8
    invoke-static {v6, v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7502(Lcom/sonyericsson/android/camera3d/Camera2App;Z)Z

    if-eqz v4, :cond_12

    .line 2450
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7500(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2451
    const-string v0, "Camera2App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMorphoPanoramaGP2.attach error ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    :cond_11
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2454
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    monitor-exit v21
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    return-void

    .line 2457
    :cond_12
    :try_start_12
    iget-object v4, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getDirection()I

    move-result v4

    .line 2458
    iget-object v6, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v6

    iget v6, v6, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->direction:I

    if-ne v4, v6, :cond_13

    .line 2459
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    monitor-exit v21
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    const/4 v8, 0x1

    goto :goto_9

    .line 2461
    :cond_13
    :try_start_14
    new-array v6, v5, [I

    .line 2462
    iget-object v7, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v7, v7, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->getOutputImageSize([I)I

    move-result v7

    if-eqz v7, :cond_14

    .line 2464
    const-string v8, "Camera2App"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "MorphoSensorFusion.getOutputImageSize error ret:0x%08X"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v20

    invoke-static {v9, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    :cond_14
    iget-object v7, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v7, v7, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    aget v8, v6, v20

    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5102(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 2467
    iget-object v7, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v7, v7, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v8, 0x1

    aget v6, v6, v8

    invoke-static {v7, v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5202(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 2468
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 2469
    :try_start_15
    invoke-direct {v14, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->createDirection(I)V

    .line 2470
    monitor-exit v21
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 2472
    :try_start_16
    iget-object v3, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$5300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/DirectionFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/base/DirectionFunction;->enabled()Z

    move-result v3
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_1

    if-eqz v3, :cond_15

    goto :goto_b

    :cond_15
    :goto_9
    move v13, v2

    move v12, v5

    move v10, v8

    goto/16 :goto_7

    .line 2433
    :cond_16
    :goto_a
    :try_start_17
    const-string v0, "Camera2App"

    const-string v1, "attach thread exit. (engine is stop.)"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->closeSrc()V

    .line 2435
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    monitor-exit v21
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    return-void

    :catchall_2
    move-exception v0

    .line 2468
    :try_start_19
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :try_start_1a
    throw v0

    :catchall_3
    move-exception v0

    .line 2470
    monitor-exit v21
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :try_start_1b
    throw v0
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_1

    :cond_17
    :goto_b
    move-object v0, v1

    .line 2483
    :cond_18
    :goto_c
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$7000()Lcom/sonyericsson/android/camera3d/CaptureImage;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 2484
    const-string v0, "Camera2App"

    const-string v1, "attach thread exit. (request exit)"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2488
    :cond_19
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8400(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    .line 2489
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_1
    move-exception v0

    .line 2478
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2479
    iget-object v0, v14, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v1, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v2}, Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$DecideDirection$DecideDirectionAttach;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
