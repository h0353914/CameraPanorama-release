.class Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;
.super Lcom/sonyericsson/android/camera3d/base/PanoramaState;
.source "Camera2App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaInit"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 2082
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V
    .locals 0

    .line 2082
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    return-void
.end method


# virtual methods
.method public onSaveImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z
    .locals 5

    .line 2086
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->getImageFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6402(Lcom/sonyericsson/android/camera3d/Camera2App;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Camera2App"

    .line 2087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageFormat :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6400(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6500(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;

    move-result-object v0

    .line 2089
    sget-object v1, Lcom/sonyericsson/android/camera3d/Camera2App$31;->$SwitchMap$com$sonyericsson$android$camera3d$Camera2App$EnumResultCreateEngine:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Camera2App$EnumResultCreateEngine;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2116
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCapture()V

    const/4 p0, 0x0

    return p0

    .line 2110
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaPreview;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6602(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/PanoramaState;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    .line 2111
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->listener:Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->setPanoramaStateEventListener(Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;)V

    .line 2112
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->clearListener()V

    .line 2113
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CaptureImage;->close()V

    return v1

    .line 2099
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$4300(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6400(Lcom/sonyericsson/android/camera3d/Camera2App;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/MorphoPanoramaGP2;->setInputImageFormat(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "Camera2App"

    .line 2101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMorphoPanoramaGP2.setImageFormat error ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    new-instance v2, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaFirst;-><init>(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/Camera2App$1;)V

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6602(Lcom/sonyericsson/android/camera3d/Camera2App;Lcom/sonyericsson/android/camera3d/base/PanoramaState;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    .line 2105
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->listener:Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->setPanoramaStateEventListener(Lcom/sonyericsson/android/camera3d/base/PanoramaState$IPanoramaStateEventListener;)V

    .line 2106
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->clearListener()V

    .line 2107
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$6600(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/PanoramaState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/base/PanoramaState;->onSaveImage(Lcom/sonyericsson/android/camera3d/CaptureImage;)Z

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public repeatTakePicture()V
    .locals 1

    .line 2124
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$2200(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/InternalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/InternalSettings;->getCaptureMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    .line 2131
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePictureBurst()Z

    move-result v0

    goto :goto_0

    .line 2134
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePictureZSL()Z

    move-result v0

    goto :goto_0

    .line 2128
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$1700(Lcom/sonyericsson/android/camera3d/Camera2App;)Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/base/MorphoCameraBase;->takePicture()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    .line 2138
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$PanoramaInit;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/Camera2App;->onErrorCapture()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
