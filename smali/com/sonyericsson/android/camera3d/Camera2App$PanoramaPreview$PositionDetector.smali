.class Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;
.super Ljava/lang/Object;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionDetector"
.end annotation


# static fields
.field private static final CENTERING_MARGIN_DEFAULT:I = -0x1869f

.field public static final COMPLETED:I = 0x1

.field public static final ERROR_IDLE:I = -0x1

.field public static final ERROR_REVERSE:I = -0x2

.field private static final IDLE_THRES_RATIO:I = 0x2

.field private static final IDLE_TIME:J = 0xb2d05e00L

.field public static final OK:I = 0x0

.field private static final REVERSE_THRES_RATIO:I = 0x1

.field private static final REVERSE_TIME:J = 0xbebc200L

.field private static final SPEED_CHECK_CONTINUOUSLY_TIMES:I = 0x5

.field private static final SPEED_CHECK_IGNORE_TIMES:I = 0xf

.field private static final SPEED_CHECK_MODE:I = 0x1

.field private static final SPEED_CHECK_MODE_AVERAGE:I = 0x1

.field private static final SPEED_CHECK_MODE_CONTINUOUSLY:I = 0x0

.field private static final TOO_FAST_THRES_RATIO:D = 0.8

.field private static final TOO_SLOW_THRES_RATIO:D = 0.1

.field private static final TV_ANALYSIS_THRES_RATIO:D = 0.2

.field public static final WARNING_TOO_FAST:I = 0x2

.field public static final WARNING_TOO_SLOW:I = 0x3


# instance fields
.field private base_x:D

.field private base_y:D

.field private centering_margin_left:I

.field private centering_margin_top:I

.field private count:J

.field private volatile cur_x:D

.field private volatile cur_y:D

.field private final direction:I

.field private final frame_rect:Landroid/graphics/RectF;

.field private idle_rect:Landroid/graphics/RectF;

.field private idle_start_time:J

.field private idle_thres:D

.field private final mDiffManager:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;

.field private final output_height:I

.field private final output_width:I

.field private peak:D

.field private pre_is_reverse:Z

.field private prev_x:D

.field private prev_y:D

.field private preview_rect:Landroid/graphics/Rect;

.field private reset_idle_timer:Z

.field private reverse_start_time:J

.field private reverse_thres:D

.field private reverse_thres2:D

.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

.field private too_fast_count:I

.field private too_fast_thres:D

.field private too_slow_count:I

.field private too_slow_thres:D

.field private final tv_analysis_thres:D

.field private volatile tv_analyzed_pos:D


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;III)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 3125
    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    .line 3115
    iput-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_rect:Landroid/graphics/RectF;

    .line 3118
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->frame_rect:Landroid/graphics/RectF;

    .line 3122
    new-instance v6, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;

    invoke-direct {v6, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)V

    iput-object v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->mDiffManager:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;

    .line 3123
    iput-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    const-wide/16 v5, 0x0

    .line 3126
    iput-wide v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->count:J

    .line 3127
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    .line 3128
    iput v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    .line 3129
    iput v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    const/4 v5, 0x1

    .line 3130
    iput-boolean v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reset_idle_timer:Z

    const/4 v6, 0x0

    .line 3131
    iput-boolean v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->pre_is_reverse:Z

    .line 3132
    iput v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_count:I

    iput v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_count:I

    const-wide/16 v6, 0x0

    .line 3133
    iput-wide v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_y:D

    iput-wide v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_x:D

    iput-wide v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    iput-wide v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    const v8, -0x1869f

    .line 3134
    iput v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    iput v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    const-wide v10, 0x3f80624dd2f1a9fcL    # 0.008

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    const v14, 0x3ca3d70a    # 0.02f

    const v15, 0x3f333333    # 0.7f

    const v16, 0x3c23d70a    # 0.01f

    const/16 v8, 0xb4

    const/16 v9, 0x5a

    if-eqz v2, :cond_9

    if-eq v2, v5, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_9

    .line 3181
    :cond_0
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v3, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    if-eq v2, v9, :cond_2

    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v8, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v1, v4

    .line 3184
    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    goto :goto_1

    .line 3182
    :cond_2
    :goto_0
    iput-wide v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    :goto_1
    int-to-float v1, v4

    mul-float v2, v1, v16

    float-to-double v2, v2

    .line 3186
    iput-wide v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres:D

    mul-float/2addr v15, v1

    float-to-double v2, v15

    .line 3187
    iput-wide v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres2:D

    mul-float/2addr v1, v14

    float-to-double v1, v1

    .line 3188
    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_thres:D

    int-to-double v1, v4

    mul-double/2addr v12, v1

    .line 3189
    iput-wide v12, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_thres:D

    mul-double/2addr v10, v1

    .line 3190
    iput-wide v10, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_thres:D

    goto/16 :goto_8

    .line 3167
    :cond_3
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v3, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    if-eq v2, v9, :cond_5

    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v8, :cond_4

    goto :goto_2

    .line 3170
    :cond_4
    iput-wide v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    goto :goto_3

    :cond_5
    :goto_2
    int-to-double v1, v4

    .line 3168
    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    :goto_3
    int-to-float v1, v4

    mul-float v2, v1, v16

    float-to-double v2, v2

    .line 3172
    iput-wide v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres:D

    mul-float/2addr v15, v1

    float-to-double v2, v15

    .line 3173
    iput-wide v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres2:D

    mul-float/2addr v1, v14

    float-to-double v1, v1

    .line 3174
    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_thres:D

    int-to-double v1, v4

    mul-double/2addr v12, v1

    .line 3175
    iput-wide v12, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_thres:D

    mul-double/2addr v10, v1

    .line 3176
    iput-wide v10, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_thres:D

    goto/16 :goto_8

    .line 3153
    :cond_6
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v4, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v4

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0x168

    if-eq v2, v9, :cond_8

    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v8, :cond_7

    goto :goto_4

    :cond_7
    int-to-double v1, v3

    .line 3156
    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    goto :goto_5

    .line 3154
    :cond_8
    :goto_4
    iput-wide v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    :goto_5
    int-to-float v1, v3

    mul-float v2, v1, v16

    float-to-double v4, v2

    .line 3158
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres:D

    mul-float/2addr v15, v1

    float-to-double v4, v15

    .line 3159
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres2:D

    mul-float/2addr v1, v14

    float-to-double v1, v1

    .line 3160
    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_thres:D

    int-to-double v1, v3

    mul-double/2addr v12, v1

    .line 3161
    iput-wide v12, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_thres:D

    mul-double/2addr v10, v1

    .line 3162
    iput-wide v10, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_thres:D

    goto :goto_8

    .line 3139
    :cond_9
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v4, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v4

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0x168

    if-eq v2, v9, :cond_b

    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v8, :cond_a

    goto :goto_6

    .line 3142
    :cond_a
    iput-wide v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    goto :goto_7

    :cond_b
    :goto_6
    int-to-double v1, v3

    .line 3140
    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    :goto_7
    int-to-float v1, v3

    mul-float v2, v1, v16

    float-to-double v4, v2

    .line 3144
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres:D

    mul-float/2addr v15, v1

    float-to-double v4, v15

    .line 3145
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres2:D

    mul-float/2addr v1, v14

    float-to-double v1, v1

    .line 3146
    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_thres:D

    int-to-double v1, v3

    mul-double/2addr v12, v1

    .line 3147
    iput-wide v12, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_thres:D

    mul-double/2addr v10, v1

    .line 3148
    iput-wide v10, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_thres:D

    :goto_8
    const-wide v3, 0x3f60624dd2f1a9fcL    # 0.002

    mul-double v6, v1, v3

    .line 3197
    :goto_9
    iput-wide v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    .line 3199
    iget-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    return-void
.end method

.method private checkSpeed()I
    .locals 8

    .line 3601
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 3605
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    .line 3606
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_x:D

    goto :goto_0

    .line 3610
    :cond_0
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    .line 3611
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_y:D

    :goto_0
    sub-double/2addr v3, v5

    .line 3615
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 3618
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->mDiffManager:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;->add(D)V

    const-wide/16 v3, 0xf

    .line 3619
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->count:J

    cmp-long v0, v3, v5

    const/4 v3, 0x0

    if-gez v0, :cond_2

    .line 3620
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->mDiffManager:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;->getDiff()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_thres:D

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    goto :goto_1

    .line 3622
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->mDiffManager:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;->getDiff()D

    move-result-wide v0

    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_thres:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 3626
    :goto_1
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_count:I

    if-lez v0, :cond_3

    iput v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_count:I

    .line 3627
    :cond_3
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_count:I

    if-lez v0, :cond_4

    iput v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_count:I

    :cond_4
    return v1
.end method

.method private isComplete()Z
    .locals 11

    .line 3675
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 3679
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    .line 3680
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    .line 3681
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11500(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I

    move-result v5

    div-int/2addr v5, v2

    goto :goto_0

    .line 3685
    :cond_0
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    .line 3686
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    .line 3687
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11600(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I

    move-result v5

    div-int/2addr v5, v2

    .line 3691
    :goto_0
    iget v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const-string v6, "isComplete cur=%f half_size=%d"

    const-string v7, "isComplete cur=%f max=%d half_size=%d"

    const/4 v8, 0x0

    const-string v9, "Camera2App"

    const/4 v10, 0x1

    if-eq v2, v10, :cond_7

    if-eq v2, v1, :cond_7

    .line 3695
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p0

    add-int/2addr v1, p0

    rem-int/lit16 v1, v1, 0x168

    const/16 p0, 0x10e

    if-ne v1, p0, :cond_1

    goto :goto_1

    :cond_1
    int-to-double v0, v5

    cmpg-double p0, v3, v0

    if-gez p0, :cond_2

    .line 3702
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-gez p0, :cond_3

    move v8, v10

    :cond_3
    return v8

    :cond_4
    :goto_1
    sub-int p0, v0, v5

    int-to-double v1, p0

    cmpl-double p0, v3, v1

    if-lez p0, :cond_5

    .line 3697
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-lez p0, :cond_6

    move v8, v10

    :cond_6
    return v8

    .line 3708
    :cond_7
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x168

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p0

    add-int/2addr v1, p0

    rem-int/lit16 v1, v1, 0x168

    const/16 p0, 0xb4

    if-ne v1, p0, :cond_8

    goto :goto_2

    :cond_8
    int-to-double v0, v5

    cmpg-double p0, v3, v0

    if-gez p0, :cond_9

    .line 3715
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-gez p0, :cond_a

    move v8, v10

    :cond_a
    return v8

    :cond_b
    :goto_2
    sub-int p0, v0, v5

    int-to-double v1, p0

    cmpl-double p0, v3, v1

    if-lez p0, :cond_c

    .line 3710
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-lez p0, :cond_d

    move v8, v10

    :cond_d
    return v8
.end method

.method private isIdle()Z
    .locals 11

    .line 3650
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3651
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reset_idle_timer:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3652
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reset_idle_timer:Z

    .line 3653
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_start_time:J

    .line 3655
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_rect:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    .line 3656
    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_thres:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 3657
    new-instance v2, Landroid/graphics/RectF;

    iget-wide v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    sub-double/2addr v6, v4

    double-to-float v6, v6

    iget-wide v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    sub-double/2addr v7, v4

    double-to-float v7, v7

    iget-wide v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    add-double/2addr v8, v4

    double-to-float v8, v8

    iget-wide v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    add-double/2addr v9, v4

    double-to-float v4, v9

    invoke-direct {v2, v6, v7, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_rect:Landroid/graphics/RectF;

    .line 3660
    :cond_1
    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_start_time:J

    sub-long/2addr v0, v4

    const-wide v4, 0xb2d05e00L

    cmp-long v0, v4, v0

    const/4 v1, 0x1

    if-gez v0, :cond_2

    return v1

    .line 3664
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_rect:Landroid/graphics/RectF;

    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v2, v4

    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3665
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reset_idle_timer:Z

    const/4 v0, 0x0

    .line 3666
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_rect:Landroid/graphics/RectF;

    :cond_3
    return v3
.end method

.method private isReverse()Z
    .locals 13

    .line 3727
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 3731
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    .line 3732
    iget-wide v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_x:D

    .line 3733
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    .line 3734
    iget-wide v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->base_y:D

    iget-wide v11, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    iget-wide v11, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->base_y:D

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    :goto_0
    move v9, v3

    goto :goto_1

    :cond_0
    move v9, v4

    goto :goto_1

    .line 3740
    :cond_1
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    .line 3741
    iget-wide v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_y:D

    .line 3742
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    .line 3743
    iget-wide v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->base_x:D

    iget-wide v11, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    iget-wide v11, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->base_x:D

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v9, :cond_2

    return v3

    .line 3753
    :cond_2
    iget v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-eq v9, v3, :cond_4

    if-eq v9, v1, :cond_4

    .line 3757
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v9, v9, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v9

    iget v9, v9, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v10, v10, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v10

    add-int/2addr v9, v10

    rem-int/lit16 v9, v9, 0x168

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v9, v9, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v9

    iget v9, v9, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v10, v10, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v10

    add-int/2addr v9, v10

    rem-int/lit16 v9, v9, 0x168

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_5

    :cond_3
    :goto_2
    move v9, v4

    goto :goto_3

    .line 3763
    :cond_4
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v9, v9, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v9

    iget v9, v9, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v10, v10, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v10

    add-int/2addr v9, v10

    rem-int/lit16 v9, v9, 0x168

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v9, v9, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v9

    iget v9, v9, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v10, v10, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v10

    add-int/2addr v9, v10

    rem-int/lit16 v9, v9, 0x168

    const/16 v10, 0xb4

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_5
    move v9, v3

    :goto_3
    if-eqz v9, :cond_9

    sub-double/2addr v7, v5

    .line 3769
    iget-wide v10, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres2:D

    cmpl-double v7, v7, v10

    if-lez v7, :cond_6

    return v3

    .line 3773
    :cond_6
    iget-wide v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    cmpg-double v7, v5, v7

    if-gez v7, :cond_7

    .line 3774
    iput-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    :cond_7
    int-to-double v7, v0

    cmpl-double v7, v5, v7

    if-lez v7, :cond_8

    goto :goto_4

    .line 3778
    :cond_8
    iget-wide v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    sub-double v7, v5, v7

    iget-wide v10, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres:D

    cmpl-double v7, v7, v10

    if-lez v7, :cond_d

    goto :goto_4

    :cond_9
    sub-double v7, v5, v7

    .line 3783
    iget-wide v10, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres2:D

    cmpl-double v7, v7, v10

    if-lez v7, :cond_a

    return v3

    .line 3787
    :cond_a
    iget-wide v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    cmpl-double v7, v5, v7

    if-lez v7, :cond_b

    .line 3788
    iput-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    :cond_b
    const-wide/16 v7, 0x0

    cmpg-double v7, v5, v7

    if-gez v7, :cond_c

    :goto_4
    move v7, v3

    goto :goto_5

    .line 3792
    :cond_c
    iget-wide v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    sub-double/2addr v7, v5

    iget-wide v10, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres:D

    cmpl-double v7, v7, v10

    if-lez v7, :cond_d

    goto :goto_4

    :cond_d
    move v7, v4

    .line 3798
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    if-eqz v7, :cond_14

    .line 3801
    iget v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-eq v8, v2, :cond_e

    if-eq v8, v1, :cond_e

    .line 3805
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11500(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I

    move-result v8

    div-int/2addr v8, v2

    goto :goto_6

    .line 3809
    :cond_e
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11600(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I

    move-result v8

    div-int/2addr v8, v2

    .line 3813
    :goto_6
    iget v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-eq v2, v3, :cond_10

    if-eq v2, v1, :cond_10

    if-eqz v9, :cond_f

    add-int/2addr v0, v8

    int-to-double v0, v0

    cmpl-double v0, v5, v0

    if-lez v0, :cond_12

    return v3

    :cond_f
    neg-int v0, v8

    int-to-double v0, v0

    cmpg-double v0, v5, v0

    if-gez v0, :cond_12

    return v3

    :cond_10
    if-eqz v9, :cond_11

    add-int/2addr v0, v8

    int-to-double v0, v0

    cmpl-double v0, v5, v0

    if-lez v0, :cond_12

    return v3

    :cond_11
    neg-int v0, v8

    int-to-double v0, v0

    cmpg-double v0, v5, v0

    if-gez v0, :cond_12

    return v3

    .line 3845
    :cond_12
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->pre_is_reverse:Z

    if-eqz v0, :cond_13

    .line 3846
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_start_time:J

    sub-long/2addr v10, v0

    const-wide/32 v0, 0xbebc200

    cmp-long v0, v0, v10

    if-gez v0, :cond_14

    return v3

    .line 3850
    :cond_13
    iput-wide v10, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_start_time:J

    .line 3853
    :cond_14
    iput-boolean v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->pre_is_reverse:Z

    return v4
.end method

.method private updateFrame()Z
    .locals 17

    move-object/from16 v0, p0

    .line 3330
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 3333
    :cond_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 3334
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    .line 3335
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11400(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 3336
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    .line 3337
    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    return v2

    .line 3340
    :cond_1
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v1, v4, :cond_2

    return v3

    .line 3349
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 3350
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 3352
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    if-eqz v5, :cond_18

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    const/16 v13, 0xb4

    if-ne v5, v13, :cond_3

    goto/16 :goto_c

    .line 3471
    :cond_3
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3472
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v14, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v14, v14, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v14

    add-int/2addr v5, v14

    rem-int/lit16 v5, v5, 0x168

    if-eq v5, v13, :cond_5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v5, v3

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v2

    goto :goto_1

    .line 3475
    :cond_6
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v14, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v14, v14, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v14

    add-int/2addr v5, v14

    rem-int/lit16 v5, v5, 0x168

    if-ne v5, v13, :cond_4

    goto :goto_0

    .line 3477
    :goto_1
    iget v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-eq v13, v7, :cond_f

    if-eq v13, v6, :cond_f

    if-eqz v5, :cond_7

    .line 3482
    iget-wide v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v6, v6

    .line 3483
    iget-wide v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v7, v13

    iget v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v14, v13

    mul-float/2addr v14, v11

    div-float/2addr v14, v12

    sub-float/2addr v7, v14

    .line 3484
    iget-object v14, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v14, v14, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v14}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v14

    iget v14, v14, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    goto :goto_2

    .line 3486
    :cond_7
    iget v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v6, v6

    iget-wide v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v7, v13

    sub-float/2addr v6, v7

    .line 3487
    iget v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v7, v7

    iget-wide v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v13, v13

    sub-float/2addr v7, v13

    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v13, v13, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v13}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v13

    iget v13, v13, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v13, v13

    mul-float/2addr v13, v11

    :goto_2
    div-float/2addr v13, v12

    sub-float/2addr v7, v13

    .line 3490
    iget v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v14, v13

    mul-float/2addr v14, v11

    div-float/2addr v14, v12

    int-to-float v15, v13

    mul-float/2addr v15, v8

    div-float/2addr v15, v12

    int-to-float v13, v13

    .line 3492
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v2, v2

    div-float/2addr v13, v2

    mul-float/2addr v13, v7

    sub-float v2, v15, v13

    .line 3493
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v14, v2

    if-gez v2, :cond_9

    cmpg-float v2, v13, v15

    if-gez v2, :cond_8

    .line 3495
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v2, v2

    mul-float/2addr v2, v11

    div-float/2addr v2, v12

    add-float/2addr v7, v2

    goto :goto_3

    .line 3497
    :cond_8
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v2, v2

    mul-float/2addr v2, v11

    div-float/2addr v2, v12

    sub-float/2addr v7, v2

    goto :goto_3

    .line 3500
    :cond_9
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    div-float v7, v2, v12

    .line 3504
    :goto_3
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v8, v8

    div-float/2addr v2, v8

    .line 3505
    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v8, v8, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v8

    iget v8, v8, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v8, v8

    div-float/2addr v8, v12

    mul-float/2addr v8, v2

    .line 3506
    iget-object v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v12

    mul-float/2addr v6, v2

    mul-float/2addr v7, v2

    .line 3510
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 3511
    iget v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-nez v13, :cond_b

    if-eqz v5, :cond_a

    .line 3513
    iget-wide v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    move/from16 v16, v4

    float-to-double v3, v5

    sub-double/2addr v13, v3

    float-to-double v2, v2

    mul-double/2addr v13, v2

    div-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    neg-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_4

    :cond_a
    move/from16 v16, v4

    .line 3515
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-double v3, v3

    iget-wide v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    float-to-double v9, v5

    add-double/2addr v13, v9

    sub-double/2addr v3, v13

    float-to-double v9, v2

    mul-double/2addr v3, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    neg-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    .line 3517
    :goto_4
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    if-lez v2, :cond_d

    const/4 v2, 0x0

    .line 3518
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_6

    :cond_b
    move/from16 v16, v4

    if-eqz v5, :cond_c

    .line 3522
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-double v3, v3

    iget-wide v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    float-to-double v12, v5

    add-double/2addr v9, v12

    sub-double/2addr v3, v9

    float-to-double v9, v2

    mul-double/2addr v3, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_5

    .line 3524
    :cond_c
    iget-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    float-to-double v9, v5

    sub-double/2addr v3, v9

    float-to-double v9, v2

    mul-double/2addr v3, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    .line 3526
    :goto_5
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    if-gez v2, :cond_d

    const/4 v2, 0x0

    .line 3527
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    .line 3530
    :goto_6
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto/16 :goto_19

    :cond_e
    move/from16 v16, v4

    goto/16 :goto_19

    :cond_f
    move/from16 v16, v4

    if-eqz v5, :cond_10

    .line 3536
    iget-wide v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v2, v2

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    div-float/2addr v3, v12

    sub-float/2addr v2, v3

    .line 3537
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v12

    sub-float/2addr v2, v3

    .line 3538
    iget-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v3, v3

    goto :goto_7

    .line 3540
    :cond_10
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v2, v2

    iget-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    div-float/2addr v3, v12

    sub-float/2addr v2, v3

    .line 3541
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v3, v3

    iget-wide v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v4, v9

    sub-float/2addr v3, v4

    .line 3544
    :goto_7
    iget v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v7, v4

    mul-float/2addr v7, v11

    div-float/2addr v7, v12

    int-to-float v9, v4

    mul-float/2addr v9, v8

    div-float/2addr v9, v12

    int-to-float v4, v4

    .line 3546
    iget-object v10, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v10, v10, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v10

    iget v10, v10, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v10, v10

    div-float/2addr v4, v10

    mul-float/2addr v4, v2

    sub-float v10, v9, v4

    .line 3547
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_12

    cmpg-float v4, v4, v9

    if-gez v4, :cond_11

    .line 3549
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    div-float/2addr v4, v12

    add-float/2addr v2, v4

    goto :goto_8

    .line 3551
    :cond_11
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    div-float/2addr v4, v12

    sub-float/2addr v2, v4

    goto :goto_8

    .line 3554
    :cond_12
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    div-float/2addr v2, v12

    .line 3558
    :goto_8
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 3559
    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v7, v7, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v7

    iget v7, v7, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v7, v7

    div-float/2addr v7, v12

    mul-float v11, v7, v4

    .line 3560
    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v8, v7, v12

    mul-float/2addr v2, v4

    mul-float v7, v3, v4

    .line 3564
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3565
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-ne v3, v6, :cond_14

    if-eqz v5, :cond_13

    .line 3567
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-double v5, v3

    iget-wide v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v3, v3

    div-float/2addr v3, v12

    float-to-double v12, v3

    add-double/2addr v9, v12

    sub-double/2addr v5, v9

    float-to-double v3, v4

    mul-double/2addr v5, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_9

    .line 3569
    :cond_13
    iget-wide v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v3, v3

    div-float/2addr v3, v12

    float-to-double v9, v3

    sub-double/2addr v5, v9

    float-to-double v3, v4

    mul-double/2addr v5, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    .line 3571
    :goto_9
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    if-gez v3, :cond_16

    const/4 v3, 0x0

    .line 3572
    iput v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_b

    :cond_14
    if-eqz v5, :cond_15

    .line 3576
    iget-wide v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v3, v3

    div-float/2addr v3, v12

    float-to-double v9, v3

    sub-double/2addr v5, v9

    float-to-double v3, v4

    mul-double/2addr v5, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    neg-int v3, v3

    iput v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_a

    .line 3578
    :cond_15
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-double v5, v3

    iget-wide v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v3, v3

    div-float/2addr v3, v12

    float-to-double v12, v3

    add-double/2addr v9, v12

    sub-double/2addr v5, v9

    float-to-double v3, v4

    mul-double/2addr v5, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    neg-int v3, v3

    iput v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    .line 3580
    :goto_a
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    if-lez v3, :cond_16

    const/4 v3, 0x0

    .line 3581
    iput v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_b

    :cond_16
    const/4 v3, 0x0

    .line 3584
    :goto_b
    iput v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    :cond_17
    move v6, v2

    goto/16 :goto_19

    :cond_18
    :goto_c
    move/from16 v16, v4

    .line 3354
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8800(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v2

    const/16 v3, 0x5a

    if-eqz v2, :cond_1b

    .line 3355
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v4

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0x168

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_19

    goto :goto_d

    :cond_19
    const/4 v2, 0x0

    goto :goto_e

    :cond_1a
    :goto_d
    const/4 v2, 0x1

    goto :goto_e

    .line 3358
    :cond_1b
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8600(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v4

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v3, :cond_19

    goto :goto_d

    .line 3360
    :goto_e
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-eq v3, v7, :cond_24

    if-eq v3, v6, :cond_24

    if-eqz v2, :cond_1c

    .line 3365
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v3, v3

    iget-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    .line 3366
    iget v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    .line 3367
    iget-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v4, v4

    goto :goto_f

    .line 3369
    :cond_1c
    iget-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v3, v3

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v4, v4

    mul-float/2addr v4, v11

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    .line 3370
    iget v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v4, v4

    iget-wide v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v5, v5

    sub-float/2addr v4, v5

    .line 3373
    :goto_f
    iget v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v6, v5

    mul-float/2addr v6, v11

    div-float/2addr v6, v12

    int-to-float v7, v5

    mul-float/2addr v7, v8

    div-float/2addr v7, v12

    int-to-float v5, v5

    .line 3375
    iget-object v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v9, v9, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v9

    iget v9, v9, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v9, v9

    div-float/2addr v5, v9

    mul-float/2addr v5, v3

    sub-float v9, v7, v5

    .line 3376
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1e

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1d

    .line 3378
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    div-float/2addr v5, v12

    add-float/2addr v3, v5

    goto :goto_10

    .line 3380
    :cond_1d
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    div-float/2addr v5, v12

    sub-float/2addr v3, v5

    goto :goto_10

    .line 3383
    :cond_1e
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    div-float/2addr v3, v12

    .line 3386
    :goto_10
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3387
    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v6

    iget v6, v6, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v6, v6

    div-float/2addr v6, v12

    mul-float/2addr v6, v5

    .line 3388
    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v12

    mul-float/2addr v3, v5

    mul-float/2addr v4, v5

    .line 3392
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 3393
    iget v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_20

    if-eqz v2, :cond_1f

    .line 3395
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-double v8, v2

    iget-wide v10, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-double v12, v2

    add-double/2addr v10, v12

    sub-double/2addr v8, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_11

    .line 3397
    :cond_1f
    iget-wide v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-double v10, v2

    sub-double/2addr v8, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    .line 3399
    :goto_11
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    if-gez v2, :cond_22

    const/4 v2, 0x0

    .line 3400
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_13

    :cond_20
    if-eqz v2, :cond_21

    .line 3404
    iget-wide v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-double v10, v2

    sub-double/2addr v8, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    neg-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_12

    .line 3406
    :cond_21
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-double v8, v2

    iget-wide v10, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-double v12, v2

    add-double/2addr v10, v12

    sub-double/2addr v8, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    neg-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    .line 3408
    :goto_12
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    if-lez v2, :cond_22

    const/4 v2, 0x0

    .line 3409
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_13

    :cond_22
    const/4 v2, 0x0

    .line 3412
    :goto_13
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    :cond_23
    move v11, v6

    move v8, v7

    move v6, v3

    move v7, v4

    goto/16 :goto_19

    :cond_24
    if-eqz v2, :cond_25

    .line 3418
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v3, v3

    iget-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v4, v4

    sub-float/2addr v3, v4

    .line 3419
    iget-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v4, v4

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    div-float/2addr v5, v12

    sub-float/2addr v4, v5

    .line 3420
    iget v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v6

    iget v6, v6, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    goto :goto_14

    .line 3422
    :cond_25
    iget-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v3, v3

    .line 3423
    iget v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v4, v4

    iget-wide v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    :goto_14
    div-float/2addr v5, v12

    sub-float/2addr v4, v5

    .line 3426
    iget v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v6, v5

    mul-float/2addr v6, v11

    div-float/2addr v6, v12

    int-to-float v9, v5

    mul-float/2addr v9, v8

    div-float/2addr v9, v12

    int-to-float v5, v5

    .line 3428
    iget-object v10, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v10, v10, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v10}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v10

    iget v10, v10, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    mul-float/2addr v5, v4

    sub-float v10, v9, v5

    .line 3429
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v6, v6, v10

    if-gez v6, :cond_27

    cmpg-float v5, v5, v9

    if-gez v5, :cond_26

    .line 3431
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    div-float/2addr v5, v12

    add-float/2addr v4, v5

    goto :goto_15

    .line 3433
    :cond_26
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v11

    div-float/2addr v5, v12

    sub-float/2addr v4, v5

    goto :goto_15

    .line 3436
    :cond_27
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    div-float/2addr v4, v12

    .line 3439
    :goto_15
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3440
    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v6

    iget v6, v6, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v6, v6

    div-float/2addr v6, v12

    mul-float/2addr v6, v5

    .line 3441
    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v12

    mul-float/2addr v3, v5

    mul-float/2addr v4, v5

    .line 3445
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 3446
    iget v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-ne v9, v7, :cond_29

    if-eqz v2, :cond_28

    .line 3448
    iget-wide v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-double v11, v2

    sub-double/2addr v9, v11

    float-to-double v11, v5

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v2, v9

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_16

    .line 3450
    :cond_28
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-double v9, v2

    iget-wide v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-double v11, v2

    add-double/2addr v13, v11

    sub-double/2addr v9, v13

    float-to-double v11, v5

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v2, v9

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    .line 3452
    :goto_16
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    if-gez v2, :cond_2b

    const/4 v2, 0x0

    .line 3453
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_18

    :cond_29
    if-eqz v2, :cond_2a

    .line 3457
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-double v9, v2

    iget-wide v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-double v11, v2

    add-double/2addr v13, v11

    sub-double/2addr v9, v13

    float-to-double v11, v5

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v2, v9

    neg-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_17

    .line 3459
    :cond_2a
    iget-wide v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-double v11, v2

    sub-double/2addr v9, v11

    float-to-double v11, v5

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v2, v9

    neg-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    .line 3461
    :goto_17
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    if-lez v2, :cond_2b

    const/4 v2, 0x0

    .line 3462
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_18

    :cond_2b
    const/4 v2, 0x0

    .line 3465
    :goto_18
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    :cond_2c
    move v7, v4

    move v11, v8

    move v8, v6

    move v6, v3

    .line 3590
    :goto_19
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->frame_rect:Landroid/graphics/RectF;

    int-to-float v1, v1

    add-float/2addr v1, v6

    sub-float v2, v1, v8

    move/from16 v3, v16

    int-to-float v3, v3

    add-float/2addr v3, v7

    sub-float v4, v3, v11

    add-float/2addr v1, v8

    add-float/2addr v3, v11

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public detect(DD)I
    .locals 4

    .line 3204
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->count:J

    .line 3205
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_x:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 3206
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->base_x:D

    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_x:D

    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    goto :goto_0

    .line 3208
    :cond_0
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_x:D

    .line 3209
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    .line 3211
    :goto_0
    iget-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    cmpl-double p1, p1, v2

    if-nez p1, :cond_1

    iget-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_y:D

    cmpl-double p1, p1, v2

    if-nez p1, :cond_1

    .line 3212
    iput-wide p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->base_y:D

    iput-wide p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_y:D

    iput-wide p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    goto :goto_1

    .line 3214
    :cond_1
    iget-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_y:D

    .line 3215
    iput-wide p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    .line 3218
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->isReverse()Z

    move-result p1

    const/4 p2, -0x2

    if-eqz p1, :cond_2

    return p2

    .line 3221
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    return p0

    .line 3224
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 3227
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->checkSpeed()I

    move-result p1

    .line 3228
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->updateFrame()Z

    move-result p0

    if-nez p0, :cond_5

    return p2

    :cond_5
    return p1
.end method

.method public getFrameRect()Landroid/graphics/RectF;
    .locals 0

    .line 3243
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->frame_rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getPreviewCenteringMarginLeft()I
    .locals 0

    .line 3235
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    return p0
.end method

.method public getPreviewCenteringMarginTop()I
    .locals 0

    .line 3239
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    return p0
.end method

.method public isEnableTvAnalysis()Z
    .locals 7

    .line 3247
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->ui_control_mode:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 3248
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 3252
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    sub-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    cmpl-double p0, v0, v5

    if-lez p0, :cond_0

    move v3, v4

    :cond_0
    return v3

    .line 3255
    :cond_1
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    sub-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    cmpl-double p0, v0, v5

    if-lez p0, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 3257
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->ui_control_mode:I

    if-ne v0, v2, :cond_7

    .line 3258
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 3259
    :try_start_0
    iget v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-eq v5, v2, :cond_5

    if-eq v5, v1, :cond_5

    .line 3263
    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    sub-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    cmpl-double p0, v1, v5

    if-lez p0, :cond_4

    move v3, v4

    :cond_4
    monitor-exit v0

    return v3

    .line 3266
    :cond_5
    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    sub-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    cmpl-double p0, v1, v5

    if-lez p0, :cond_6

    move v3, v4

    :cond_6
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    .line 3268
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3271
    :cond_7
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 3272
    :try_start_1
    iget v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-eq v5, v2, :cond_9

    if-eq v5, v1, :cond_9

    .line 3276
    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    sub-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    cmpl-double p0, v1, v5

    if-lez p0, :cond_8

    move v3, v4

    :cond_8
    monitor-exit v0

    return v3

    .line 3279
    :cond_9
    iget-wide v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    sub-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    cmpl-double p0, v1, v5

    if-lez p0, :cond_a

    move v3, v4

    :cond_a
    monitor-exit v0

    return v3

    :catchall_1
    move-exception p0

    .line 3281
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public notifyTvAnalyzed()V
    .locals 2

    .line 3287
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3291
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    goto :goto_0

    .line 3295
    :cond_0
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    .line 3298
    :goto_0
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    return-void
.end method
