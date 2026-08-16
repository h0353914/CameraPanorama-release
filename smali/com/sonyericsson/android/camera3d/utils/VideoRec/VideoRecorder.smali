.class public Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;
.super Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MORPHO"


# instance fields
.field private mInputSurface:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;

.field private mShader:Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;


# direct methods
.method public constructor <init>(IIIFLjava/lang/String;)V
    .locals 7

    const v5, 0x7f000789

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;-><init>(IIIFILjava/lang/String;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mShader:Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;

    .line 29
    const-string p1, "VideoRecorder enter"

    const-string p2, "MORPHO"

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p1

    .line 31
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p3

    const/16 p4, 0x305a

    .line 32
    invoke-static {p4}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p4

    const/16 p5, 0x3059

    .line 33
    invoke-static {p5}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object p5

    .line 35
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p3, v0, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->mSurface:Landroid/view/Surface;

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;-><init>(Landroid/view/Surface;Landroid/opengl/EGLContext;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mInputSurface:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;

    .line 40
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->makeCurrent()V

    .line 41
    new-instance v0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mShader:Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->initShader(I)V

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mInputSurface:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->unbind()V

    .line 45
    invoke-static {p3, p5, p4, p1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 46
    const-string p0, "VideoRecorder exit"

    invoke-static {p2, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeFrame(JI)V
    .locals 6

    .line 51
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    .line 52
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/16 v2, 0x305a

    .line 53
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    const/16 v3, 0x3059

    .line 54
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v3

    .line 56
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mInputSurface:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->makeCurrent()V

    const/4 v4, 0x0

    .line 58
    invoke-super {p0, v4}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->drainEncoder(Z)V

    .line 60
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mShader:Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;

    const/4 v5, 0x0

    invoke-virtual {v4, p3, v5}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->renderTexture(ILandroid/graphics/Rect;)V

    .line 62
    iget-object p3, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mInputSurface:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;

    invoke-virtual {p3, p1, p2}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->setPresentationTime(J)V

    .line 63
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mInputSurface:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->swapBuffers()V

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mInputSurface:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->unbind()V

    .line 66
    invoke-static {v1, v3, v2, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method

.method public end()V
    .locals 6

    .line 71
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    .line 72
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/16 v2, 0x305a

    .line 73
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    const/16 v3, 0x3059

    .line 74
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mInputSurface:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->unbind()V

    .line 76
    const-string v4, "end process start..."

    const-string v5, "MORPHO"

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mInputSurface:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->makeCurrent()V

    .line 78
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/BaseVideoRecorder;->end()V

    .line 80
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mInputSurface:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->release()V

    const/4 v4, 0x0

    .line 82
    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;->mInputSurface:Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;

    .line 84
    :cond_0
    const-string p0, "record ended!!!!"

    invoke-static {v5, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {v1, v3, v2, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method
