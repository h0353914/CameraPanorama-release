package com.sonyericsson.android.camera3d.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.DialogPreference;
import android.preference.PreferenceManager;
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

    protected abstract int getInputType();

    protected abstract boolean isValidInputText(String str);

    EditTextPreferenceDialog(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
        this.mValue = "";
        this.mDefValue = "";
    }

    EditTextPreferenceDialog(Context context, AttributeSet attributeSet, String str) {
        this(context, attributeSet);
        setDefValue(str);
    }

    public void setDefValue(String str) {
        this.mDefValue = str;
        this.mValue = PreferenceManager.getDefaultSharedPreferences(this.mContext).getString(getKey(), this.mDefValue);
    }

    public void setSummary() {
        super.setSummary(this.mValue);
    }

    @Override // android.preference.DialogPreference
    protected View onCreateDialogView() {
        View viewInflate = View.inflate(this.mContext, R.layout.edittext_preference_dialog, null);
        this.mValue = PreferenceManager.getDefaultSharedPreferences(this.mContext).getString(getKey(), this.mDefValue);
        EditText editText = (EditText) viewInflate.findViewById(R.id.edittext_dialog);
        this.mEditText = editText;
        editText.setText(this.mValue);
        this.mEditText.setInputType(getInputType());
        this.mEditText.selectAll();
        Toast.makeText(this.mContext, "Clearing the text, return to the initial value.", 1).show();
        return viewInflate;
    }

    @Override // android.preference.DialogPreference
    protected void onDialogClosed(boolean z) {
        if (z) {
            String string = this.mEditText.getText().toString();
            if (string.isEmpty()) {
                this.mValue = this.mDefValue;
            } else if (!isValidInputText(string)) {
                return;
            } else {
                this.mValue = string;
            }
            SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this.mContext).edit();
            editorEdit.putString(getKey(), this.mValue);
            editorEdit.apply();
        }
    }
}
