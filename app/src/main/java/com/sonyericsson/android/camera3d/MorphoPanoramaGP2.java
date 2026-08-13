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
    public static final int ERROR_INVALID_DIR = -0x3fffffff;
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
    private boolean mAttachEnabled;
    private long mAttachFirstNanoTime;
    private long mAttachLastNanoTime;
    private String mFolderPathInputImages;
    private final GravityParam mGravity;
    private String mInputImageFormat;
    private ArrayList<Long> mIntervalArray;
    private long mNative;
    private boolean mSaveInputImages;

    static {
        try {
            System.loadLibrary("morpho_panorama_gp2");
        } catch (UnsatisfiedLinkError e) {
            LogFilter.e("MorphoPanoramaGP2", e.getMessage());
            LogFilter.e("MorphoPanoramaGP2", "can't loadLibrary");
        }
    }

    public MorphoPanoramaGP2() {
        mNative = 0L;
        mSaveInputImages = false;
        mAttachEnabled = false;
        mGravity = new GravityParam();
        mAttachFirstNanoTime = 0L;
        mAttachLastNanoTime = 0L;
        mIntervalArray = new ArrayList<>();
    }

    private native long createNativeObject();

    private native void deleteNativeObject(long nativeObject);

    public static double getGain(Image image) {
        String format = PanoramaGP2ImageFormat.getImageFormat(image);
        double[] gain = new double[1];
        Image.Plane[] planes = image.getPlanes();
        ByteBuffer buffer0 = planes[0].getBuffer();
        ByteBuffer buffer1 = planes[1].getBuffer();
        ByteBuffer buffer2 = planes[2].getBuffer();
        int rowStride0 = planes[0].getRowStride();
        int rowStride1 = planes[1].getRowStride();
        int rowStride2 = planes[2].getRowStride();
        int pixelStride0 = planes[0].getPixelStride();
        int pixelStride1 = planes[1].getPixelStride();
        int pixelStride2 = planes[2].getPixelStride();
        int width = image.getWidth();
        int height = image.getHeight();
        int ret = nativeGetGain(buffer0, buffer1, buffer2, rowStride0, rowStride1, rowStride2,
                pixelStride0, pixelStride1, pixelStride2, format, width, height, gain);
        if (ret != 0) {
            LogFilter.e("Camera2App", "nativeGetGain error. ret=" + ret);
            return 1.0;
        }
        return gain[0];
    }

    public static String getVersion() {
        return nativeGetVersion();
    }

    private native int nativeAttach(long nativeObject, byte[] data);

    private native int nativeAttachYuv(long nativeObject, ByteBuffer buffer0, ByteBuffer buffer1, ByteBuffer buffer2,
            int rowStride0, int rowStride1, int rowStride2, int pixelStride0, int pixelStride1, int pixelStride2,
            String path, double[] gyroData);

    private native int nativeEnd(long nativeObject);

    private native int nativeFinish(long nativeObject);

    private native int nativeGetClippingRect(long nativeObject, int[] rect);

    private native int nativeGetDirection(long nativeObject, int[] direction);

    private static native int nativeGetGain(ByteBuffer buffer0, ByteBuffer buffer1, ByteBuffer buffer2,
            int rowStride0, int rowStride1, int rowStride2, int pixelStride0, int pixelStride1, int pixelStride2,
            String format, int width, int height, double[] gain);

    private native int nativeGetImage(long nativeObject, byte[] data, int left, int top, int right, int bottom);

    private native int nativeGetOutputImage(long nativeObject, byte[] data, int left, int top, int right, int bottom);

    private native int nativeGetOutputSize(long nativeObject, int[] size);

    private native int nativeGetRotatedSmallImage(long nativeObject, byte[] data, int left, int top, int right, int bottom, int width, int height);

    private static native String nativeGetVersion();

    private native int nativeInitialize(long nativeObject, InitParam param);

    private static native int nativeRenderByteBuffer(ByteBuffer dest, ByteBuffer buffer0, ByteBuffer buffer1, ByteBuffer buffer2,
            int rowStride0, int rowStride1, int rowStride2, int pixelStride0, int pixelStride1, int pixelStride2,
            String format, int width, int height);

    private native int nativeSaveYuv(long nativeObject, ByteBuffer buffer0, ByteBuffer buffer1, ByteBuffer buffer2,
            int rowStride0, int rowStride1, int rowStride2, int pixelStride0, int pixelStride1, int pixelStride2,
            String path);

    private native int nativeSetAovGain(long nativeObject, double gain);

    private native int nativeSetCalcseamPixnum(long nativeObject, int pixnum);

    private native int nativeSetDistortionCorrectionParam(long nativeObject, double a, double b, double c, double d);

    private native int nativeSetDrawThreshold(long nativeObject, double threshold);

    private native int nativeSetGyroscopeData(long nativeObject, MorphoSensorFusion.SensorData[] data);

    private native int nativeSetImageFormat(long nativeObject, String format);

    private native int nativeSetInitialRotationByGravity(long nativeObject, double x, double y, double z);

    private native int nativeSetMotionDetectionMode(long nativeObject, int mode);

    private native int nativeSetNoiseReductionParam(long nativeObject, int param);

    private native int nativeSetPreviewImage(long nativeObject, int width, int height);

    private native int nativeSetProjectionMode(long nativeObject, int mode);

    private native int nativeSetRotationRatio(long nativeObject, double ratio);

    private native int nativeSetRotationVector(long nativeObject, double[] vector);

    private native int nativeSetSeamsearchRatio(long nativeObject, double ratio);

    private native int nativeSetShrinkRatio(long nativeObject, double ratio);

    private native int nativeSetUnsharpStrength(long nativeObject, int strength);

    private native int nativeSetUseDeform(long nativeObject, int useDeform);

    private native int nativeSetUseLuminanceCorrection(long nativeObject, int useLuminanceCorrection);

    private native int nativeSetZrotationCoeff(long nativeObject, double coeff);

    private native int nativeStart(long nativeObject, int width, int height);

    private native int nativeUpdatePreviewImage(long nativeObject, Bitmap bitmap);

    private static native int nativeYuv2Bitmap8888(byte[] data, int width, int height, Bitmap bitmap, int rotation, int yuvOrder);

    public static int renderByteBuffer(ByteBuffer dest, Image image) {
        String format = PanoramaGP2ImageFormat.getImageFormat(image);
        Image.Plane[] planes = image.getPlanes();
        ByteBuffer buffer0 = planes[0].getBuffer();
        ByteBuffer buffer1 = planes[1].getBuffer();
        ByteBuffer buffer2 = planes[2].getBuffer();
        int rowStride0 = planes[0].getRowStride();
        int rowStride1 = planes[1].getRowStride();
        int rowStride2 = planes[2].getRowStride();
        int pixelStride0 = planes[0].getPixelStride();
        int pixelStride1 = planes[1].getPixelStride();
        int pixelStride2 = planes[2].getPixelStride();
        int width = image.getWidth();
        int height = image.getHeight();
        return nativeRenderByteBuffer(dest, buffer0, buffer1, buffer2, rowStride0, rowStride1, rowStride2,
                pixelStride0, pixelStride1, pixelStride2, format, width, height);
    }

    public static int yuv2Bitmap8888(byte[] data, int width, int height, Bitmap bitmap, int rotation) {
        return nativeYuv2Bitmap8888(data, width, height, bitmap, rotation, 1);
    }

    public static int yvu2Bitmap8888(byte[] data, int width, int height, Bitmap bitmap, int rotation) {
        return nativeYuv2Bitmap8888(data, width, height, bitmap, rotation, 0);
    }

    public int attach(ByteBuffer buffer0, ByteBuffer buffer1, ByteBuffer buffer2, int rowStride0, int rowStride1,
            int rowStride2, int pixelStride0, int pixelStride1, int pixelStride2, double[] gyroData) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        if (mAttachCount == 0L) {
            mAttachFirstNanoTime = System.nanoTime();
        }
        long startTime = System.nanoTime();
        String savePath = null;
        if (mSaveInputImages) {
            savePath = String.format(Locale.US, "%s/%06d.yuv", mFolderPathInputImages, mAttachCount);
        }
        int result;
        if (mAttachEnabled) {
            result = nativeAttachYuv(mNative, buffer0, buffer1, buffer2, rowStride0, rowStride1, rowStride2,
                    pixelStride0, pixelStride1, pixelStride2, savePath, gyroData);
        } else if (savePath != null) {
            result = nativeSaveYuv(mNative, buffer0, buffer1, buffer2, rowStride0, rowStride1, rowStride2,
                    pixelStride0, pixelStride1, pixelStride2, savePath);
        } else {
            result = 0;
        }
        long endTime = System.nanoTime();
        LogFilter.v("Camera2App", String.format(Locale.US, "Performance.JNI %1$,3d nsec", endTime - startTime));
        mAttachCount++;
        if (mAttachCount > 1) {
            mIntervalArray.add(endTime - mAttachLastNanoTime);
        }
        mAttachLastNanoTime = endTime;
        return result;
    }

    public int attach(byte[] data) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        int result = nativeAttach(mNative, data);
        if (mSaveInputImages) {
            String name = String.format(Locale.US, "%06d", mAttachCount);
            Camera2App.d_save_raw(data, mFolderPathInputImages, name);
        }
        mAttachCount++;
        return result;
    }

    public void disableSaveInputImages() {
        mSaveInputImages = false;
    }

    public void enableSaveInputImages(String folderPath) {
        mSaveInputImages = true;
        mFolderPathInputImages = folderPath;
    }

    public int end() {
        if (mNative == 0L) {
            return Error.MORPHO_OK;
        }
        return nativeEnd(mNative);
    }

    public int finish() {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        int result = nativeFinish(mNative);
        deleteNativeObject(mNative);
        mNative = 0L;
        return result;
    }

    public float getAttachAve() {
        if (mAttachCount == 0L) {
            return 0f;
        }
        float ave = (float) (mAttachLastNanoTime - mAttachFirstNanoTime);
        ave = ave / (float) mAttachCount;
        ave = ave / 1000000.0f;
        if (ave == 0f) {
            return 0f;
        }
        return ave;
    }

    public long getAttachCount() {
        return mAttachCount;
    }

    public float getAttachFps() {
        float ave = getAttachAve();
        if (ave == 0f) {
            return 0f;
        }
        return 1000.0f / ave;
    }

    public float getAttachStandardDeviation() {
        float ave = getAttachAve();
        if (ave == 0f) {
            return 0f;
        }
        double sum = 0.0;
        int size = mIntervalArray.size();
        for (int i = 0; i < size; i++) {
            long interval = mIntervalArray.get(i);
            float ms = (float) (interval / 1000000L);
            float diff = ms - ave;
            sum += (double) (diff * diff);
        }
        sum = sum / (double) size;
        return (float) Math.sqrt(sum);
    }

    public int getClippingRect(Rect rect) {
        int[] values = new int[RECT_INFO_SIZE];
        int result;
        if (mNative == 0L) {
            result = Error.ERROR_STATE;
        } else {
            result = nativeGetClippingRect(mNative, values);
            if (result == 0) {
                rect.set(values[RECT_LEFT_OFFSET], values[RECT_TOP_OFFSET], values[RECT_RIGHT_OFFSET], values[RECT_BOTTOM_OFFSET]);
            }
        }
        if (result != 0) {
            rect.set(0, 0, 0, 0);
        }
        return result;
    }

    public int getDirection() {
        int[] direction = new int[]{-1};
        if (mNative != 0L) {
            int ret = nativeGetDirection(mNative, direction);
            if (ret != 0) {
                LogFilter.e("Camera2App", "MorphoPanoramaGP2.getDirection error. ret=" + ret);
            }
        }
        return direction[0];
    }

    public int getImage(byte[] data, Rect rect) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeGetImage(mNative, data, rect.left, rect.top, rect.right, rect.bottom);
    }

    public String getInputFolderPath() {
        return mFolderPathInputImages;
    }

    public String getInputImageFormat() {
        return mInputImageFormat;
    }

    public GravityParam getLastGravity() {
        return mGravity.copyInstance();
    }

    public int getOutputImage(byte[] data, Rect rect) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeGetOutputImage(mNative, data, rect.left, rect.top, rect.right, rect.bottom);
    }

    public int getOutputImageSize(int[] size) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeGetOutputSize(mNative, size);
    }

    public int getRotatedSmallImage(byte[] data, Rect rect, int width, int height) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeGetRotatedSmallImage(mNative, data, rect.left, rect.top, rect.right, rect.bottom, width, height);
    }

    public int initialize(InitParam param) {
        mNative = createNativeObject();
        if (mNative == 0L) {
            return Error.ERROR_MALLOC;
        }
        return nativeInitialize(mNative, param);
    }

    public int inputSave(Image image) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        long startTime = System.currentTimeMillis();
        String savePath = null;
        if (mSaveInputImages) {
            savePath = String.format(Locale.US, "%s/%06d.yuv", mFolderPathInputImages, mAttachCount);
        }
        Image.Plane[] planes = image.getPlanes();
        ByteBuffer buffer0 = planes[0].getBuffer();
        ByteBuffer buffer1 = planes[1].getBuffer();
        ByteBuffer buffer2 = planes[2].getBuffer();
        int rowStride0 = planes[0].getRowStride();
        int rowStride1 = planes[1].getRowStride();
        int rowStride2 = planes[2].getRowStride();
        int pixelStride0 = planes[0].getPixelStride();
        int pixelStride1 = planes[1].getPixelStride();
        int pixelStride2 = planes[2].getPixelStride();
        int result = nativeSaveYuv(mNative, buffer0, buffer1, buffer2, rowStride0, rowStride1, rowStride2,
                pixelStride0, pixelStride1, pixelStride2, savePath);
        long endTime = System.currentTimeMillis();
        LogFilter.v("Camera2App", "Performance.JNI " + (endTime - startTime) + " msec");
        mAttachCount++;
        return result;
    }

    public int setAovGain(double gain) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetAovGain(mNative, gain);
    }

    public void setAttachEnabled(boolean enabled) {
        mAttachEnabled = enabled;
    }

    public int setCalcseamPixnum(int pixnum) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetCalcseamPixnum(mNative, pixnum);
    }

    public int setDistortionCorrectionParam(double a, double b, double c, double d) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetDistortionCorrectionParam(mNative, a, b, c, d);
    }

    public int setDrawThreshold(double threshold) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetDrawThreshold(mNative, threshold);
    }

    public int setGyroscopeData(MorphoSensorFusion.SensorData[] data) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetGyroscopeData(mNative, data);
    }

    public int setInitialRotationByGravity(double x, double y, double z) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        int result = nativeSetInitialRotationByGravity(mNative, x, y, z);
        mGravity.x = x;
        mGravity.y = y;
        mGravity.z = z;
        return result;
    }

    public int setInputImageFormat(String format) {
        mInputImageFormat = "";
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        int result = nativeSetImageFormat(mNative, format);
        if (result == 0) {
            mInputImageFormat = format;
        }
        return result;
    }

    public int setMotionDetectionMode(int mode) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetMotionDetectionMode(mNative, mode);
    }

    public int setNoiseReductionParam(int param) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetNoiseReductionParam(mNative, param);
    }

    public int setPreviewImage(int width, int height) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetPreviewImage(mNative, width, height);
    }

    public int setProjectionMode(int mode) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetProjectionMode(mNative, mode);
    }

    public int setRotationRatio(double ratio) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetRotationRatio(mNative, ratio);
    }

    public int setRotationVector(double[] vector) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetRotationVector(mNative, vector);
    }

    public int setSeamsearchRatio(double ratio) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetSeamsearchRatio(mNative, ratio);
    }

    public int setShrinkRatio(double ratio) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetShrinkRatio(mNative, ratio);
    }

    public int setUnsharpStrength(int strength) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetUnsharpStrength(mNative, strength);
    }

    public int setUseDeform(boolean useDeform) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetUseDeform(mNative, useDeform ? 1 : 0);
    }

    public int setUseLuminanceCorrection(boolean useLuminanceCorrection) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetUseLuminanceCorrection(mNative, useLuminanceCorrection ? 1 : 0);
    }

    public int setZrotationCoeff(double coeff) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeSetZrotationCoeff(mNative, coeff);
    }

    public int start(int width, int height) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        int result = nativeStart(mNative, width, height);
        mAttachCount = 0L;
        return result;
    }

    public int updatePreviewImage(Bitmap bitmap) {
        if (mNative == 0L) {
            return Error.ERROR_STATE;
        }
        return nativeUpdatePreviewImage(mNative, bitmap);
    }

    public static class GravityParam {
        public double x;
        public double y;
        public double z;

        public GravityParam() {
            x = 0.0;
            y = 0.0;
            z = 0.0;
        }

        public GravityParam copyInstance() {
            GravityParam copy = new GravityParam();
            copy.x = x;
            copy.y = y;
            copy.z = z;
            return copy;
        }
    }

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
}
