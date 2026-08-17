package com.sonyericsson.android.camera3d;

import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonyericsson.android.camera3d.base.SettingListBase;
import java.util.ArrayList;
import java.util.List;

class SettingList extends SettingListBase {
    private static final int ANIMATION_DURATION = 100;
    private static final int ITEM_NUM = 6;
    public static final int LIST_INDEX_APP_TITLE = 0;
    public static final int LIST_INDEX_CAMERA_SOUND = 3;
    public static final int LIST_INDEX_LICENSE = 5;
    public static final int LIST_INDEX_SAVE_DESTINATION = 4;
    public static final int LIST_INDEX_SAVE_LOCATION = 1;
    public static final int LIST_INDEX_USE_VOLUME_KEY = 2;
    private final AnimationSet[] mCloseAnimation;
    private final OnCheckedChangeListener mOnCheckedChangeListener;
    private final AnimationSet[] mOpenAnimation;
    private final List<SettingSubList> mSubLists;
    private static final int[] IDS_SAVE_LOCATION = {R.id.setting_dialog_save_location_portrait, R.id.setting_dialog_save_location_landscape};
    private static final int[] IDS_USE_VOLUME_KEY = {R.id.setting_dialog_use_volume_key_portrait, R.id.setting_dialog_use_volume_key_landscape};
    private static final int[] IDS_CAMERA_SOUND = {R.id.setting_dialog_camera_sound_portrait, R.id.setting_dialog_camera_sound_landscape};
    private static final int[] IDS_SAVE_DESTINATION = {R.id.setting_dialog_save_destination_portrait, R.id.setting_dialog_save_destination_landscape};
    private static final int[] IDS_SWITCH_BG_SAVE_LOCATION = {R.id.setting_switch_bg_save_location_portrait, R.id.setting_switch_bg_save_location_landscape};
    private static final int[] IDS_SWITCH_ICON_SAVE_LOCATION = {R.id.setting_switch_icon_save_location_portrait, R.id.setting_switch_icon_save_location_landscape};
    private static final int[] IDS_SWITCH_BG_CAMERA_SOUND = {R.id.setting_switch_bg_camera_sound_portrait, R.id.setting_switch_bg_camera_sound_landscape};
    private static final int[] IDS_SWITCH_ICON_CAMERA_SOUND = {R.id.setting_switch_icon_camera_sound_portrait, R.id.setting_switch_icon_camera_sound_landscape};
    private static final int[] IDS_VOLUME_KEY_SUMMARY = {R.id.setting_dialog_use_volume_key_summary_portrait, R.id.setting_dialog_use_volume_key_summary_landscape};
    private static final int[] IDS_SAVE_DESTINATION_SUMMARY = {R.id.setting_dialog_save_destination_summary_portrait, R.id.setting_dialog_save_destination_summary_landscape};
    private static final int[] IDS_LICENSE = {R.id.setting_dialog_licence_portrait, R.id.setting_dialog_license_landscape};

    public interface OnCheckedChangeListener {
        void onCheckedChanged(int i, boolean z);
    }

    public SettingList(Context context, SettingListBase.OnSelectedListener onSelectedListener, OnCheckedChangeListener onCheckedChangeListener) {
        super(context, onSelectedListener, 6);
        this.mOpenAnimation = new AnimationSet[2];
        this.mCloseAnimation = new AnimationSet[2];
        this.mSubLists = new ArrayList();
        this.mOnCheckedChangeListener = onCheckedChangeListener;
        initialize(0);
        initialize(1);
    }

    private void initialize(int i) {
        int i2;
        int i3;
        int i4;
        RelativeLayout.LayoutParams layoutParams;
        if (i == 0) {
            i2 = R.layout.setting_list_portrait;
            i3 = R.drawable.setting_item_selector_1st_layer;
            i4 = R.dimen.setting_dialog_container_margin_portrait;
        } else {
            i2 = this.mContext.getResources().getConfiguration().getLayoutDirection() == 1 ? R.layout.setting_list_landscape_rtl : R.layout.setting_list_landscape;
            i3 = R.drawable.setting_item_selector_landscape_1st_layer;
            i4 = R.dimen.setting_dialog_container_margin_landscape;
        }
        this.mView[i] = View.inflate(this.mContext, i2, null);
        if (i == 0) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.setting_dialog_container_padding);
        int dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(i4);
        layoutParams.setMargins(dimensionPixelSize2, -dimensionPixelSize, dimensionPixelSize2, 0);
        layoutParams.addRule(3, R.id.header_icon_container);
        if (i == 1) {
            this.mView[i].setLayoutDirection(0);
            layoutParams.addRule(11, -1);
        }
        this.mView[i].setLayoutParams(layoutParams);
        this.mView[i].setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        this.mView[i].setBackgroundResource(R.drawable.cam_shortcut_dialog_background_icn);
        this.mView[i].setVisibility(4);
        this.mListItems[i] = new View[6];
        this.mListItems[i][0] = this.mView[i].findViewById(IDS_APP_TITLE[i]);
        this.mListItems[i][1] = this.mView[i].findViewById(IDS_SAVE_LOCATION[i]);
        this.mListItems[i][2] = this.mView[i].findViewById(IDS_USE_VOLUME_KEY[i]);
        this.mListItems[i][3] = this.mView[i].findViewById(IDS_CAMERA_SOUND[i]);
        this.mListItems[i][4] = this.mView[i].findViewById(IDS_SAVE_DESTINATION[i]);
        this.mListItems[i][5] = this.mView[i].findViewById(IDS_LICENSE[i]);
        this.mListItems[i][0].setContentDescription(this.mContext.getString(R.string.cam_strings_accessibility_panorama_txt) + " " + this.mContext.getString(R.string.cam_strings_accessibility_setting_heading_txt));
        this.mListItems[i][5].setContentDescription(this.mContext.getString(R.string.cam_strings_panorama_sw_licence_title_txt));
        for (int i5 = 0; i5 < 6; i5++) {
            this.mListItems[i][i5].setOnTouchListener(this);
            this.mListItems[i][i5].setOnKeyListener(this);
            this.mListItems[i][i5].setClickable(false);
            this.mListItems[i][i5].setFocusable(true);
            this.mListItems[i][i5].setFocusableInTouchMode(false);
            this.mListItems[i][i5].setBackgroundResource(i3);
            if (i5 == 0) {
                this.mListItems[i][i5].getBackground().setLevel(1);
            } else if (i5 == 5) {
                this.mListItems[i][i5].getBackground().setLevel(2);
            } else {
                this.mListItems[i][i5].getBackground().setLevel(0);
            }
        }
    }

    public void open() {
        TranslateAnimation translateAnimation;
        View view = getView();
        if (view.getVisibility() == 0) {
            return;
        }
        if (this.mOpenAnimation[this.mOrientation] == null) {
            int i = 0;
            for (View view2 : this.mListItems[this.mOrientation]) {
                if (view2.getVisibility() == 0) {
                    i++;
                }
            }
            if (this.mOrientation == 0) {
                translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, (1.0f / i) / 3.0f, 1, 0.0f);
            } else {
                translateAnimation = new TranslateAnimation(1, (-(1.0f / i)) / 3.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
            }
            translateAnimation.setInterpolator(new DecelerateInterpolator());
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            this.mOpenAnimation[this.mOrientation] = new AnimationSet(this.mContext, null);
            this.mOpenAnimation[this.mOrientation].addAnimation(alphaAnimation);
            this.mOpenAnimation[this.mOrientation].addAnimation(translateAnimation);
            this.mOpenAnimation[this.mOrientation].setDuration(100L);
        }
        view.startAnimation(this.mOpenAnimation[this.mOrientation]);
        view.setVisibility(0);
        setActive(true);
    }

    public void close(boolean z) {
        TranslateAnimation translateAnimation;
        View view = getView();
        if (view.getVisibility() != 0) {
            return;
        }
        cancelTouch();
        if (z) {
            if (this.mCloseAnimation[this.mOrientation] == null) {
                int i = 0;
                for (View view2 : this.mListItems[this.mOrientation]) {
                    if (view2.getVisibility() == 0) {
                        i++;
                    }
                }
                if (this.mOrientation == 0) {
                    translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, (1.0f / i) / 3.0f);
                } else {
                    translateAnimation = new TranslateAnimation(1, 0.0f, 1, (-(1.0f / i)) / 3.0f, 1, 0.0f, 1, 0.0f);
                }
                translateAnimation.setInterpolator(new AccelerateInterpolator());
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                this.mCloseAnimation[this.mOrientation] = new AnimationSet(this.mContext, null);
                this.mCloseAnimation[this.mOrientation].addAnimation(alphaAnimation);
                this.mCloseAnimation[this.mOrientation].addAnimation(translateAnimation);
                this.mCloseAnimation[this.mOrientation].setDuration(100L);
            }
            view.startAnimation(this.mCloseAnimation[this.mOrientation]);
        }
        view.setVisibility(4);
        setActive(false);
    }

    public void close() {
        close(false);
    }

    public void setChecked(int i, boolean z) {
        int[] iArr;
        int[] iArr2;
        String string;
        String string2 = this.mContext.getString(z ? R.string.camera_strings_accessibility_panorama_toggle_on_txt : R.string.camera_strings_accessibility_panorama_toggle_off_txt);
        if (i == 1) {
            iArr = IDS_SWITCH_BG_SAVE_LOCATION;
            iArr2 = IDS_SWITCH_ICON_SAVE_LOCATION;
            string = this.mContext.getString(R.string.cam_strings_panorama_geotagging_txt);
        } else if (i == 3) {
            iArr = IDS_SWITCH_BG_CAMERA_SOUND;
            iArr2 = IDS_SWITCH_ICON_CAMERA_SOUND;
            string = this.mContext.getString(R.string.cam_strings_panorama_camera_sound_txt);
        } else {
            iArr = null;
            iArr2 = null;
            string = null;
        }
        if (iArr != null && iArr2 != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, z ? 8388629 : 8388627);
            ImageView imageView = (ImageView) getView(0).findViewById(iArr[0]);
            int i2 = R.drawable.cam_setting_switch_on_bg_icn;
            if (imageView != null) {
                imageView.setImageResource(z ? R.drawable.cam_setting_switch_on_bg_icn : R.drawable.cam_setting_switch_off_bg_icn);
            }
            ImageView imageView2 = (ImageView) getView(0).findViewById(iArr2[0]);
            int i3 = R.drawable.cam_setting_switch_on_icn;
            if (imageView2 != null) {
                imageView2.setImageResource(z ? R.drawable.cam_setting_switch_on_icn : R.drawable.cam_setting_switch_off_icn);
                imageView2.setLayoutParams(layoutParams);
            }
            this.mListItems[0][i].setContentDescription(string + " " + string2);
            ImageView imageView3 = (ImageView) getView(1).findViewById(iArr[1]);
            if (imageView3 != null) {
                if (!z) {
                    i2 = R.drawable.cam_setting_switch_off_bg_icn;
                }
                imageView3.setImageResource(i2);
            }
            ImageView imageView4 = (ImageView) getView(1).findViewById(iArr2[1]);
            if (imageView4 != null) {
                if (!z) {
                    i3 = R.drawable.cam_setting_switch_off_icn;
                }
                imageView4.setImageResource(i3);
                imageView4.setLayoutParams(layoutParams);
            }
            this.mListItems[1][i].setContentDescription(string + " " + string2);
        }
        OnCheckedChangeListener onCheckedChangeListener = this.mOnCheckedChangeListener;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(i, z);
        }
    }

    public void setSummary(int i, int i2) {
        int[] iArr;
        String string;
        if (i == 2) {
            iArr = IDS_VOLUME_KEY_SUMMARY;
            string = this.mContext.getString(R.string.cam_strings_panorama_volumekey_txt);
        } else if (i == 4) {
            iArr = IDS_SAVE_DESTINATION_SUMMARY;
            string = this.mContext.getString(R.string.cam_strings_panorama_save_destination_txt);
        } else {
            iArr = null;
            string = null;
        }
        if (iArr != null) {
            String string2 = this.mContext.getString(i2);
            TextView textView = (TextView) getView(0).findViewById(iArr[0]);
            if (textView != null) {
                textView.setText(string2);
            }
            this.mListItems[0][i].setContentDescription(string + " " + string2);
            TextView textView2 = (TextView) getView(1).findViewById(iArr[1]);
            if (textView2 != null) {
                textView2.setText(string2);
            }
            this.mListItems[1][i].setContentDescription(string + " " + string2);
        }
    }

    public void addSubList(SettingSubList settingSubList) {
        this.mSubLists.add(settingSubList);
    }
}
