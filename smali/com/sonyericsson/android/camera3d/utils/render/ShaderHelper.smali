.class public Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;
.super Ljava/lang/Object;
.source "ShaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;
    }
.end annotation


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field public static final MODE_USING_ExtImg:I = 0x1

.field public static final MODE_USING_Tex2D:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShaderHelper"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final mFragmentShaderExtImg:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord).rgba; \n}\n"

.field private static final mFragmentShaderTex2D:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord).rgba; \n}\n"

.field private static final mTriangleVerticesDataBase:[F

.field private static final mVertexShader:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"


# instance fields
.field public mInitialized:Z

.field public final mMVPMatrix:[F

.field public mMode:I

.field public mProgram:I

.field public final mSTMatrix:[F

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private mTriangleVerticesData:[F

.field public maPositionHandle:I

.field public maTextureHandle:I

.field public muMVPMatrixHandle:I

.field public muSTMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    .line 194
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVerticesDataBase:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 66
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mMVPMatrix:[F

    .line 67
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mSTMatrix:[F

    const/16 v0, 0x14

    .line 200
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVerticesData:[F

    return-void
.end method

.method public static activateFBO(Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mFrameBuffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 303
    const-string v0, "glBindFramebuffer"

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0x4100

    .line 304
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 305
    iget v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mWidth:I

    iget p0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mHeight:I

    invoke-static {v1, v1, v0, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method private static checkGlError(Ljava/lang/String;)V
    .locals 4

    .line 252
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ShaderHelper"

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v0, 0x8b31

    .line 222
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->loadShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 226
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 231
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 234
    const-string p0, "glAttachShader"

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    .line 235
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 236
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    .line 237
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p0, 0x1

    .line 238
    new-array p1, p0, [I

    const v2, 0x8b82

    .line 239
    invoke-static {v1, v2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 240
    aget p1, p1, v0

    if-eq p1, p0, :cond_2

    .line 241
    const-string p0, "Could not link program: "

    const-string p1, "ShaderHelper"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public static inactivateFBO()V
    .locals 2

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 310
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 3

    .line 205
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 208
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    .line 209
    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 210
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 211
    aget p1, p1, v2

    if-nez p1, :cond_0

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Could not compile shader "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShaderHelper"

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    :cond_0
    return v0
.end method


# virtual methods
.method public finalizeShader()V
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mInitialized:Z

    return-void
.end method

.method public initShader(I)V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->initShaderWithTexCoord(IFFFF)V

    return-void
.end method

.method public initShaderWithTexCoord(IFFFF)V
    .locals 2

    .line 77
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mMode:I

    if-nez p1, :cond_1

    .line 81
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord).rgba; \n}\n"

    goto :goto_0

    :cond_1
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord).rgba; \n}\n"

    :goto_0
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mProgram:I

    if-nez p1, :cond_2

    .line 83
    const-string p0, "ShaderHelper"

    const-string p1, "Error createProgram for FBO shader"

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera3d/utils/LogFilter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_2
    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->maPositionHandle:I

    .line 87
    const-string p1, "glGetAttribLocation aPosition"

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    .line 88
    iget p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->maPositionHandle:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    .line 92
    iget p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->maTextureHandle:I

    .line 93
    const-string p1, "glGetAttribLocation aTextureCoord"

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    .line 94
    iget p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->maTextureHandle:I

    if-eq p1, v0, :cond_5

    .line 99
    iget p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->muMVPMatrixHandle:I

    .line 100
    const-string p1, "glGetUniformLocation uMVPMatrix"

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    .line 101
    iget p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->muMVPMatrixHandle:I

    if-eq p1, v0, :cond_4

    .line 106
    iget p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->muSTMatrixHandle:I

    .line 107
    const-string p1, "glGetUniformLocation uSTMatrix"

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    .line 108
    iget p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->muSTMatrixHandle:I

    if-eq p1, v0, :cond_3

    .line 112
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mSTMatrix:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mInitialized:Z

    .line 117
    sget-object p1, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVerticesDataBase:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVerticesData:[F

    .line 118
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    .line 119
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 120
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 121
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->modifyVerticesUV(FFFF)V

    return-void

    .line 109
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not get attrib location for uSTMatrix"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not get attrib location for aTextureCoord"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not get attrib location for aPosition"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public modifyVerticesUV(FFFF)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVerticesData:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    .line 129
    aput p2, v0, v1

    const/16 v1, 0x8

    .line 130
    aput p3, v0, v1

    const/16 v1, 0x9

    .line 131
    aput p2, v0, v1

    const/16 p2, 0xd

    .line 132
    aput p1, v0, p2

    const/16 p1, 0xe

    .line 133
    aput p4, v0, p1

    const/16 p1, 0x12

    .line 134
    aput p3, v0, p1

    const/16 p1, 0x13

    .line 135
    aput p4, v0, p1

    .line 136
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 137
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVerticesData:[F

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public renderTexture(ILandroid/graphics/Rect;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 153
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 154
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 155
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v2, p2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_0
    const/16 p2, 0x4100

    .line 157
    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 159
    iget p2, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mProgram:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 160
    const-string p2, "glUseProgram"

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    const p2, 0x84c0

    .line 162
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 163
    const-string p2, "glActiveTexture"

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    .line 165
    iget p2, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mMode:I

    if-nez p2, :cond_1

    const/16 p2, 0xde1

    goto :goto_0

    :cond_1
    const p2, 0x8d65

    :goto_0
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 166
    const-string p1, "glBindTexture"

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    iget v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->maPositionHandle:I

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 171
    const-string p1, "glVertexAttribPointer maPositionHandleTex2D"

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    .line 172
    iget p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->maPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 173
    const-string p1, "glEnableVertexAttribArray maPositionHandleTex2D"

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    iget v1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->maTextureHandle:I

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 178
    const-string p1, "glVertexAttribPointer maTextureHandleTex2D"

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    .line 179
    iget p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->maTextureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 180
    const-string p1, "glEnableVertexAttribArray maTextureHandleTex2D"

    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mMVPMatrix:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 183
    iget p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->muMVPMatrixHandle:I

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mMVPMatrix:[F

    const/4 v1, 0x1

    invoke-static {p1, v1, p2, v0, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 184
    iget p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->muSTMatrixHandle:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->mSTMatrix:[F

    invoke-static {p1, v1, p2, p0, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    .line 186
    invoke-static {p0, p2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 187
    const-string p0, "glDrawArrays"

    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
