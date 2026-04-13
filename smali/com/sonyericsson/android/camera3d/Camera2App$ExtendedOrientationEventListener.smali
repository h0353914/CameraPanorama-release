.class Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtendedOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/content/Context;)V
    .locals 0

    .line 6397
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 6398
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setViewsRotation(I)V
    .locals 5

    .line 6437
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6439
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->rotateView(I)V

    .line 6441
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6443
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->rotateView(I)V

    .line 6445
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6447
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->rotateView(I)V

    .line 6449
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xb4

    if-eqz v0, :cond_5

    .line 6450
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setRotation(F)V

    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 6455
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x800005

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 6456
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_1

    .line 6452
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 6453
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11300(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 6459
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6460
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_LICENSE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    if-ne v0, v2, :cond_6

    .line 6461
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object v2, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OTHER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14900(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    .line 6462
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3202(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 6463
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object v2, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_LICENSE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1900(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_2

    .line 6465
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    move-result-object v0

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->setRotation(F)V

    .line 6468
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Util;->isMarshmallow()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 6469
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    move-result-object v0

    const/4 v3, 0x3

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6470
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->dismiss()V

    .line 6471
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15100(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 6473
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6474
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->dismiss()V

    .line 6475
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15300()[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6476
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15400(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    goto :goto_3

    .line 6478
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15400(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 6482
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15500(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/RotatableToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->getRotatableToast()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6483
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15500(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/RotatableToast;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->toggleRotatableToastVisibility(I)V

    :cond_b
    if-eqz p1, :cond_d

    if-ne p1, v1, :cond_c

    goto :goto_4

    .line 6490
    :cond_c
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingList;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/SettingList;->setOrientation(I)V

    .line 6491
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setOrientation(I)V

    .line 6492
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setOrientation(I)V

    goto :goto_5

    .line 6486
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingList;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->setOrientation(I)V

    .line 6487
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setOrientation(I)V

    .line 6488
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setOrientation(I)V

    .line 6494
    :goto_5
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e

    .line 6495
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15900(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/view/View;)V

    .line 6497
    :cond_e
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f

    .line 6498
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15800(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15900(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/view/View;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 6407
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14500(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 6410
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2400(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    add-int/2addr p1, v0

    rem-int/lit16 p1, p1, 0x168

    const/16 v0, 0x1e

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    const/16 v0, 0x14a

    if-ge v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    if-gt v0, p1, :cond_3

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_3

    .line 6421
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14300(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_3

    .line 6422
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14302(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 6423
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->setViewsRotation(I)V

    .line 6424
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14600(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 6425
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    goto :goto_1

    .line 6413
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14300(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 6414
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14302(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 6415
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->setViewsRotation(I)V

    .line 6416
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14600(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 6417
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method
