package com.sonyericsson.android.camera3d.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.sonyericsson.android.camera3d.Camera2App;
import com.sonyericsson.android.camera3d.R;

public class RotatableDialogFragment extends DialogFragment {
    public static final String CHECKBOX_MESSAGE = "CHECKBOX_MESSAGE";
    public static final String DIALOG_MESSAGE = "DIALOG_MESSAGE";
    public static final String DIALOG_ORIENTATION = "DIALOG_ORIENTATION";
    public static final String DIALOG_TITLE = "DIALOG_TITLE";
    public static final String NEGATIVE_BUTTON_LABEL = "NEGATIVE_BUTTON_LABEL";
    public static final String POSITIVE_BUTTON_LABEL = "POSITIVE_BUTTON_LABEL";
    public static final String USE_NATIVE_LAYOUT = "USE_NATIVE_LAYOUT";
    private CheckBox mCheckBox;
    private EnumDismissFactor mFactor;
    private RotatableDialog mRotatableDialog;
    private boolean mIsShow = false;
    private final DialogInterface.OnClickListener mPositiveClickListener = new DialogInterface.OnClickListener() { // from class: com.sonyericsson.android.camera3d.dialog.RotatableDialogFragment.1
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            RotatableDialogFragment.this.fireDismissDialog(true, EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER);
        }
    };
    private final DialogInterface.OnClickListener mNegativeClickListener = new DialogInterface.OnClickListener() { // from class: com.sonyericsson.android.camera3d.dialog.RotatableDialogFragment.2
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            RotatableDialogFragment.this.fireDismissDialog(false, EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER);
        }
    };

    public enum EnumDismissFactor {
        DISMISS_FACTOR_EVENT_LISTENER,
        DISMISS_FACTOR_BACK_KEY,
        DISMISS_FACTOR_SUSPEND,
        DISMISS_FACTOR_OVERLAY,
        DISMISS_FACTOR_SHUTDOWN,
        DISMISS_FACTOR_OTHER
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        final FragmentActivity activity = getActivity();
        Bundle arguments = getArguments();
        ViewGroup viewGroup = (ViewGroup) View.inflate(activity, R.layout.rotatable_dialog, null);
        TextView textView = (TextView) viewGroup.findViewById(R.id.dialog_title);
        TextView textView2 = (TextView) viewGroup.findViewById(R.id.dialog_message1);
        this.mCheckBox = (CheckBox) viewGroup.findViewById(R.id.dialog_checkbox);
        RotatableDialog.Builder builder = new RotatableDialog.Builder(activity);
        boolean z = arguments.getBoolean(USE_NATIVE_LAYOUT, false);
        String string = arguments.getString(DIALOG_TITLE);
        if (string != null) {
            if (z) {
                builder.setTitle(string);
            } else {
                textView.setText(string);
            }
        }
        String string2 = arguments.getString(DIALOG_MESSAGE);
        if (string2 != null) {
            if (z) {
                builder.setMessage(string2);
            } else {
                textView2.setText(string2);
            }
        }
        String string3 = arguments.getString(CHECKBOX_MESSAGE);
        if (string3 != null) {
            this.mCheckBox.setText(string3);
            this.mCheckBox.setChecked(true);
        } else {
            this.mCheckBox.setChecked(false);
            this.mCheckBox.setVisibility(8);
        }
        String string4 = arguments.getString(POSITIVE_BUTTON_LABEL);
        if (string4 != null) {
            builder.setPositiveButton(string4, this.mPositiveClickListener);
        }
        String string5 = arguments.getString(NEGATIVE_BUTTON_LABEL);
        if (string5 != null) {
            builder.setNegativeButton(string5, this.mNegativeClickListener);
        }
        if (!z) {
            builder.setView(viewGroup);
        }
        int i = arguments.getInt("DIALOG_ORIENTATION");
        if (i == 0) {
            i = 1;
        }
        builder.setOrientation(i);
        builder.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.sonyericsson.android.camera3d.dialog.RotatableDialogFragment.3
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                if (i2 == 4) {
                    if (!RotatableDialogFragment.this.isShowing()) {
                        return true;
                    }
                    RotatableDialogFragment.this.dismiss(EnumDismissFactor.DISMISS_FACTOR_BACK_KEY);
                    return true;
                }
                return activity.onKeyDown(i2, keyEvent);
            }
        });
        setCancelable(false);
        this.mIsShow = true;
        this.mFactor = EnumDismissFactor.DISMISS_FACTOR_OTHER;
        RotatableDialog rotatableDialogCreateRotatableDialog = builder.createRotatableDialog();
        this.mRotatableDialog = rotatableDialogCreateRotatableDialog;
        rotatableDialogCreateRotatableDialog.getDialog().setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.sonyericsson.android.camera3d.dialog.RotatableDialogFragment.4
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                if (RotatableDialogFragment.this.mRotatableDialog.getDialog() != null) {
                    Button button = RotatableDialogFragment.this.mRotatableDialog.getDialog().getButton(-1);
                    if (button != null) {
                        button.setTextSize(1, 14.0f);
                    }
                    Button button2 = RotatableDialogFragment.this.mRotatableDialog.getDialog().getButton(-2);
                    if (button2 != null) {
                        button2.setTextSize(1, 14.0f);
                    }
                }
            }
        });
        this.mRotatableDialog.show();
        return this.mRotatableDialog.getDialog();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (!this.mIsShow || this.mFactor == EnumDismissFactor.DISMISS_FACTOR_SHUTDOWN) {
            return;
        }
        fireDismissDialog(false, this.mFactor);
    }

    public void dismiss(EnumDismissFactor enumDismissFactor) {
        this.mFactor = enumDismissFactor;
        super.dismissAllowingStateLoss();
    }

    public void setRotation(float f) {
        int i;
        RotatableDialog rotatableDialog = this.mRotatableDialog;
        if (rotatableDialog != null) {
            if (f == -1.0f || f == 0.0f || f == 180.0f) {
                i = 1;
            } else {
                i = f == 90.0f ? 3 : 2;
            }
            rotatableDialog.setOrientation(i);
        }
    }

    public boolean isShowing() {
        RotatableDialog rotatableDialog = this.mRotatableDialog;
        return rotatableDialog != null && rotatableDialog.isShowing();
    }

    private boolean isChecked() {
        CheckBox checkBox = this.mCheckBox;
        return checkBox != null && checkBox.isChecked();
    }

    public void fireDismissDialog(boolean z, EnumDismissFactor enumDismissFactor) {
        this.mIsShow = false;
        if (getActivity() instanceof Camera2App) {
            ((Camera2App) getActivity()).onDismissDialog(z, enumDismissFactor, isChecked());
        }
    }
}
