.class Lcom/sonyericsson/android/camera3d/Camera2App$11;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->createNewSDFilePath()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/Camera2App;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/Camera2App;)V
    .locals 0

    .line 4361
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$11;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7

    const/4 p1, 0x0

    .line 4365
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    const-string v0, "DSC_"

    .line 4368
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "DSC_"

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "MOV_"

    .line 4371
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MOV_"

    move-object v2, v0

    move v0, p1

    :goto_0
    const-string v3, "."

    .line 4377
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    return p1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 4379
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    .line 4380
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "JPG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    return p1

    :cond_2
    if-nez v0, :cond_3

    .line 4381
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "MP4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return p1

    .line 4382
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 4383
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$11;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12400(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v0

    if-lt p2, v0, :cond_5

    if-gt v1, p2, :cond_5

    const/16 v0, 0x270f

    if-gt p2, v0, :cond_5

    .line 4385
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$11;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12402(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_4
    return p1

    :cond_5
    return p1

    :catch_0
    return p1
.end method
