package com.sonyericsson.android.camera3d.utils.render;

import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class ShaderHelper {
    private static final int FLOAT_SIZE_BYTES = 4;
    private static final int GL_TEXTURE_EXTERNAL_OES = 36197;
    public static final int MODE_USING_ExtImg = 1;
    public static final int MODE_USING_Tex2D = 0;
    private static final String TAG = "ShaderHelper";
    private static final int TRIANGLE_VERTICES_DATA_POS_OFFSET = 0;
    private static final int TRIANGLE_VERTICES_DATA_STRIDE_BYTES = 20;
    private static final int TRIANGLE_VERTICES_DATA_UV_OFFSET = 3;
    private static final String mFragmentShaderExtImg = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord).rgba; \n}\n";
    private static final String mFragmentShaderTex2D = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord).rgba; \n}\n";
    private static final float[] mTriangleVerticesDataBase = {-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
    private static final String mVertexShader = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
    public boolean mInitialized;
    public int mMode;
    public int mProgram;
    private FloatBuffer mTriangleVertices;
    public int maPositionHandle;
    public int maTextureHandle;
    public int muMVPMatrixHandle;
    public int muSTMatrixHandle;
    public final float[] mMVPMatrix = new float[16];
    public final float[] mSTMatrix = new float[16];
    private float[] mTriangleVerticesData = new float[20];

    public void initShader(int i) {
        initShaderWithTexCoord(i, 0.0f, 0.0f, 1.0f, 1.0f);
    }

    public void initShaderWithTexCoord(int i, float f, float f2, float f3, float f4) {
        if (this.mInitialized) {
            return;
        }
        this.mMode = i;
        int iCreateProgram = createProgram(mVertexShader, i == 0 ? mFragmentShaderTex2D : mFragmentShaderExtImg);
        this.mProgram = iCreateProgram;
        if (iCreateProgram == 0) {
            LogFilter.e(TAG, "Error createProgram for FBO shader");
            return;
        }
        this.maPositionHandle = GLES20.glGetAttribLocation(iCreateProgram, "aPosition");
        checkGlError("glGetAttribLocation aPosition");
        if (this.maPositionHandle == -1) {
            throw new RuntimeException("Could not get attrib location for aPosition");
        }
        this.maTextureHandle = GLES20.glGetAttribLocation(this.mProgram, "aTextureCoord");
        checkGlError("glGetAttribLocation aTextureCoord");
        if (this.maTextureHandle == -1) {
            throw new RuntimeException("Could not get attrib location for aTextureCoord");
        }
        this.muMVPMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uMVPMatrix");
        checkGlError("glGetUniformLocation uMVPMatrix");
        if (this.muMVPMatrixHandle == -1) {
            throw new RuntimeException("Could not get attrib location for uMVPMatrix");
        }
        this.muSTMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uSTMatrix");
        checkGlError("glGetUniformLocation uSTMatrix");
        if (this.muSTMatrixHandle == -1) {
            throw new RuntimeException("Could not get attrib location for uSTMatrix");
        }
        Matrix.setIdentityM(this.mSTMatrix, 0);
        this.mInitialized = true;
        float[] fArr = (float[]) mTriangleVerticesDataBase.clone();
        this.mTriangleVerticesData = fArr;
        this.mTriangleVertices = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        modifyVerticesUV(f, f2, f3, f4);
    }

    public void modifyVerticesUV(float f, float f2, float f3, float f4) {
        float[] fArr = this.mTriangleVerticesData;
        fArr[3] = f;
        fArr[4] = f2;
        fArr[8] = f3;
        fArr[9] = f2;
        fArr[13] = f;
        fArr[14] = f4;
        fArr[18] = f3;
        fArr[19] = f4;
        this.mTriangleVertices.position(0);
        this.mTriangleVertices.put(this.mTriangleVerticesData).position(0);
    }

    public void finalizeShader() {
        if (this.mInitialized) {
            GLES20.glDeleteProgram(this.mProgram);
            this.mTriangleVertices = null;
            this.mInitialized = false;
        }
    }

    public void renderTexture(int i, Rect rect) {
        if (rect != null) {
            GLES20.glViewport(rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top);
        }
        GLES20.glClear(16640);
        GLES20.glUseProgram(this.mProgram);
        checkGlError("glUseProgram");
        GLES20.glActiveTexture(33984);
        checkGlError("glActiveTexture");
        GLES20.glBindTexture(this.mMode == 0 ? 3553 : GL_TEXTURE_EXTERNAL_OES, i);
        checkGlError("glBindTexture");
        this.mTriangleVertices.position(0);
        GLES20.glVertexAttribPointer(this.maPositionHandle, 3, 5126, false, 20, (Buffer) this.mTriangleVertices);
        checkGlError("glVertexAttribPointer maPositionHandleTex2D");
        GLES20.glEnableVertexAttribArray(this.maPositionHandle);
        checkGlError("glEnableVertexAttribArray maPositionHandleTex2D");
        this.mTriangleVertices.position(3);
        GLES20.glVertexAttribPointer(this.maTextureHandle, 2, 5126, false, 20, (Buffer) this.mTriangleVertices);
        checkGlError("glVertexAttribPointer maTextureHandleTex2D");
        GLES20.glEnableVertexAttribArray(this.maTextureHandle);
        checkGlError("glEnableVertexAttribArray maTextureHandleTex2D");
        Matrix.setIdentityM(this.mMVPMatrix, 0);
        GLES20.glUniformMatrix4fv(this.muMVPMatrixHandle, 1, false, this.mMVPMatrix, 0);
        GLES20.glUniformMatrix4fv(this.muSTMatrixHandle, 1, false, this.mSTMatrix, 0);
        GLES20.glDrawArrays(5, 0, 4);
        checkGlError("glDrawArrays");
    }

    private static int loadShader(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        if (iGlCreateShader == 0) {
            return iGlCreateShader;
        }
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        // 對照 smali：這裡實際上是字面常數 ":"，不是 InternalSettings.SETTING_SEPARATOR
        // （jadx 的 --replace-consts 誤把字面值比對到另一個恰好也是 ":" 的欄位）。
        LogFilter.e(TAG, "Could not compile shader " + i + ":");
        LogFilter.e(TAG, GLES20.glGetShaderInfoLog(iGlCreateShader));
        GLES20.glDeleteShader(iGlCreateShader);
        return 0;
    }

    private static int createProgram(String str, String str2) {
        int iLoadShader;
        int iLoadShader2 = loadShader(35633, str);
        if (iLoadShader2 == 0 || (iLoadShader = loadShader(35632, str2)) == 0) {
            return 0;
        }
        int iGlCreateProgram = GLES20.glCreateProgram();
        if (iGlCreateProgram != 0) {
            GLES20.glAttachShader(iGlCreateProgram, iLoadShader2);
            checkGlError("glAttachShader");
            GLES20.glAttachShader(iGlCreateProgram, iLoadShader);
            checkGlError("glAttachShader");
            GLES20.glLinkProgram(iGlCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                LogFilter.e(TAG, "Could not link program: ");
                LogFilter.e(TAG, GLES20.glGetProgramInfoLog(iGlCreateProgram));
                GLES20.glDeleteProgram(iGlCreateProgram);
                return 0;
            }
        }
        return iGlCreateProgram;
    }

    private static void checkGlError(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return;
        }
        LogFilter.e(TAG, str + ": glError " + iGlGetError);
        throw new RuntimeException(str + ": glError " + iGlGetError);
    }

    public static class TextureFBO {
        public final int[] mFrameBuffer;
        public final int mHeight;
        public final int[] mTexture;
        public final int mWidth;

        public TextureFBO(int i, int i2) {
            int[] iArr = new int[1];
            this.mFrameBuffer = iArr;
            int[] iArr2 = new int[1];
            this.mTexture = iArr2;
            this.mWidth = i;
            this.mHeight = i2;
            GLES20.glGenFramebuffers(1, iArr, 0);
            GLES20.glGenTextures(1, iArr2, 0);
            GLES20.glBindTexture(3553, iArr2[0]);
            GLES20.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, null);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glBindTexture(3553, 0);
            GLES20.glBindFramebuffer(36160, iArr[0]);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, iArr2[0], 0);
            GLES20.glBindFramebuffer(36160, 0);
        }

        public void release() {
            GLES20.glDeleteFramebuffers(1, this.mFrameBuffer, 0);
            GLES20.glDeleteTextures(1, this.mTexture, 0);
        }
    }

    public static void activateFBO(TextureFBO textureFBO) {
        GLES20.glBindFramebuffer(36160, textureFBO.mFrameBuffer[0]);
        checkGlError("glBindFramebuffer");
        GLES20.glClear(16640);
        GLES20.glViewport(0, 0, textureFBO.mWidth, textureFBO.mHeight);
    }

    public static void inactivateFBO() {
        GLES20.glBindFramebuffer(36160, 0);
    }
}
