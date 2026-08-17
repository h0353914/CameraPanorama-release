package com.sonyericsson.android.camera3d.core;

import com.sonyericsson.android.camera3d.utils.LogFilter;
import java.nio.ByteBuffer;

public class JpegIO {
    public static final int MORPHO_JPEGIO_ROTATEMODE_0 = 0;
    public static final int MORPHO_JPEGIO_ROTATEMODE_180 = 2;
    public static final int MORPHO_JPEGIO_ROTATEMODE_270 = 3;
    public static final int MORPHO_JPEGIO_ROTATEMODE_90 = 1;
    private static final String TAG = "MorphoJpegIO";

    public static native int getJPEGSize(String str, int[] iArr);

    public static native int readJPEG(ByteBuffer byteBuffer, int i, int i2, String str, String str2);

    public static native int readJPEG(ByteBuffer byteBuffer, int i, int i2, String str, String str2, int i3);

    public static native int readJPEG(ByteBuffer byteBuffer, int i, int i2, int[] iArr, String str, String str2, int i3);

    public static native int writeJPEG(ByteBuffer byteBuffer, int i, int i2, int i3, String str);

    public static native int writeJPEG(ByteBuffer byteBuffer, int i, int i2, String str, String str2);

    static {
        try {
            System.loadLibrary("morpho_jpeg_io");
            LogFilter.d(TAG, "load libmorpho_jpeg_io.so");
        } catch (UnsatisfiedLinkError e) {
            LogFilter.e(TAG, e.getMessage());
            LogFilter.e(TAG, "can't loadLibrary");
        }
    }
}
