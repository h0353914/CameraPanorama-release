package com.sonyericsson.android.camera3d.dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

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

    public boolean isShowing() {
        return mRotatableDialog != null && mRotatableDialog.isShowing();
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        final FragmentActivity activity = getActivity();
        Bundle args = getArguments();

        String appName = getString(R.string.cam_strings_application_name_panorama_txt);
        String title = getString(R.string.cam_strings_panorama_runtime_permission_dialog1_title_txt, appName);

        appName = getString(R.string.cam_strings_application_name_panorama_txt);
        String message = getString(R.string.cam_strings_panorama_runtime_permission_dialog1_message_txt, appName);

        ViewGroup view = (ViewGroup) View.inflate(activity, R.layout.alert_dialog_ok, null);
        TextView titleView = (TextView) view.findViewById(R.id.alert_dialog_title_txt);
        titleView.setText(title);

        TextView headerView = (TextView) view.findViewById(R.id.alert_dialog_header_txt);
        headerView.setText(message);

        TextView bodyCaption1 = (TextView) view.findViewById(R.id.alert_dialog_body_caption_1);
        TextView bodyText1 = (TextView) view.findViewById(R.id.alert_dialog_body_text_1);
        TextView bodyCaption2 = (TextView) view.findViewById(R.id.alert_dialog_body_caption_2);
        TextView bodyText2 = (TextView) view.findViewById(R.id.alert_dialog_body_text_2);

        String okBodyCaption1 = args.getString(OK_BODY_CAPTION_1);
        if (okBodyCaption1 != null && !Objects.equals(okBodyCaption1, "")) {
            bodyCaption1.setText(okBodyCaption1);
        } else {
            bodyCaption1.setVisibility(View.GONE);
        }

        String okBodyText1 = args.getString(OK_BODY_TEXT_1);
        if (okBodyText1 != null && !Objects.equals(okBodyText1, "")) {
            bodyText1.setText(okBodyText1);
        } else {
            bodyText1.setVisibility(View.GONE);
        }

        String okBodyCaption2 = args.getString(OK_BODY_CAPTION_2);
        if (okBodyCaption2 != null && !Objects.equals(okBodyCaption2, "")) {
            bodyCaption2.setText(okBodyCaption2);
        } else {
            bodyCaption2.setVisibility(View.GONE);
        }

        String okBodyText2 = args.getString(OK_BODY_TEXT_2);
        if (okBodyText2 != null && !Objects.equals(okBodyText2, "")) {
            bodyText2.setText(okBodyText2);
        } else {
            bodyText2.setVisibility(View.GONE);
        }

        RotatableDialog.Builder builder = new RotatableDialog.Builder(activity);
        int orientation = args.getInt(DIALOG_ORIENTATION);
        if (orientation == 0) {
            orientation = 1;
        }
        builder.setOrientation(orientation);

        builder.setView(view).setPositiveButton(R.string.cam_strings_panorama_ok_txt,
                new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        if (getActivity() instanceof Camera2App) {
                            ((Camera2App) activity).requestPermissionForCamera();
                        }
                    }
                });

        setCancelable(false);

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
}
