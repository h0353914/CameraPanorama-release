.class public Lcom/sonyericsson/android/camera3d/base/SettingListBase;
.super Ljava/lang/Object;
.source "SettingListBase.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field private mSelected:I

.field private mTouchIndex:I

.field protected final mView:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 32
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->IDS_APP_TITLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800a1
        0x7f0800a0
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOnSelectedListener:Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;

    .line 39
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mSelected:I

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    .line 42
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOnSelectedListener:Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;

    const/4 p2, 0x2

    .line 43
    new-array v0, p2, [Landroid/view/View;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    .line 44
    filled-new-array {p2, p3}, [I

    move-result-object p2

    const-class v0, Landroid/view/View;

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Landroid/view/View;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    .line 45
    new-array p2, p3, [Z

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItemsEnabled:[Z

    move p2, p1

    .line 46
    :goto_0
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItemsEnabled:[Z

    array-length p3, p3

    if-ge p2, p3, :cond_0

    .line 47
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItemsEnabled:[Z

    const/4 v0, 0x1

    aput-boolean v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 49
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    return-void
.end method

.method private clearItemBackGround()V
    .locals 1

    .line 129
    iget v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround(I)V

    return-void
.end method

.method private clearItemBackGround(I)V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 122
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    aget-object v2, v2, p1

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    aget-object v2, v2, p1

    aget-object v2, v2, v1

    iget v3, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mSelected:I

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 124
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

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object p0, v0, p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 141
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
    .locals 3

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    sget-object v0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->IDS_APP_TITLE:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    sget-object p1, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->IDS_APP_TITLE:[I

    aget p1, p1, v2

    if-ne p0, p1, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private isEventInsideView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 133
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 134
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 135
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected cancelTouch()V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v0, v0, v1

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 95
    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround()V

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    return-void
.end method

.method public getGlobalRectOfSelectedItem()Landroid/graphics/Rect;
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 164
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

    .line 158
    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    return p0
.end method

.method public getSelected()I
    .locals 0

    .line 188
    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mSelected:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    iget p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getView(I)Landroid/view/View;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public isOpened()Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mIsActive:Z

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 55
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 56
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mIsActive:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->isAppTitleView(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 59
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->getIndex(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    return v1

    .line 61
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 62
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mIsActive:Z

    .line 63
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 64
    iget v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    if-eq v0, v2, :cond_4

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItemsEnabled:[Z

    iget v4, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_3

    .line 66
    iget v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->setSelectedIndex(I)V

    goto :goto_0

    .line 68
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround()V

    .line 70
    :goto_0
    iput v2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    if-eqz p2, :cond_4

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->isAppTitleView(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 72
    invoke-virtual {p1, v3}, Landroid/view/View;->playSoundEffect(I)V

    :cond_4
    return v1

    .line 77
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->isEventInsideView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 79
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 80
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround()V

    .line 81
    iput v2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    return v3

    .line 84
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    .line 85
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround()V

    .line 87
    iput v2, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mTouchIndex:I

    return v3

    :cond_7
    return v3
.end method

.method public setActive(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mIsActive:Z

    return-void
.end method

.method public setItemVisibility(IZ)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_4

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v0, v0, v1

    array-length v0, v0

    if-le p1, v0, :cond_1

    goto :goto_2

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    const/4 v1, 0x0

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

    .line 172
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

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 148
    iget v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    if-ne p1, v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->cancelTouch()V

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mView:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_1
    iput p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    return-void
.end method

.method protected setSelectedIndex(I)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mListItems:[[Landroid/view/View;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOrientation:I

    aget-object v0, v0, v1

    array-length v0, v0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    iput p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mSelected:I

    const/4 p1, 0x0

    .line 113
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround(I)V

    const/4 p1, 0x1

    .line 114
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->clearItemBackGround(I)V

    .line 115
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOnSelectedListener:Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;

    if-eqz p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mOnSelectedListener:Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;

    iget v0, p0, Lcom/sonyericsson/android/camera3d/base/SettingListBase;->mSelected:I

    invoke-interface {p1, p0, v0}, Lcom/sonyericsson/android/camera3d/base/SettingListBase$OnSelectedListener;->onSelected(Lcom/sonyericsson/android/camera3d/base/SettingListBase;I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method
