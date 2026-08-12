package com.sonyericsson.android.camera3d;

import android.media.Image;

public class Camera2Image extends CaptureImage {
    public Camera2Image(Image image) {
        super(image);
    }

    @Override
    public int getHeight() {
        return mImage.getHeight();
    }

    @Override
    public String getImageFormat() {
        return PanoramaGP2ImageFormat.getImageFormat(mImage);
    }

    @Override
    public int getWidth() {
        return mImage.getWidth();
    }
}
