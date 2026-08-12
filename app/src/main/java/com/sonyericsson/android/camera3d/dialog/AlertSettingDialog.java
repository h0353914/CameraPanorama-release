package com.sonyericsson.android.camera3d.dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;

import com.sonyericsson.android.camera3d.Camera2App;
import com.sonyericsson.android.camera3d.R;

import java.util.Objects;

public class AlertSettingDialog extends DialogFragment {
    public static final String DIALOG_ORIENTATION = "DIALOG_ORIENTATION";
    private static final int REQUEST_PANORAMA_LOCATION_PERMISSION = 0x32;
    public static final String SETTING_BODY_CAPTION_1 = "settingBodyCaption1";
    public static final String SETTING_BODY_CAPTION_2 = "settingBodyCaption2";
    public static final String SETTING_BODY_TEXT_1 = "settingBodyText1";
    public static final String SETTING_BODY_TEXT_2 = "settingBodyText2";

    private boolean mIsFinish = true;
    private boolean mIsStartCamera = false;
    private RotatableDialog mRotatableDialog;

    public boolean isShowing() {
        return mRotatableDialog != null && mRotatableDialog.isShowing();
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        final FragmentActivity activity = getActivity();
        Bundle args = getArguments();

        ViewGroup view = (ViewGroup) View.inflate(activity, R.layout.alert_dialog_setting, null);

        String titleText = getString(R.string.cam_strings_panorama_runtime_permission_dialog2_title_txt);
        TextView titleView = (TextView) view.findViewById(R.id.alert_dialog_title_txt);
        titleView.setText(titleText);

        String headerText = getString(R.string.cam_strings_panorama_runtime_permission_dialog2_message1_txt);
        TextView headerView = (TextView) view.findViewById(R.id.alert_dialog_header_txt);
        headerView.setText(headerText);

        TextView bodyCaption1 = (TextView) view.findViewById(R.id.alert_dialog_body_caption_1);
        TextView bodyText1 = (TextView) view.findViewById(R.id.alert_dialog_body_text_1);
        TextView bodyCaption2 = (TextView) view.findViewById(R.id.alert_dialog_body_caption_2);
        TextView bodyText2 = (TextView) view.findViewById(R.id.alert_dialog_body_text_2);

        String settingBodyCaption1 = args.getString(SETTING_BODY_CAPTION_1);
        if (settingBodyCaption1 != null && !Objects.equals(settingBodyCaption1, "")) {
            bodyCaption1.setText(settingBodyCaption1);
        } else {
            bodyCaption1.setVisibility(View.GONE);
        }

        String settingBodyText1 = args.getString(SETTING_BODY_TEXT_1);
        if (settingBodyText1 != null && !Objects.equals(settingBodyText1, "")) {
            bodyText1.setText(settingBodyText1);
        } else {
            bodyText1.setVisibility(View.GONE);
        }

        String settingBodyCaption2 = args.getString(SETTING_BODY_CAPTION_2);
        if (settingBodyCaption2 != null && !Objects.equals(settingBodyCaption2, "")) {
            bodyCaption2.setText(settingBodyCaption2);
        } else {
            bodyCaption2.setVisibility(View.GONE);
        }

        String settingBodyText2 = args.getString(SETTING_BODY_TEXT_2);
        if (settingBodyText2 != null && !Objects.equals(settingBodyText2, "")) {
            bodyText2.setText(settingBodyText2);
        } else {
            bodyText2.setVisibility(View.GONE);
        }

        TextView footerView = (TextView) view.findViewById(R.id.alert_dialog_footer_txt);
        String footerText = getString(R.string.cam_strings_panorama_runtime_permission_dialog2_message2_txt);
        footerView.setText(footerText);

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

        builder.setView(view).setPositiveButton(R.string.cam_strings_panorama_runtime_permission_continue_button_txt,
                new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        String packageName = activity.getPackageName();
                        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                        intent.setData(Uri.parse("package:" + packageName));
                        startActivityForResult(intent, REQUEST_PANORAMA_LOCATION_PERMISSION);
                        ((Camera2App) getActivity()).changeTrackingFlag(true);
                    }
                }).setNegativeButton(R.string.cam_strings_panorama_cancel_txt,
                new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        if (getActivity() instanceof Camera2App) {
                            if (mIsFinish) {
                                getActivity().finish();
                            }
                        }
                        ((Camera2App) getActivity()).changeTrackingFlag(true);
                        if (mIsStartCamera) {
                            ((Camera2App) getActivity()).onCancelLocationSetting();
                        }
                    }
                });

        setCancelable(false);

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

    public void setCancelWithFinish(boolean isFinish) {
        mIsFinish = isFinish;
    }

    public void setCancelWithStartCamera(boolean isStartCamera) {
        mIsStartCamera = isStartCamera;
    }
}
