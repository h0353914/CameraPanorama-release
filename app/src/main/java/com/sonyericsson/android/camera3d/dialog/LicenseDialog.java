package com.sonyericsson.android.camera3d.dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;

import com.sonyericsson.android.camera3d.Camera2App;
import com.sonyericsson.android.camera3d.R;

public class LicenseDialog extends DialogFragment {
    public static final String DIALOG_ORIENTATION = "DIALOG_ORIENTATION";

    private boolean mIsShow = false;
    private RotatableDialog mRotatableDialog;

    private void fireDismissDialog() {
        mIsShow = false;
        if (getActivity() instanceof Camera2App) {
            ((Camera2App) getActivity()).onDismissLicenseDialog();
        }
    }

    public void close() {
        mIsShow = false;
        dismiss();
    }

    public boolean isShowing() {
        return mRotatableDialog != null && mRotatableDialog.isShowing();
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        final FragmentActivity activity = getActivity();
        Bundle args = getArguments();

        ViewGroup view = (ViewGroup) View.inflate(activity, R.layout.dialog_license, null);

        String titleText = getString(R.string.cam_strings_panorama_sw_licence_title_txt);
        TextView titleView = (TextView) view.findViewById(R.id.dialog_title_txt);
        titleView.setText(titleText);

        TextView bodyView = (TextView) view.findViewById(R.id.dialog_body);
        String licenseHtml = getResources().getString(R.string.license_text);
        bodyView.setText(Html.fromHtml(licenseHtml));
        bodyView.setAutoLinkMask(1);
        bodyView.setMovementMethod(LinkMovementMethod.getInstance());

        RotatableDialog.Builder builder = new RotatableDialog.Builder(activity);
        int orientation = args.getInt(DIALOG_ORIENTATION);
        if (orientation == 0) {
            orientation = 1;
        }
        builder.setOrientation(orientation);

        if (orientation == 2) {
            ScrollView scrollView = (ScrollView) view.findViewById(R.id.alert_dialog_scroll_view);
            ViewGroup.LayoutParams params = scrollView.getLayoutParams();
            float density = activity.getResources().getDisplayMetrics().density;
            params.height = (int) (200.0f * density);
            scrollView.setLayoutParams(params);
        }

        builder.setView(view).setPositiveButton(R.string.cam_strings_panorama_ok_txt,
                new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        fireDismissDialog();
                    }
                });

        builder.setOnKeyListener(new DialogInterface.OnKeyListener() {
            @Override
            public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                if (keyCode != KeyEvent.KEYCODE_BACK) {
                    return activity.onKeyDown(keyCode, event);
                }
                if (isShowing()) {
                    LicenseDialog.super.dismissAllowingStateLoss();
                }
                return true;
            }
        });

        setCancelable(false);
        mIsShow = true;

        mRotatableDialog = builder.createRotatableDialog();
        mRotatableDialog.getDialog().setOnShowListener(new DialogInterface.OnShowListener() {
            @Override
            public void onShow(DialogInterface dialog) {
                if (mRotatableDialog.getDialog() != null) {
                    Button button = mRotatableDialog.getDialog().getButton(AlertDialog.BUTTON_POSITIVE);
                    if (button != null) {
                        button.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 14.0f);
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
        if (mIsShow) {
            fireDismissDialog();
        }
    }
}
