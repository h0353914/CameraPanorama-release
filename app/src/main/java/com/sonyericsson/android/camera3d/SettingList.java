package com.sonyericsson.android.camera3d;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
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
    public interface OnCheckedChangeListener {
        void onCheckedChanged(int index, boolean checked);
    }

    private static final int ANIMATION_DURATION = 0x64;
    private static final int[] IDS_CAMERA_SOUND = {
            R.id.setting_dialog_camera_sound_portrait, R.id.setting_dialog_camera_sound_landscape
    };
    private static final int[] IDS_LICENSE = {
            R.id.setting_dialog_licence_portrait, R.id.setting_dialog_license_landscape
    };
    private static final int[] IDS_SAVE_DESTINATION = {
            R.id.setting_dialog_save_destination_portrait, R.id.setting_dialog_save_destination_landscape
    };
    private static final int[] IDS_SAVE_DESTINATION_SUMMARY = {
            R.id.setting_dialog_save_destination_summary_portrait, R.id.setting_dialog_save_destination_summary_landscape
    };
    private static final int[] IDS_SAVE_LOCATION = {
            R.id.setting_dialog_save_location_portrait, R.id.setting_dialog_save_location_landscape
    };
    private static final int[] IDS_SWITCH_BG_CAMERA_SOUND = {
            R.id.setting_switch_bg_camera_sound_portrait, R.id.setting_switch_bg_camera_sound_landscape
    };
    private static final int[] IDS_SWITCH_BG_SAVE_LOCATION = {
            R.id.setting_switch_bg_save_location_portrait, R.id.setting_switch_bg_save_location_landscape
    };
    private static final int[] IDS_SWITCH_ICON_CAMERA_SOUND = {
            R.id.setting_switch_icon_camera_sound_portrait, R.id.setting_switch_icon_camera_sound_landscape
    };
    private static final int[] IDS_SWITCH_ICON_SAVE_LOCATION = {
            R.id.setting_switch_icon_save_location_portrait, R.id.setting_switch_icon_save_location_landscape
    };
    private static final int[] IDS_USE_VOLUME_KEY = {
            R.id.setting_dialog_use_volume_key_portrait, R.id.setting_dialog_use_volume_key_landscape
    };
    private static final int[] IDS_VOLUME_KEY_SUMMARY = {
            R.id.setting_dialog_use_volume_key_summary_portrait, R.id.setting_dialog_use_volume_key_summary_landscape
    };
    private static final int ITEM_NUM = 0x6;
    public static final int LIST_INDEX_APP_TITLE = 0x0;
    public static final int LIST_INDEX_CAMERA_SOUND = 0x3;
    public static final int LIST_INDEX_LICENSE = 0x5;
    public static final int LIST_INDEX_SAVE_DESTINATION = 0x4;
    public static final int LIST_INDEX_SAVE_LOCATION = 0x1;
    public static final int LIST_INDEX_USE_VOLUME_KEY = 0x2;

    private final AnimationSet[] mCloseAnimation;
    private final OnCheckedChangeListener mOnCheckedChangeListener;
    private final AnimationSet[] mOpenAnimation;
    private final List<SettingSubList> mSubLists;

    public SettingList(Context context, OnSelectedListener onSelectedListener,
                        OnCheckedChangeListener onCheckedChangeListener) {
        super(context, onSelectedListener, ITEM_NUM);
        mOpenAnimation = new AnimationSet[2];
        mCloseAnimation = new AnimationSet[2];
        mSubLists = new ArrayList<>();
        mOnCheckedChangeListener = onCheckedChangeListener;
        initialize(PORTRAIT);
        initialize(LANDSCAPE);
    }

    private void initialize(int index) {
        int layoutRes;
        int selectorRes;
        int marginRes;
        if (index == PORTRAIT) {
            layoutRes = R.layout.setting_list_portrait;
            selectorRes = R.drawable.setting_item_selector_1st_layer;
            marginRes = R.dimen.setting_dialog_container_margin_portrait;
        } else {
            Configuration configuration = mContext.getResources().getConfiguration();
            if (configuration.getLayoutDirection() == View.LAYOUT_DIRECTION_RTL) {
                layoutRes = R.layout.setting_list_landscape_rtl;
            } else {
                layoutRes = R.layout.setting_list_landscape;
            }
            selectorRes = R.drawable.setting_item_selector_landscape_1st_layer;
            marginRes = R.dimen.setting_dialog_container_margin_landscape;
        }

        mView[index] = View.inflate(mContext, layoutRes, null);

        RelativeLayout.LayoutParams layoutParams =
                new RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.WRAP_CONTENT,
                        RelativeLayout.LayoutParams.WRAP_CONTENT);
        int padding = mContext.getResources().getDimensionPixelSize(R.dimen.setting_dialog_container_padding);
        int margin = mContext.getResources().getDimensionPixelSize(marginRes);
        layoutParams.setMargins(margin, -padding, margin, 0);
        layoutParams.addRule(RelativeLayout.BELOW, R.id.header_icon_container);

        if (index == LANDSCAPE) {
            mView[index].setLayoutDirection(View.LAYOUT_DIRECTION_LTR);
            layoutParams.addRule(RelativeLayout.ALIGN_PARENT_LEFT, RelativeLayout.TRUE);
        }

        mView[index].setLayoutParams(layoutParams);
        mView[index].setPadding(padding, padding, padding, padding);
        mView[index].setBackgroundResource(R.drawable.cam_shortcut_dialog_background_icn);
        mView[index].setVisibility(View.INVISIBLE);
        mView[index].setAccessibilityDelegate(new AccessibilityEventFilter());

        mListItems[index][0] = mView[index].findViewById(IDS_APP_TITLE[index]);
        mListItems[index][1] = mView[index].findViewById(IDS_SAVE_LOCATION[index]);
        mListItems[index][2] = mView[index].findViewById(IDS_USE_VOLUME_KEY[index]);
        mListItems[index][3] = mView[index].findViewById(IDS_CAMERA_SOUND[index]);
        mListItems[index][4] = mView[index].findViewById(IDS_SAVE_DESTINATION[index]);
        mListItems[index][5] = mView[index].findViewById(IDS_LICENSE[index]);

        for (int i = 0; i < ITEM_NUM; i++) {
            mListItems[index][i].setOnTouchListener(this);
            mListItems[index][i].setBackgroundResource(selectorRes);
            if (i == 0) {
                mListItems[index][i].getBackground().setLevel(1);
            } else if (i == 5) {
                mListItems[index][i].getBackground().setLevel(2);
            } else {
                mListItems[index][i].getBackground().setLevel(0);
            }
        }
    }

    public void addSubList(SettingSubList subList) {
        mSubLists.add(subList);
    }

    public void close() {
        close(false);
    }

    public void close(boolean animate) {
        View view = getView();
        if (view.getVisibility() != View.VISIBLE) {
            return;
        }

        cancelTouch();

        if (animate) {
            if (mCloseAnimation[mOrientation] == null) {
                View[] items = mListItems[mOrientation];
                int visibleCount = 0;
                for (View item : items) {
                    if (item.getVisibility() == View.VISIBLE) {
                        visibleCount++;
                    }
                }

                TranslateAnimation translate;
                if (mOrientation == PORTRAIT) {
                    float value = (1.0f / (float) visibleCount) / 3.0f;
                    translate = new TranslateAnimation(
                            Animation.RELATIVE_TO_SELF, 0f, Animation.RELATIVE_TO_SELF, 0f,
                            Animation.RELATIVE_TO_SELF, 0f, Animation.RELATIVE_TO_SELF, value);
                } else {
                    float value = -(1.0f / (float) visibleCount) / 3.0f;
                    translate = new TranslateAnimation(
                            Animation.RELATIVE_TO_SELF, 0f, Animation.RELATIVE_TO_SELF, value,
                            Animation.RELATIVE_TO_SELF, 0f, Animation.RELATIVE_TO_SELF, 0f);
                }
                translate.setInterpolator(new AccelerateInterpolator());

                AlphaAnimation alpha = new AlphaAnimation(1.0f, 0f);

                mCloseAnimation[mOrientation] = new AnimationSet(mContext, null);
                mCloseAnimation[mOrientation].addAnimation(alpha);
                mCloseAnimation[mOrientation].addAnimation(translate);
                mCloseAnimation[mOrientation].setDuration(ANIMATION_DURATION);
            }
            view.startAnimation(mCloseAnimation[mOrientation]);
        }

        view.setVisibility(View.INVISIBLE);
        setActive(false);
    }

    public void open() {
        View view = getView();
        if (view.getVisibility() == View.VISIBLE) {
            return;
        }

        if (mOpenAnimation[mOrientation] == null) {
            View[] items = mListItems[mOrientation];
            int visibleCount = 0;
            for (View item : items) {
                if (item.getVisibility() == View.VISIBLE) {
                    visibleCount++;
                }
            }

            TranslateAnimation translate;
            if (mOrientation == PORTRAIT) {
                float value = (1.0f / (float) visibleCount) / 3.0f;
                translate = new TranslateAnimation(
                        Animation.RELATIVE_TO_SELF, 0f, Animation.RELATIVE_TO_SELF, 0f,
                        Animation.RELATIVE_TO_SELF, value, Animation.RELATIVE_TO_SELF, 0f);
            } else {
                float value = -(1.0f / (float) visibleCount) / 3.0f;
                translate = new TranslateAnimation(
                        Animation.RELATIVE_TO_SELF, value, Animation.RELATIVE_TO_SELF, 0f,
                        Animation.RELATIVE_TO_SELF, 0f, Animation.RELATIVE_TO_SELF, 0f);
            }
            translate.setInterpolator(new DecelerateInterpolator());

            AlphaAnimation alpha = new AlphaAnimation(0f, 1.0f);

            mOpenAnimation[mOrientation] = new AnimationSet(mContext, null);
            mOpenAnimation[mOrientation].addAnimation(alpha);
            mOpenAnimation[mOrientation].addAnimation(translate);
            mOpenAnimation[mOrientation].setDuration(ANIMATION_DURATION);
        }

        view.startAnimation(mOpenAnimation[mOrientation]);
        view.setVisibility(View.VISIBLE);
        setActive(true);
    }

    public void setChecked(int index, boolean checked) {
        int[] idsBg;
        int[] idsIcon;
        if (index == LIST_INDEX_SAVE_LOCATION) {
            idsBg = IDS_SWITCH_BG_SAVE_LOCATION;
            idsIcon = IDS_SWITCH_ICON_SAVE_LOCATION;
        } else if (index == LIST_INDEX_CAMERA_SOUND) {
            idsBg = IDS_SWITCH_BG_CAMERA_SOUND;
            idsIcon = IDS_SWITCH_ICON_CAMERA_SOUND;
        } else {
            idsBg = null;
            idsIcon = null;
        }

        if (idsBg != null && idsIcon != null) {
            int gravity = checked ? 0x800015 : 0x800013;
            FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(
                    FrameLayout.LayoutParams.WRAP_CONTENT, FrameLayout.LayoutParams.WRAP_CONTENT, gravity);

            int offBg = R.drawable.cam_setting_switch_off_bg_icn;
            int onBg = R.drawable.cam_setting_switch_on_bg_icn;
            int offIcon = R.drawable.cam_setting_switch_off_icn;
            int onIcon = R.drawable.cam_setting_switch_on_icn;

            ImageView bgPortrait = (ImageView) getView(PORTRAIT).findViewById(idsBg[PORTRAIT]);
            if (bgPortrait != null) {
                bgPortrait.setImageResource(checked ? onBg : offBg);
            }

            ImageView iconPortrait = (ImageView) getView(PORTRAIT).findViewById(idsIcon[PORTRAIT]);
            if (iconPortrait != null) {
                iconPortrait.setImageResource(checked ? onIcon : offIcon);
                iconPortrait.setLayoutParams(params);
            }

            ImageView bgLandscape = (ImageView) getView(LANDSCAPE).findViewById(idsBg[LANDSCAPE]);
            if (bgLandscape != null) {
                bgLandscape.setImageResource(checked ? onBg : offBg);
            }

            ImageView iconLandscape = (ImageView) getView(LANDSCAPE).findViewById(idsIcon[LANDSCAPE]);
            if (iconLandscape != null) {
                iconLandscape.setImageResource(checked ? onIcon : offIcon);
                iconLandscape.setLayoutParams(params);
            }
        }

        if (mOnCheckedChangeListener != null) {
            mOnCheckedChangeListener.onCheckedChanged(index, checked);
        }
    }

    public void setSummary(int index, int stringRes) {
        int[] ids;
        if (index == 2) {
            ids = IDS_VOLUME_KEY_SUMMARY;
        } else if (index == 4) {
            ids = IDS_SAVE_DESTINATION_SUMMARY;
        } else {
            ids = null;
        }

        if (ids != null) {
            TextView portrait = (TextView) getView(PORTRAIT).findViewById(ids[PORTRAIT]);
            if (portrait != null) {
                portrait.setText(mContext.getResources().getString(stringRes));
            }

            TextView landscape = (TextView) getView(LANDSCAPE).findViewById(ids[LANDSCAPE]);
            if (landscape != null) {
                landscape.setText(mContext.getResources().getString(stringRes));
            }
        }
    }
}
