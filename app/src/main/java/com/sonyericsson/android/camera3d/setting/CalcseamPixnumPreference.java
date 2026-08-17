package com.sonyericsson.android.camera3d.setting;

import android.content.Context;
import android.util.AttributeSet;

public class CalcseamPixnumPreference extends EditTextPreferenceDialog {
    public static final int DEFAULT_VALUE = 32400;

    @Override // com.sonyericsson.android.camera3d.setting.EditTextPreferenceDialog
    protected int getInputType() {
        return 2;
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
            Integer.valueOf(str);
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public CalcseamPixnumPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, String.valueOf(DEFAULT_VALUE));
    }
}
