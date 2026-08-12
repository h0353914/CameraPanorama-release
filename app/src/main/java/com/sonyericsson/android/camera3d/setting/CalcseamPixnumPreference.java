package com.sonyericsson.android.camera3d.setting;

import android.content.Context;
import android.util.AttributeSet;

public class CalcseamPixnumPreference extends EditTextPreferenceDialog {
    public static final int DEFAULT_VALUE = 0x7e90;

    public CalcseamPixnumPreference(Context context, AttributeSet attrs) {
        super(context, attrs, String.valueOf(DEFAULT_VALUE));
    }

    @Override
    protected int getInputType() {
        return 2;
    }

    @Override
    protected boolean isValidInputText(String text) {
        try {
            Integer.valueOf(text);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
