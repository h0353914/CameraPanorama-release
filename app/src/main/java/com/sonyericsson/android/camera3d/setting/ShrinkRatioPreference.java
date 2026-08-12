package com.sonyericsson.android.camera3d.setting;

import android.content.Context;
import android.util.AttributeSet;

public class ShrinkRatioPreference extends EditTextPreferenceDialog {
    public static final double DEFAULT_VALUE = 7.5;
    private static final double MAX_VALUE = 32.0;
    private static final double MIN_VALUE = 1.0;

    public ShrinkRatioPreference(Context context, AttributeSet attrs) {
        super(context, attrs, String.valueOf(DEFAULT_VALUE));
    }

    @Override
    protected int getInputType() {
        return 0x3002;
    }

    @Override
    protected boolean isValidInputText(String text) {
        try {
            double value = Double.valueOf(text).doubleValue();
            if (Double.isNaN(value) || value < MIN_VALUE) {
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
