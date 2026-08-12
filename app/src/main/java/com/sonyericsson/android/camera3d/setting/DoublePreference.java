package com.sonyericsson.android.camera3d.setting;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

import com.sonyericsson.android.camera3d.R;

public class DoublePreference extends EditTextPreferenceDialog {
    private final double mDef;
    private final double mMax;
    private final double mMin;

    public DoublePreference(Context context, AttributeSet attrs) {
        super(context, attrs);

        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.DoublePreference);
        mMin = a.getFloat(R.styleable.DoublePreference_min_value, 0f);
        mMax = a.getFloat(R.styleable.DoublePreference_max_value, 0f);
        mDef = a.getFloat(R.styleable.DoublePreference_def_value, 0f);
        a.recycle();

        setDefValue(String.valueOf(mDef));
    }

    @Override
    protected int getInputType() {
        return 0x3002;
    }

    @Override
    protected boolean isValidInputText(String text) {
        try {
            double value = Double.valueOf(text).doubleValue();
            if (Double.isNaN(value) || value < mMin) {
                return false;
            }
            if (value > mMax) {
                return false;
            }
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
