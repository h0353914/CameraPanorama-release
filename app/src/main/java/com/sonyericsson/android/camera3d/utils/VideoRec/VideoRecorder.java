package com.sonyericsson.android.camera3d.utils.VideoRec;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.view.Surface;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import com.sonyericsson.android.camera3d.utils.render.ShaderHelper;

public class VideoRecorder extends BaseVideoRecorder {
    private static final String TAG = "MORPHO";
    private CodecInputSurface mInputSurface;
    private ShaderHelper mShader;

    public VideoRecorder(int i, int i2, int i3, float f, String str) {
        super(i, i2, i3, f, 2130708361, str);
        this.mShader = null;
        LogFilter.d(TAG, "VideoRecorder enter");
        EGLContext eGLContextEglGetCurrentContext = EGL14.eglGetCurrentContext();
        EGLDisplay eGLDisplayEglGetCurrentDisplay = EGL14.eglGetCurrentDisplay();
        EGLSurface eGLSurfaceEglGetCurrentSurface = EGL14.eglGetCurrentSurface(12378);
        EGLSurface eGLSurfaceEglGetCurrentSurface2 = EGL14.eglGetCurrentSurface(12377);
        EGL14.eglMakeCurrent(eGLDisplayEglGetCurrentDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
        CodecInputSurface codecInputSurface = new CodecInputSurface(this.mSurface, eGLContextEglGetCurrentContext);
        this.mInputSurface = codecInputSurface;
        codecInputSurface.makeCurrent();
        ShaderHelper shaderHelper = new ShaderHelper();
        this.mShader = shaderHelper;
        shaderHelper.initShader(0);
        this.mInputSurface.unbind();
        EGL14.eglMakeCurrent(eGLDisplayEglGetCurrentDisplay, eGLSurfaceEglGetCurrentSurface2, eGLSurfaceEglGetCurrentSurface, eGLContextEglGetCurrentContext);
        LogFilter.d(TAG, "VideoRecorder exit");
    }

    public void encodeFrame(long j, int i) {
        EGLContext eGLContextEglGetCurrentContext = EGL14.eglGetCurrentContext();
        EGLDisplay eGLDisplayEglGetCurrentDisplay = EGL14.eglGetCurrentDisplay();
        EGLSurface eGLSurfaceEglGetCurrentSurface = EGL14.eglGetCurrentSurface(12378);
        EGLSurface eGLSurfaceEglGetCurrentSurface2 = EGL14.eglGetCurrentSurface(12377);
        this.mInputSurface.makeCurrent();
        super.drainEncoder(false);
        this.mShader.renderTexture(i, null);
        this.mInputSurface.setPresentationTime(j);
        this.mInputSurface.swapBuffers();
        this.mInputSurface.unbind();
        EGL14.eglMakeCurrent(eGLDisplayEglGetCurrentDisplay, eGLSurfaceEglGetCurrentSurface2, eGLSurfaceEglGetCurrentSurface, eGLContextEglGetCurrentContext);
    }

    @Override // com.sonyericsson.android.camera3d.utils.VideoRec.BaseVideoRecorder
    public void end() {
        EGLContext eGLContextEglGetCurrentContext = EGL14.eglGetCurrentContext();
        EGLDisplay eGLDisplayEglGetCurrentDisplay = EGL14.eglGetCurrentDisplay();
        EGLSurface eGLSurfaceEglGetCurrentSurface = EGL14.eglGetCurrentSurface(12378);
        EGLSurface eGLSurfaceEglGetCurrentSurface2 = EGL14.eglGetCurrentSurface(12377);
        this.mInputSurface.unbind();
        LogFilter.d(TAG, "end process start...");
        this.mInputSurface.makeCurrent();
        super.end();
        CodecInputSurface codecInputSurface = this.mInputSurface;
        if (codecInputSurface != null) {
            codecInputSurface.release();
            this.mInputSurface = null;
        }
        LogFilter.d(TAG, "record ended!!!!");
        EGL14.eglMakeCurrent(eGLDisplayEglGetCurrentDisplay, eGLSurfaceEglGetCurrentSurface2, eGLSurfaceEglGetCurrentSurface, eGLContextEglGetCurrentContext);
    }

    private static class CodecInputSurface {
        private static final int EGL_RECORDABLE_ANDROID = 12610;
        private EGLContext mParentContext;
        private Surface mSurface;
        private EGLDisplay mEGLDisplay = EGL14.EGL_NO_DISPLAY;
        private EGLContext mEGLContext = EGL14.EGL_NO_CONTEXT;
        private EGLSurface mEGLSurface = EGL14.EGL_NO_SURFACE;

        public CodecInputSurface(Surface surface, EGLContext eGLContext) {
            this.mParentContext = EGL14.EGL_NO_CONTEXT;
            surface.getClass();
            this.mSurface = surface;
            this.mParentContext = eGLContext;
            eglSetup();
        }

        public Surface getSurface() {
            return this.mSurface;
        }

        private void eglSetup() {
            EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
            this.mEGLDisplay = eGLDisplayEglGetDisplay;
            if (eGLDisplayEglGetDisplay == EGL14.EGL_NO_DISPLAY) {
                throw new RuntimeException("unable to get EGL14 display");
            }
            int[] iArr = new int[2];
            if (!EGL14.eglInitialize(this.mEGLDisplay, iArr, 0, iArr, 1)) {
                throw new RuntimeException("unable to initialize EGL14");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            EGL14.eglChooseConfig(this.mEGLDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12352, 4, EGL_RECORDABLE_ANDROID, 1, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0);
            checkEglError("eglCreateContext RGB888+recordable ES2");
            this.mEGLContext = EGL14.eglCreateContext(this.mEGLDisplay, eGLConfigArr[0], this.mParentContext, new int[]{12440, 2, 12344}, 0);
            checkEglError("eglCreateContext");
            this.mEGLSurface = EGL14.eglCreateWindowSurface(this.mEGLDisplay, eGLConfigArr[0], this.mSurface, new int[]{12344}, 0);
            checkEglError("eglCreateWindowSurface");
        }

        public void release() {
            if (this.mEGLDisplay != EGL14.EGL_NO_DISPLAY) {
                EGL14.eglMakeCurrent(this.mEGLDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
                EGL14.eglDestroySurface(this.mEGLDisplay, this.mEGLSurface);
                EGL14.eglDestroyContext(this.mEGLDisplay, this.mEGLContext);
            }
            this.mSurface.release();
            this.mEGLDisplay = EGL14.EGL_NO_DISPLAY;
            this.mEGLContext = EGL14.EGL_NO_CONTEXT;
            this.mEGLSurface = EGL14.EGL_NO_SURFACE;
            this.mSurface = null;
        }

        public void makeCurrent() {
            EGLDisplay eGLDisplay = this.mEGLDisplay;
            EGLSurface eGLSurface = this.mEGLSurface;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.mEGLContext);
            checkEglError("eglMakeCurrent");
        }

        public void makeCurrent(EGLSurface eGLSurface) {
            EGL14.eglMakeCurrent(this.mEGLDisplay, this.mEGLSurface, eGLSurface, this.mEGLContext);
            checkEglError("eglMakeCurrent");
        }

        public void unbind() {
            EGL14.eglMakeCurrent(this.mEGLDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
        }

        public void swapBuffers() {
            EGL14.eglSwapBuffers(this.mEGLDisplay, this.mEGLSurface);
            checkEglError("eglSwapBuffers");
        }

        public void setPresentationTime(long j) {
            EGLExt.eglPresentationTimeANDROID(this.mEGLDisplay, this.mEGLSurface, j);
            checkEglError("eglPresentationTimeANDROID");
        }

        private void checkEglError(String str) {
            int iEglGetError = EGL14.eglGetError();
            if (iEglGetError != 12288) {
                throw new RuntimeException(str + ": EGL error: 0x" + Integer.toHexString(iEglGetError));
            }
        }
    }
}
