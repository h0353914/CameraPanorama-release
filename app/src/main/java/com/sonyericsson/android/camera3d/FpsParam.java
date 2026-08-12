package com.sonyericsson.android.camera3d;

class FpsParam {
    public final float Fps;
    public final Long FrameDuration;

    public FpsParam(float fps, Long frameDuration) {
        Fps = fps;
        FrameDuration = frameDuration;
    }

    public String getFpsString() {
        return Float.toString(Fps);
    }
}
