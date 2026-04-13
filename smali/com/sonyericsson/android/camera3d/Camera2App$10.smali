.class Lcom/sonyericsson/android/camera3d/Camera2App$10;
.super Ljava/lang/Object;
.source "Camera2App.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/Camera2App;->createNewFilePath()Ljava/lang/String;
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

    .line 4255
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$10;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 8

    .line 4258
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4259
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DSC_"

    .line 4262
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "DSC_"

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "MOV_"

    .line 4265
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "MOV_"

    move-object v3, v0

    move v0, v1

    :goto_0
    const-string v4, "."

    .line 4271
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v5, v4, 0x1

    .line 4273
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_3

    .line 4274
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "JPG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    return v1

    :cond_3
    if-nez v0, :cond_4

    .line 4275
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "MP4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 4276
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4278
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 4279
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/Camera2App$10;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12400(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v3

    if-le v0, v3, :cond_6

    const/16 v0, 0x270f

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_5

    goto :goto_1

    .line 4282
    :cond_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$10;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$12402(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_6
    :goto_1
    return v1

    :catch_0
    return v1

    :cond_7
    return v1
.end method
