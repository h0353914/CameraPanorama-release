package com.sonyericsson.android.camera3d;

import java.io.Serializable;

public class Camera2ImageQualitySettings implements Serializable {
    public static final int COLOR_CORRECTION_MODE = 0;
    public static final int DEFAULT_INDEX_PREVIEW = 0;
    public static final int DEFAULT_INDEX_STILL = 1;
    public static final int DEFAULT_INDEX_ZSL = 2;
    public static final int EDGE_MODE = 1;
    public static final int NOISE_REDUCTION_MODE = 2;
    public static final int NUM = 5;
    public static final int SHADING_MODE = 3;
    public static final int TONEMAP_MODE = 4;
    public String[] entries = null;
    public String[] entryValues = null;
    public String[] defaultValues = null;

    public boolean isAvailable() {
        return (this.entries == null || this.entryValues == null || this.defaultValues == null) ? false : true;
    }

    public String getDefaultValue(int i) {
        int i2;
        String[] strArr = this.defaultValues;
        if (strArr != null) {
            if (i != 0) {
                i2 = 2;
                if (i != 2) {
                    i2 = 1;
                }
            } else {
                i2 = 0;
            }
            if (i2 < strArr.length) {
                return strArr[i2];
            }
        }
        return "";
    }
}
