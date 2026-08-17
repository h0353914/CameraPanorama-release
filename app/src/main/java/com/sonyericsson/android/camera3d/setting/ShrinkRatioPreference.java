package com.sonyericsson.android.camera3d.setting;

import android.content.Context;
import android.util.AttributeSet;

public class ShrinkRatioPreference extends EditTextPreferenceDialog {
    public static final double DEFAULT_VALUE = 7.5d;
    private static final double MAX_VALUE = 32.0d;
    private static final double MIN_VALUE = 1.0d;

    @Override // com.sonyericsson.android.camera3d.setting.EditTextPreferenceDialog
    protected int getInputType() {
        return 12290;
    }

    @Override // com.sonyericsson.android.camera3d.setting.EditTextPreferenceDialog
    public /* bridge */ /* synthetic */ void setDefValue(String str) {
        super.setDefValue(str);
    }

    @Override // com.sonyericsson.android.camera3d.setting.EditTextPreferenceDialog
    public /* bridge */ /* synthetic */ void setSummary() {
        super.setSummary();
    }

    @Override // com.sonyericsson.android.camera3d.setting.EditTextPreferenceDialog
    protected boolean isValidInputText(String str) {
        try {
            double d = Double.parseDouble(str);
            if (d < 1.0d) {
                return false;
            }
            if (d > MAX_VALUE) {
                return false;
            }
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public ShrinkRatioPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, String.valueOf(7.5d));
    }
}
