.class Lcom/sonyericsson/android/camera3d/SettingSubList;
.super Lcom/sonyericsson/android/camera3d/base/SettingListBase;
.source "SettingSubList.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x64

.field private static final IDS_LIST_ROW_TEXT:[I


# instance fields
.field private final mCloseAnimation:[Landroid/view/animation/AnimationSet;

.field private mIsFocusedByTalkBack:Z

.field private final mOpenAnimation:[Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->IDS_LIST_ROW_TEXT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080074
        0x7f080073
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;[ILcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;)V
    .locals 1

    .line 39
    array-length v0, p2

    invoke-direct {p0, p1, p3, v0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;I)V

    const/4 p1, 0x2

    .line 33
    new-array p3, p1, [Landroid/view/animation/AnimationSet;

    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    .line 34
    new-array p1, p1, [Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mIsFocusedByTalkBack:Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/SettingSubList;->initialize(I[I)V

    const/4 p1, 0x1

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/SettingSubList;->initialize(I[I)V

    return-void
.end method

.method private changeEnabled(I)V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 222
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItemsEnabled:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getSelected()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x7f050054

    goto :goto_2

    :cond_2
    :goto_1
    const v1, 0x7f050055

    .line 223
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    .line 224
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    sget-object v3, Lcom/sonyericsson/android/camera3d/SettingSubList;->IDS_LIST_ROW_TEXT:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 227
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    sget-object v3, Lcom/sonyericsson/android/camera3d/SettingSubList;->IDS_LIST_ROW_TEXT:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private initialize(I[I)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const v1, 0x7f060095

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    const v5, 0x7f0a0028

    .line 55
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v6, 0x7f070097

    move v7, v5

    move v8, v6

    move v5, v2

    move v6, v4

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v5, v4, :cond_1

    const v5, 0x7f0a0027

    goto :goto_0

    :cond_1
    const v5, 0x7f0a0026

    .line 66
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v6, 0x7f070099

    move v7, v5

    move v8, v6

    move v5, v1

    move v1, v2

    move v6, v3

    .line 69
    :goto_1
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mView:[Landroid/view/View;

    new-instance v10, Landroid/widget/FrameLayout;

    iget-object v11, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v10, v9, p1

    .line 70
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-ne p1, v4, :cond_2

    .line 72
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mView:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutDirection(I)V

    const/16 v2, 0x9

    const/4 v10, -0x1

    .line 73
    invoke-virtual {v9, v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mView:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mView:[Landroid/view/View;

    aget-object v2, v2, p1

    const v9, 0x7f070074

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mView:[Landroid/view/View;

    aget-object v2, v2, p1

    new-instance v9, Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;

    invoke-direct {v9}, Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;-><init>()V

    invoke-virtual {v2, v9}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 78
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f06008e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 81
    invoke-virtual {v9, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 82
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    array-length v5, p2

    new-array v5, v5, [Landroid/view/View;

    aput-object v5, v1, p1

    move v1, v3

    move v5, v1

    .line 89
    :goto_2
    array-length v6, p2

    if-ge v1, v6, :cond_8

    .line 90
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v6, v6, p1

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v7, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    aput-object v9, v6, v1

    .line 91
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v6, v6, p1

    aget-object v6, v6, v1

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    if-nez v1, :cond_3

    .line 93
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v6, v6, p1

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_3

    .line 94
    :cond_3
    array-length v6, p2

    sub-int/2addr v6, v4

    if-ne v1, v6, :cond_4

    .line 95
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v6, v6, p1

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_3

    .line 97
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v6, v6, p1

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 99
    :goto_3
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v6, v6, p1

    aget-object v6, v6, v1

    sget-object v9, Lcom/sonyericsson/android/camera3d/SettingSubList;->IDS_LIST_ROW_TEXT:[I

    aget v9, v9, p1

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    aget v10, p2, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_6

    .line 101
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 102
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v6, v6, p1

    aget-object v6, v6, v1

    sget-object v9, Lcom/sonyericsson/android/camera3d/SettingSubList;->IDS_LIST_ROW_TEXT:[I

    aget v9, v9, p1

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v9, 0x15

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4

    .line 104
    :cond_5
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v6, v6, p1

    aget-object v6, v6, v1

    sget-object v9, Lcom/sonyericsson/android/camera3d/SettingSubList;->IDS_LIST_ROW_TEXT:[I

    aget v9, v9, p1

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x800013

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v6, v6, p1

    aget-object v6, v6, v1

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v6, v6, p1

    aget-object v6, v6, v1

    new-instance v9, Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;

    invoke-direct {v9}, Lcom/sonyericsson/android/camera3d/AccessibilityEventFilter;-><init>()V

    invoke-virtual {v6, v9}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 121
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    aget-object v6, v6, p1

    aget-object v6, v6, v1

    invoke-virtual {v2, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    if-nez p1, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .locals 23

    move-object/from16 v0, p0

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->cancelTouch()V

    if-eqz p1, :cond_3

    .line 164
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v3, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    .line 166
    iget v2, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    .line 167
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    iget v13, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v5, v5, v13

    array-length v5, v5

    int-to-float v5, v5

    div-float v5, v4, v5

    div-float v13, v5, v3

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_0

    .line 173
    :cond_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    iget v6, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v5, v5, v6

    array-length v5, v5

    int-to-float v5, v5

    div-float v5, v4, v5

    neg-float v5, v5

    div-float v18, v5, v3

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 179
    :goto_0
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 180
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 181
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 182
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v5, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    new-instance v6, Landroid/view/animation/AnimationSet;

    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    aput-object v6, v4, v5

    .line 183
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v5, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 184
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v3, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v2, v2, v3

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 187
    :cond_2
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v3, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    const/4 v2, 0x4

    .line 189
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setActive(Z)V

    return-void
.end method

.method public isFocusedByTalkBack()Z
    .locals 0

    .line 216
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mIsFocusedByTalkBack:Z

    return p0
.end method

.method public open()V
    .locals 23

    move-object/from16 v0, p0

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v3, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    .line 133
    iget v2, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    .line 134
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    iget v11, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v5, v5, v11

    array-length v5, v5

    int-to-float v5, v5

    div-float v5, v4, v5

    div-float v11, v5, v3

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_0

    .line 140
    :cond_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v15, 0x1

    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    iget v6, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v5, v5, v6

    array-length v5, v5

    int-to-float v5, v5

    div-float v5, v4, v5

    neg-float v5, v5

    div-float v16, v5, v3

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object v14, v2

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 146
    :goto_0
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 147
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 148
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 149
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v5, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    new-instance v6, Landroid/view/animation/AnimationSet;

    iget-object v7, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    aput-object v6, v4, v5

    .line 150
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v5, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 151
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 152
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v3, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v2, v2, v3

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 154
    :cond_2
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v3, v0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setActive(Z)V

    return-void
.end method

.method public setItemEnabled(IZ)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v0, v0, v1

    array-length v0, v0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItemsEnabled:[Z

    aput-boolean p2, v0, p1

    const/4 p1, 0x0

    .line 211
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->changeEnabled(I)V

    const/4 p1, 0x1

    .line 212
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->changeEnabled(I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setSelectedResourceId(I)V
    .locals 4

    const/4 v0, 0x0

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mListItems:[[Landroid/view/View;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    sget-object v2, Lcom/sonyericsson/android/camera3d/SettingSubList;->IDS_LIST_ROW_TEXT:[I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mOrientation:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SettingSubList;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setSelectedIndex(I)V

    return-void
.end method
