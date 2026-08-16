.class public Lcom/sonyericsson/android/camera3d/base/SettingListBase;
.super Ljava/lang/Object;
.source "SettingListBase.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;
    }
.end annotation


# static fields
.field public static final IDS_APP_TITLE:[I

.field public static final LANDSCAPE:I = 0x1

.field public static final PORTRAIT:I = 0x0

.field private static final TOUCH_INDEX_NONE:I = -0x1


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mIsActive:Z

.field protected final mListItems:[[Landroid/view/View;

.field protected final mListItemsEnabled:[Z

.field private mOnSelectedListener:Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;

.field protected mOrientation:I

.field protected mReverseLandscape:Z

.field private mSelected:I

.field private mTouchIndex:I

.field protected final mView:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f0800ad

    const v1, 0x7f0800ac

    .line 33
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->IDS_APP_TITLE:[I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;I)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mReverseLandscape:Z

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mContext:Landroid/content/Context;

    .line 41
    iput v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mSelected:I

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    .line 43
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOnSelectedListener:Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;

    const/4 p1, 0x2

    .line 44
    new-array p2, p1, [Landroid/view/View;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    .line 45
    filled-new-array {p1, p3}, [I

    move-result-object p1

    const-class p2, Landroid/view/View;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Landroid/view/View;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    .line 46
    new-array p1, p3, [Z

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItemsEnabled:[Z

    move p1, v0

    .line 47
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItemsEnabled:[Z

    array-length p3, p2

    if-ge p1, p3, :cond_0

    const/4 p3, 0x1

    .line 48
    aput-boolean p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iput v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    return-void
.end method

.method private clearItemBackGround()V
    .locals 1

    .line 159
    iget v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround(I)V

    return-void
.end method

.method private clearItemBackGround(I)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 152
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    aget-object v2, v2, p1

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 153
    aget-object v2, v2, v1

    iget v3, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mSelected:I

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 154
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    aget-object v2, v2, p1

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getIndex(Landroid/view/View;)I
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object p0, v0, p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 174
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private isAppTitleView(Landroid/view/View;)Z
    .locals 4

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    sget-object v0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->IDS_APP_TITLE:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-eq p0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    aget p1, v0, v3

    if-ne p0, p1, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method private isEventInsideView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 165
    iget p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mReverseLandscape:Z

    if-eqz p0, :cond_0

    .line 166
    new-instance p0, Landroid/graphics/Rect;

    iget p1, v0, Landroid/graphics/Rect;->right:I

    neg-int p1, p1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p0

    .line 168
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected cancelTouch()V
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v0, v0, v1

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 125
    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround()V

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    return-void
.end method

.method public getGlobalRectOfSelectedItem()Landroid/graphics/Rect;
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 202
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 203
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v1, v1, v2

    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mSelected:I

    aget-object p0, v1, p0

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public getOrientation()I
    .locals 0

    .line 197
    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    return p0
.end method

.method public getSelected()I
    .locals 0

    .line 227
    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mSelected:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getView(I)Landroid/view/View;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public isOpened()Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mIsActive:Z

    return p0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x3e

    if-eq p2, v0, :cond_2

    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 98
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 99
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mIsActive:Z

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->isAppTitleView(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 102
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->getIndex(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    goto :goto_2

    .line 103
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_6

    .line 104
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mIsActive:Z

    .line 105
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 106
    iget p3, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    const/4 v2, -0x1

    if-eq p3, v2, :cond_6

    .line 107
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItemsEnabled:[Z

    aget-boolean v3, v3, p3

    if-eqz v3, :cond_5

    .line 108
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->setSelectedIndex(I)V

    goto :goto_1

    .line 110
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround()V

    .line 112
    :goto_1
    iput v2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    if-eqz p2, :cond_6

    .line 113
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->isAppTitleView(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_6
    :goto_2
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 55
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 56
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 57
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mIsActive:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->isAppTitleView(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 60
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->getIndex(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    return v1

    .line 62
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 63
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mIsActive:Z

    .line 64
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 65
    iget v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    if-eq v0, v2, :cond_4

    .line 66
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItemsEnabled:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3

    .line 67
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->setSelectedIndex(I)V

    goto :goto_0

    .line 69
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround()V

    .line 71
    :goto_0
    iput v2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    if-eqz p2, :cond_4

    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->isAppTitleView(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 73
    invoke-virtual {p1, v3}, Landroid/view/View;->playSoundEffect(I)V

    :cond_4
    return v1

    .line 78
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->isEventInsideView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 80
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround()V

    .line 82
    iput v2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    return v1

    .line 85
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    .line 86
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 87
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround()V

    .line 88
    iput v2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    :cond_7
    return v1
.end method

.method public setActive(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mIsActive:Z

    return-void
.end method

.method public setItemVisibility(IZ)V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v1, v0, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_4

    .line 209
    array-length v1, v1

    if-le p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 210
    aget-object v0, v0, v1

    aget-object v0, v0, p1

    const/16 v2, 0x8

    if-eqz p2, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    aget-object p0, p0, p1

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 181
    iget v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    if-ne p1, v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->cancelTouch()V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_1
    iput p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    return-void
.end method

.method public setReverseLandscape(Z)V
    .locals 2

    .line 191
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mReverseLandscape:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz p1, :cond_1

    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 193
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mReverseLandscape:Z

    return-void
.end method

.method protected setSelectedIndex(I)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 141
    array-length v0, v0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    iput p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mSelected:I

    const/4 p1, 0x0

    .line 143
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround(I)V

    const/4 p1, 0x1

    .line 144
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround(I)V

    .line 145
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOnSelectedListener:Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;

    if-eqz p1, :cond_2

    .line 146
    iget v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mSelected:I

    invoke-interface {p1, p0, v0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;->onSelected(Lcom/sonyericsson/android/camera3d/base/SettingListBase;I)V

    :cond_2
    :goto_0
    return-void
.end method
