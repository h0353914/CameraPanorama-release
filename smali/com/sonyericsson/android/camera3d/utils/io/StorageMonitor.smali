.class public Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;
.super Ljava/lang/Object;
.source "StorageMonitor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Camera2App"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableExternalStorageSpace(Landroid/content/Context;)J
    .locals 2

    .line 91
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getExternalStorageRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getAvailableStorageSpace(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static getAvailableInternalStorageSpace()J
    .locals 2

    .line 107
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->getAvailableStorageSpace(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method private static getAvailableStorageSpace(Ljava/io/File;)J
    .locals 5

    .line 121
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    .line 123
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static getExternalStorageRootPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 59
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->isExternalStorageMounted(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 62
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v1, "/storage/"

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 65
    array-length v1, p0

    if-lez v1, :cond_4

    .line 66
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "emulated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    .line 72
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const-string v6, "Camera2App"

    const-string v7, "%s is %s"

    const/4 v8, 0x2

    .line 76
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->isMounted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "mounted."

    goto :goto_2

    :cond_2
    const-string v4, "not mounted."

    :goto_2
    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/utils/io/StorageMonitor;->isMounted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method public static getInternalStorageRootPath()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isExternalStorageMounted(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    .line 26
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 28
    invoke-static {v3}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isExternalStorageWritable(Ljava/lang/String;)Z
    .locals 1

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    return p0
.end method

.method private static isMounted(Ljava/lang/String;)Z
    .locals 1

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result p0

    return p0
.end method
