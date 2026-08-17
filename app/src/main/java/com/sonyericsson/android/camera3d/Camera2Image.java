package com.sonyericsson.android.camera3d;

import android.media.Image;

public class Camera2Image extends CaptureImage {
    public Camera2Image(Image image) {
        super(image);
    }

    @Override // com.sonyericsson.android.camera3d.CaptureImage
    public String getImageFormat() {
        return PanoramaGP2ImageFormat.getImageFormat(this.mImage);
    }

    @Override // com.sonyericsson.android.camera3d.CaptureImage
    public int getWidth() {
        return this.mImage.getWidth();
    }

    @Override // com.sonyericsson.android.camera3d.CaptureImage
    public int getHeight() {
        return this.mImage.getHeight();
    }
}
