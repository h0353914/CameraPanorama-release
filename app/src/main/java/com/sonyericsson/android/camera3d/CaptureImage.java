package com.sonyericsson.android.camera3d;

import android.media.Image;

public abstract class CaptureImage {
    Image mImage;
    private byte[] mRaw;

    CaptureImage(Image image) {
        mImage = image;
        mRaw = new byte[0];
    }

    CaptureImage(byte[] raw) {
        mRaw = raw.clone();
        mImage = null;
    }

    public void close() {
        if (mImage != null) {
            mImage.close();
            mImage = null;
        }
        mRaw = new byte[0];
    }

    public abstract int getHeight();

    public abstract String getImageFormat();

    public abstract int getWidth();

    public Image image() {
        return mImage;
    }

    public byte[] raw() {
        return mRaw.clone();
    }
}
