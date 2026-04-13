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

.field private static final TAG:Ljava/lang/String; = "RotatableToast"

.field public static final TOAST_DURATION_LONG:I = 0xdac

.field public static final TOAST_DURATION_SHORT:I = 0x7d0


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisplayToastFlg:Z

.field private mFinishAfterToast:Z

.field private final mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

.field private final mRotatableToastMessageForPortrait:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mFinishAfterToast:Z

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mDisplayToastFlg:Z

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mContext:Landroid/content/Context;

    .line 52
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mDisplayToastFlg:Z

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a0042

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f080090

    .line 56
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    const p1, 0x7f0800d6

    .line 58
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastMessageForPortrait:Landroid/widget/TextView;

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera3d/RotatableToast;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/RotatableToast;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mFinishAfterToast:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/RotatableToast;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getOrientation(I)I
    .locals 1

    const/4 p0, 0x0

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    const/16 v0, 0x14a

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    if-gt v0, p1, :cond_1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1

    const/16 p0, 0x5a

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public getRotatableToast()Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mDisplayToastFlg:Z

    return p0
.end method

.method public invisibleRotatableToast()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mDisplayToastFlg:Z

    .line 101
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setRotatableToastMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastMessageForPortrait:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startRotatableToast(IZI)V
    .locals 1

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mDisplayToastFlg:Z

    .line 92
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera3d/RotatableToast;->getOrientation(I)I

    move-result p3

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 94
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mFinishAfterToast:Z

    .line 96
    new-instance p2, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;-><init>(Lcom/sonyericsson/android/camera3d/RotatableToast;I)V

    new-array p0, v0, [Ljava/lang/Integer;

    invoke-virtual {p2, p0}, Lcom/sonyericsson/android/camera3d/RotatableToast$ShowToastTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public toggleRotatableToastVisibility(I)V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mDisplayToastFlg:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->getOrientation(I)I

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 81
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RotatableToast;->mRotatableToastContainerForPortrait:Landroid/widget/RelativeLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
