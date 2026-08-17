package com.sonyericsson.android.camera3d;

import android.media.Image;

public abstract class CaptureImage {
    Image mImage;
    private byte[] mRaw;

    public abstract int getHeight();

    public abstract String getImageFormat();

    public abstract int getWidth();

    public Image image() {
        return this.mImage;
    }

    public byte[] raw() {
        return (byte[]) this.mRaw.clone();
    }

    CaptureImage(Image image) {
        this.mImage = image;
        this.mRaw = new byte[0];
    }

    CaptureImage(byte[] bArr) {
        this.mRaw = (byte[]) bArr.clone();
        this.mImage = null;
    }

    public void close() {
        Image image = this.mImage;
        if (image != null) {
            image.close();
            this.mImage = null;
        }
        this.mRaw = new byte[0];
    }
}
