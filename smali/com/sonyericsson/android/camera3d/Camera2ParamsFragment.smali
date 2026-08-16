.class public Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;
.super Landroidx/fragment/app/Fragment;
.source "Camera2ParamsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;,
        Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;,
        Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;
    }
.end annotation


# static fields
.field public static final AUTO:I = 0x0

.field private static final FPS_PARAM_TABLE:[Lcom/sonyericsson/android/camera3d/FpsParam;

.field private static final ISO_VALUE_TABLE:[I

.field private static final KEY_AEC:Ljava/lang/String; = "key_aec"

.field private static final KEY_AUTO:Ljava/lang/String; = "key_auto"

.field private static final KEY_FPS:Ljava/lang/String; = "key_fps"

.field private static final KEY_FPS_UPPER:Ljava/lang/String; = "key_fps_upper"

.field private static final KEY_ISO:Ljava/lang/String; = "key_iso"

.field private static final KEY_SHUTTER_SPEED:Ljava/lang/String; = "key_shutter_speed"

.field private static final KEY_TV:Ljava/lang/String; = "key_tv"

.field private static final LOG_TAG:Ljava/lang/String; = "Camera2App"

.field public static final MANUAL:I = 0x2

.field private static final ONE_SECONDS_IN_NANOSECONDS:Ljava/lang/Long;

.field private static final SHUTTER_SPEED_TABLE:[I

.field public static final TV:I = 0x1


# instance fields
.field private mAecSeekBar:Landroid/widget/SeekBar;

.field private mAecStepDenominator:I

.field private mAecStepNumerator:I

.field private final mAecValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoModeFpsParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera3d/FpsParam;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoModeFpsSeekBar:Landroid/widget/SeekBar;

.field private mAutoRadio:Landroid/widget/RadioButton;

.field private mEventHandler:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;

.field private final mFpsParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera3d/FpsParam;",
            ">;"
        }
    .end annotation
.end field

.field private mFpsSeekBar:Landroid/widget/SeekBar;

.field private final mFpsSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mISOValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsoSeekBar:Landroid/widget/SeekBar;

.field private mManualRadio:Landroid/widget/RadioButton;

.field private final mModeRadioChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mModeRadioGroup:Landroid/widget/RadioGroup;

.field private mSelectedMode:I

.field private mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

.field private final mSettingLocalValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;

.field private final mShutterSpeed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSsSeekBar:Landroid/widget/SeekBar;

.field private mTvRadio:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v0, 0xa

    .line 68
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->SHUTTER_SPEED_TABLE:[I

    const-wide/32 v0, 0x3b9aca00

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->ONE_SECONDS_IN_NANOSECONDS:Ljava/lang/Long;

    const/16 v1, 0xf

    .line 71
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->ISO_VALUE_TABLE:[I

    .line 73
    new-instance v2, Lcom/sonyericsson/android/camera3d/FpsParam;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/android/camera3d/FpsParam;-><init>(FLjava/lang/Long;)V

    new-instance v3, Lcom/sonyericsson/android/camera3d/FpsParam;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xf

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/high16 v4, 0x41700000    # 15.0f

    invoke-direct {v3, v4, v1}, Lcom/sonyericsson/android/camera3d/FpsParam;-><init>(FLjava/lang/Long;)V

    new-instance v4, Lcom/sonyericsson/android/camera3d/FpsParam;

    const-wide/32 v5, 0x27c6b2d

    .line 76
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v5, 0x41bfd70a    # 23.98f

    invoke-direct {v4, v5, v1}, Lcom/sonyericsson/android/camera3d/FpsParam;-><init>(FLjava/lang/Long;)V

    new-instance v5, Lcom/sonyericsson/android/camera3d/FpsParam;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x18

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-direct {v5, v6, v1}, Lcom/sonyericsson/android/camera3d/FpsParam;-><init>(FLjava/lang/Long;)V

    new-instance v6, Lcom/sonyericsson/android/camera3d/FpsParam;

    const-wide/32 v7, 0x1fd228a

    .line 78
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v7, 0x41efc28f    # 29.97f

    invoke-direct {v6, v7, v1}, Lcom/sonyericsson/android/camera3d/FpsParam;-><init>(FLjava/lang/Long;)V

    new-instance v7, Lcom/sonyericsson/android/camera3d/FpsParam;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1e

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-direct {v7, v8, v1}, Lcom/sonyericsson/android/camera3d/FpsParam;-><init>(FLjava/lang/Long;)V

    new-instance v8, Lcom/sonyericsson/android/camera3d/FpsParam;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x32

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/high16 v9, 0x42480000    # 50.0f

    invoke-direct {v8, v9, v1}, Lcom/sonyericsson/android/camera3d/FpsParam;-><init>(FLjava/lang/Long;)V

    new-instance v9, Lcom/sonyericsson/android/camera3d/FpsParam;

    const-wide/32 v10, 0xfe9145

    .line 81
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v10, 0x426fc28f    # 59.94f

    invoke-direct {v9, v10, v1}, Lcom/sonyericsson/android/camera3d/FpsParam;-><init>(FLjava/lang/Long;)V

    new-instance v10, Lcom/sonyericsson/android/camera3d/FpsParam;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v11, 0x3c

    div-long/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-direct {v10, v1, v0}, Lcom/sonyericsson/android/camera3d/FpsParam;-><init>(FLjava/lang/Long;)V

    filled-new-array/range {v2 .. v10}, [Lcom/sonyericsson/android/camera3d/FpsParam;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->FPS_PARAM_TABLE:[Lcom/sonyericsson/android/camera3d/FpsParam;

    return-void

    nop

    :array_0
    .array-data 4
        0x7d0
        0x3e8
        0x1f4
        0xfa
        0x78
        0x64
        0x3c
        0x32
        0x1e
        0x19
    .end array-data

    :array_1
    .array-data 4
        0x32
        0x64
        0x96
        0xc8
        0xfa
        0x12c
        0x15e
        0x190
        0x1c2
        0x1f4
        0x258
        0x2bc
        0x320
        0x3e8
        0x640
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mShutterSpeed:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mISOValues:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsParams:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsParams:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecValues:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 87
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecStepNumerator:I

    .line 88
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecStepDenominator:I

    .line 101
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    .line 102
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;-><init>(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingLocalValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;

    .line 104
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$1;-><init>(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mEventHandler:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;

    .line 232
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$5;-><init>(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 577
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$6;-><init>(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mModeRadioChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->SHUTTER_SPEED_TABLE:[I

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->ISO_VALUE_TABLE:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;Landroid/widget/SeekBar;ILjava/util/ArrayList;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->onFpsProgressChanged(Landroid/widget/SeekBar;ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mIsoSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSsSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSelectedMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->manual()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mEventHandler:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mISOValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mShutterSpeed:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;)Landroid/widget/SeekBar;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method private disabledSave()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mShutterSpeed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mISOValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsParams:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private initAeCompensationSeekBar(Lcom/sonyericsson/android/camera3d/CameraInfo;)V
    .locals 6

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 413
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationNumerator()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecStepNumerator:I

    .line 414
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationDenominator()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecStepDenominator:I

    const/4 v0, -0x1

    move v1, v0

    .line 418
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationMin()I

    move-result v2

    const/4 v3, 0x0

    if-gt v2, v1, :cond_0

    .line 425
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecValues:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecValues:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move v2, v1

    .line 432
    :goto_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getAeCompensationMax()I

    move-result v4

    if-gt v2, v4, :cond_1

    .line 439
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecValues:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 443
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iget p1, p1, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->aec:I

    if-ne p1, v0, :cond_4

    move p1, v3

    .line 445
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "using AE Compensation value="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Camera2App"

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    move p1, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 451
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iput p1, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->aec:I

    goto :goto_3

    .line 453
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iget p1, p1, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->aec:I

    .line 456
    :goto_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 457
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecStepNumerator:I

    .line 458
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecStepDenominator:I

    return-void

    .line 462
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 463
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private initFpsSeekBar(Lcom/sonyericsson/android/camera3d/CameraInfo;)V
    .locals 9

    .line 516
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraInfo;->getTargetFpsRanges()Ljava/util/ArrayList;

    move-result-object v0

    .line 517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 518
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 519
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 522
    :cond_1
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 523
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 528
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 529
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsParams:Ljava/util/ArrayList;

    new-instance v3, Lcom/sonyericsson/android/camera3d/FpsParam;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->ONE_SECONDS_IN_NANOSECONDS:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v7, v1

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/sonyericsson/android/camera3d/FpsParam;-><init>(FLjava/lang/Long;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_4

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_2

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsParams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 539
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_3
    if-ltz v2, :cond_6

    .line 541
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera3d/FpsParam;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/FpsParam;->Fps:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->fpsUpper:I

    if-ne v3, v4, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ltz v0, :cond_7

    .line 547
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 552
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 553
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->FPS_PARAM_TABLE:[Lcom/sonyericsson/android/camera3d/FpsParam;

    array-length v2, v0

    move v3, v1

    :goto_5
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 554
    iget-object v5, v4, Lcom/sonyericsson/android/camera3d/FpsParam;->FrameDuration:Ljava/lang/Long;

    invoke-virtual {p1, v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->containsFrameDuration(Ljava/lang/Long;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    .line 557
    :cond_8
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsParams:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 560
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsParams:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_a

    .line 561
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_7

    .line 563
    :cond_a
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    :goto_7
    move p1, v1

    .line 568
    :goto_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    .line 569
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/FpsParam;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/FpsParam;->Fps:F

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->fps:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_b

    move v1, p1

    goto :goto_9

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 574
    :cond_c
    :goto_9
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private initIsoSeekBar(Lcom/sonyericsson/android/camera3d/CameraInfo;)V
    .locals 7

    .line 467
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mISOValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 470
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->ISO_VALUE_TABLE:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget v4, v0, v2

    .line 471
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->containsSensitivity(Ljava/lang/Integer;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 474
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mISOValues:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iget v5, v5, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->iso:I

    if-ne v4, v5, :cond_1

    .line 477
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mISOValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mISOValues:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_3

    return-void

    .line 485
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mIsoSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mISOValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 486
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mIsoSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private initShutterSpeedSeekBar(Lcom/sonyericsson/android/camera3d/CameraInfo;)V
    .locals 9

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mShutterSpeed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 493
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->SHUTTER_SPEED_TABLE:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget v4, v0, v2

    .line 494
    sget-object v5, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->ONE_SECONDS_IN_NANOSECONDS:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    int-to-long v7, v4

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 495
    invoke-virtual {p1, v5}, Lcom/sonyericsson/android/camera3d/CameraInfo;->containsExposureTime(Ljava/lang/Long;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 498
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mShutterSpeed:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iget v5, v5, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->shutterSpeed:I

    if-ne v4, v5, :cond_1

    .line 501
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mShutterSpeed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mShutterSpeed:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_3

    return-void

    .line 509
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSsSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mShutterSpeed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 510
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private manual()Z
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mManualRadio:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method private onFpsProgressChanged(Landroid/widget/SeekBar;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera3d/FpsParam;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getRootView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-gez p2, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera3d/FpsParam;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/FpsParam;->getFpsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera3d/FpsParam;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/FpsParam;->getFpsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public auto()Z
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoRadio:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method public evSteps()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecValues:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public evValue()D
    .locals 4

    .line 316
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->evSteps()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecStepNumerator:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecStepDenominator:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public exposureTime()Ljava/lang/Long;
    .locals 4

    .line 274
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingLocalValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;

    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;->exposureTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 277
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->ONE_SECONDS_IN_NANOSECONDS:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->shutterSpeed()I

    move-result p0

    int-to-long v2, p0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public exposureTimeMax()Ljava/lang/Long;
    .locals 4

    .line 282
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->ONE_SECONDS_IN_NANOSECONDS:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mShutterSpeed:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v2, p0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public fps()F
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->auto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsParams:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/FpsParam;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/FpsParam;->Fps:F

    return p0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsParams:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/FpsParam;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/FpsParam;->Fps:F

    return p0
.end method

.method public frameDuration()Ljava/lang/Long;
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->auto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsParams:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/FpsParam;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FpsParam;->FrameDuration:Ljava/lang/Long;

    return-object p0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsParams:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera3d/FpsParam;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/FpsParam;->FrameDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public getSelectedMode()I
    .locals 0

    .line 341
    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSelectedMode:I

    return p0
.end method

.method public initializeUI(Lcom/sonyericsson/android/camera3d/CameraInfo;)V
    .locals 2

    .line 392
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->initAeCompensationSeekBar(Lcom/sonyericsson/android/camera3d/CameraInfo;)V

    .line 393
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->initIsoSeekBar(Lcom/sonyericsson/android/camera3d/CameraInfo;)V

    .line 394
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->initShutterSpeedSeekBar(Lcom/sonyericsson/android/camera3d/CameraInfo;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->initFpsSeekBar(Lcom/sonyericsson/android/camera3d/CameraInfo;)V

    .line 396
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoRadio:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->auto:Z

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 397
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mTvRadio:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->tv:Z

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 398
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mManualRadio:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->auto:Z

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->tv:Z

    or-int/2addr v0, v1

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 399
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoRadio:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 400
    iput v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSelectedMode:I

    goto :goto_0

    .line 401
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mTvRadio:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 402
    iput v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSelectedMode:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 404
    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSelectedMode:I

    .line 406
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mModeRadioChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mModeRadioGroup:Landroid/widget/RadioGroup;

    invoke-interface {p1, p0, v0}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public loadValues(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    const-string v1, "key_auto"

    iget-boolean v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->auto:Z

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->auto:Z

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    const-string v1, "key_tv"

    iget-boolean v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->tv:Z

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->tv:Z

    const v0, 0x7f0c0025

    .line 347
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->auto:Z

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->tv:Z

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    const-string v1, "key_shutter_speed"

    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->shutterSpeed:I

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->shutterSpeed:I

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    const-string v1, "key_iso"

    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->iso:I

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->iso:I

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    const-string v1, "key_fps"

    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->fps:F

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->fps:F

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    const-string v1, "key_fps_upper"

    iget v2, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->fpsUpper:I

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->fpsUpper:I

    .line 355
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    const-string v0, "key_aec"

    iget v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->aec:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->aec:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const-string p0, "Camera2App"

    const-string p1, "Camera2ParamsFragment.onCreate"

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 119
    const-string p3, "Camera2App"

    const-string v0, "Camera2ParamsFragment.onCreateView"

    invoke-static {p3, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f0a001f

    .line 120
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f08001d

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecSeekBar:Landroid/widget/SeekBar;

    .line 123
    new-instance p3, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$2;

    invoke-direct {p3, p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$2;-><init>(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080077

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mIsoSeekBar:Landroid/widget/SeekBar;

    .line 162
    new-instance p3, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$3;

    invoke-direct {p3, p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$3;-><init>(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f0800c8

    .line 183
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSsSeekBar:Landroid/widget/SeekBar;

    .line 184
    new-instance p3, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$4;

    invoke-direct {p3, p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$4;-><init>(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080064

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBar:Landroid/widget/SeekBar;

    .line 206
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080030

    .line 207
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsSeekBar:Landroid/widget/SeekBar;

    .line 208
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080037

    .line 210
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoRadio:Landroid/widget/RadioButton;

    const p2, 0x7f08003b

    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mTvRadio:Landroid/widget/RadioButton;

    const p2, 0x7f080038

    .line 212
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mManualRadio:Landroid/widget/RadioButton;

    const p2, 0x7f080039

    .line 213
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mModeRadioGroup:Landroid/widget/RadioGroup;

    .line 214
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mModeRadioChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-object p1
.end method

.method public resetValues(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 374
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    const-string v1, "key_auto"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    const-string v1, "key_tv"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 377
    const-string v1, "key_shutter_speed"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 378
    const-string v1, "key_iso"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 379
    const-string v1, "key_fps"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string v1, "key_fps_upper"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    const-string v1, "key_aec"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 383
    new-instance v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    .line 384
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->loadValues(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public saveValues(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 359
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->disabledSave()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 363
    const-string v0, "key_auto"

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->auto()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 364
    const-string v0, "key_tv"

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 365
    const-string v0, "key_shutter_speed"

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->shutterSpeed()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 366
    const-string v0, "key_iso"

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->sensorSensitivity()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsParams:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/FpsParam;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/FpsParam;->Fps:F

    const-string v1, "key_fps"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsParams:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/FpsParam;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/FpsParam;->Fps:F

    float-to-int v0, v0

    const-string v1, "key_fps_upper"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 369
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingFileValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$SaveValues;->aec:I

    const-string v0, "key_aec"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 370
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public sensorSensitivity()I
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingLocalValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;->sensorSensitivity:I

    return p0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mISOValues:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mIsoSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public setAuto()V
    .locals 1

    .line 323
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoRadio:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 7

    .line 651
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 652
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mTvRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 653
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mManualRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 654
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f08001e

    const v2, 0x7f080065

    const v3, 0x7f0800c9

    const v4, 0x7f080078

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    .line 657
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mModeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v5}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 658
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->auto()Z

    move-result p1

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    .line 659
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mIsoSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 660
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 661
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 662
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 663
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 664
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 665
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 666
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 669
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->tv()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 670
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mIsoSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 671
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 672
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 673
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 674
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 675
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 676
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 677
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 680
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->manual()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 681
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mIsoSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 682
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 683
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 684
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 685
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 686
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 687
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 688
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 691
    :cond_3
    const-string p0, "Camera2App"

    const-string p1, "mode radio buttons all off. (setEnabled)"

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mIsoSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 694
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 695
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 696
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 697
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAutoModeFpsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 698
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 699
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mAecSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 700
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setEventHandler(Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mEventHandler:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$ICamera2ParamsFragmentEvent;

    return-void
.end method

.method public setExposureTime(J)V
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingLocalValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;

    iput-wide p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;->exposureTime:J

    return-void
.end method

.method public setManual()V
    .locals 1

    .line 337
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mManualRadio:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public setSensorSensitivity(I)V
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSettingLocalValues:Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;

    iput p1, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment$LocalValues;->sensorSensitivity:I

    return-void
.end method

.method public setTv()V
    .locals 1

    .line 330
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mTvRadio:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public shutterSpeed()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mShutterSpeed:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mSsSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public shutterSpeedInNanoSeconds()J
    .locals 4

    .line 290
    sget-object v0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->ONE_SECONDS_IN_NANOSECONDS:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->shutterSpeed()I

    move-result p0

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public tv()Z
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2ParamsFragment;->mTvRadio:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    return p0
.end method
