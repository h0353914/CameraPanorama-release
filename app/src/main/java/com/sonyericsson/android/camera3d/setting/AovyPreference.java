package com.sonyericsson.android.camera3d.setting;

import android.content.Context;
import android.util.AttributeSet;

public class AovyPreference extends EditTextPreferenceDialog {
    public AovyPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    protected int getInputType() {
        return 0x2002;
    }

    @Override
    protected boolean isValidInputText(String text) {
        try {
            Double.valueOf(text);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
