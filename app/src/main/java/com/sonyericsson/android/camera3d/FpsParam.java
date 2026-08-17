package com.sonyericsson.android.camera3d;

class FpsParam {
    public final float Fps;
    public final Long FrameDuration;

    public FpsParam(float f, Long l) {
        this.Fps = f;
        this.FrameDuration = l;
    }

    public String getFpsString() {
        return Float.toString(this.Fps);
    }
}
