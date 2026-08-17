package com.sonyericsson.android.camera3d;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
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
    private static final int ANIMATION_DURATION = 100;
    private static final int[] IDS_LIST_ROW_TEXT = {R.id.list_row_text_portrait, R.id.list_row_text_landscape};
    private final AnimationSet[] mCloseAnimation;
    private final AnimationSet[] mOpenAnimation;

    public SettingSubList(Context context, int[] iArr, SettingListBase.OnSelectedListener onSelectedListener) {
        super(context, onSelectedListener, iArr.length);
        this.mOpenAnimation = new AnimationSet[2];
        this.mCloseAnimation = new AnimationSet[2];
        initialize(0, iArr);
        initialize(1, iArr);
    }

    private void initialize(int i, int[] iArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int dimensionPixelSize;
        Configuration configuration = this.mContext.getResources().getConfiguration();
        if (i == 0) {
            dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.setting_dialog_sub_list_width);
            i2 = 1;
            i3 = R.drawable.setting_item_selector_2nd_layer;
            i4 = R.layout.list_item_portrait;
            i5 = -2;
        } else {
            int i6 = configuration.getLayoutDirection() == 1 ? R.layout.list_item_landscape_rtl : R.layout.list_item_landscape;
            int dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(R.dimen.setting_dialog_sub_list_width);
            i2 = 0;
            i3 = R.drawable.setting_item_selector_landscape_2nd_layer;
            i4 = i6;
            i5 = dimensionPixelSize2;
            dimensionPixelSize = -2;
        }
        this.mView[i] = new FrameLayout(this.mContext);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i == 1) {
            this.mView[i].setLayoutDirection(0);
            layoutParams.addRule(9, -1);
        }
        this.mView[i].setLayoutParams(layoutParams);
        this.mView[i].setBackgroundResource(R.drawable.cam_setting_sub_dialog_background_icn);
        this.mView[i].setClickable(false);
        LinearLayout linearLayout = new LinearLayout(this.mContext);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(dimensionPixelSize, i5);
        int dimensionPixelSize3 = this.mContext.getResources().getDimensionPixelSize(R.dimen.setting_dialog_container_padding);
        layoutParams2.setMargins(dimensionPixelSize3, dimensionPixelSize3, dimensionPixelSize3, dimensionPixelSize3);
        linearLayout.setLayoutParams(layoutParams2);
        linearLayout.setOrientation(i2);
        ((FrameLayout) this.mView[i]).addView(linearLayout);
        this.mView[i].setVisibility(4);
        this.mListItems[i] = new View[iArr.length];
        int i7 = 0;
        for (int i8 = 0; i8 < iArr.length; i8++) {
            this.mListItems[i][i8] = View.inflate(this.mContext, i4, null);
            this.mListItems[i][i8].setClickable(false);
            this.mListItems[i][i8].setFocusable(true);
            this.mListItems[i][i8].setFocusableInTouchMode(false);
            this.mListItems[i][i8].setContentDescription(this.mContext.getString(iArr[i8]));
            this.mListItems[i][i8].setBackgroundResource(i3);
            if (i8 == 0) {
                this.mListItems[i][i8].getBackground().setLevel(1);
            } else if (i8 == iArr.length - 1) {
                this.mListItems[i][i8].getBackground().setLevel(2);
            } else {
                this.mListItems[i][i8].getBackground().setLevel(0);
            }
            View view = this.mListItems[i][i8];
            int[] iArr2 = IDS_LIST_ROW_TEXT;
            ((TextView) view.findViewById(iArr2[i])).setText(this.mContext.getResources().getString(iArr[i8]));
            if (i == 0) {
                if (configuration.getLayoutDirection() == 1) {
                    ((TextView) this.mListItems[i][i8].findViewById(iArr2[i])).setGravity(21);
                } else {
                    ((TextView) this.mListItems[i][i8].findViewById(iArr2[i])).setGravity(8388627);
                }
            }
            this.mListItems[i][i8].setClickable(false);
            this.mListItems[i][i8].setOnTouchListener(this);
            this.mListItems[i][i8].setOnKeyListener(this);
            linearLayout.addView(this.mListItems[i][i8], i7);
            if (i == 0) {
                i7++;
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
            if (this.mOrientation == 0) {
                translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, (1.0f / this.mListItems[this.mOrientation].length) / 3.0f, 1, 0.0f);
            } else {
                translateAnimation = new TranslateAnimation(1, (-(1.0f / this.mListItems[this.mOrientation].length)) / 3.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
            }
            translateAnimation.setInterpolator(new DecelerateInterpolator());
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setInterpolator(new LinearInterpolator());
            this.mOpenAnimation[this.mOrientation] = new AnimationSet(this.mContext, null);
            this.mOpenAnimation[this.mOrientation].addAnimation(alphaAnimation);
            this.mOpenAnimation[this.mOrientation].addAnimation(translateAnimation);
            this.mOpenAnimation[this.mOrientation].setDuration(100L);
        }
        view.startAnimation(this.mOpenAnimation[this.mOrientation]);
        view.setVisibility(0);
        this.mListItems[this.mOrientation][0].sendAccessibilityEvent(8);
        setActive(true);
        this.mListItems[this.mOrientation][0].requestFocus();
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
                if (this.mOrientation == 0) {
                    translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, (1.0f / this.mListItems[this.mOrientation].length) / 3.0f);
                } else {
                    translateAnimation = new TranslateAnimation(1, 0.0f, 1, (-(1.0f / this.mListItems[this.mOrientation].length)) / 3.0f, 1, 0.0f, 1, 0.0f);
                }
                translateAnimation.setInterpolator(new AccelerateInterpolator());
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setInterpolator(new LinearInterpolator());
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
        close(true);
    }

    public void setSelectedResourceId(int i) {
        int i2 = 0;
        while (i2 < this.mListItems[this.mOrientation].length && !((TextView) this.mListItems[this.mOrientation][i2].findViewById(IDS_LIST_ROW_TEXT[this.mOrientation])).getText().equals(this.mContext.getResources().getString(i))) {
            i2++;
        }
        setSelectedIndex(i2);
    }

    public void setItemEnabled(int i, boolean z) {
        if (this.mListItems[this.mOrientation] != null && i >= 0 && i <= this.mListItems[this.mOrientation].length) {
            this.mListItemsEnabled[i] = z;
            changeEnabled(0);
            changeEnabled(1);
        }
    }

    private void changeEnabled(int i) {
        if (this.mListItems[i] == null) {
            return;
        }
        int i2 = 0;
        while (i2 < this.mListItems[i].length) {
            ((TextView) this.mListItems[i][i2].findViewById(IDS_LIST_ROW_TEXT[i])).setTextColor(this.mContext.getResources().getColor((this.mListItemsEnabled[i2] || i2 == getSelected()) ? R.color.text_color_normal : R.color.text_color_disabled, null));
            i2++;
        }
    }
}
