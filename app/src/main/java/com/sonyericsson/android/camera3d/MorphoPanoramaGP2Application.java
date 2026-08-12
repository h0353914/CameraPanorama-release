package com.sonyericsson.android.camera3d;

import android.app.Application;
import android.util.Size;

public class MorphoPanoramaGP2Application extends Application {
    private Size mPreviewSize;
    private int[] mSupportedPictureSizes;

    public MorphoPanoramaGP2Application() {
        mSupportedPictureSizes = new int[0];
        mPreviewSize = new Size(0, 0);
    }

    public Size getPreviewSize() {
        return mPreviewSize;
    }

    public Size[] getSupportedPictureSizes() {
        int count = mSupportedPictureSizes.length >> 1;
        Size[] sizes = new Size[count];
        for (int i = 0; i < count; i++) {
            int w = mSupportedPictureSizes[i * 2];
            int h = mSupportedPictureSizes[i * 2 + 1];
            sizes[i] = new Size(w, h);
        }
        return sizes;
    }

    public void setPreviewSize(Size previewSize) {
        mPreviewSize = previewSize;
    }

    public void setSupportedPictureSizes(int[] supportedPictureSizes) {
        mSupportedPictureSizes = supportedPictureSizes.clone();
    }
}
