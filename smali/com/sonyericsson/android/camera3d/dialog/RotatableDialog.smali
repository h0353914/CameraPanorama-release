.class public Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;
.super Ljava/lang/Object;
.source "RotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$Builder;
    }
.end annotation


# static fields
.field public static final LANDSCAPE:I = 0x2

.field public static final PORTRAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RotatableDialog"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogWidthForLand:I

.field private mDialogWidthForPort:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mOrientation:I

.field private mScrollableView:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWindow:Landroid/view/Window;


# direct methods
.method private constructor <init>(Landroid/app/AlertDialog;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 110
    iput v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mOrientation:I

    .line 111
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    .line 112
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mWindow:Landroid/view/Window;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/AlertDialog;Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;-><init>(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private calculateOutValue(III)I
    .locals 0

    if-ge p1, p2, :cond_0

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    if-ge p3, p1, :cond_1

    sub-int/2addr p1, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initialize()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 142
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 143
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 147
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDisplayWidth:I

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDisplayHeight:I

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDisplayWidth:I

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDisplayHeight:I

    .line 160
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050003

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1050004

    .line 165
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    const-string v3, ""

    .line 167
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    const-string v3, ""

    .line 168
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 171
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v2

    .line 173
    iget v2, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDisplayWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialogWidthForLand:I

    .line 174
    iget v1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDisplayHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialogWidthForPort:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "RotatableDialog"

    const-string v1, "Fail to get width of dialog for each orientation."

    .line 177
    invoke-static {v0, v1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private release()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 123
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    .line 128
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mWindow:Landroid/view/Window;

    .line 129
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mScrollableView:Landroid/view/View;

    return-void
.end method

.method private updateLayout(I)V
    .locals 5

    .line 184
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 190
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    .line 192
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    .line 198
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x11

    .line 199
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 203
    iget v4, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDisplayHeight:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 205
    iget v4, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDisplayWidth:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    const/4 p1, 0x0

    .line 208
    invoke-virtual {v2, p1}, Landroid/view/View;->setRotation(F)V

    .line 209
    iget p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialogWidthForPort:I

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42b40000    # 90.0f

    .line 212
    invoke-virtual {v2, p1}, Landroid/view/View;->setRotation(F)V

    .line 213
    iget p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialogWidthForLand:I

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 216
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 369
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 363
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getDialog()Landroid/app/AlertDialog;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public hide()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 357
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->hide()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShown(Landroid/content/DialogInterface;)Z
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 268
    check-cast p1, Landroid/view/ViewGroup;

    .line 269
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 270
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 273
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 277
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->calculateOutValue(III)I

    move-result v2

    .line 279
    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v3, v4}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->calculateOutValue(III)I

    move-result v0

    if-nez v2, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    if-lez v2, :cond_1

    .line 285
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    if-lez v0, :cond_2

    .line 286
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    .line 288
    :cond_2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    int-to-float p2, v2

    int-to-float v0, v0

    .line 289
    invoke-virtual {p1, p2, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 294
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 295
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 297
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 242
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x1020002

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->updateLayout(I)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->release()V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 376
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 382
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 394
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 400
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 388
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    .line 319
    iput v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mOrientation:I

    goto :goto_0

    .line 316
    :pswitch_0
    iput p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mOrientation:I

    .line 322
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->updateLayout(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPositiveButtonEnabled(Z)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 416
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 418
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setViewAsScrollable(Landroid/view/View;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mScrollableView:Landroid/view/View;

    .line 337
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mScrollableView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 340
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 351
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialog;->initialize()V

    :cond_0
    return-void
.end method
