.class Lcom/sonyericsson/android/camera3d/SaveTask$1;
.super Ljava/lang/Object;
.source "SaveTask.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/SaveTask;-><init>(Lcom/sonyericsson/android/camera3d/SaveTask$ISaveTaskEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SaveTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/SaveTask;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SaveTask$1;->this$0:Lcom/sonyericsson/android/camera3d/SaveTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveFinish(Z)V
    .locals 0

    return-void
.end method

.method public requestSaveProcess()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
