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

    const v0, 0x7f0800b7

    const v1, 0x7f0800b6

    .line 37
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SAVE_LOCATION:[I

    const v0, 0x7f0800b9

    const v1, 0x7f0800b8

    .line 38
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_USE_VOLUME_KEY:[I

    const v0, 0x7f0800af

    const v1, 0x7f0800ae

    .line 39
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_CAMERA_SOUND:[I

    const v0, 0x7f0800b3

    const v1, 0x7f0800b2

    .line 40
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SAVE_DESTINATION:[I

    const v0, 0x7f0800bf

    const v1, 0x7f0800be

    .line 41
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_BG_SAVE_LOCATION:[I

    const v0, 0x7f0800c3

    const v1, 0x7f0800c2

    .line 42
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_ICON_SAVE_LOCATION:[I

    const v0, 0x7f0800bd

    const v1, 0x7f0800bc

    .line 43
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_BG_CAMERA_SOUND:[I

    const v0, 0x7f0800c1

    const v1, 0x7f0800c0

    .line 44
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_ICON_CAMERA_SOUND:[I

    const v0, 0x7f0800bb

    const v1, 0x7f0800ba

    .line 45
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_VOLUME_KEY_SUMMARY:[I

    const v0, 0x7f0800b5

    const v1, 0x7f0800b4

    .line 46
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SAVE_DESTINATION_SUMMARY:[I

    const v0, 0x7f0800b0

    const v1, 0x7f0800b1

    .line 47
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_LICENSE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;)V
    .locals 1

    const/4 v0, 0x6

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;I)V

    const/4 p1, 0x2

    .line 50
    new-array p2, p1, [Landroid/view/animation/AnimationSet;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    .line 51
    new-array p1, p1, [Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mSubLists:Ljava/util/List;

    .line 63
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mOnCheckedChangeListener:Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;

    const/4 p1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SettingList;->initialize(I)V

    const/4 p1, 0x1

    .line 65
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SettingList;->initialize(I)V

    return-void
.end method

.method private initialize(I)V
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const v1, 0x7f0a003e

    const v2, 0x7f07009c

    const v3, 0x7f06009d

    goto :goto_1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    const v1, 0x7f0a003d

    goto :goto_0

    :cond_1
    const v1, 0x7f0a003c

    :goto_0
    const v2, 0x7f07009e

    const v3, 0x7f06009c

    .line 86
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v4, p1

    const/4 v1, -0x1

    const/4 v4, -0x2

    if-nez p1, :cond_2

    .line 89
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 92
    :cond_2
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    :goto_2
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f06009e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 96
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v6, v4

    const/4 v7, 0x0

    .line 98
    invoke-virtual {v5, v3, v6, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const v3, 0x7f08006a

    const/4 v6, 0x3

    .line 99
    invoke-virtual {v5, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne p1, v0, :cond_3

    .line 101
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutDirection(I)V

    const/16 v3, 0xb

    .line 102
    invoke-virtual {v5, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    const v3, 0x7f07007d

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v1, v1, p1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    const/4 v4, 0x6

    new-array v5, v4, [Landroid/view/View;

    aput-object v5, v1, p1

    .line 110
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v5, v5, p1

    sget-object v8, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_APP_TITLE:[I

    aget v8, v8, p1

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v1, v7

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v5, v5, p1

    sget-object v8, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SAVE_LOCATION:[I

    aget v8, v8, p1

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v1, v0

    .line 112
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v5, v5, p1

    sget-object v8, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_USE_VOLUME_KEY:[I

    aget v8, v8, p1

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v1, v8

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v5, v5, p1

    sget-object v9, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_CAMERA_SOUND:[I

    aget v9, v9, p1

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v1, v6

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mView:[Landroid/view/View;

    aget-object v5, v5, p1

    sget-object v6, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SAVE_DESTINATION:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v1, v3

    .line 115
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

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    aget-object v1, v1, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0055

    .line 117
    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const v9, 0x7f0c0058

    .line 118
    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v1, p1

    aget-object v1, v1, v5

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0095

    .line 120
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move v1, v7

    :goto_3
    if-ge v1, v4, :cond_6

    .line 122
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 124
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 125
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 126
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 127
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    if-nez v1, :cond_4

    .line 129
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_4

    :cond_4
    if-ne v1, v5, :cond_5

    .line 131
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_4

    .line 133
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public addSubList(Lcom/sonyericsson/android/camera3d/SettingSubList;)V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mSubLists:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .locals 25

    move-object/from16 v0, p0

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView()Landroid/view/View;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/SettingList;->cancelTouch()V

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 177
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v3, v3, v4

    if-nez v3, :cond_4

    .line 179
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v3, v3, v4

    array-length v4, v3

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v7, v3, v5

    .line 180
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 183
    :cond_2
    iget v3, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v3, :cond_3

    .line 184
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v6

    div-float v6, v5, v6

    div-float v15, v6, v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_1

    .line 190
    :cond_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v6

    div-float v6, v5, v6

    neg-float v6, v6

    div-float v20, v6, v4

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v24}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 196
    :goto_1
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 197
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 198
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v6, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    new-instance v7, Landroid/view/animation/AnimationSet;

    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    aput-object v7, v5, v6

    .line 199
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v6, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 200
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v5, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 201
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v3, v3, v4

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 203
    :cond_4
    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mCloseAnimation:[Landroid/view/animation/AnimationSet;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5
    const/4 v3, 0x4

    .line 205
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 206
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->setActive(Z)V

    return-void
.end method

.method public open()V
    .locals 25

    move-object/from16 v0, p0

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/SettingList;->getView()Landroid/view/View;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v3, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 143
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v2, v2, v4

    array-length v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v7, v2, v5

    .line 144
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 147
    :cond_2
    iget v2, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    .line 148
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v6

    div-float v6, v5, v6

    div-float v13, v6, v4

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_1

    .line 154
    :cond_3
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v6

    div-float v6, v5, v6

    neg-float v6, v6

    div-float v18, v6, v4

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v24}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 160
    :goto_1
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 161
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 162
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v6, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    new-instance v7, Landroid/view/animation/AnimationSet;

    iget-object v8, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    aput-object v7, v5, v6

    .line 163
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v6, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 164
    iget-object v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v5, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 165
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v2, v2, v4

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 167
    :cond_4
    iget-object v2, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOpenAnimation:[Landroid/view/animation/AnimationSet;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/SettingList;->mOrientation:I

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 168
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    .line 169
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/SettingList;->setActive(Z)V

    return-void
.end method

.method public setChecked(IZ)V
    .locals 13

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const v1, 0x7f0c00a2

    goto :goto_0

    :cond_0
    const v1, 0x7f0c00a1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 221
    sget-object v2, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_BG_SAVE_LOCATION:[I

    .line 222
    sget-object v3, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_ICON_SAVE_LOCATION:[I

    .line 223
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0076

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 225
    sget-object v2, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_BG_CAMERA_SOUND:[I

    .line 226
    sget-object v3, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SWITCH_ICON_CAMERA_SOUND:[I

    .line 227
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0064

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_1
    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    .line 231
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_3

    const v6, 0x800015

    goto :goto_2

    :cond_3
    const v6, 0x800013

    :goto_2
    const/4 v7, -0x2

    .line 234
    invoke-direct {v5, v7, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 v6, 0x0

    .line 236
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v7

    aget v8, v2, v6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f07007b

    const v9, 0x7f070079

    if-eqz v7, :cond_5

    if-eqz p2, :cond_4

    move v10, v8

    goto :goto_3

    :cond_4
    move v10, v9

    .line 238
    :goto_3
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    :cond_5
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v7

    aget v10, v3, v6

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v10, 0x7f07007c

    const v11, 0x7f07007a

    if-eqz v7, :cond_7

    if-eqz p2, :cond_6

    move v12, v10

    goto :goto_4

    :cond_6
    move v12, v11

    .line 242
    :goto_4
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    :cond_7
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v6, v7, v6

    aget-object v6, v6, p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v6

    aget v2, v2, v1

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    move v8, v9

    .line 250
    :goto_5
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v2

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    if-eqz p2, :cond_a

    goto :goto_6

    :cond_a
    move v10, v11

    .line 254
    :goto_6
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    :cond_b
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v1, v2, v1

    aget-object v1, v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 260
    :cond_c
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mOnCheckedChangeListener:Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;

    if-eqz p0, :cond_d

    .line 261
    invoke-interface {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/SettingList$OnCheckedChangeListener;->onCheckedChanged(IZ)V

    :cond_d
    return-void
.end method

.method public setSummary(II)V
    .locals 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 269
    sget-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_VOLUME_KEY_SUMMARY:[I

    .line 270
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 272
    sget-object v0, Lcom/sonyericsson/android/camera3d/SettingList;->IDS_SAVE_DESTINATION_SUMMARY:[I

    .line 273
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    const v2, 0x7f0c008c

    .line 274
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_4

    .line 278
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    .line 280
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 282
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object v2, v3, v2

    aget-object v2, v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 285
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->getView(I)Landroid/view/View;

    move-result-object v3

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 287
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/SettingList;->mListItems:[[Landroid/view/View;

    aget-object p0, p0, v2

    aget-object p0, p0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
