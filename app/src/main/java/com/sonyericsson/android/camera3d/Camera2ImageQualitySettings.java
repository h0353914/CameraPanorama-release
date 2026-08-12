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

    public String[] defaultValues;
    public String[] entries;
    public String[] entryValues;

    public Camera2ImageQualitySettings() {
        entries = null;
        entryValues = null;
        defaultValues = null;
    }

    public String getDefaultValue(int index) {
        String result = "";
        if (defaultValues != null) {
            int idx;
            if (index == 0) {
                idx = 0;
            } else if (index == 2) {
                idx = 2;
            } else {
                idx = 1;
            }
            if (idx < defaultValues.length) {
                result = defaultValues[idx];
            }
        }
        return result;
    }

    public boolean isAvailable() {
        return entries != null && entryValues != null && defaultValues != null;
    }
}
