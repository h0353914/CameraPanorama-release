.class public Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;
.super Landroid/app/Activity;
.source "RequestPermissionSdCardActivity.java"


# static fields
.field public static final EXTERNAL_STORAGE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"

.field public static final EXTRA_SHOW_ADVANCED:Ljava/lang/String; = "android.provider.extra.SHOW_ADVANCED"

.field public static final TAG:Ljava/lang/String; = "RequestPermissionSdCardActivity"


# instance fields
.field private final FLAG_SD_PERMISSION:I

.field private final REQUEST_CODE_SD_CARD_GRANTED:I

.field private mReceiveUri:Landroid/net/Uri;

.field private mSendUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x100

    .line 33
    iput v0, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->REQUEST_CODE_SD_CARD_GRANTED:I

    const/4 v0, 0x3

    .line 34
    iput v0, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->FLAG_SD_PERMISSION:I

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mReceiveUri:Landroid/net/Uri;

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mSendUri:Landroid/net/Uri;

    return-void
.end method

.method private deleteCheckPermission(Landroid/net/Uri;)Z
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mReceiveUri:Landroid/net/Uri;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mReceiveUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "RequestPermissionSdCardActivity"

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePermissions :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mReceiveUri:Landroid/net/Uri;

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string p1, "RequestPermissionSdCardActivity"

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releasePersistableUriPermission Exception Occurred:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method private finish(I)V
    .locals 2

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mSendUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mSendUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->setResult(ILandroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->finish()V

    return-void
.end method

.method private requestPermissionSdCard()V
    .locals 8

    const-string v0, ""

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 69
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    .line 71
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 72
    aget-object v6, v4, v5

    const-string v7, "emulated"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    aget-object v0, v4, v5

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const-string v1, "storage"

    .line 77
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 78
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_3

    .line 80
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.android.externalstorage.documents"

    .line 81
    invoke-static {v2, v0}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 83
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.provider.extra.INITIAL_URI"

    .line 84
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.provider.extra.SHOW_ADVANCED"

    const/4 v4, 0x1

    .line 85
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x100

    .line 86
    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const-string v0, "RequestPermissionSdCardActivity"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 134
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->finish(I)V

    goto/16 :goto_4

    .line 108
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mSendUri:Landroid/net/Uri;

    const-string p2, ""

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 111
    array-length v1, v0

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 114
    aget-object v5, v3, v4

    const-string v6, "emulated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 115
    :cond_1
    aget-object p2, v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_3
    :goto_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mSendUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    .line 129
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->finish(I)V

    goto :goto_4

    .line 122
    :cond_5
    :goto_3
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mSendUri:Landroid/net/Uri;

    invoke-virtual {p2, p3, p1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    const-string p1, "RequestPermissionSdCardActivity"

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Storage URI Permission granted :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mSendUri:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mSendUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->deleteCheckPermission(Landroid/net/Uri;)Z

    const/4 p1, -0x1

    .line 127
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->finish(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "RequestPermissionSdCardActivity"

    const-string v1, "onCreate() start"

    .line 46
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001b

    .line 49
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->mReceiveUri:Landroid/net/Uri;

    .line 52
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/RequestPermissionSdCardActivity;->requestPermissionSdCard()V

    const-string p0, "RequestPermissionSdCardActivity"

    const-string p1, "onCreate() end"

    .line 54
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "RequestPermissionSdCardActivity"

    const-string v1, "onStop() start"

    .line 93
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string p0, "RequestPermissionSdCardActivity"

    const-string v0, "onStop() end"

    .line 95
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
