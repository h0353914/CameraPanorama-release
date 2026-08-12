package com.sonyericsson.android.camera3d.core;

import com.sonyericsson.android.camera3d.utils.LogFilter;

import java.nio.ByteBuffer;

public class JpegIO {
    public static final int MORPHO_JPEGIO_ROTATEMODE_0 = 0x0;
    public static final int MORPHO_JPEGIO_ROTATEMODE_180 = 0x2;
    public static final int MORPHO_JPEGIO_ROTATEMODE_270 = 0x3;
    public static final int MORPHO_JPEGIO_ROTATEMODE_90 = 0x1;
    private static final String TAG = "MorphoJpegIO";

    static {
        try {
            System.loadLibrary("morpho_jpeg_io");
            LogFilter.d("MorphoJpegIO", "load libmorpho_jpeg_io.so");
        } catch (UnsatisfiedLinkError e) {
            LogFilter.e("MorphoJpegIO", e.getMessage());
            LogFilter.e("MorphoJpegIO", "can't loadLibrary");
        }
    }

    public static native int getJPEGSize(String path, int[] size);

    public static native int readJPEG(ByteBuffer buffer, int width, int height, String path, String format);

    public static native int readJPEG(ByteBuffer buffer, int width, int height, String path, String format, int rotateMode);

    public static native int readJPEG(ByteBuffer buffer, int width, int height, int[] param, String path, String format, int rotateMode);

    public static native int writeJPEG(ByteBuffer buffer, int width, int height, int fd, String format);

    public static native int writeJPEG(ByteBuffer buffer, int width, int height, String path, String format);
}
