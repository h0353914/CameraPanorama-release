package com.sonyericsson.android.camera3d.utils.render;

import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.Matrix;

import com.sonyericsson.android.camera3d.utils.LogFilter;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class ShaderHelper {
    private static final int FLOAT_SIZE_BYTES = 0x4;
    private static final int GL_TEXTURE_EXTERNAL_OES = 0x8d65;
    public static final int MODE_USING_ExtImg = 0x1;
    public static final int MODE_USING_Tex2D = 0x0;
    private static final String TAG = "ShaderHelper";
    private static final int TRIANGLE_VERTICES_DATA_POS_OFFSET = 0x0;
    private static final int TRIANGLE_VERTICES_DATA_STRIDE_BYTES = 0x14;
    private static final int TRIANGLE_VERTICES_DATA_UV_OFFSET = 0x3;

    private static final String mFragmentShaderExtImg =
            "#extension GL_OES_EGL_image_external : require\n" +
                    "precision mediump float;\n" +
                    "varying vec2 vTextureCoord;\n" +
                    "uniform samplerExternalOES sTexture;\n" +
                    "void main() {\n" +
                    "  gl_FragColor = texture2D(sTexture, vTextureCoord).rgba; \n" +
                    "}\n";

    private static final String mFragmentShaderTex2D =
            "precision mediump float;\n" +
                    "varying vec2 vTextureCoord;\n" +
                    "uniform sampler2D sTexture;\n" +
                    "void main() {\n" +
                    "  gl_FragColor = texture2D(sTexture, vTextureCoord).rgba; \n" +
                    "}\n";

    private static final float[] mTriangleVerticesDataBase;

    private static final String mVertexShader =
            "uniform mat4 uMVPMatrix;\n" +
                    "uniform mat4 uSTMatrix;\n" +
                    "attribute vec4 aPosition;\n" +
                    "attribute vec4 aTextureCoord;\n" +
                    "varying vec2 vTextureCoord;\n" +
                    "void main() {\n" +
                    "  gl_Position = uMVPMatrix * aPosition;\n" +
                    "  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n" +
                    "}\n";

    public boolean mInitialized;
    public final float[] mMVPMatrix;
    public int mMode;
    public int mProgram;
    public final float[] mSTMatrix;
    private FloatBuffer mTriangleVertices;
    private float[] mTriangleVerticesData;
    public int maPositionHandle;
    public int maTextureHandle;
    public int muMVPMatrixHandle;
    public int muSTMatrixHandle;

    static {
        mTriangleVerticesDataBase = new float[]{
                -1.0f, -1.0f, 0, 0, 0,
                1.0f, -1.0f, 0, 1.0f, 0,
                -1.0f, 1.0f, 0, 0, 1.0f,
                1.0f, 1.0f, 0, 1.0f, 1.0f
        };
    }

    public ShaderHelper() {
        mMVPMatrix = new float[16];
        mSTMatrix = new float[16];
        mTriangleVerticesData = new float[20];
    }

    public static void activateFBO(TextureFBO fbo) {
        GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, fbo.mFrameBuffer[0]);
        checkGlError("glBindFramebuffer");
        GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT);
        GLES20.glViewport(0, 0, fbo.mWidth, fbo.mHeight);
    }

    private static void checkGlError(String op) {
        int error = GLES20.glGetError();
        if (error != GLES20.GL_NO_ERROR) {
            LogFilter.e(TAG, op + ": glError " + error);
            throw new RuntimeException(op + ": glError " + error);
        }
    }

    private static int createProgram(String vertexSource, String fragmentSource) {
        int vertexShader = loadShader(GLES20.GL_VERTEX_SHADER, vertexSource);
        if (vertexShader == 0) {
            return 0;
        }
        int fragmentShader = loadShader(GLES20.GL_FRAGMENT_SHADER, fragmentSource);
        if (fragmentShader == 0) {
            return 0;
        }
        int program = GLES20.glCreateProgram();
        if (program != 0) {
            GLES20.glAttachShader(program, vertexShader);
            checkGlError("glAttachShader");
            GLES20.glAttachShader(program, fragmentShader);
            checkGlError("glAttachShader");
            GLES20.glLinkProgram(program);
            int[] linkStatus = new int[1];
            GLES20.glGetProgramiv(program, GLES20.GL_LINK_STATUS, linkStatus, 0);
            if (linkStatus[0] != 1) {
                LogFilter.e(TAG, "Could not link program: ");
                LogFilter.e(TAG, GLES20.glGetProgramInfoLog(program));
                GLES20.glDeleteProgram(program);
                program = 0;
            }
        }
        return program;
    }

    public static void inactivateFBO() {
        GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, 0);
    }

    private static int loadShader(int type, String source) {
        int shader = GLES20.glCreateShader(type);
        if (shader != 0) {
            GLES20.glShaderSource(shader, source);
            GLES20.glCompileShader(shader);
            int[] compiled = new int[1];
            GLES20.glGetShaderiv(shader, GLES20.GL_COMPILE_STATUS, compiled, 0);
            if (compiled[0] == 0) {
                LogFilter.e(TAG, "Could not compile shader " + type + ":");
                LogFilter.e(TAG, GLES20.glGetShaderInfoLog(shader));
                GLES20.glDeleteShader(shader);
                shader = 0;
            }
        }
        return shader;
    }

    public void finalizeShader() {
        if (!mInitialized) {
            return;
        }
        GLES20.glDeleteProgram(mProgram);
        mTriangleVertices = null;
        mInitialized = false;
    }

    public void initShader(int mode) {
        initShaderWithTexCoord(mode, 0f, 0f, 1.0f, 1.0f);
    }

    public void initShaderWithTexCoord(int mode, float u0, float v0, float u1, float v1) {
        if (mInitialized) {
            return;
        }
        mMode = mode;
        String vertexShader = mVertexShader;
        String fragmentShader = (mode != 0) ? mFragmentShaderExtImg : mFragmentShaderTex2D;

        mProgram = createProgram(vertexShader, fragmentShader);
        if (mProgram == 0) {
            LogFilter.e(TAG, "Error createProgram for FBO shader");
            return;
        }

        maPositionHandle = GLES20.glGetAttribLocation(mProgram, "aPosition");
        checkGlError("glGetAttribLocation aPosition");
        if (maPositionHandle == -1) {
            throw new RuntimeException("Could not get attrib location for aPosition");
        }

        maTextureHandle = GLES20.glGetAttribLocation(mProgram, "aTextureCoord");
        checkGlError("glGetAttribLocation aTextureCoord");
        if (maTextureHandle == -1) {
            throw new RuntimeException("Could not get attrib location for aTextureCoord");
        }

        muMVPMatrixHandle = GLES20.glGetUniformLocation(mProgram, "uMVPMatrix");
        checkGlError("glGetUniformLocation uMVPMatrix");
        if (muMVPMatrixHandle == -1) {
            throw new RuntimeException("Could not get attrib location for uMVPMatrix");
        }

        muSTMatrixHandle = GLES20.glGetUniformLocation(mProgram, "uSTMatrix");
        checkGlError("glGetUniformLocation uSTMatrix");
        if (muSTMatrixHandle == -1) {
            throw new RuntimeException("Could not get attrib location for uSTMatrix");
        }

        Matrix.setIdentityM(mSTMatrix, 0);
        mInitialized = true;

        mTriangleVerticesData = mTriangleVerticesDataBase.clone();
        ByteBuffer bb = ByteBuffer.allocateDirect(mTriangleVerticesData.length * FLOAT_SIZE_BYTES);
        bb.order(ByteOrder.nativeOrder());
        mTriangleVertices = bb.asFloatBuffer();

        modifyVerticesUV(u0, v0, u1, v1);
    }

    public void modifyVerticesUV(float u0, float v0, float u1, float v1) {
        mTriangleVerticesData[3] = u0;
        mTriangleVerticesData[4] = v0;
        mTriangleVerticesData[8] = u1;
        mTriangleVerticesData[9] = v0;
        mTriangleVerticesData[13] = u0;
        mTriangleVerticesData[14] = v1;
        mTriangleVerticesData[18] = u1;
        mTriangleVerticesData[19] = v1;

        mTriangleVertices.position(0);
        mTriangleVertices.put(mTriangleVerticesData);
        mTriangleVertices.position(0);
    }

    public void renderTexture(int textureId, Rect viewport) {
        if (viewport != null) {
            int width = viewport.right - viewport.left;
            int height = viewport.bottom - viewport.top;
            GLES20.glViewport(viewport.left, viewport.top, width, height);
        }

        GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT);

        GLES20.glUseProgram(mProgram);
        checkGlError("glUseProgram");

        GLES20.glActiveTexture(GLES20.GL_TEXTURE0);
        checkGlError("glActiveTexture");

        int target = (mMode != 0) ? GL_TEXTURE_EXTERNAL_OES : GLES20.GL_TEXTURE_2D;
        GLES20.glBindTexture(target, textureId);
        checkGlError("glBindTexture");

        mTriangleVertices.position(TRIANGLE_VERTICES_DATA_POS_OFFSET);
        GLES20.glVertexAttribPointer(maPositionHandle, 3, GLES20.GL_FLOAT, false,
                TRIANGLE_VERTICES_DATA_STRIDE_BYTES, mTriangleVertices);
        checkGlError("glVertexAttribPointer maPositionHandleTex2D");

        GLES20.glEnableVertexAttribArray(maPositionHandle);
        checkGlError("glEnableVertexAttribArray maPositionHandleTex2D");

        mTriangleVertices.position(TRIANGLE_VERTICES_DATA_UV_OFFSET);
        GLES20.glVertexAttribPointer(maTextureHandle, 2, GLES20.GL_FLOAT, false,
                TRIANGLE_VERTICES_DATA_STRIDE_BYTES, mTriangleVertices);
        checkGlError("glVertexAttribPointer maTextureHandleTex2D");

        GLES20.glEnableVertexAttribArray(maTextureHandle);
        checkGlError("glEnableVertexAttribArray maTextureHandleTex2D");

        Matrix.setIdentityM(mMVPMatrix, 0);
        GLES20.glUniformMatrix4fv(muMVPMatrixHandle, 1, false, mMVPMatrix, 0);
        GLES20.glUniformMatrix4fv(muSTMatrixHandle, 1, false, mSTMatrix, 0);

        GLES20.glDrawArrays(GLES20.GL_TRIANGLE_STRIP, 0, 4);
        checkGlError("glDrawArrays");
    }

    public static class TextureFBO {
        public final int[] mFrameBuffer;
        public final int mHeight;
        public final int[] mTexture;
        public final int mWidth;

        public TextureFBO(int width, int height) {
            mFrameBuffer = new int[1];
            mTexture = new int[1];
            mWidth = width;
            mHeight = height;

            GLES20.glGenFramebuffers(1, mFrameBuffer, 0);

            GLES20.glGenTextures(1, mTexture, 0);
            GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, mTexture[0]);
            GLES20.glTexImage2D(GLES20.GL_TEXTURE_2D, 0, GLES20.GL_RGBA, mWidth, mHeight, 0,
                    GLES20.GL_RGBA, GLES20.GL_UNSIGNED_BYTE, null);
            GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_WRAP_S, GLES20.GL_CLAMP_TO_EDGE);
            GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_WRAP_T, GLES20.GL_CLAMP_TO_EDGE);
            GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_MAG_FILTER, GLES20.GL_LINEAR);
            GLES20.glTexParameteri(GLES20.GL_TEXTURE_2D, GLES20.GL_TEXTURE_MIN_FILTER, GLES20.GL_LINEAR);
            GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, 0);

            GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, mFrameBuffer[0]);
            GLES20.glFramebufferTexture2D(GLES20.GL_FRAMEBUFFER, GLES20.GL_COLOR_ATTACHMENT0,
                    GLES20.GL_TEXTURE_2D, mTexture[0], 0);
            GLES20.glBindFramebuffer(GLES20.GL_FRAMEBUFFER, 0);
        }

        public void release() {
            GLES20.glDeleteFramebuffers(1, mFrameBuffer, 0);
            GLES20.glDeleteTextures(1, mTexture, 0);
        }
    }
}
