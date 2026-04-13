.class public Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;
.super Ljava/lang/Object;
.source "ShaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureFBO"
.end annotation


# instance fields
.field public final mFrameBuffer:[I

.field public final mHeight:I

.field public final mTexture:[I

.field public final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 10

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 261
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mFrameBuffer:[I

    .line 262
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mTexture:[I

    .line 265
    iput p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mWidth:I

    .line 266
    iput p2, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mHeight:I

    .line 268
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mFrameBuffer:[I

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 271
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mTexture:[I

    invoke-static {v0, p1, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 272
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mTexture:[I

    aget p1, p1, p2

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 275
    iget v4, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mWidth:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mHeight:I

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const p1, 0x812f

    const/16 v1, 0x2802

    .line 278
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 279
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2601

    const/16 v1, 0x2800

    .line 280
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    .line 281
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 283
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 285
    iget-object p1, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mFrameBuffer:[I

    aget p1, p1, p2

    const v1, 0x8d40

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 288
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mTexture:[I

    aget p0, p0, p2

    const p1, 0x8ce0

    invoke-static {v1, p1, v0, p0, p2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 290
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mFrameBuffer:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 295
    iget-object p0, p0, Lcom/sonyericsson/android/camera3d/utils/render/ShaderHelper$TextureFBO;->mTexture:[I

    invoke-static {v2, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method
