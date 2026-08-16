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

    .line 6210
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    .line 6211
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setViewsRotation(I)V
    .locals 7

    .line 6249
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;

    move-result-object v0

    const/16 v1, 0xb4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_2

    move v5, p1

    goto :goto_2

    :cond_2
    add-int/lit16 v5, p1, 0xb4

    .line 6251
    rem-int/lit16 v5, v5, 0x168

    :goto_2
    if-eqz v0, :cond_3

    .line 6254
    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera3d/HeaderButtonsFragment;->rotateView(I)V

    .line 6256
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6258
    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera3d/FooterButtonsFragment;->rotateView(I)V

    .line 6260
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InfoIconsFragment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6262
    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera3d/InfoIconsFragment;->rotateView(I)V

    .line 6264
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v6, 0x5a

    if-eqz v0, :cond_9

    if-eqz v4, :cond_6

    .line 6266
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    int-to-float v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setRotation(F)V

    .line 6267
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 6268
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_4

    :cond_6
    if-eq p1, v6, :cond_7

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_9

    .line 6270
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    int-to-float v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setRotation(F)V

    .line 6271
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v6, :cond_8

    const v4, 0x800003

    goto :goto_3

    :cond_8
    const v4, 0x800005

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 6272
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$11000(Lcom/sonyericsson/android/camera3d/Camera2App;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 6275
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6276
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    move-result-object v0

    sget-object v4, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_LICENSE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    if-ne v0, v4, :cond_a

    .line 6277
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object v4, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;->DISMISS_FACTOR_OTHER:Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;

    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14400(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment$EnumDismissFactor;)V

    .line 6278
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object v4, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_NONE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3202(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    .line 6279
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    sget-object v4, Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;->DIALOG_TYPE_LICENSE:Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;

    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1900(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$EnumDialogType;)V

    goto :goto_5

    .line 6281
    :cond_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$3300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;

    move-result-object v0

    int-to-float v4, p1

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera3d/dialog/RotatableDialogFragment;->setRotation(F)V

    .line 6284
    :cond_b
    :goto_5
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Util;->isMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6285
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14500(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    move-result-object v0

    const/4 v4, 0x3

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14500(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6286
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14500(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertOkDialog;->dismiss()V

    .line 6287
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14600(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 6289
    :cond_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6290
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/dialog/AlertSettingDialog;->dismiss()V

    .line 6291
    invoke-static {}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14800()[Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v5}, Lcom/sonyericsson/android/camera3d/Util;->checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6292
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14900(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    goto :goto_6

    .line 6294
    :cond_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14900(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 6298
    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/RotatableToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/RotatableToast;->getRotatableToast()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6299
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15000(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/RotatableToast;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/RotatableToast;->toggleRotatableToastVisibility(I)V

    :cond_f
    if-eqz p1, :cond_14

    if-ne p1, v1, :cond_10

    goto :goto_a

    .line 6306
    :cond_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15100(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/SettingList;->setOrientation(I)V

    .line 6307
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setOrientation(I)V

    .line 6308
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setOrientation(I)V

    .line 6309
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15100(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingList;

    move-result-object v0

    if-ne p1, v6, :cond_11

    move v1, v2

    goto :goto_7

    :cond_11
    move v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/SettingList;->setReverseLandscape(Z)V

    .line 6310
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object v0

    if-ne p1, v6, :cond_12

    move v1, v2

    goto :goto_8

    :cond_12
    move v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setReverseLandscape(Z)V

    .line 6311
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object v0

    if-ne p1, v6, :cond_13

    goto :goto_9

    :cond_13
    move v2, v3

    :goto_9
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setReverseLandscape(Z)V

    goto :goto_b

    .line 6302
    :cond_14
    :goto_a
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15100(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingList;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera3d/SettingList;->setOrientation(I)V

    .line 6303
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setOrientation(I)V

    .line 6304
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera3d/SettingSubList;->setOrientation(I)V

    .line 6313
    :goto_b
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_15

    .line 6314
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15400(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/view/View;)V

    .line 6316
    :cond_15
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_16

    .line 6317
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/SettingSubList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/SettingSubList;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$15400(Lcom/sonyericsson/android/camera3d/Camera2App;Landroid/view/View;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 6220
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14000(Lcom/sonyericsson/android/camera3d/Camera2App;I)V

    .line 6223
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2400(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    add-int/2addr p1, v0

    rem-int/lit16 p1, p1, 0x168

    .line 6224
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_4

    const/16 v1, 0x14a

    if-ge v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3c

    if-gt v1, p1, :cond_2

    const/16 v1, 0x78

    if-ge p1, v1, :cond_2

    const/16 v0, 0x5a

    goto :goto_1

    :cond_2
    const/16 v1, 0x96

    if-gt v1, p1, :cond_3

    const/16 v1, 0xd2

    if-ge p1, v1, :cond_3

    const/16 v0, 0xb4

    goto :goto_1

    :cond_3
    const/16 v1, 0xf0

    if-gt v1, p1, :cond_5

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_5

    const/16 v0, 0x10e

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 6234
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13700(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result p1

    if-eq p1, v0, :cond_6

    .line 6235
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$13702(Lcom/sonyericsson/android/camera3d/Camera2App;I)I

    .line 6236
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->setViewsRotation(I)V

    .line 6237
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->isEngineRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$14100(Lcom/sonyericsson/android/camera3d/Camera2App;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 6238
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$ExtendedOrientationEventListener;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->onClickShutter(Landroid/view/View;)V

    :cond_6
    return-void
.end method
