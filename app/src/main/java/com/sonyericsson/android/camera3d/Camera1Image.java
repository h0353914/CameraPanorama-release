package com.sonyericsson.android.camera3d;

public class Camera1Image extends CaptureImage {
    private final int mHeight;
    private final int mWidth;

    public Camera1Image(byte[] bArr, int i, int i2) {
        super(bArr);
        this.mWidth = i;
        this.mHeight = i2;
    }

    @Override // com.sonyericsson.android.camera3d.CaptureImage
    public String getImageFormat() {
        return PanoramaGP2ImageFormat.YVU420_SEMIPLANAR;
    }

    @Override // com.sonyericsson.android.camera3d.CaptureImage
    public int getWidth() {
        return this.mWidth;
    }

    @Override // com.sonyericsson.android.camera3d.CaptureImage
    public int getHeight() {
        return this.mHeight;
    }
}
