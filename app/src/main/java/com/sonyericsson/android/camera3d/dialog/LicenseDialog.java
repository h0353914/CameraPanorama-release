package com.sonyericsson.android.camera3d.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.sonyericsson.android.camera3d.Camera2App;
import com.sonyericsson.android.camera3d.R;

public class LicenseDialog extends DialogFragment {
    public static final String DIALOG_ORIENTATION = "DIALOG_ORIENTATION";
    private boolean mIsShow = false;
    private RotatableDialog mRotatableDialog;

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        final FragmentActivity activity = getActivity();
        Bundle arguments = getArguments();
        ViewGroup viewGroup = (ViewGroup) View.inflate(activity, R.layout.dialog_license, null);
        ((TextView) viewGroup.findViewById(R.id.dialog_title_txt)).setText(getString(R.string.cam_strings_panorama_sw_licence_title_txt));
        TextView textView = (TextView) viewGroup.findViewById(R.id.dialog_body);
        textView.setText(Html.fromHtml(getResources().getString(R.string.license_text)));
        textView.setAutoLinkMask(1);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        RotatableDialog.Builder builder = new RotatableDialog.Builder(activity);
        int i = arguments.getInt("DIALOG_ORIENTATION");
        if (i == 0) {
            i = 1;
        }
        builder.setOrientation(i);
        if (i == 2 || i == 3) {
            ScrollView scrollView = (ScrollView) viewGroup.findViewById(R.id.alert_dialog_scroll_view);
            ViewGroup.LayoutParams layoutParams = scrollView.getLayoutParams();
            layoutParams.height = (int) (activity.getResources().getDisplayMetrics().density * 200.0f);
            scrollView.setLayoutParams(layoutParams);
        }
        builder.setView(viewGroup).setPositiveButton(R.string.cam_strings_panorama_ok_txt, new DialogInterface.OnClickListener() { // from class: com.sonyericsson.android.camera3d.dialog.LicenseDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                LicenseDialog.this.fireDismissDialog();
            }
        });
        builder.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.sonyericsson.android.camera3d.dialog.LicenseDialog.2
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                if (i2 == 4) {
                    if (!LicenseDialog.this.isShowing()) {
                        return true;
                    }
                    LicenseDialog.super.dismissAllowingStateLoss();
                    return true;
                }
                return activity.onKeyDown(i2, keyEvent);
            }
        });
        setCancelable(false);
        this.mIsShow = true;
        RotatableDialog rotatableDialogCreateRotatableDialog = builder.createRotatableDialog();
        this.mRotatableDialog = rotatableDialogCreateRotatableDialog;
        rotatableDialogCreateRotatableDialog.getDialog().setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.sonyericsson.android.camera3d.dialog.LicenseDialog.3
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                Button button;
                if (LicenseDialog.this.mRotatableDialog.getDialog() == null || (button = LicenseDialog.this.mRotatableDialog.getDialog().getButton(-1)) == null) {
                    return;
                }
                button.setTextSize(1, 14.0f);
            }
        });
        this.mRotatableDialog.show();
        return this.mRotatableDialog.getDialog();
    }

    public boolean isShowing() {
        RotatableDialog rotatableDialog = this.mRotatableDialog;
        return rotatableDialog != null && rotatableDialog.isShowing();
    }

    public void close() {
        this.mIsShow = false;
        dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.mIsShow) {
            fireDismissDialog();
        }
    }

    public void fireDismissDialog() {
        this.mIsShow = false;
        if (getActivity() instanceof Camera2App) {
            ((Camera2App) getActivity()).onDismissLicenseDialog();
        }
    }
}
