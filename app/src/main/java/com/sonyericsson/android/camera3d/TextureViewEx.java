package com.sonyericsson.android.camera3d;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.TextureView;

class TextureViewEx extends TextureView {
    public TextureViewEx(Context context) {
        this(context, null);
    }

    public TextureViewEx(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextureViewEx(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.TextureView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (surfaceTexture != null) {
            MorphoPanoramaGP2Application morphoPanoramaGP2Application = (MorphoPanoramaGP2Application) ((Camera2App) getContext()).getApplication();
            surfaceTexture.setDefaultBufferSize(morphoPanoramaGP2Application.getPreviewSize().getWidth(), morphoPanoramaGP2Application.getPreviewSize().getHeight());
        }
    }
}
