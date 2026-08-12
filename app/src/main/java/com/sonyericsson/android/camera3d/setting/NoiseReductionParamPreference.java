package com.sonyericsson.android.camera3d.setting;

import android.content.Context;
import android.util.AttributeSet;

public class NoiseReductionParamPreference extends EditTextPreferenceDialog {
    public static final int DEFAULT_VALUE = 0;
    private static final int MAX_VALUE = 0x32;
    private static final int MIN_VALUE = 0;

    public NoiseReductionParamPreference(Context context, AttributeSet attrs) {
        super(context, attrs, String.valueOf(DEFAULT_VALUE));
    }

    @Override
    protected int getInputType() {
        return 2;
    }

    @Override
    protected boolean isValidInputText(String text) {
        try {
            int value = Integer.parseInt(text);
            if (value < 0) {
                return false;
            }
            if (value > MAX_VALUE) {
                return false;
            }
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
