.class Lcom/sonyericsson/android/camera3d/Camera2App$9;
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

    .line 4220
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3

    .line 4223
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4224
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ANDRO"

    .line 4225
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v0, "ANDRO"

    .line 4226
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 4227
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4229
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 4230
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8500(Lcom/sonyericsson/android/camera3d/Camera2App;)I

    move-result v2

    if-le v0, v2, :cond_3

    const/16 v0, 0x3e7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_2

    goto :goto_0

    .line 4233
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/Camera2App$9;->this$0:Lcom/sonyericsson/android/camera3d/Camera2App;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/Camera2App;->access$8502(Lcom/sonyericsson/android/camera3d/Camera2App;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1

    :catch_0
    return v1
.end method
