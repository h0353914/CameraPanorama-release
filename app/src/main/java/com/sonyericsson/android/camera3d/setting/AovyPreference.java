package com.sonyericsson.android.camera3d.setting;

import android.content.Context;
import android.util.AttributeSet;

public class AovyPreference extends EditTextPreferenceDialog {
    @Override // com.sonyericsson.android.camera3d.setting.EditTextPreferenceDialog
    protected int getInputType() {
        return 8194;
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
            Double.valueOf(str);
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public AovyPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
