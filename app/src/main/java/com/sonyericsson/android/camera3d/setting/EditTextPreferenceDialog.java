package com.sonyericsson.android.camera3d.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.DialogPreference;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import com.sonyericsson.android.camera3d.R;

abstract class EditTextPreferenceDialog extends DialogPreference {
    private final Context mContext;
    private String mDefValue;
    private EditText mEditText;
    private String mValue;

    EditTextPreferenceDialog(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext = context;
        mValue = "";
        mDefValue = "";
    }

    EditTextPreferenceDialog(Context context, AttributeSet attrs, String defValue) {
        this(context, attrs);
        setDefValue(defValue);
    }

    protected abstract int getInputType();

    protected abstract boolean isValidInputText(String text);

    @Override
    protected View onCreateDialogView() {
        View view = View.inflate(mContext, R.layout.edittext_preference_dialog, null);

        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(mContext);
        mValue = prefs.getString(getKey(), mDefValue);

        mEditText = (EditText) view.findViewById(R.id.edittext_dialog);
        mEditText.setText(mValue);
        mEditText.setInputType(getInputType());
        mEditText.selectAll();

        Toast.makeText(mContext, "Clearing the text, return to the initial value.", Toast.LENGTH_LONG).show();

        return view;
    }

    @Override
    protected void onDialogClosed(boolean positiveResult) {
        if (!positiveResult) {
            return;
        }

        Editable editable = mEditText.getText();
        String text = editable.toString();

        if (text.isEmpty()) {
            mValue = mDefValue;
        } else {
            if (!isValidInputText(text)) {
                return;
            }
            mValue = text;
        }

        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(mContext);
        SharedPreferences.Editor editor = prefs.edit();
        editor.putString(getKey(), mValue);
        editor.apply();
    }

    public void setDefValue(String defValue) {
        mDefValue = defValue;
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(mContext);
        mValue = prefs.getString(getKey(), mDefValue);
    }

    public void setSummary() {
        super.setSummary(mValue);
    }
}
