package com.sonyericsson.android.camera3d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.sonyericsson.android.camera3d.base.SettingListBase;

class SettingSubList extends SettingListBase {
    private static final int ANIMATION_DURATION = 0x64;
    private static final int[] IDS_LIST_ROW_TEXT = {
            R.id.list_row_text_portrait, R.id.list_row_text_landscape
    };

    private final AnimationSet[] mCloseAnimation;
    private boolean mIsFocusedByTalkBack;
    private final AnimationSet[] mOpenAnimation;

    public SettingSubList(Context context, int[] resIds, OnSelectedListener listener) {
        super(context, listener, resIds.length);
        mOpenAnimation = new AnimationSet[2];
        mCloseAnimation = new AnimationSet[2];
        mIsFocusedByTalkBack = false;
        initialize(PORTRAIT, resIds);
        initialize(LANDSCAPE, resIds);
    }

    private void changeEnabled(int orientation) {
        View[] items = mListItems[orientation];
        if (items == null) {
            return;
        }
        for (int i = 0; i < items.length; i++) {
            boolean normalColor = mListItemsEnabled[i] || i == getSelected();
            int colorRes = normalColor ? R.color.text_color_normal : R.color.text_color_disabled;

            TextView textView = (TextView) mListItems[orientation][i].findViewById(IDS_LIST_ROW_TEXT[orientation]);
            int color;
            if (Build.VERSION.SDK_INT >= 23) {
                color = mContext.getResources().getColor(colorRes, null);
            } else {
                color = mContext.getResources().getColor(colorRes);
            }
            textView.setTextColor(color);
        }
    }

    @SuppressLint("RtlHardcoded")
    private void initialize(int index, int[] resIds) {
        Configuration configuration = mContext.getResources().getConfiguration();
        int marginDimenRes = R.dimen.setting_dialog_sub_list_width;

        int listRes;
        int selectorRes;
        int width;
        int height;
        int orientation;
        if (index == PORTRAIT) {
            listRes = R.layout.list_item_portrait;
            int margin = mContext.getResources().getDimensionPixelSize(marginDimenRes);
            selectorRes = R.drawable.setting_item_selector_2nd_layer;
            width = margin;
            height = RelativeLayout.LayoutParams.WRAP_CONTENT;
            orientation = LinearLayout.VERTICAL;
        } else {
            if (configuration.getLayoutDirection() == View.LAYOUT_DIRECTION_RTL) {
                listRes = R.layout.list_item_landscape_rtl;
            } else {
                listRes = R.layout.list_item_landscape;
            }
            int margin = mContext.getResources().getDimensionPixelSize(marginDimenRes);
            selectorRes = R.drawable.setting_item_selector_landscape_2nd_layer;
            width = RelativeLayout.LayoutParams.WRAP_CONTENT;
            height = margin;
            orientation = LinearLayout.HORIZONTAL;
        }

        mView[index] = new FrameLayout(mContext);

        RelativeLayout.LayoutParams layoutParams =
                new RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.WRAP_CONTENT,
                        RelativeLayout.LayoutParams.WRAP_CONTENT);
        if (index == LANDSCAPE) {
            mView[index].setLayoutDirection(View.LAYOUT_DIRECTION_LTR);
            layoutParams.addRule(RelativeLayout.ALIGN_PARENT_LEFT, RelativeLayout.TRUE);
        }
        mView[index].setLayoutParams(layoutParams);
        mView[index].setBackgroundResource(R.drawable.cam_setting_sub_dialog_background_icn);
        mView[index].setAccessibilityDelegate(new AccessibilityEventFilter());

        LinearLayout linearLayout = new LinearLayout(mContext);
        FrameLayout.LayoutParams linearLayoutParams = new FrameLayout.LayoutParams(width, height);
        int padding = mContext.getResources().getDimensionPixelSize(R.dimen.setting_dialog_container_padding);
        linearLayoutParams.setMargins(padding, padding, padding, padding);
        linearLayout.setLayoutParams(linearLayoutParams);
        linearLayout.setOrientation(orientation);

        ((FrameLayout) mView[index]).addView(linearLayout);
        mView[index].setVisibility(View.INVISIBLE);

        mListItems[index] = new View[resIds.length];

        int insertIndex = 0;
        for (int i = 0; i < resIds.length; i++) {
            View row = View.inflate(mContext, listRes, null);
            mListItems[index][i] = row;
            row.setBackgroundResource(selectorRes);

            if (i == 0) {
                row.getBackground().setLevel(1);
            } else if (i == resIds.length - 1) {
                row.getBackground().setLevel(2);
            } else {
                row.getBackground().setLevel(0);
            }

            TextView textView = (TextView) row.findViewById(IDS_LIST_ROW_TEXT[index]);
            textView.setText(mContext.getResources().getString(resIds[i]));

            if (index == PORTRAIT) {
                if (configuration.getLayoutDirection() == View.LAYOUT_DIRECTION_RTL) {
                    textView.setGravity(0x15);
                } else {
                    textView.setGravity(0x800013);
                }
            }

            row.setOnTouchListener(this);
            row.setAccessibilityDelegate(new AccessibilityEventFilter());

            linearLayout.addView(row, insertIndex);
            if (index == PORTRAIT) {
                insertIndex++;
            }
        }
    }

    public void close() {
        close(true);
    }

    public void close(boolean animate) {
        View view = getView();
        if (view.getVisibility() != View.VISIBLE) {
            return;
        }

        cancelTouch();

        if (animate) {
            if (mCloseAnimation[mOrientation] == null) {
                int itemCount = mListItems[mOrientation].length;

                TranslateAnimation translate;
                if (mOrientation == PORTRAIT) {
                    float value = (1.0f / (float) itemCount) / 3.0f;
                    translate = new TranslateAnimation(
                            Animation.RELATIVE_TO_SELF, 0f, Animation.RELATIVE_TO_SELF, 0f,
                            Animation.RELATIVE_TO_SELF, 0f, Animation.RELATIVE_TO_SELF, value);
                } else {
                    float value = -(1.0f / (float) itemCount) / 3.0f;
                    translate = new TranslateAnimation(
                            Animation.RELATIVE_TO_SELF, 0f, Animation.RELATIVE_TO_SELF, value,
                            Animation.RELATIVE_TO_SELF, 0f, Animation.RELATIVE_TO_SELF, 0f);
                }
                translate.setInterpolator(new AccelerateInterpolator());

                AlphaAnimation alpha = new AlphaAnimation(1.0f, 0f);
                alpha.setInterpolator(new LinearInterpolator());

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

    public boolean isFocusedByTalkBack() {
        return mIsFocusedByTalkBack;
    }

    public void open() {
        View view = getView();
        if (view.getVisibility() == View.VISIBLE) {
            return;
        }

        if (mOpenAnimation[mOrientation] == null) {
            int itemCount = mListItems[mOrientation].length;

            TranslateAnimation translate;
            if (mOrientation == PORTRAIT) {
                float value = (1.0f / (float) itemCount) / 3.0f;
                translate = new TranslateAnimation(
                        Animation.RELATIVE_TO_SELF, 0f, Animation.RELATIVE_TO_SELF, 0f,
                        Animation.RELATIVE_TO_SELF, value, Animation.RELATIVE_TO_SELF, 0f);
            } else {
                float value = -(1.0f / (float) itemCount) / 3.0f;
                translate = new TranslateAnimation(
                        Animation.RELATIVE_TO_SELF, value, Animation.RELATIVE_TO_SELF, 0f,
                        Animation.RELATIVE_TO_SELF, 0f, Animation.RELATIVE_TO_SELF, 0f);
            }
            translate.setInterpolator(new DecelerateInterpolator());

            AlphaAnimation alpha = new AlphaAnimation(0f, 1.0f);
            alpha.setInterpolator(new LinearInterpolator());

            mOpenAnimation[mOrientation] = new AnimationSet(mContext, null);
            mOpenAnimation[mOrientation].addAnimation(alpha);
            mOpenAnimation[mOrientation].addAnimation(translate);
            mOpenAnimation[mOrientation].setDuration(ANIMATION_DURATION);
        }

        view.startAnimation(mOpenAnimation[mOrientation]);
        view.setVisibility(View.VISIBLE);
        setActive(true);
    }

    public void setItemEnabled(int index, boolean enabled) {
        View[] items = mListItems[mOrientation];
        if (items == null) {
            return;
        }
        if (index < 0) {
            return;
        }
        if (index > items.length) {
            return;
        }
        mListItemsEnabled[index] = enabled;
        changeEnabled(PORTRAIT);
        changeEnabled(LANDSCAPE);
    }

    public void setSelectedResourceId(int stringRes) {
        int index = 0;
        while (index < mListItems[mOrientation].length) {
            TextView textView = (TextView) mListItems[mOrientation][index].findViewById(IDS_LIST_ROW_TEXT[mOrientation]);
            CharSequence text = textView.getText();
            String target = mContext.getResources().getString(stringRes);
            if (text.equals(target)) {
                break;
            }
            index++;
        }
        setSelectedIndex(index);
    }
}
