.class public Lcom/sonyericsson/android/camera3d/RotatableToast;
.super Landroid/widget/RelativeLayout;
.source "RotatableToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;
    }
.end annotation


# static fields
.field private static final ORIENTATION_LANDSCAPE:I = 0x5a

.field private static final ORIENTATION_PORTRAIT:I = 0x0

.field private static final ORIENTATION_REVERSE_LANDSCAPE:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "RotatableToast"

.field public static final TOAST_DURATION_LONG:I = 0xdac

.field public static final TOAST_DURATION_SHORT:I = 0x7d0


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayToastFlg:Z

.field private mFinishAfterToast:Z

.field private final mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

.field private final mRotatableToastMessageForPortrait:Landroid/widget/TextView;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mFinishAfterToast:Z

    .line 52
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mDisplayToastFlg:Z

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mContext:Landroid/content/Context;

    .line 59
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mUiHandler:Landroid/os/Handler;

    .line 61
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mDisplayToastFlg:Z

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a0038

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f08009c

    .line 65
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    const v0, 0x7f0800e3

    .line 67
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastMessageForPortrait:Landroid/widget/TextView;

    const/16 p0, 0x8

    .line 69
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/RotatableToast;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mFinishAfterToast:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/RotatableToast;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/RotatableToast;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getOrientation(I)I
    .locals 1

    const/16 p0, 0x1e

    const/4 v0, 0x0

    if-lt p1, p0, :cond_2

    const/16 p0, 0x14a

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x3c

    if-gt p0, p1, :cond_1

    const/16 p0, 0x78

    if-ge p1, p0, :cond_1

    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 p0, 0xf0

    if-gt p0, p1, :cond_2

    const/16 p0, 0x12c

    if-ge p1, p0, :cond_2

    const/16 v0, 0x5a

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public getRotatableToast()Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mDisplayToastFlg:Z

    return p0
.end method

.method public invisibleRotatableToast()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mDisplayToastFlg:Z

    .line 115
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setRotatableToastMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastMessageForPortrait:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startRotatableToast(IZI)V
    .locals 1

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mDisplayToastFlg:Z

    .line 103
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera3d/RotatableToast;->getOrientation(I)I

    move-result p3

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 105
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mFinishAfterToast:Z

    .line 107
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->setVisibility(I)V

    .line 108
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    .line 109
    new-instance p3, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;

    invoke-direct {p3, p0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;-><init>(Lcom/sonyericsson/android/camera3d/RotatableToast;I)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 110
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public toggleRotatableToastVisibility(I)V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mDisplayToastFlg:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->getOrientation(I)I

    move-result p1

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 92
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
