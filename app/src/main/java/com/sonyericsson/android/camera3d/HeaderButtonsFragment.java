package com.sonyericsson.android.camera3d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.fragment.app.Fragment;

public class HeaderButtonsFragment extends Fragment {
    private OnSettingDialogStateChangedListener mOnSettingDialogStateChangedListener = null;
    private ImageButton mSettingsButton;

    public interface OnSettingDialogStateChangedListener {
        void closeSettingDialog();

        boolean isOpened();

        boolean openSettingDialog();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final View viewInflate = layoutInflater.inflate(R.layout.header_buttons_fragment, viewGroup);
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.image_button_settings);
        this.mSettingsButton = imageButton;
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.sonyericsson.android.camera3d.HeaderButtonsFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HeaderButtonsFragment.this.m7x614eda04(viewInflate, view);
            }
        });
        viewInflate.setOnTouchListener(new View.OnTouchListener() { // from class: com.sonyericsson.android.camera3d.HeaderButtonsFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return HeaderButtonsFragment.this.m8x86e2e305(viewInflate, view, motionEvent);
            }
        });
        return viewInflate;
    }

    /* synthetic */ void m7x614eda04(View view, View view2) {
        OnSettingDialogStateChangedListener onSettingDialogStateChangedListener = this.mOnSettingDialogStateChangedListener;
        if (onSettingDialogStateChangedListener != null) {
            if (onSettingDialogStateChangedListener.isOpened()) {
                this.mSettingsButton.setContentDescription(view.getContext().getString(R.string.cam_strings_accessibility_quick_setting_menu_txt));
                this.mSettingsButton.setImageResource(R.drawable.cam_menu_icn);
                this.mOnSettingDialogStateChangedListener.closeSettingDialog();
            } else if (this.mOnSettingDialogStateChangedListener.openSettingDialog()) {
                this.mSettingsButton.setContentDescription(view.getContext().getString(R.string.cam_strings_accessibility_close_txt));
                this.mSettingsButton.setImageResource(R.drawable.cam_menu_close_icn);
            }
        }
    }

    /* synthetic */ boolean m8x86e2e305(View view, View view2, MotionEvent motionEvent) {
        OnSettingDialogStateChangedListener onSettingDialogStateChangedListener;
        if (motionEvent.getAction() != 0 || (onSettingDialogStateChangedListener = this.mOnSettingDialogStateChangedListener) == null || !onSettingDialogStateChangedListener.isOpened()) {
            return false;
        }
        this.mSettingsButton.setContentDescription(view.getContext().getString(R.string.cam_strings_accessibility_close_txt));
        this.mSettingsButton.setImageResource(R.drawable.cam_menu_close_icn);
        this.mOnSettingDialogStateChangedListener.closeSettingDialog();
        return true;
    }

    public void rotateView(int i) {
        this.mSettingsButton.setRotation(i);
    }

    public void setViewsVisibility(int i) {
        this.mSettingsButton.setVisibility(i);
    }

    public void setViewsEnabled(boolean z) {
        this.mSettingsButton.setEnabled(z);
    }

    public void setOnSettingDialogStateChangedListener(OnSettingDialogStateChangedListener onSettingDialogStateChangedListener) {
        this.mOnSettingDialogStateChangedListener = onSettingDialogStateChangedListener;
    }

    public void notifySettingDialogClosed() {
        this.mSettingsButton.setContentDescription(getContext().getString(R.string.cam_strings_accessibility_quick_setting_menu_txt));
        this.mSettingsButton.setImageResource(R.drawable.cam_menu_icn);
    }
}
