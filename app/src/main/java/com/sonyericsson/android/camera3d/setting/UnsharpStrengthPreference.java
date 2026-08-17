package com.sonyericsson.android.camera3d.setting;

import android.content.Context;
import android.util.AttributeSet;

public class UnsharpStrengthPreference extends EditTextPreferenceDialog {
    public static final int DEFAULT_VALUE = 1536;
    private static final int MAX_VALUE = 8192;
    private static final int MIN_VALUE = 0;

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
            int i = Integer.parseInt(str);
            return i >= 0 && i <= 8192;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public UnsharpStrengthPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, String.valueOf(DEFAULT_VALUE));
    }
}
