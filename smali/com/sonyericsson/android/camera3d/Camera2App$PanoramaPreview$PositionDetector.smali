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

    move/from16 v2, p3

    move/from16 v3, p4

    .line 3118
    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 3108
    iput-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_rect:Landroid/graphics/RectF;

    .line 3111
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->frame_rect:Landroid/graphics/RectF;

    .line 3115
    new-instance v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;

    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-direct {v5, v6}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)V

    iput-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->mDiffManager:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;

    .line 3116
    iput-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    const-wide/16 v4, 0x0

    .line 3119
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->count:J

    move/from16 v4, p2

    .line 3120
    iput v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    .line 3121
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    .line 3122
    iput v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    const/4 v4, 0x1

    .line 3123
    iput-boolean v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reset_idle_timer:Z

    const/4 v4, 0x0

    .line 3124
    iput-boolean v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->pre_is_reverse:Z

    .line 3125
    iput v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_count:I

    iput v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_count:I

    const-wide/16 v4, 0x0

    .line 3126
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_y:D

    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_x:D

    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    const v6, -0x1869f

    .line 3127
    iput v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    iput v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    .line 3130
    iget v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const-wide v9, 0x3f80624dd2f1a9fcL    # 0.008

    const-wide v11, 0x3f50624dd2f1a9fcL    # 0.001

    const v13, 0x3ca3d70a    # 0.02f

    const v14, 0x3f333333    # 0.7f

    const v15, 0x3c23d70a    # 0.01f

    const/16 v7, 0xb4

    const/16 v8, 0x5a

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_8

    .line 3174
    :pswitch_0
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    add-int/2addr v2, v6

    rem-int/lit16 v2, v2, 0x168

    if-eq v2, v8, :cond_1

    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v7, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v1, v3

    .line 3177
    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    goto :goto_1

    .line 3175
    :cond_1
    :goto_0
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    :goto_1
    int-to-float v1, v3

    mul-float/2addr v15, v1

    float-to-double v4, v15

    .line 3179
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres:D

    mul-float/2addr v14, v1

    float-to-double v4, v14

    .line 3180
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres2:D

    mul-float/2addr v1, v13

    float-to-double v1, v1

    .line 3181
    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_thres:D

    int-to-double v1, v3

    mul-double/2addr v11, v1

    .line 3182
    iput-wide v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_thres:D

    mul-double/2addr v9, v1

    .line 3183
    iput-wide v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_thres:D

    const-wide v3, 0x3f60624dd2f1a9fcL    # 0.002

    mul-double v4, v1, v3

    goto/16 :goto_8

    .line 3160
    :pswitch_1
    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    add-int/2addr v2, v6

    rem-int/lit16 v2, v2, 0x168

    if-eq v2, v8, :cond_3

    iget-object v2, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v7, :cond_2

    goto :goto_2

    .line 3163
    :cond_2
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    goto :goto_3

    :cond_3
    :goto_2
    int-to-double v1, v3

    .line 3161
    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    :goto_3
    int-to-float v1, v3

    mul-float/2addr v15, v1

    float-to-double v4, v15

    .line 3165
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres:D

    mul-float/2addr v14, v1

    float-to-double v4, v14

    .line 3166
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres2:D

    mul-float/2addr v1, v13

    float-to-double v1, v1

    .line 3167
    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_thres:D

    int-to-double v1, v3

    mul-double/2addr v11, v1

    .line 3168
    iput-wide v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_thres:D

    mul-double/2addr v9, v1

    .line 3169
    iput-wide v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_thres:D

    const-wide v3, 0x3f60624dd2f1a9fcL    # 0.002

    mul-double v4, v1, v3

    goto/16 :goto_8

    .line 3146
    :pswitch_2
    iget-object v3, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    add-int/2addr v3, v6

    rem-int/lit16 v3, v3, 0x168

    if-eq v3, v8, :cond_5

    iget-object v3, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    add-int/2addr v3, v1

    rem-int/lit16 v3, v3, 0x168

    if-ne v3, v7, :cond_4

    goto :goto_4

    :cond_4
    int-to-double v3, v2

    .line 3149
    iput-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    goto :goto_5

    .line 3147
    :cond_5
    :goto_4
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    :goto_5
    int-to-float v1, v2

    mul-float/2addr v15, v1

    float-to-double v3, v15

    .line 3151
    iput-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres:D

    mul-float/2addr v14, v1

    float-to-double v3, v14

    .line 3152
    iput-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres2:D

    mul-float/2addr v1, v13

    float-to-double v3, v1

    .line 3153
    iput-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_thres:D

    int-to-double v1, v2

    mul-double/2addr v11, v1

    .line 3154
    iput-wide v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_thres:D

    mul-double/2addr v9, v1

    .line 3155
    iput-wide v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_thres:D

    const-wide v3, 0x3f60624dd2f1a9fcL    # 0.002

    mul-double v4, v1, v3

    goto :goto_8

    .line 3132
    :pswitch_3
    iget-object v3, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v6, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v6

    add-int/2addr v3, v6

    rem-int/lit16 v3, v3, 0x168

    if-eq v3, v8, :cond_7

    iget-object v3, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v1

    add-int/2addr v3, v1

    rem-int/lit16 v3, v3, 0x168

    if-ne v3, v7, :cond_6

    goto :goto_6

    .line 3135
    :cond_6
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    goto :goto_7

    :cond_7
    :goto_6
    int-to-double v3, v2

    .line 3133
    iput-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    :goto_7
    int-to-float v1, v2

    mul-float/2addr v15, v1

    float-to-double v3, v15

    .line 3137
    iput-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres:D

    mul-float/2addr v14, v1

    float-to-double v3, v14

    .line 3138
    iput-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres2:D

    mul-float/2addr v1, v13

    float-to-double v3, v1

    .line 3139
    iput-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_thres:D

    int-to-double v1, v2

    mul-double/2addr v11, v1

    .line 3140
    iput-wide v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_thres:D

    mul-double/2addr v9, v1

    .line 3141
    iput-wide v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_thres:D

    const-wide v3, 0x3f60624dd2f1a9fcL    # 0.002

    mul-double v4, v1, v3

    .line 3190
    :goto_8
    iput-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    .line 3192
    iget-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkSpeed()I
    .locals 6

    .line 3594
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    packed-switch v0, :pswitch_data_0

    .line 3598
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    .line 3599
    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_x:D

    goto :goto_0

    .line 3603
    :pswitch_0
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    .line 3604
    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_y:D

    :goto_0
    sub-double/2addr v0, v2

    .line 3608
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 3611
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->mDiffManager:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;->add(D)V

    const-wide/16 v0, 0xf

    .line 3612
    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->count:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 3613
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->mDiffManager:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;->getDiff()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_thres:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    .line 3615
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->mDiffManager:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$DiffManager;->getDiff()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_thres:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 3619
    :goto_1
    iget v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_count:I

    if-lez v2, :cond_2

    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_slow_count:I

    .line 3620
    :cond_2
    iget v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_count:I

    if-lez v2, :cond_3

    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->too_fast_count:I

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isComplete()Z
    .locals 11

    .line 3668
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    .line 3672
    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    .line 3673
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    .line 3674
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11800(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I

    move-result v4

    div-int/2addr v4, v1

    goto :goto_0

    .line 3678
    :pswitch_0
    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    .line 3679
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    .line 3680
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11900(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I

    move-result v4

    div-int/2addr v4, v1

    .line 3684
    :goto_0
    iget v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v8, :cond_6

    if-eq v5, v6, :cond_6

    .line 3688
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v9, v9, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    add-int/2addr v5, v9

    rem-int/lit16 v5, v5, 0x168

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p0

    add-int/2addr v5, p0

    rem-int/lit16 v5, v5, 0x168

    const/16 p0, 0x10e

    if-ne v5, p0, :cond_0

    goto :goto_1

    :cond_0
    int-to-double v5, v4

    cmpg-double p0, v2, v5

    if-gez p0, :cond_1

    const-string v0, "Camera2App"

    .line 3695
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "isComplete cur=%f half_size=%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-gez p0, :cond_2

    move v7, v8

    :cond_2
    return v7

    :cond_3
    :goto_1
    sub-int p0, v0, v4

    int-to-double v9, p0

    cmpl-double p0, v2, v9

    if-lez p0, :cond_4

    const-string v5, "Camera2App"

    .line 3690
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "isComplete cur=%f max=%d half_size=%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v9, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-lez p0, :cond_5

    move v7, v8

    :cond_5
    return v7

    .line 3701
    :cond_6
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v9, v9, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    add-int/2addr v5, v9

    rem-int/lit16 v5, v5, 0x168

    const/16 v9, 0x5a

    if-eq v5, v9, :cond_a

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p0

    add-int/2addr v5, p0

    rem-int/lit16 v5, v5, 0x168

    const/16 p0, 0xb4

    if-ne v5, p0, :cond_7

    goto :goto_2

    :cond_7
    int-to-double v5, v4

    cmpg-double p0, v2, v5

    if-gez p0, :cond_8

    const-string v0, "Camera2App"

    .line 3708
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "isComplete cur=%f half_size=%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-gez p0, :cond_9

    move v7, v8

    :cond_9
    return v7

    :cond_a
    :goto_2
    sub-int p0, v0, v4

    int-to-double v9, p0

    cmpl-double p0, v2, v9

    if-lez p0, :cond_b

    const-string v5, "Camera2App"

    .line 3703
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "isComplete cur=%f max=%d half_size=%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v9, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-lez p0, :cond_c

    move v7, v8

    :cond_c
    return v7

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isIdle()Z
    .locals 11

    .line 3643
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3644
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reset_idle_timer:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3645
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reset_idle_timer:Z

    .line 3646
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_start_time:J

    .line 3648
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_rect:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    .line 3649
    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_thres:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 3650
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

    :cond_1
    const-wide v4, 0xb2d05e00L

    .line 3653
    iget-wide v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_start_time:J

    sub-long/2addr v0, v6

    cmp-long v0, v4, v0

    const/4 v1, 0x1

    if-gez v0, :cond_2

    return v1

    .line 3657
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_rect:Landroid/graphics/RectF;

    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v2, v4

    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3658
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reset_idle_timer:Z

    const/4 v0, 0x0

    .line 3659
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->idle_rect:Landroid/graphics/RectF;

    :cond_3
    return v3
.end method

.method private isReverse()Z
    .locals 12

    .line 3720
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3724
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    .line 3725
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_x:D

    .line 3726
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    .line 3727
    iget-wide v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->base_y:D

    iget-wide v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    iget-wide v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->base_y:D

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    :goto_0
    move v7, v0

    move v0, v2

    goto :goto_1

    .line 3733
    :pswitch_0
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    .line 3734
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_y:D

    .line 3735
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    .line 3736
    iget-wide v7, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->base_x:D

    iget-wide v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    iget-wide v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->base_x:D

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    return v2

    .line 3746
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const/4 v8, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v8, :cond_3

    .line 3750
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v9, v9, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    add-int/2addr v0, v9

    rem-int/lit16 v0, v0, 0x168

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v9, v9, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    add-int/2addr v0, v9

    rem-int/lit16 v0, v0, 0x168

    const/16 v9, 0x10e

    if-ne v0, v9, :cond_4

    :cond_2
    :goto_2
    move v0, v1

    goto :goto_3

    .line 3756
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v9, v9, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    add-int/2addr v0, v9

    rem-int/lit16 v0, v0, 0x168

    const/16 v9, 0x5a

    if-eq v0, v9, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v9, v9, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v9}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v9

    add-int/2addr v0, v9

    rem-int/lit16 v0, v0, 0x168

    const/16 v9, 0xb4

    if-ne v0, v9, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_3
    if-eqz v0, :cond_8

    sub-double/2addr v5, v3

    .line 3762
    iget-wide v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres2:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_5

    return v2

    .line 3766
    :cond_5
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    cmpg-double v5, v3, v5

    if-gez v5, :cond_6

    .line 3767
    iput-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    :cond_6
    int-to-double v5, v7

    cmpl-double v5, v3, v5

    if-lez v5, :cond_7

    :goto_4
    move v5, v2

    goto :goto_5

    .line 3771
    :cond_7
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    sub-double v5, v3, v5

    iget-wide v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_c

    goto :goto_4

    :cond_8
    sub-double v5, v3, v5

    .line 3776
    iget-wide v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres2:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_9

    return v2

    .line 3780
    :cond_9
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    cmpl-double v5, v3, v5

    if-lez v5, :cond_a

    .line 3781
    iput-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    :cond_a
    const-wide/16 v5, 0x0

    cmpg-double v5, v3, v5

    if-gez v5, :cond_b

    goto :goto_4

    .line 3785
    :cond_b
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    sub-double/2addr v5, v3

    iget-wide v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_thres:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_c

    goto :goto_4

    :cond_c
    move v5, v1

    .line 3791
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    if-eqz v5, :cond_12

    .line 3794
    iget v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    packed-switch v6, :pswitch_data_1

    .line 3798
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11800(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    goto :goto_6

    .line 3802
    :pswitch_1
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->access$11900(Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 3806
    :goto_6
    iget v11, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-eq v11, v2, :cond_e

    if-eq v11, v8, :cond_e

    if-eqz v0, :cond_d

    add-int/2addr v7, v6

    int-to-double v6, v7

    cmpl-double v0, v3, v6

    if-lez v0, :cond_10

    return v2

    :cond_d
    neg-int v0, v6

    int-to-double v6, v0

    cmpg-double v0, v3, v6

    if-gez v0, :cond_10

    return v2

    :cond_e
    if-eqz v0, :cond_f

    add-int/2addr v7, v6

    int-to-double v6, v7

    cmpl-double v0, v3, v6

    if-lez v0, :cond_10

    return v2

    :cond_f
    neg-int v0, v6

    int-to-double v6, v0

    cmpg-double v0, v3, v6

    if-gez v0, :cond_10

    return v2

    .line 3838
    :cond_10
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->pre_is_reverse:Z

    if-eqz v0, :cond_11

    const-wide/32 v3, 0xbebc200

    .line 3839
    iget-wide v6, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_start_time:J

    sub-long/2addr v9, v6

    cmp-long v0, v3, v9

    if-gez v0, :cond_12

    return v2

    .line 3843
    :cond_11
    iput-wide v9, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->reverse_start_time:J

    .line 3846
    :cond_12
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->pre_is_reverse:Z

    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateFrame()Z
    .locals 18

    move-object/from16 v0, p0

    .line 3323
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$10700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 3326
    :cond_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 3327
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    .line 3328
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11700(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 3329
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    .line 3330
    iput-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    return v2

    .line 3333
    :cond_1
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v1, v4, :cond_2

    return v3

    .line 3342
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 3343
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 3345
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v5, :cond_16

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    const/16 v11, 0xb4

    if-ne v5, v11, :cond_3

    goto/16 :goto_c

    .line 3464
    :cond_3
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3465
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v12, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v12, v12, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v12

    add-int/2addr v5, v12

    rem-int/lit16 v5, v5, 0x168

    if-eq v5, v11, :cond_5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v5, v3

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v2

    goto :goto_1

    .line 3468
    :cond_6
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v12, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v12, v12, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v12

    add-int/2addr v5, v12

    rem-int/lit16 v5, v5, 0x168

    if-ne v5, v11, :cond_4

    goto :goto_0

    .line 3470
    :goto_1
    iget v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    packed-switch v11, :pswitch_data_0

    move/from16 v16, v4

    if-eqz v5, :cond_f

    .line 3475
    iget-wide v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v2, v2

    .line 3476
    iget-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v3, v3

    iget v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    div-float/2addr v4, v10

    sub-float/2addr v3, v4

    .line 3477
    iget v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v7, v7, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v7

    iget v7, v7, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    div-float/2addr v4, v10

    sub-float/2addr v3, v4

    goto/16 :goto_7

    :pswitch_0
    if-eqz v5, :cond_7

    .line 3529
    iget-wide v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v11, v11

    iget-object v12, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v12, v12, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v12

    iget v12, v12, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    div-float/2addr v12, v10

    sub-float/2addr v11, v12

    .line 3530
    iget v12, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v13, v13, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v13}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v13

    iget v13, v13, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v10

    sub-float/2addr v11, v12

    .line 3531
    iget-wide v12, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v12, v12

    goto :goto_2

    .line 3533
    :cond_7
    iget v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v11, v11

    iget-wide v12, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v12, v12

    sub-float/2addr v11, v12

    iget-object v12, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v12, v12, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v12}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v12

    iget v12, v12, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    div-float/2addr v12, v10

    sub-float/2addr v11, v12

    .line 3534
    iget v12, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v12, v12

    iget-wide v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v13, v13

    sub-float/2addr v12, v13

    .line 3537
    :goto_2
    iget v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v13, v13

    mul-float/2addr v13, v9

    div-float/2addr v13, v10

    .line 3538
    iget v14, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v14, v14

    mul-float/2addr v14, v6

    div-float/2addr v14, v10

    .line 3539
    iget v15, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v15, v15

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    div-float/2addr v15, v2

    mul-float/2addr v15, v11

    sub-float v2, v14, v15

    .line 3540
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v13, v2

    if-gez v2, :cond_9

    cmpg-float v2, v15, v14

    if-gez v2, :cond_8

    .line 3542
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    mul-float/2addr v2, v9

    div-float/2addr v2, v10

    add-float/2addr v11, v2

    goto :goto_3

    .line 3544
    :cond_8
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    mul-float/2addr v2, v9

    div-float/2addr v2, v10

    sub-float/2addr v11, v2

    goto :goto_3

    .line 3547
    :cond_9
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    div-float v11, v2, v10

    .line 3551
    :goto_3
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    .line 3552
    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v6

    iget v6, v6, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v6, v6

    div-float/2addr v6, v10

    mul-float/2addr v6, v2

    .line 3553
    iget-object v9, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float/2addr v11, v2

    mul-float/2addr v12, v2

    .line 3557
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11600()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 3558
    iget v13, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_c

    if-eqz v5, :cond_a

    .line 3560
    iget v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-double v13, v5

    move/from16 v16, v4

    iget-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    float-to-double v7, v5

    add-double/2addr v3, v7

    sub-double/2addr v13, v3

    float-to-double v2, v2

    mul-double/2addr v13, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_4

    :cond_a
    move/from16 v16, v4

    .line 3562
    iget-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    float-to-double v7, v5

    sub-double/2addr v3, v7

    float-to-double v7, v2

    mul-double/2addr v3, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    .line 3564
    :goto_4
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    if-gez v2, :cond_b

    const/4 v2, 0x0

    .line 3565
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    goto :goto_6

    :cond_c
    move/from16 v16, v4

    if-eqz v5, :cond_d

    .line 3569
    iget-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    float-to-double v7, v5

    sub-double/2addr v3, v7

    float-to-double v7, v2

    mul-double/2addr v3, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    neg-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_5

    .line 3571
    :cond_d
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-double v3, v3

    iget-wide v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    float-to-double v13, v5

    add-double/2addr v7, v13

    sub-double/2addr v3, v7

    float-to-double v7, v2

    mul-double/2addr v3, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    neg-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    .line 3573
    :goto_5
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    if-lez v2, :cond_b

    const/4 v2, 0x0

    .line 3574
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    .line 3577
    :goto_6
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto/16 :goto_19

    :cond_e
    move/from16 v16, v4

    goto/16 :goto_19

    .line 3479
    :cond_f
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v2, v2

    iget-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v3, v3

    sub-float/2addr v2, v3

    .line 3480
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v3, v3

    iget-wide v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v4, v7

    sub-float/2addr v3, v4

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    div-float/2addr v4, v10

    sub-float/2addr v3, v4

    .line 3483
    :goto_7
    iget v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    div-float/2addr v4, v10

    .line 3484
    iget v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    div-float/2addr v7, v10

    .line 3485
    iget v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v8, v8

    iget-object v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v11, v11, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v11

    iget v11, v11, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v11, v11

    div-float/2addr v8, v11

    mul-float/2addr v8, v3

    sub-float v11, v7, v8

    .line 3486
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v4, v4, v11

    if-gez v4, :cond_11

    cmpg-float v4, v8, v7

    if-gez v4, :cond_10

    .line 3488
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    goto :goto_8

    .line 3490
    :cond_10
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    div-float/2addr v4, v10

    sub-float/2addr v3, v4

    goto :goto_8

    .line 3493
    :cond_11
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    div-float/2addr v3, v10

    .line 3497
    :goto_8
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 3498
    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v6

    iget v6, v6, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v6, v6

    div-float/2addr v6, v10

    mul-float v9, v6, v4

    .line 3499
    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    mul-float v11, v2, v4

    mul-float v12, v3, v4

    .line 3503
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11600()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3504
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    if-nez v2, :cond_14

    if-eqz v5, :cond_12

    .line 3506
    iget-wide v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    float-to-double v7, v5

    sub-double/2addr v2, v7

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    neg-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_9

    .line 3508
    :cond_12
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-double v2, v2

    iget-wide v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    float-to-double v13, v5

    add-double/2addr v7, v13

    sub-double/2addr v2, v7

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    neg-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    .line 3510
    :goto_9
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    if-lez v2, :cond_13

    const/4 v2, 0x0

    .line 3511
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_b

    :cond_13
    const/4 v2, 0x0

    goto :goto_b

    :cond_14
    if-eqz v5, :cond_15

    .line 3515
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-double v2, v2

    iget-wide v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    float-to-double v13, v5

    add-double/2addr v7, v13

    sub-double/2addr v2, v7

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_a

    .line 3517
    :cond_15
    iget-wide v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    float-to-double v7, v5

    sub-double/2addr v2, v7

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    .line 3519
    :goto_a
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    if-gez v2, :cond_13

    const/4 v2, 0x0

    .line 3520
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    .line 3523
    :goto_b
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto/16 :goto_19

    :cond_16
    :goto_c
    move/from16 v16, v4

    .line 3347
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9200(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v2

    const/16 v3, 0x5a

    if-eqz v2, :cond_19

    .line 3348
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v4

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0x168

    if-eq v2, v3, :cond_18

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_17

    goto :goto_d

    :cond_17
    const/4 v2, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    const/4 v2, 0x1

    goto :goto_e

    .line 3351
    :cond_19
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->output_rotation:I

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$9000(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v4

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0x168

    if-ne v2, v3, :cond_17

    goto :goto_d

    .line 3353
    :goto_e
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    packed-switch v3, :pswitch_data_1

    if-eqz v2, :cond_22

    .line 3358
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

    mul-float/2addr v4, v9

    div-float/2addr v4, v10

    sub-float/2addr v3, v4

    .line 3359
    iget v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v10

    sub-float/2addr v3, v4

    .line 3360
    iget-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v4, v4

    goto/16 :goto_14

    :pswitch_1
    if-eqz v2, :cond_1a

    .line 3411
    iget v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v3, v3

    iget-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v4, v4

    sub-float/2addr v3, v4

    .line 3412
    iget-wide v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v4, v4

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    .line 3413
    iget v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v7, v7, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v7}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v7

    iget v7, v7, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    goto :goto_f

    .line 3415
    :cond_1a
    iget-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v3, v3

    .line 3416
    iget v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v4, v4

    iget-wide v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v5, v7

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    .line 3419
    :goto_f
    iget v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    div-float/2addr v5, v10

    .line 3420
    iget v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    div-float/2addr v7, v10

    .line 3421
    iget v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v8, v8

    iget-object v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v11, v11, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v11

    iget v11, v11, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v11, v11

    div-float/2addr v8, v11

    mul-float/2addr v8, v4

    sub-float v11, v7, v8

    .line 3422
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v5, v5, v11

    if-gez v5, :cond_1c

    cmpg-float v5, v8, v7

    if-gez v5, :cond_1b

    .line 3424
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    div-float/2addr v5, v10

    add-float/2addr v4, v5

    goto :goto_10

    .line 3426
    :cond_1b
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    goto :goto_10

    .line 3429
    :cond_1c
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    div-float/2addr v4, v10

    .line 3432
    :goto_10
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3433
    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v6

    iget v6, v6, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v6, v6

    div-float/2addr v6, v10

    mul-float/2addr v6, v5

    .line 3434
    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    mul-float/2addr v3, v5

    mul-float/2addr v4, v5

    .line 3438
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11600()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 3439
    iget v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1f

    if-eqz v2, :cond_1d

    .line 3441
    iget-wide v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    float-to-double v10, v2

    sub-double/2addr v8, v10

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_11

    .line 3443
    :cond_1d
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-double v8, v2

    iget-wide v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    float-to-double v13, v2

    add-double/2addr v11, v13

    sub-double/2addr v8, v11

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    .line 3445
    :goto_11
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    if-gez v2, :cond_1e

    const/4 v2, 0x0

    .line 3446
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_13

    :cond_1e
    const/4 v2, 0x0

    goto :goto_13

    :cond_1f
    if-eqz v2, :cond_20

    .line 3450
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-double v8, v2

    iget-wide v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    float-to-double v13, v2

    add-double/2addr v11, v13

    sub-double/2addr v8, v11

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    neg-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    goto :goto_12

    .line 3452
    :cond_20
    iget-wide v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v2, v2

    div-float/2addr v2, v10

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

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    .line 3454
    :goto_12
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    if-lez v2, :cond_1e

    const/4 v2, 0x0

    .line 3455
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    .line 3458
    :goto_13
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    :cond_21
    move v11, v3

    move v12, v4

    move v9, v6

    move v6, v7

    goto/16 :goto_19

    .line 3362
    :cond_22
    iget-wide v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    double-to-float v3, v3

    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v4, v4, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v4

    iget v4, v4, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    div-float/2addr v4, v10

    sub-float/2addr v3, v4

    .line 3363
    iget v4, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v4, v4

    iget-wide v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    double-to-float v5, v7

    sub-float/2addr v4, v5

    .line 3366
    :goto_14
    iget v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    div-float/2addr v5, v10

    .line 3367
    iget v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    div-float/2addr v7, v10

    .line 3368
    iget v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_height:I

    int-to-float v8, v8

    iget-object v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v11, v11, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v11}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v11

    iget v11, v11, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v11, v11

    div-float/2addr v8, v11

    mul-float/2addr v8, v3

    sub-float v11, v7, v8

    .line 3369
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v5, v5, v11

    if-gez v5, :cond_24

    cmpg-float v5, v8, v7

    if-gez v5, :cond_23

    .line 3371
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    div-float/2addr v5, v10

    add-float/2addr v3, v5

    goto :goto_15

    .line 3373
    :cond_23
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v5, v5, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v5

    iget v5, v5, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    div-float/2addr v5, v10

    sub-float/2addr v3, v5

    goto :goto_15

    .line 3376
    :cond_24
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v3

    iget v3, v3, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_height:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    div-float/2addr v3, v10

    .line 3379
    :goto_15
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3380
    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v6, v6, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v6}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v6

    iget v6, v6, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v6, v6

    div-float/2addr v6, v10

    mul-float/2addr v6, v5

    .line 3381
    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->preview_rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    mul-float/2addr v3, v5

    mul-float/2addr v4, v5

    .line 3385
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11600()Z

    move-result v8

    if-eqz v8, :cond_29

    .line 3386
    iget v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_27

    if-eqz v2, :cond_25

    .line 3388
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-double v8, v2

    iget-wide v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    float-to-double v13, v2

    add-double/2addr v11, v13

    sub-double/2addr v8, v11

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_16

    .line 3390
    :cond_25
    iget-wide v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v2, v2

    div-float/2addr v2, v10

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

    .line 3392
    :goto_16
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    if-gez v2, :cond_26

    const/4 v2, 0x0

    .line 3393
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    goto :goto_18

    :cond_26
    const/4 v2, 0x0

    goto :goto_18

    :cond_27
    if-eqz v2, :cond_28

    .line 3397
    iget-wide v8, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v2, v2

    div-float/2addr v2, v10

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

    goto :goto_17

    .line 3399
    :cond_28
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->output_width:I

    int-to-double v8, v2

    iget-wide v11, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->peak:D

    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4400(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;

    move-result-object v2

    iget v2, v2, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2$InitParam;->input_width:I

    int-to-float v2, v2

    div-float/2addr v2, v10

    float-to-double v13, v2

    add-double/2addr v11, v13

    sub-double/2addr v8, v11

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v2, v8

    neg-int v2, v2

    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    .line 3401
    :goto_17
    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    if-lez v2, :cond_26

    const/4 v2, 0x0

    .line 3402
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    .line 3405
    :goto_18
    iput v2, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    :cond_29
    move v11, v3

    move v12, v4

    move v9, v7

    .line 3583
    :cond_2a
    :goto_19
    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->frame_rect:Landroid/graphics/RectF;

    int-to-float v1, v1

    add-float/2addr v1, v11

    sub-float v2, v1, v9

    move/from16 v3, v16

    int-to-float v3, v3

    add-float/2addr v3, v12

    sub-float v4, v3, v6

    add-float/2addr v1, v9

    add-float/2addr v3, v6

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public detect(DD)I
    .locals 4

    .line 3197
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->count:J

    .line 3198
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_x:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 3199
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->base_x:D

    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_x:D

    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    goto :goto_0

    .line 3201
    :cond_0
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_x:D

    .line 3202
    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    .line 3204
    :goto_0
    iget-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    cmpl-double p1, p1, v2

    if-nez p1, :cond_1

    iget-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_y:D

    cmpl-double p1, p1, v2

    if-nez p1, :cond_1

    .line 3205
    iput-wide p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->base_y:D

    iput-wide p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_y:D

    iput-wide p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    goto :goto_1

    .line 3207
    :cond_1
    iget-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->prev_y:D

    .line 3208
    iput-wide p3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    .line 3211
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->isReverse()Z

    move-result p1

    const/4 p2, -0x2

    if-eqz p1, :cond_2

    return p2

    .line 3214
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    return p0

    .line 3217
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 3220
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->checkSpeed()I

    move-result p1

    .line 3221
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->updateFrame()Z

    move-result p0

    if-nez p0, :cond_5

    return p2

    :cond_5
    return p1
.end method

.method public getFrameRect()Landroid/graphics/RectF;
    .locals 0

    .line 3236
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->frame_rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getPreviewCenteringMarginLeft()I
    .locals 0

    .line 3228
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_left:I

    return p0
.end method

.method public getPreviewCenteringMarginTop()I
    .locals 0

    .line 3232
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->centering_margin_top:I

    return p0
.end method

.method public isEnableTvAnalysis()Z
    .locals 7

    .line 3240
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->ui_control_mode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3241
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    packed-switch v0, :pswitch_data_0

    .line 3245
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    cmpl-double p0, v3, v5

    if-lez p0, :cond_1

    move v1, v2

    goto :goto_0

    .line 3248
    :pswitch_0
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    cmpl-double p0, v3, v5

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v1

    .line 3250
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->this$1:Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/android/camera3d/InternalSettings;->ui_control_mode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 3251
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->CameraSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 3252
    :try_start_0
    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    packed-switch v3, :pswitch_data_1

    .line 3256
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    goto :goto_1

    .line 3259
    :pswitch_1
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    cmpl-double p0, v3, v5

    if-lez p0, :cond_3

    move v1, v2

    :cond_3
    monitor-exit v0

    return v1

    .line 3256
    :goto_1
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    cmpl-double p0, v3, v5

    if-lez p0, :cond_4

    move v1, v2

    :cond_4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 3261
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3264
    :cond_5
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConstants;->EngineSynchronizedObject:Ljava/lang/Object;

    monitor-enter v0

    .line 3265
    :try_start_1
    iget v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    packed-switch v3, :pswitch_data_2

    .line 3269
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    goto :goto_2

    .line 3272
    :pswitch_2
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    cmpl-double p0, v3, v5

    if-lez p0, :cond_6

    move v1, v2

    :cond_6
    monitor-exit v0

    return v1

    .line 3269
    :goto_2
    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analysis_thres:D

    cmpl-double p0, v3, v5

    if-lez p0, :cond_7

    move v1, v2

    :cond_7
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p0

    .line 3274
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public notifyTvAnalyzed()V
    .locals 2

    .line 3280
    iget v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->direction:I

    packed-switch v0, :pswitch_data_0

    .line 3284
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_x:D

    goto :goto_0

    .line 3288
    :pswitch_0
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->cur_y:D

    .line 3291
    :goto_0
    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview$PositionDetector;->tv_analyzed_pos:D

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
