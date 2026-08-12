package com.sonyericsson.android.camera3d.dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;

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

    public enum EnumDismissFactor {
        DISMISS_FACTOR_EVENT_LISTENER,
        DISMISS_FACTOR_BACK_KEY,
        DISMISS_FACTOR_SUSPEND,
        DISMISS_FACTOR_OVERLAY,
        DISMISS_FACTOR_SHUTDOWN,
        DISMISS_FACTOR_OTHER
    }

    private CheckBox mCheckBox;
    private EnumDismissFactor mFactor;
    private boolean mIsShow = false;
    private final DialogInterface.OnClickListener mPositiveClickListener =
            new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    fireDismissDialog(true, EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER);
                }
            };
    private final DialogInterface.OnClickListener mNegativeClickListener =
            new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    fireDismissDialog(false, EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER);
                }
            };
    private RotatableDialog mRotatableDialog;

    private void fireDismissDialog(boolean positive, EnumDismissFactor factor) {
        mIsShow = false;
        if (getActivity() instanceof Camera2App) {
            Camera2App activity = (Camera2App) getActivity();
            activity.onDismissDialog(positive, factor, isChecked());
        }
    }

    private boolean isChecked() {
        return mCheckBox != null && mCheckBox.isChecked();
    }

    public void dismiss(EnumDismissFactor factor) {
        mFactor = factor;
        super.dismissAllowingStateLoss();
    }

    public boolean isShowing() {
        return mRotatableDialog != null && mRotatableDialog.isShowing();
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        final FragmentActivity activity = getActivity();
        Bundle args = getArguments();

        ViewGroup view = (ViewGroup) View.inflate(activity, R.layout.rotatable_dialog, null);
        TextView titleView = (TextView) view.findViewById(R.id.dialog_title);
        TextView messageView = (TextView) view.findViewById(R.id.dialog_message1);
        mCheckBox = (CheckBox) view.findViewById(R.id.dialog_checkbox);

        RotatableDialog.Builder builder = new RotatableDialog.Builder(activity);
        boolean useNativeLayout = args.getBoolean(USE_NATIVE_LAYOUT, false);

        String title = args.getString(DIALOG_TITLE);
        if (title != null) {
            if (useNativeLayout) {
                builder.setTitle(title);
            } else {
                titleView.setText(title);
            }
        }

        String message = args.getString(DIALOG_MESSAGE);
        if (message != null) {
            if (useNativeLayout) {
                builder.setMessage(message);
            } else {
                messageView.setText(message);
            }
        }

        String checkBoxMessage = args.getString(CHECKBOX_MESSAGE);
        if (checkBoxMessage != null) {
            mCheckBox.setText(checkBoxMessage);
            mCheckBox.setChecked(true);
        } else {
            mCheckBox.setChecked(false);
            mCheckBox.setVisibility(View.GONE);
        }

        String positiveLabel = args.getString(POSITIVE_BUTTON_LABEL);
        if (positiveLabel != null) {
            builder.setPositiveButton(positiveLabel, mPositiveClickListener);
        }

        String negativeLabel = args.getString(NEGATIVE_BUTTON_LABEL);
        if (negativeLabel != null) {
            builder.setNegativeButton(negativeLabel, mNegativeClickListener);
        }

        if (!useNativeLayout) {
            builder.setView(view);
        }

        int orientation = args.getInt(DIALOG_ORIENTATION);
        if (orientation == 0) {
            orientation = 1;
        }
        builder.setOrientation(orientation);

        builder.setOnKeyListener(new DialogInterface.OnKeyListener() {
            @Override
            public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                if (keyCode != KeyEvent.KEYCODE_BACK) {
                    return activity.onKeyDown(keyCode, event);
                }
                if (isShowing()) {
                    dismiss(EnumDismissFactor.DISMISS_FACTOR_BACK_KEY);
                }
                return true;
            }
        });

        setCancelable(false);
        mIsShow = true;
        mFactor = EnumDismissFactor.DISMISS_FACTOR_OTHER;

        mRotatableDialog = builder.createRotatableDialog();
        mRotatableDialog.getDialog().setOnShowListener(new DialogInterface.OnShowListener() {
            @Override
            public void onShow(DialogInterface dialog) {
                if (mRotatableDialog.getDialog() != null) {
                    Button positiveButton = mRotatableDialog.getDialog().getButton(AlertDialog.BUTTON_POSITIVE);
                    if (positiveButton != null) {
                        positiveButton.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 14.0f);
                    }
                    Button negativeButton = mRotatableDialog.getDialog().getButton(AlertDialog.BUTTON_NEGATIVE);
                    if (negativeButton != null) {
                        negativeButton.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 14.0f);
                    }
                }
            }
        });

        mRotatableDialog.show();
        return mRotatableDialog.getDialog();
    }

    @Override
    public void onDismiss(DialogInterface dialog) {
        super.onDismiss(dialog);
        if (mIsShow && mFactor != EnumDismissFactor.DISMISS_FACTOR_SHUTDOWN) {
            fireDismissDialog(false, mFactor);
        }
    }

    public void setRotation(float rotation) {
        if (mRotatableDialog != null) {
            int orientation;
            if (rotation == 0f || rotation == 180.0f) {
                orientation = 1;
            } else {
                orientation = 2;
            }
            mRotatableDialog.setOrientation(orientation);
        }
    }
}
