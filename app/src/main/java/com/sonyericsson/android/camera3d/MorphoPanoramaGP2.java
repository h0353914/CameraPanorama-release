package com.sonyericsson.android.camera3d;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.media.Image;
import com.sonyericsson.android.camera3d.core.Error;
import com.sonyericsson.android.camera3d.core.MorphoSensorFusion;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Locale;

public class MorphoPanoramaGP2 {
    public static final int DIRECTION_AUTO = 0;
    public static final int DIRECTION_HORIZONTAL = 2;
    public static final int DIRECTION_HORIZONTAL_LEFT = 5;
    public static final int DIRECTION_HORIZONTAL_RIGHT = 6;
    public static final int DIRECTION_VERTICAL = 1;
    public static final int DIRECTION_VERTICAL_DOWN = 4;
    public static final int DIRECTION_VERTICAL_UP = 3;
    public static final int ERROR_INVALID_DIR = -1073741823;
    public static final int MODE_PANORAMA = 0;
    public static final int MODE_SCANNER = 1;
    private static final int POINT_INFO_SIZE = 2;
    private static final int POINT_X_OFFSET = 0;
    private static final int POINT_Y_OFFSET = 1;
    private static final int RECT_BOTTOM_OFFSET = 3;
    private static final int RECT_INFO_SIZE = 4;
    private static final int RECT_LEFT_OFFSET = 0;
    private static final int RECT_RIGHT_OFFSET = 2;
    private static final int RECT_TOP_OFFSET = 1;
    private static final boolean USE_STANDARD_DEVIATION = true;
    private long mAttachCount;
    private String mFolderPathInputImages;
    private String mInputImageFormat;
    private ArrayList<Long> mIntervalArray;
    private long mNative = 0;
    private boolean mSaveInputImages = false;
    private boolean mAttachEnabled = false;
    private final GravityParam mGravity = new GravityParam();
    private long mAttachFirstNanoTime = 0;
    private long mAttachLastNanoTime = 0;

    public static class InitParam {
        public double aovx;
        public double aovy;
        public int direction;
        public double goal_angle;
        public String input_format;
        public int input_height;
        public int input_width;
        public String output_format;
        public int output_rotation;
    }

    private native long createNativeObject();

    private native void deleteNativeObject(long j);

    private native int nativeAttach(long j, byte[] bArr);

    private native int nativeAttachYuv(long j, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3, int i4, int i5, int i6, String str, double[] dArr);

    private native int nativeEnd(long j);

    private native int nativeFinish(long j);

    private native int nativeGetClippingRect(long j, int[] iArr);

    private native int nativeGetDirection(long j, int[] iArr);

    private static native int nativeGetGain(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3, int i4, int i5, int i6, String str, int i7, int i8, double[] dArr);

    private native int nativeGetImage(long j, byte[] bArr, int i, int i2, int i3, int i4);

    private native int nativeGetOutputImage(long j, byte[] bArr, int i, int i2, int i3, int i4);

    private native int nativeGetOutputSize(long j, int[] iArr);

    private native int nativeGetRotatedSmallImage(long j, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6);

    private static native String nativeGetVersion();

    private native int nativeInitialize(long j, InitParam initParam);

    private static native int nativeRenderByteBuffer(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, ByteBuffer byteBuffer4, int i, int i2, int i3, int i4, int i5, int i6, String str, int i7, int i8);

    private native int nativeSaveYuv(long j, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3, int i4, int i5, int i6, String str);

    private native int nativeSetAovGain(long j, double d);

    private native int nativeSetCalcseamPixnum(long j, int i);

    private native int nativeSetDistortionCorrectionParam(long j, double d, double d2, double d3, double d4);

    private native int nativeSetDrawThreshold(long j, double d);

    private native int nativeSetGyroscopeData(long j, MorphoSensorFusion.SensorData[] sensorDataArr);

    private native int nativeSetImageFormat(long j, String str);

    private native int nativeSetInitialRotationByGravity(long j, double d, double d2, double d3);

    private native int nativeSetMotionDetectionMode(long j, int i);

    private native int nativeSetNoiseReductionParam(long j, int i);

    private native int nativeSetPreviewImage(long j, int i, int i2);

    private native int nativeSetProjectionMode(long j, int i);

    private native int nativeSetRotationRatio(long j, double d);

    private native int nativeSetRotationVector(long j, double[] dArr);

    private native int nativeSetSeamsearchRatio(long j, double d);

    private native int nativeSetShrinkRatio(long j, double d);

    private native int nativeSetUnsharpStrength(long j, int i);

    private native int nativeSetUseDeform(long j, int i);

    private native int nativeSetUseLuminanceCorrection(long j, int i);

    private native int nativeSetZrotationCoeff(long j, double d);

    private native int nativeStart(long j, int i, int i2);

    private native int nativeUpdatePreviewImage(long j, Bitmap bitmap);

    private static native int nativeYuv2Bitmap8888(byte[] bArr, int i, int i2, Bitmap bitmap, int i3, int i4);

    static {
        try {
            System.loadLibrary("morpho_panorama_gp2");
        } catch (UnsatisfiedLinkError e) {
            LogFilter.e("MorphoPanoramaGP2", e.getMessage());
            LogFilter.e("MorphoPanoramaGP2", "can't loadLibrary");
        }
    }

    public static class GravityParam {
        public double x = 0.0d;
        public double y = 0.0d;
        public double z = 0.0d;

        public GravityParam copyInstance() {
            GravityParam gravityParam = new GravityParam();
            gravityParam.x = this.x;
            gravityParam.y = this.y;
            gravityParam.z = this.z;
            return gravityParam;
        }
    }

    public MorphoPanoramaGP2() {
        this.mIntervalArray = null;
        this.mIntervalArray = new ArrayList<>();
    }

    public void setAttachEnabled(boolean z) {
        this.mAttachEnabled = z;
    }

    public static String getVersion() {
        return nativeGetVersion();
    }

    public int initialize(InitParam initParam) {
        long jCreateNativeObject = createNativeObject();
        this.mNative = jCreateNativeObject;
        return jCreateNativeObject != 0 ? nativeInitialize(jCreateNativeObject, initParam) : Error.ERROR_MALLOC;
    }

    public int finish() {
        long j = this.mNative;
        if (j == 0) {
            return Error.ERROR_STATE;
        }
        int iNativeFinish = nativeFinish(j);
        deleteNativeObject(this.mNative);
        this.mNative = 0L;
        return iNativeFinish;
    }

    public int start(int i, int i2) {
        long j = this.mNative;
        if (j == 0) {
            return Error.ERROR_STATE;
        }
        int iNativeStart = nativeStart(j, i, i2);
        this.mAttachCount = 0L;
        return iNativeStart;
    }

    public int attach(byte[] bArr) {
        long j = this.mNative;
        if (j == 0) {
            return Error.ERROR_STATE;
        }
        int iNativeAttach = nativeAttach(j, bArr);
        if (this.mSaveInputImages) {
            Camera2App.d_save_raw(bArr, this.mFolderPathInputImages, String.format(Locale.US, "%06d", Long.valueOf(this.mAttachCount)));
        }
        this.mAttachCount++;
        return iNativeAttach;
    }

    public float getAttachAve() {
        long j = this.mAttachCount;
        if (j == 0) {
            return 0.0f;
        }
        float f = (((float) (this.mAttachLastNanoTime - this.mAttachFirstNanoTime)) / ((float) j)) / 1000000.0f;
        if (f == 0.0f) {
            return 0.0f;
        }
        return f;
    }

    public float getAttachStandardDeviation() {
        float attachAve = getAttachAve();
        if (attachAve == 0.0f) {
            return 0.0f;
        }
        int size = this.mIntervalArray.size();
        double d = 0.0d;
        for (int i = 0; i < size; i++) {
            float fLongValue = (this.mIntervalArray.get(i).longValue() / 1000000) - attachAve;
            d += (double) (fLongValue * fLongValue);
        }
        return (float) Math.sqrt(d / ((double) size));
    }

    public float getAttachFps() {
        float attachAve = getAttachAve();
        if (attachAve == 0.0f) {
            return 0.0f;
        }
        return 1000.0f / attachAve;
    }

    public int attach(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3, int i4, int i5, int i6, double[] dArr) {
        int iNativeSaveYuv;
        if (this.mNative == 0) {
            return Error.ERROR_STATE;
        }
        if (this.mAttachCount == 0) {
            this.mAttachFirstNanoTime = System.nanoTime();
        }
        long jNanoTime = System.nanoTime();
        String str = this.mSaveInputImages ? String.format(Locale.US, "%s/%06d.yuv", this.mFolderPathInputImages, Long.valueOf(this.mAttachCount)) : null;
        if (this.mAttachEnabled) {
            iNativeSaveYuv = nativeAttachYuv(this.mNative, byteBuffer, byteBuffer2, byteBuffer3, i, i2, i3, i4, i5, i6, str, dArr);
        } else {
            iNativeSaveYuv = str != null ? nativeSaveYuv(this.mNative, byteBuffer, byteBuffer2, byteBuffer3, i, i2, i3, i4, i5, i6, str) : 0;
        }
        long jNanoTime2 = System.nanoTime();
        LogFilter.v("Camera2App", String.format(Locale.US, "Performance.JNI %1$,3d nsec", Long.valueOf(jNanoTime2 - jNanoTime)));
        long j = this.mAttachCount + 1;
        this.mAttachCount = j;
        if (j > 1) {
            this.mIntervalArray.add(Long.valueOf(jNanoTime2 - this.mAttachLastNanoTime));
        }
        this.mAttachLastNanoTime = jNanoTime2;
        return iNativeSaveYuv;
    }

    public int getImage(byte[] bArr, Rect rect) {
        long j = this.mNative;
        return j != 0 ? nativeGetImage(j, bArr, rect.left, rect.top, rect.right, rect.bottom) : Error.ERROR_STATE;
    }

    public int getRotatedSmallImage(byte[] bArr, Rect rect, int i, int i2) {
        long j = this.mNative;
        return j != 0 ? nativeGetRotatedSmallImage(j, bArr, rect.left, rect.top, rect.right, rect.bottom, i, i2) : Error.ERROR_STATE;
    }

    public int updatePreviewImage(Bitmap bitmap) {
        long j = this.mNative;
        return j == 0 ? Error.ERROR_STATE : nativeUpdatePreviewImage(j, bitmap);
    }

    public int setPreviewImage(int i, int i2) {
        long j = this.mNative;
        return j == 0 ? Error.ERROR_STATE : nativeSetPreviewImage(j, i, i2);
    }

    public int getClippingRect(Rect rect) {
        int iNativeGetClippingRect;
        int[] iArr = new int[4];
        long j = this.mNative;
        if (j != 0) {
            iNativeGetClippingRect = nativeGetClippingRect(j, iArr);
            if (iNativeGetClippingRect == 0) {
                rect.set(iArr[0], iArr[1], iArr[2], iArr[3]);
            }
        } else {
            iNativeGetClippingRect = Error.ERROR_STATE;
        }
        if (iNativeGetClippingRect != 0) {
            rect.set(0, 0, 0, 0);
        }
        return iNativeGetClippingRect;
    }

    public String getInputImageFormat() {
        return this.mInputImageFormat;
    }

    public int setInputImageFormat(String str) {
        this.mInputImageFormat = "";
        long j = this.mNative;
        if (j == 0) {
            return Error.ERROR_STATE;
        }
        int iNativeSetImageFormat = nativeSetImageFormat(j, str);
        if (iNativeSetImageFormat != 0) {
            return iNativeSetImageFormat;
        }
        this.mInputImageFormat = str;
        return iNativeSetImageFormat;
    }

    public long getAttachCount() {
        return this.mAttachCount;
    }

    public void enableSaveInputImages(String str) {
        this.mSaveInputImages = true;
        this.mFolderPathInputImages = str;
    }

    public void disableSaveInputImages() {
        this.mSaveInputImages = false;
    }

    public String getInputFolderPath() {
        return this.mFolderPathInputImages;
    }

    public int inputSave(Image image) {
        if (this.mNative == 0) {
            return Error.ERROR_STATE;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iNativeSaveYuv = nativeSaveYuv(this.mNative, image.getPlanes()[0].getBuffer(), image.getPlanes()[1].getBuffer(), image.getPlanes()[2].getBuffer(), image.getPlanes()[0].getRowStride(), image.getPlanes()[1].getRowStride(), image.getPlanes()[2].getRowStride(), image.getPlanes()[0].getPixelStride(), image.getPlanes()[1].getPixelStride(), image.getPlanes()[2].getPixelStride(), this.mSaveInputImages ? String.format(Locale.US, "%s/%06d.yuv", this.mFolderPathInputImages, Long.valueOf(this.mAttachCount)) : null);
        LogFilter.v("Camera2App", "Performance.JNI " + (System.currentTimeMillis() - jCurrentTimeMillis) + " msec");
        this.mAttachCount++;
        return iNativeSaveYuv;
    }

    public static double getGain(Image image) {
        double[] dArr = new double[1];
        int iNativeGetGain = nativeGetGain(image.getPlanes()[0].getBuffer(), image.getPlanes()[1].getBuffer(), image.getPlanes()[2].getBuffer(), image.getPlanes()[0].getRowStride(), image.getPlanes()[1].getRowStride(), image.getPlanes()[2].getRowStride(), image.getPlanes()[0].getPixelStride(), image.getPlanes()[1].getPixelStride(), image.getPlanes()[2].getPixelStride(), PanoramaGP2ImageFormat.getImageFormat(image), image.getWidth(), image.getHeight(), dArr);
        if (iNativeGetGain != 0) {
            LogFilter.e("Camera2App", "nativeGetGain error. ret=" + iNativeGetGain);
            return 1.0d;
        }
        return dArr[0];
    }

    public int getDirection() {
        int iNativeGetDirection;
        int[] iArr = {-1};
        long j = this.mNative;
        if (j != 0 && (iNativeGetDirection = nativeGetDirection(j, iArr)) != 0) {
            LogFilter.e("Camera2App", "MorphoPanoramaGP2.getDirection error. ret=" + iNativeGetDirection);
        }
        return iArr[0];
    }

    public int end() {
        long j = this.mNative;
        if (j != 0) {
            return nativeEnd(j);
        }
        return 0;
    }

    public int getOutputImageSize(int[] iArr) {
        long j = this.mNative;
        return j != 0 ? nativeGetOutputSize(j, iArr) : Error.ERROR_STATE;
    }

    public int getOutputImage(byte[] bArr, Rect rect) {
        long j = this.mNative;
        return j != 0 ? nativeGetOutputImage(j, bArr, rect.left, rect.top, rect.right, rect.bottom) : Error.ERROR_STATE;
    }

    public int setShrinkRatio(double d) {
        long j = this.mNative;
        return j != 0 ? nativeSetShrinkRatio(j, d) : Error.ERROR_STATE;
    }

    public int setCalcseamPixnum(int i) {
        long j = this.mNative;
        return j != 0 ? nativeSetCalcseamPixnum(j, i) : Error.ERROR_STATE;
    }

    public int setInitialRotationByGravity(double d, double d2, double d3) {
        long j = this.mNative;
        if (j == 0) {
            return Error.ERROR_STATE;
        }
        int iNativeSetInitialRotationByGravity = nativeSetInitialRotationByGravity(j, d, d2, d3);
        this.mGravity.x = d;
        this.mGravity.y = d2;
        this.mGravity.z = d3;
        return iNativeSetInitialRotationByGravity;
    }

    public GravityParam getLastGravity() {
        return this.mGravity.copyInstance();
    }

    public int setUseDeform(boolean z) {
        long j = this.mNative;
        if (j != 0) {
            return nativeSetUseDeform(j, z ? 1 : 0);
        }
        return Error.ERROR_STATE;
    }

    public int setUseLuminanceCorrection(boolean z) {
        long j = this.mNative;
        if (j != 0) {
            return nativeSetUseLuminanceCorrection(j, z ? 1 : 0);
        }
        return Error.ERROR_STATE;
    }

    public int setSeamsearchRatio(double d) {
        long j = this.mNative;
        return j != 0 ? nativeSetSeamsearchRatio(j, d) : Error.ERROR_STATE;
    }

    public int setZrotationCoeff(double d) {
        long j = this.mNative;
        return j != 0 ? nativeSetZrotationCoeff(j, d) : Error.ERROR_STATE;
    }

    public int setDrawThreshold(double d) {
        long j = this.mNative;
        return j != 0 ? nativeSetDrawThreshold(j, d) : Error.ERROR_STATE;
    }

    public int setGyroscopeData(MorphoSensorFusion.SensorData[] sensorDataArr) {
        long j = this.mNative;
        return j != 0 ? nativeSetGyroscopeData(j, sensorDataArr) : Error.ERROR_STATE;
    }

    public int setRotationVector(double[] dArr) {
        long j = this.mNative;
        return j != 0 ? nativeSetRotationVector(j, dArr) : Error.ERROR_STATE;
    }

    public int setUnsharpStrength(int i) {
        long j = this.mNative;
        return j != 0 ? nativeSetUnsharpStrength(j, i) : Error.ERROR_STATE;
    }

    public int setAovGain(double d) {
        long j = this.mNative;
        return j != 0 ? nativeSetAovGain(j, d) : Error.ERROR_STATE;
    }

    public int setRotationRatio(double d) {
        long j = this.mNative;
        return j != 0 ? nativeSetRotationRatio(j, d) : Error.ERROR_STATE;
    }

    public int setDistortionCorrectionParam(double d, double d2, double d3, double d4) {
        long j = this.mNative;
        return j != 0 ? nativeSetDistortionCorrectionParam(j, d, d2, d3, d4) : Error.ERROR_STATE;
    }

    public static int renderByteBuffer(ByteBuffer byteBuffer, Image image) {
        return nativeRenderByteBuffer(byteBuffer, image.getPlanes()[0].getBuffer(), image.getPlanes()[1].getBuffer(), image.getPlanes()[2].getBuffer(), image.getPlanes()[0].getRowStride(), image.getPlanes()[1].getRowStride(), image.getPlanes()[2].getRowStride(), image.getPlanes()[0].getPixelStride(), image.getPlanes()[1].getPixelStride(), image.getPlanes()[2].getPixelStride(), PanoramaGP2ImageFormat.getImageFormat(image), image.getWidth(), image.getHeight());
    }

    public static int yuv2Bitmap8888(byte[] bArr, int i, int i2, Bitmap bitmap, int i3) {
        return nativeYuv2Bitmap8888(bArr, i, i2, bitmap, i3, 1);
    }

    public static int yvu2Bitmap8888(byte[] bArr, int i, int i2, Bitmap bitmap, int i3) {
        return nativeYuv2Bitmap8888(bArr, i, i2, bitmap, i3, 0);
    }

    public int setProjectionMode(int i) {
        long j = this.mNative;
        return j != 0 ? nativeSetProjectionMode(j, i) : Error.ERROR_STATE;
    }

    public int setMotionDetectionMode(int i) {
        long j = this.mNative;
        return j != 0 ? nativeSetMotionDetectionMode(j, i) : Error.ERROR_STATE;
    }

    public int setNoiseReductionParam(int i) {
        long j = this.mNative;
        return j != 0 ? nativeSetNoiseReductionParam(j, i) : Error.ERROR_STATE;
    }
}
