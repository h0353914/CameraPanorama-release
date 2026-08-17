package com.sonyericsson.android.camera3d.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.sonyericsson.android.camera3d.Camera2App;
import com.sonyericsson.android.camera3d.R;
import java.util.Objects;

public class AlertOkDialog extends DialogFragment {
    public static final String DIALOG_ORIENTATION = "DIALOG_ORIENTATION";
    public static final String OK_BODY_CAPTION_1 = "okBodyCaption1";
    public static final String OK_BODY_CAPTION_2 = "okBodyCaption2";
    public static final String OK_BODY_TEXT_1 = "okBodyText1";
    public static final String OK_BODY_TEXT_2 = "okBodyText2";
    private RotatableDialog mRotatableDialog;

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        final FragmentActivity activity = getActivity();
        Bundle arguments = getArguments();
        String string = getString(R.string.cam_strings_panorama_runtime_permission_dialog1_title_txt, getString(R.string.cam_strings_application_name_panorama_txt));
        String string2 = getString(R.string.cam_strings_panorama_runtime_permission_dialog1_message_txt, getString(R.string.cam_strings_application_name_panorama_txt));
        ViewGroup viewGroup = (ViewGroup) View.inflate(activity, R.layout.alert_dialog_ok, null);
        ((TextView) viewGroup.findViewById(R.id.alert_dialog_title_txt)).setText(string);
        ((TextView) viewGroup.findViewById(R.id.alert_dialog_header_txt)).setText(string2);
        TextView textView = (TextView) viewGroup.findViewById(R.id.alert_dialog_body_caption_1);
        TextView textView2 = (TextView) viewGroup.findViewById(R.id.alert_dialog_body_text_1);
        TextView textView3 = (TextView) viewGroup.findViewById(R.id.alert_dialog_body_caption_2);
        TextView textView4 = (TextView) viewGroup.findViewById(R.id.alert_dialog_body_text_2);
        String string3 = arguments.getString(OK_BODY_CAPTION_1);
        if (string3 != null && !Objects.equals(string3, "")) {
            textView.setText(string3);
        } else {
            textView.setVisibility(8);
        }
        String string4 = arguments.getString(OK_BODY_TEXT_1);
        if (string4 != null && !Objects.equals(string4, "")) {
            textView2.setText(string4);
        } else {
            textView2.setVisibility(8);
        }
        String string5 = arguments.getString(OK_BODY_CAPTION_2);
        if (string5 != null && !Objects.equals(string5, "")) {
            textView3.setText(string5);
        } else {
            textView3.setVisibility(8);
        }
        String string6 = arguments.getString(OK_BODY_TEXT_2);
        if (string6 != null && !Objects.equals(string6, "")) {
            textView4.setText(string6);
        } else {
            textView4.setVisibility(8);
        }
        RotatableDialog.Builder builder = new RotatableDialog.Builder(activity);
        int i = arguments.getInt("DIALOG_ORIENTATION");
        if (i == 0) {
            i = 1;
        }
        builder.setOrientation(i);
        builder.setView(viewGroup).setPositiveButton(R.string.cam_strings_panorama_ok_txt, new DialogInterface.OnClickListener() { // from class: com.sonyericsson.android.camera3d.dialog.AlertOkDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (AlertOkDialog.this.getActivity() instanceof Camera2App) {
                    ((Camera2App) activity).requestPermissionForCamera();
                }
            }
        });
        setCancelable(false);
        RotatableDialog rotatableDialogCreateRotatableDialog = builder.createRotatableDialog();
        this.mRotatableDialog = rotatableDialogCreateRotatableDialog;
        rotatableDialogCreateRotatableDialog.getDialog().setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.sonyericsson.android.camera3d.dialog.AlertOkDialog.2
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                Button button;
                if (AlertOkDialog.this.mRotatableDialog.getDialog() == null || (button = AlertOkDialog.this.mRotatableDialog.getDialog().getButton(-1)) == null) {
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
}
