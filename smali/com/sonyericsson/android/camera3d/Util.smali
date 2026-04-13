.class public Lcom/sonyericsson/android/camera3d/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/Util$ApplicationType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermissionGrant([Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 26
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 30
    invoke-virtual {p1, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method

.method public static checkPermissionsResult([I)Z
    .locals 4

    .line 47
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static determineDialogType(Ljava/util/List;Landroid/app/Activity;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            ")Z"
        }
    .end annotation

    .line 71
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 72
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static getApplicationType(Landroid/content/Context;)Lcom/sonyericsson/android/camera3d/Util$ApplicationType;
    .locals 2

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 101
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    .line 102
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    .line 105
    sget-object p0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->UPDATED_SYSTEM_APP:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    return-object p0

    :cond_0
    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    .line 108
    sget-object p0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->SYSTEM:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    return-object p0

    .line 111
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->OTHER:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    return-object p0

    .line 115
    :cond_2
    sget-object p0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->OTHER:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    return-object p0

    .line 119
    :cond_3
    sget-object p0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->OTHER:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 123
    :catch_0
    sget-object p0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->OTHER:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    return-object p0
.end method

.method public static getPermissionNotGranted([Ljava/lang/String;Landroid/app/Activity;)Ljava/util/List;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 61
    invoke-virtual {p1, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isMarshmallow()Z
    .locals 2

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSystemApp(Landroid/content/Context;)Z
    .locals 1

    .line 89
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/Util;->getApplicationType(Landroid/content/Context;)Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->OTHER:Lcom/sonyericsson/android/camera3d/Util$ApplicationType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/Util$ApplicationType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
