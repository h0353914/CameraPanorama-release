package com.sonyericsson.android.camera3d.utils.VideoRec;

public class VideoRecFeature {
    public static final boolean FEATURE_VIDEO_REC = true;
    public static final boolean enable_rec = false;

    public static boolean isSupportVideoRec() {
        return true;
    }

    public static boolean isEnableVideoRec() {
        isSupportVideoRec();
        return false;
    }
}
