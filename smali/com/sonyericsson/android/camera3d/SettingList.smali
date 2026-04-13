.class Lcom/sonyericsson/android/camera3d/SettingList;
.super Lcom/sonyericsson/android/camera3d/base/SettingListBase;
.source "SettingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x64

.field private static final IDS_CAMERA_SOUND:[I

.field private static final IDS_LICENSE:[I

.field private static final IDS_SAVE_DESTINATION:[I

.field private static final IDS_SAVE_DESTINATION_SUMMARY:[I

.field private static final IDS_SAVE_LOCATION:[I

.field private static final IDS_SWITCH_BG_CAMERA_SOUND:[I

.field private static final IDS_SWITCH_BG_SAVE_LOCATION:[I

.field private static final IDS_SWITCH_ICON_CAMERA_SOUND:[I

.field private static final IDS_SWITCH_ICON_SAVE_LOCATION:[I

.field private static final IDS_USE_VOLUME_KEY:[I

.field private static final IDS_VOLUME_KEY_SUMMARY:[I

.field private static final ITEM_NUM:I = 0x6

.field public static final LIST_INDEX_APP_TITLE:I = 0x0

.field public static final LIST_INDEX_CAMERA_SOUND:I = 0x3

.field public static final LIST_INDEX_LICENSE:I = 0x5

.field public static final LIST_INDEX_SAVE_DESTINATION:I = 0x4

.field public static final LIST_INDEX_SAVE_LOCATION:I = 0x1

.field public static final LIST_INDEX_USE_VOLUME_KEY:I = 0x2


# instance fields
.field private final mCloseAnimation:[Landroid/view/animation/AnimationSet;

.field private final mOnCheckedChangeListener:Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;

.field private final mOpenAnimation:[Landroid/view/animation/AnimationSet;

.field private final mSubLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera3d/SettingSubList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 38
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SAVE_LOCATION:[I

    .line 39
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_USE_VOLUME_KEY:[I

    .line 40
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_CAMERA_SOUND:[I

    .line 41
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SAVE_DESTINATION:[I

    .line 42
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_BG_SAVE_LOCATION:[I

    .line 43
    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_ICON_SAVE_LOCATION:[I

    .line 44
    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_BG_CAMERA_SOUND:[I

    .line 45
    new-array v1, v0, [I

    fill-array-data v1, :array_7

    sput-object v1, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_ICON_CAMERA_SOUND:[I

    .line 46
    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_VOLUME_KEY_SUMMARY:[I

    .line 47
    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SAVE_DESTINATION_SUMMARY:[I

    .line 48
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_LICENSE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800ab
        0x7f0800aa
    .end array-data

    :array_1
    .array-data 4
        0x7f0800ad
        0x7f0800ac
    .end array-data

    :array_2
    .array-data 4
        0x7f0800a3
        0x7f0800a2
    .end array-data

    :array_3
    .array-data 4
        0x7f0800a7
        0x7f0800a6
    .end array-data

    :array_4
    .array-data 4
        0x7f0800b3
        0x7f0800b2
    .end array-data

    :array_5
    .array-data 4
        0x7f0800b7
        0x7f0800b6
    .end array-data

    :array_6
    .array-data 4
        0x7f0800b1
        0x7f0800b0
    .end array-data

    :array_7
    .array-data 4
        0x7f0800b5
        0x7f0800b4
    .end array-data

    :array_8
    .array-data 4
        0x7f0800af
        0x7f0800ae
    .end array-data

    :array_9
    .array-data 4
        0x7f0800a9
        0x7f0800a8
    .end array-data

    :array_a
    .array-data 4
        0x7f0800a4
        0x7f0800a5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;)V
    .locals 1

    const/4 v0, 0x6

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;I)V

    const/4 p1, 0x2

    .line 51
    new-array p2, p1, [Landroid/view/animation/AnimationSet;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    .line 52
    new-array p1, p1, [Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mSubLists:Ljava/util/List;

    .line 64
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mOnCheckedChangeListener:Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;

    const/4 p1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SettingList;->initialize(I)V

    const/4 p1, 0x1

    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SettingList;->initialize(I)V

    return-void
.end method

.method private initialize(I)V
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const v1, 0x7f0a0048

    const v2, 0x7f070096

    const v3, 0x7f06008d

    goto :goto_1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    const v1, 0x7f0a0047

    goto :goto_0

    :cond_1
    const v1, 0x7f0a0046

    :goto_0
    const v2, 0x7f070098

    const v3, 0x7f06008c

    .line 87
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v4, p1

    .line 88
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 90
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v5, v4

    const/4 v6, 0x0

    .line 92
    invoke-virtual {v1, v3, v5, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const v3, 0x7f080060

    const/4 v5, 0x3

    .line 93
    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne p1, v0, :cond_2

    .line 95
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutDirection(I)V

    const/16 v3, 0x9

    const/4 v7, -0x1

    .line 96
    invoke-virtual {v1, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    const v3, 0x7f070079

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    new-instance v4, Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;

    invoke-direct {v4}, Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    const/4 v4, 0x6

    new-array v7, v4, [Landroid/view/View;

    aput-object v7, v1, p1

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v7, v7, p1

    sget-object v8, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_APP_TITLE:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v1, v6

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v7, v7, p1

    sget-object v8, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SAVE_LOCATION:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v1, v0

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v7, v7, p1

    sget-object v8, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_USE_VOLUME_KEY:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v1, v8

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v7, v7, p1

    sget-object v9, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_CAMERA_SOUND:[I

    aget v9, v9, p1

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v1, v5

    .line 109
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v5, v5, p1

    sget-object v7, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SAVE_DESTINATION:[I

    aget v7, v7, p1

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v1, v3

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v3, v3, p1

    sget-object v5, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_LICENSE:[I

    aget v5, v5, p1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v1, v5

    move v1, v6

    :goto_2
    if-ge v1, v4, :cond_5

    .line 112
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    if-nez v1, :cond_3

    .line 115
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_3

    :cond_3
    if-ne v1, v5, :cond_4

    .line 117
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_3

    .line 119
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public addSubList(Lcom/sonyericsson/android/camera3d/SettingSubList;)V
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mSubLists:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .locals 25

    move-object/from16 v0, p0

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView()Landroid/view/View;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/SettingList;->cancelTouch()V

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 163
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v3, v3, v4

    if-nez v3, :cond_4

    .line 165
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v3, v3, v4

    array-length v4, v3

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v7, v3, v5

    .line 166
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 169
    :cond_2
    iget v3, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v3, :cond_3

    .line 170
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    int-to-float v6, v6

    div-float v6, v5, v6

    div-float v15, v6, v4

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_1

    .line 176
    :cond_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    int-to-float v6, v6

    div-float v6, v5, v6

    neg-float v6, v6

    div-float v20, v6, v4

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v24}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 182
    :goto_1
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 183
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 184
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v6, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    new-instance v7, Landroid/view/animation/AnimationSet;

    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    aput-object v7, v5, v6

    .line 185
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v6, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 186
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v5, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 187
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v3, v3, v4

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 189
    :cond_4
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    const/4 v3, 0x4

    .line 191
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 192
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->setActive(Z)V

    return-void
.end method

.method public open()V
    .locals 25

    move-object/from16 v0, p0

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView()Landroid/view/View;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v3, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 129
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v2, v2, v4

    array-length v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v7, v2, v5

    .line 130
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 133
    :cond_2
    iget v2, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    .line 134
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    int-to-float v6, v6

    div-float v6, v5, v6

    div-float v13, v6, v4

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_1

    .line 140
    :cond_3
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/16 v17, 0x1

    int-to-float v6, v6

    div-float v6, v5, v6

    neg-float v6, v6

    div-float v18, v6, v4

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v24}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 146
    :goto_1
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 147
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 148
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v6, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    new-instance v7, Landroid/view/animation/AnimationSet;

    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    aput-object v7, v5, v6

    .line 149
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v6, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 150
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v5, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 151
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v2, v2, v4

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 153
    :cond_4
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/SettingList;->setActive(Z)V

    return-void
.end method

.method public setChecked(IZ)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 203
    sget-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_BG_SAVE_LOCATION:[I

    .line 204
    sget-object v2, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_ICON_SAVE_LOCATION:[I

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 206
    sget-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_BG_CAMERA_SOUND:[I

    .line 207
    sget-object v2, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_ICON_CAMERA_SOUND:[I

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 211
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_2

    const v4, 0x800015

    goto :goto_1

    :cond_2
    const v4, 0x800013

    :goto_1
    const/4 v5, -0x2

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v5

    aget v6, v0, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f070075

    const v7, 0x7f070077

    if-eqz v5, :cond_4

    if-eqz p2, :cond_3

    move v8, v7

    goto :goto_2

    :cond_3
    move v8, v6

    .line 218
    :goto_2
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v5

    aget v4, v2, v4

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f070076

    const v8, 0x7f070078

    if-eqz v4, :cond_6

    if-eqz p2, :cond_5

    move v9, v8

    goto :goto_3

    :cond_5
    move v9, v5

    .line 222
    :goto_3
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    :cond_6
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v4

    aget v0, v0, v1

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_7

    move v6, v7

    .line 228
    :cond_7
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    :cond_8
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v0

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    if-eqz p2, :cond_9

    move v5, v8

    .line 232
    :cond_9
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mOnCheckedChangeListener:Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;

    if-eqz v0, :cond_b

    .line 237
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mOnCheckedChangeListener:Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;->onCheckedChanged(IZ)V

    :cond_b
    return-void
.end method

.method public setSummary(II)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 244
    sget-object p1, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_VOLUME_KEY_SUMMARY:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 246
    sget-object p1, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SAVE_DESTINATION_SUMMARY:[I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v1

    aget v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 253
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x1

    .line 255
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v1

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 257
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
