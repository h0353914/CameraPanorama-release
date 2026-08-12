package com.sonyericsson.android.camera3d;

public class Camera1Image extends CaptureImage {
    private final int mHeight;
    private final int mWidth;

    public Camera1Image(byte[] raw, int width, int height) {
        super(raw);
        mWidth = width;
        mHeight = height;
    }

    @Override
    public int getHeight() {
        return mHeight;
    }

    @Override
    public String getImageFormat() {
        return "YVU420_SEMIPLANAR";
    }

    @Override
    public int getWidth() {
        return mWidth;
    }
}
