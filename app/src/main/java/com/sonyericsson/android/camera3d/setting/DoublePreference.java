package com.sonyericsson.android.camera3d.setting;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.sonyericsson.android.camera3d.R;

public class DoublePreference extends EditTextPreferenceDialog {
    private final double mDef;
    private final double mMax;
    private final double mMin;

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
            if (d < this.mMin) {
                return false;
            }
            if (d > this.mMax) {
                return false;
            }
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public DoublePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DoublePreference);
        this.mMin = typedArrayObtainStyledAttributes.getFloat(2, 0.0f);
        this.mMax = typedArrayObtainStyledAttributes.getFloat(1, 0.0f);
        double d = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
        this.mDef = d;
        typedArrayObtainStyledAttributes.recycle();
        setDefValue(String.valueOf(d));
    }
}
