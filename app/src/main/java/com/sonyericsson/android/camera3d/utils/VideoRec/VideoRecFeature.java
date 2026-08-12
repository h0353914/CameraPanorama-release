package com.sonyericsson.android.camera3d.utils.VideoRec;

import android.os.Build;

public class VideoRecFeature {
    public static final boolean FEATURE_VIDEO_REC = true;
    public static final boolean enable_rec = false;

    public static boolean isEnableVideoRec() {
        isSupportVideoRec();
        return false;
    }

    public static boolean isSupportVideoRec() {
        return Build.VERSION.SDK_INT >= 0x12;
    }
}
