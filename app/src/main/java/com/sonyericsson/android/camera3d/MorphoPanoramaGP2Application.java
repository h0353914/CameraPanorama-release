package com.sonyericsson.android.camera3d;

import android.app.Application;
import android.util.Size;

public class MorphoPanoramaGP2Application extends Application {
    private int[] mSupportedPictureSizes = new int[0];
    private Size mPreviewSize = new Size(0, 0);

    public Size[] getSupportedPictureSizes() {
        int length = this.mSupportedPictureSizes.length >> 1;
        Size[] sizeArr = new Size[length];
        for (int i = 0; i < length; i++) {
            int[] iArr = this.mSupportedPictureSizes;
            int i2 = i * 2;
            sizeArr[i] = new Size(iArr[i2], iArr[i2 + 1]);
        }
        return sizeArr;
    }

    public void setSupportedPictureSizes(int[] iArr) {
        this.mSupportedPictureSizes = (int[]) iArr.clone();
    }

    public Size getPreviewSize() {
        return this.mPreviewSize;
    }

    public void setPreviewSize(Size size) {
        this.mPreviewSize = size;
    }
}
