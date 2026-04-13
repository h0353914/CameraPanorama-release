.class Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodecInputSurface"
.end annotation


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mParentContext:Landroid/opengl/EGLContext;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Landroid/opengl/EGLContext;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 93
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 94
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 95
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mParentContext:Landroid/opengl/EGLContext;

    if-nez p1, :cond_0

    .line 101
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mSurface:Landroid/view/Surface;

    .line 104
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mParentContext:Landroid/opengl/EGLContext;

    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->eglSetup()V

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 2

    .line 194
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    const/16 v0, 0x3000

    if-eq p0, v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL error: 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private eglSetup()V
    .locals 12

    const/4 v0, 0x0

    .line 114
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 115
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v1, v2, :cond_0

    .line 116
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "unable to get EGL14 display"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v1, 0x2

    .line 118
    new-array v1, v1, [I

    .line 119
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v1, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "unable to initialize EGL14"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v1, 0xb

    .line 124
    new-array v5, v1, [I

    fill-array-data v5, :array_0

    .line 128
    new-array v1, v3, [Landroid/opengl/EGLConfig;

    .line 129
    new-array v10, v3, [I

    .line 130
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    array-length v9, v1

    const/4 v11, 0x0

    move-object v7, v1

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    const-string v2, "eglCreateContext RGB888+recordable ES2"

    .line 132
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 135
    new-array v2, v2, [I

    fill-array-data v2, :array_1

    .line 137
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v5, v1, v0

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mParentContext:Landroid/opengl/EGLContext;

    invoke-static {v4, v5, v6, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    const-string v2, "eglCreateContext"

    .line 139
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    .line 143
    new-array v2, v3, [I

    const/16 v3, 0x3038

    aput v3, v2, v0

    .line 144
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v1, v1, v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mSurface:Landroid/view/Surface;

    invoke-static {v3, v1, v4, v2, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const-string v0, "eglCreateWindowSurface"

    .line 146
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public makeCurrent()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string v0, "eglMakeCurrent"

    .line 169
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string p1, "eglMakeCurrent"

    .line 174
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 159
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 160
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 161
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    const-string p1, "eglPresentationTimeANDROID"

    .line 189
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method public swapBuffers()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    const-string v0, "eglSwapBuffers"

    .line 184
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    return-void
.end method

.method public unbind()V
    .locals 3

    .line 178
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/VideoRec/VideoRecorder$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p0, v0, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method
