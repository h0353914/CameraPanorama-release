package com.sonyericsson.android.camera3d.dialog;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.sonyericsson.android.camera3d.Camera2App;
import com.sonyericsson.android.camera3d.R;
import java.util.Objects;

public class AlertSettingDialog extends DialogFragment {
    public static final String DIALOG_ORIENTATION = "DIALOG_ORIENTATION";
    private static final int REQUEST_PANORAMA_LOCATION_PERMISSION = 50;
    public static final String SETTING_BODY_CAPTION_1 = "settingBodyCaption1";
    public static final String SETTING_BODY_CAPTION_2 = "settingBodyCaption2";
    public static final String SETTING_BODY_TEXT_1 = "settingBodyText1";
    public static final String SETTING_BODY_TEXT_2 = "settingBodyText2";
    private boolean mIsFinish = true;
    private boolean mIsStartCamera = false;
    private RotatableDialog mRotatableDialog;

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        final FragmentActivity activity = getActivity();
        Bundle arguments = getArguments();
        ViewGroup viewGroup = (ViewGroup) View.inflate(activity, R.layout.alert_dialog_setting, null);
        ((TextView) viewGroup.findViewById(R.id.alert_dialog_title_txt)).setText(getString(R.string.cam_strings_panorama_runtime_permission_dialog2_title_txt));
        ((TextView) viewGroup.findViewById(R.id.alert_dialog_header_txt)).setText(getString(R.string.cam_strings_panorama_runtime_permission_dialog2_message1_txt));
        TextView textView = (TextView) viewGroup.findViewById(R.id.alert_dialog_body_caption_1);
        TextView textView2 = (TextView) viewGroup.findViewById(R.id.alert_dialog_body_text_1);
        TextView textView3 = (TextView) viewGroup.findViewById(R.id.alert_dialog_body_caption_2);
        TextView textView4 = (TextView) viewGroup.findViewById(R.id.alert_dialog_body_text_2);
        String string = arguments.getString(SETTING_BODY_CAPTION_1);
        if (string != null && !Objects.equals(string, "")) {
            textView.setText(string);
        } else {
            textView.setVisibility(8);
        }
        String string2 = arguments.getString(SETTING_BODY_TEXT_1);
        if (string2 != null && !Objects.equals(string2, "")) {
            textView2.setText(string2);
        } else {
            textView2.setVisibility(8);
        }
        String string3 = arguments.getString(SETTING_BODY_CAPTION_2);
        if (string3 != null && !Objects.equals(string3, "")) {
            textView3.setText(string3);
        } else {
            textView3.setVisibility(8);
        }
        String string4 = arguments.getString(SETTING_BODY_TEXT_2);
        if (string4 != null && !Objects.equals(string4, "")) {
            textView4.setText(string4);
        } else {
            textView4.setVisibility(8);
        }
        ((TextView) viewGroup.findViewById(R.id.alert_dialog_footer_txt)).setText(getString(R.string.cam_strings_panorama_runtime_permission_dialog2_message2_txt));
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
        builder.setView(viewGroup).setPositiveButton(R.string.cam_strings_panorama_runtime_permission_continue_button_txt, new DialogInterface.OnClickListener() { // from class: com.sonyericsson.android.camera3d.dialog.AlertSettingDialog.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                String packageName = activity.getPackageName();
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.parse("package:" + packageName));
                AlertSettingDialog.this.startActivityForResult(intent, 50);
                ((Camera2App) AlertSettingDialog.this.getActivity()).changeTrackingFlag(true);
            }
        }).setNegativeButton(R.string.cam_strings_panorama_cancel_txt, new DialogInterface.OnClickListener() { // from class: com.sonyericsson.android.camera3d.dialog.AlertSettingDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if ((AlertSettingDialog.this.getActivity() instanceof Camera2App) && AlertSettingDialog.this.mIsFinish) {
                    AlertSettingDialog.this.getActivity().finish();
                }
                ((Camera2App) AlertSettingDialog.this.getActivity()).changeTrackingFlag(true);
                if (AlertSettingDialog.this.mIsStartCamera) {
                    ((Camera2App) AlertSettingDialog.this.getActivity()).onCancelLocationSetting();
                }
            }
        });
        setCancelable(false);
        RotatableDialog rotatableDialogCreateRotatableDialog = builder.createRotatableDialog();
        this.mRotatableDialog = rotatableDialogCreateRotatableDialog;
        rotatableDialogCreateRotatableDialog.getDialog().setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.sonyericsson.android.camera3d.dialog.AlertSettingDialog.3
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                if (AlertSettingDialog.this.mRotatableDialog.getDialog() != null) {
                    Button button = AlertSettingDialog.this.mRotatableDialog.getDialog().getButton(-1);
                    if (button != null) {
                        button.setTextSize(1, 14.0f);
                    }
                    Button button2 = AlertSettingDialog.this.mRotatableDialog.getDialog().getButton(-2);
                    if (button2 != null) {
                        button2.setTextSize(1, 14.0f);
                    }
                }
            }
        });
        this.mRotatableDialog.show();
        return this.mRotatableDialog.getDialog();
    }

    public void setCancelWithFinish(boolean z) {
        this.mIsFinish = z;
    }

    public void setCancelWithStartCamera(boolean z) {
        this.mIsStartCamera = z;
    }

    public boolean isShowing() {
        RotatableDialog rotatableDialog = this.mRotatableDialog;
        return rotatableDialog != null && rotatableDialog.isShowing();
    }
}
