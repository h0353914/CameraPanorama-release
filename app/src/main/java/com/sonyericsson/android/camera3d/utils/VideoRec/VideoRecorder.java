package com.sonyericsson.android.camera3d.utils.VideoRec;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.media.MediaCodecInfo;
import android.view.Surface;

import com.sonyericsson.android.camera3d.utils.LogFilter;
import com.sonyericsson.android.camera3d.utils.render.ShaderHelper;

@SuppressLint({"NewApi"})
public class VideoRecorder extends BaseVideoRecorder {
    private static final String TAG = "MORPHO";

    private CodecInputSurface mInputSurface;
    private ShaderHelper mShader;

    public VideoRecorder(int width, int height, int bitRate, float frameRate, String outputPath) {
        super(width, height, bitRate, frameRate, MediaCodecInfo.CodecCapabilities.COLOR_FormatSurface, outputPath);
        mShader = null;

        LogFilter.d(TAG, "VideoRecorder enter");

        EGLContext currentContext = EGL14.eglGetCurrentContext();
        EGLDisplay currentDisplay = EGL14.eglGetCurrentDisplay();
        EGLSurface currentReadSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_READ);
        EGLSurface currentDrawSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_DRAW);

        EGL14.eglMakeCurrent(currentDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);

        mInputSurface = new CodecInputSurface(mSurface, currentContext);
        mInputSurface.makeCurrent();

        mShader = new ShaderHelper();
        mShader.initShader(0);

        mInputSurface.unbind();

        EGL14.eglMakeCurrent(currentDisplay, currentDrawSurface, currentReadSurface, currentContext);

        LogFilter.d(TAG, "VideoRecorder exit");
    }

    public void encodeFrame(long presentationTimeNs, int textureId) {
        EGLContext currentContext = EGL14.eglGetCurrentContext();
        EGLDisplay currentDisplay = EGL14.eglGetCurrentDisplay();
        EGLSurface currentReadSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_READ);
        EGLSurface currentDrawSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_DRAW);

        mInputSurface.makeCurrent();

        drainEncoder(false);

        mShader.renderTexture(textureId, null);

        mInputSurface.setPresentationTime(presentationTimeNs);
        mInputSurface.swapBuffers();
        mInputSurface.unbind();

        EGL14.eglMakeCurrent(currentDisplay, currentDrawSurface, currentReadSurface, currentContext);
    }

    @Override
    public void end() {
        EGLContext currentContext = EGL14.eglGetCurrentContext();
        EGLDisplay currentDisplay = EGL14.eglGetCurrentDisplay();
        EGLSurface currentReadSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_READ);
        EGLSurface currentDrawSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_DRAW);

        mInputSurface.unbind();

        LogFilter.d(TAG, "end process start...");

        mInputSurface.makeCurrent();

        super.end();

        if (mInputSurface != null) {
            mInputSurface.release();
            mInputSurface = null;
        }

        LogFilter.d(TAG, "record ended!!!!");

        EGL14.eglMakeCurrent(currentDisplay, currentDrawSurface, currentReadSurface, currentContext);
    }

    private static class CodecInputSurface {
        private static final int EGL_RECORDABLE_ANDROID = 0x3142;

        private EGLContext mEGLContext = EGL14.EGL_NO_CONTEXT;
        private EGLDisplay mEGLDisplay = EGL14.EGL_NO_DISPLAY;
        private EGLSurface mEGLSurface = EGL14.EGL_NO_SURFACE;
        private EGLContext mParentContext = EGL14.EGL_NO_CONTEXT;
        private Surface mSurface;

        CodecInputSurface(Surface surface, EGLContext context) {
            if (surface == null) {
                throw new NullPointerException();
            }
            mSurface = surface;
            mParentContext = context;
            eglSetup();
        }

        private void checkEglError(String msg) {
            int error = EGL14.eglGetError();
            if (error != EGL14.EGL_SUCCESS) {
                throw new RuntimeException(msg + ": EGL error: 0x" + Integer.toHexString(error));
            }
        }

        private void eglSetup() {
            mEGLDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY);
            if (mEGLDisplay == EGL14.EGL_NO_DISPLAY) {
                throw new RuntimeException("unable to get EGL14 display");
            }

            int[] version = new int[2];
            if (!EGL14.eglInitialize(mEGLDisplay, version, 0, version, 1)) {
                throw new RuntimeException("unable to initialize EGL14");
            }

            int[] attribList = {
                    EGL14.EGL_RED_SIZE, 8,
                    EGL14.EGL_GREEN_SIZE, 8,
                    EGL14.EGL_BLUE_SIZE, 8,
                    EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
                    EGL_RECORDABLE_ANDROID, 1,
                    EGL14.EGL_NONE
            };
            EGLConfig[] configs = new EGLConfig[1];
            int[] numConfigs = new int[1];
            EGL14.eglChooseConfig(mEGLDisplay, attribList, 0, configs, 0, configs.length, numConfigs, 0);
            checkEglError("eglCreateContext RGB888+recordable ES2");

            int[] attrib2List = {
                    EGL14.EGL_CONTEXT_CLIENT_VERSION, 2,
                    EGL14.EGL_NONE
            };
            mEGLContext = EGL14.eglCreateContext(mEGLDisplay, configs[0], mParentContext, attrib2List, 0);
            checkEglError("eglCreateContext");

            int[] surfaceAttribs = {
                    EGL14.EGL_NONE
            };
            mEGLSurface = EGL14.eglCreateWindowSurface(mEGLDisplay, configs[0], mSurface, surfaceAttribs, 0);
            checkEglError("eglCreateWindowSurface");
        }

        public Surface getSurface() {
            return mSurface;
        }

        public void makeCurrent() {
            EGL14.eglMakeCurrent(mEGLDisplay, mEGLSurface, mEGLSurface, mEGLContext);
            checkEglError("eglMakeCurrent");
        }

        public void makeCurrent(EGLSurface surface) {
            EGL14.eglMakeCurrent(mEGLDisplay, mEGLSurface, surface, mEGLContext);
            checkEglError("eglMakeCurrent");
        }

        public void release() {
            if (mEGLDisplay != EGL14.EGL_NO_DISPLAY) {
                EGL14.eglMakeCurrent(mEGLDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
                EGL14.eglDestroySurface(mEGLDisplay, mEGLSurface);
                EGL14.eglDestroyContext(mEGLDisplay, mEGLContext);
            }
            mSurface.release();

            mEGLDisplay = EGL14.EGL_NO_DISPLAY;
            mEGLContext = EGL14.EGL_NO_CONTEXT;
            mEGLSurface = EGL14.EGL_NO_SURFACE;
            mSurface = null;
        }

        public void setPresentationTime(long nsecs) {
            EGLExt.eglPresentationTimeANDROID(mEGLDisplay, mEGLSurface, nsecs);
            checkEglError("eglPresentationTimeANDROID");
        }

        public void swapBuffers() {
            EGL14.eglSwapBuffers(mEGLDisplay, mEGLSurface);
            checkEglError("eglSwapBuffers");
        }

        public void unbind() {
            EGL14.eglMakeCurrent(mEGLDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
        }
    }
}
