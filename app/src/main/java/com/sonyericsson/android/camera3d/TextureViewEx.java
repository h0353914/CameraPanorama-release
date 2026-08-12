package com.sonyericsson.android.camera3d;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.TextureView;

class TextureViewEx extends TextureView {
    public TextureViewEx(Context context) {
        this(context, null);
    }

    public TextureViewEx(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public TextureViewEx(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (surfaceTexture != null) {
            Camera2App camera2App = (Camera2App) getContext();
            MorphoPanoramaGP2Application application = (MorphoPanoramaGP2Application) camera2App.getApplication();
            int width = application.getPreviewSize().getWidth();
            int height = application.getPreviewSize().getHeight();
            surfaceTexture.setDefaultBufferSize(width, height);
        }
    }
}
