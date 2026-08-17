package com.sonyericsson.android.camera3d;

import android.os.Build;

public class CameraConstants {
    public static final int AutoFocusType;
    public static final int BURST_SHOT_NUM = 600;
    public static final int CAPTURE_MODE_BURST = 3;
    public static final int CAPTURE_MODE_PREVIEW = 0;
    public static final int CAPTURE_MODE_REPEATING_BURST = 4;
    public static final int CAPTURE_MODE_STILL = 1;
    public static final int CAPTURE_MODE_ZERO_SHUTTER_LAG = 2;
    public static final Object CameraSynchronizedObject;
    public static final Object EngineSynchronizedObject;
    public static final int MAX_ISO_VALUE = 800;
    public static final int REPEATING_BURST_SHOT_NUM = 1;
    public static final boolean SHOW_UI_CONTROL_MODE = true;
    public static final long TV_EXPOSURE_TIME_DIFF = 500000;
    public static final long TV_EXPOSURE_TIME_MAX = 16666666;
    public static final int TV_SENSOR_SENSITIVITY_DIFF = 5;

    static {
        AutoFocusType = Build.MANUFACTURER.equals("Sony") ? 2 : 1;
        CameraSynchronizedObject = new Object();
        EngineSynchronizedObject = new Object();
    }
}
