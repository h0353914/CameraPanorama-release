package com.sonyericsson.android.camera3d.base;

import android.content.Context;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.android.camera3d.R;
import java.lang.reflect.Array;

public class SettingListBase implements View.OnTouchListener, View.OnKeyListener {
    public static final int[] IDS_APP_TITLE = {R.id.setting_dialog_app_title_portrait, R.id.setting_dialog_app_title_landscape};
    public static final int LANDSCAPE = 1;
    public static final int PORTRAIT = 0;
    private static final int TOUCH_INDEX_NONE = -1;
    protected final Context mContext;
    private boolean mIsActive;
    protected final View[][] mListItems;
    protected final boolean[] mListItemsEnabled;
    private OnSelectedListener mOnSelectedListener;
    protected int mOrientation;
    protected boolean mReverseLandscape = false;
    private int mSelected = 0;
    private int mTouchIndex = -1;
    protected final View[] mView = new View[2];

    public interface OnSelectedListener {
        void onSelected(SettingListBase settingListBase, int i);
    }

    protected SettingListBase(Context context, OnSelectedListener onSelectedListener, int i) {
        this.mContext = context;
        this.mOnSelectedListener = onSelectedListener;
        this.mListItems = (View[][]) Array.newInstance((Class<?>) View.class, 2, i);
        this.mListItemsEnabled = new boolean[i];
        int i2 = 0;
        while (true) {
            boolean[] zArr = this.mListItemsEnabled;
            if (i2 < zArr.length) {
                zArr[i2] = true;
                i2++;
            } else {
                this.mOrientation = 0;
                return;
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (getView().getVisibility() != 0) {
            return true;
        }
        if (motionEvent.getAction() == 0) {
            if (this.mIsActive && !isAppTitleView(view)) {
                view.setPressed(true);
            }
            this.mTouchIndex = getIndex(view);
            return true;
        }
        if (motionEvent.getAction() == 1) {
            boolean z = this.mIsActive;
            view.setPressed(false);
            int i = this.mTouchIndex;
            if (i != -1) {
                if (this.mListItemsEnabled[i]) {
                    setSelectedIndex(i);
                } else {
                    clearItemBackGround();
                }
                this.mTouchIndex = -1;
                if (z && !isAppTitleView(view)) {
                    view.playSoundEffect(0);
                }
            }
            return true;
        }
        if (motionEvent.getAction() == 2) {
            if (!isEventInsideView(view, motionEvent)) {
                view.setPressed(false);
                clearItemBackGround();
                this.mTouchIndex = -1;
                return true;
            }
        } else if (motionEvent.getAction() == 3) {
            view.setPressed(false);
            clearItemBackGround();
            this.mTouchIndex = -1;
        }
        return true;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (getView().getVisibility() != 0) {
            return false;
        }
        if (i != 62 && i != 66) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (this.mIsActive && !isAppTitleView(view)) {
                view.setPressed(true);
            }
            this.mTouchIndex = getIndex(view);
        } else if (keyEvent.getAction() == 1) {
            boolean z = this.mIsActive;
            view.setPressed(false);
            int i2 = this.mTouchIndex;
            if (i2 != -1) {
                if (this.mListItemsEnabled[i2]) {
                    setSelectedIndex(i2);
                } else {
                    clearItemBackGround();
                }
                this.mTouchIndex = -1;
                if (z && !isAppTitleView(view)) {
                    view.playSoundEffect(0);
                }
            }
        }
        return true;
    }

    protected void cancelTouch() {
        for (View view : this.mListItems[this.mOrientation]) {
            view.setPressed(false);
        }
        clearItemBackGround();
        this.mTouchIndex = -1;
    }

    public View getView() {
        return this.mView[this.mOrientation];
    }

    public View getView(int i) {
        return this.mView[i];
    }

    protected void setSelectedIndex(int i) {
        View[] viewArr = this.mListItems[this.mOrientation];
        if (viewArr != null && i >= 0 && i <= viewArr.length) {
            this.mSelected = i;
            clearItemBackGround(0);
            clearItemBackGround(1);
            OnSelectedListener onSelectedListener = this.mOnSelectedListener;
            if (onSelectedListener != null) {
                onSelectedListener.onSelected(this, this.mSelected);
            }
        }
    }

    private void clearItemBackGround(int i) {
        if (this.mListItems[i] == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            View[] viewArr = this.mListItems[i];
            if (i2 >= viewArr.length) {
                return;
            }
            viewArr[i2].setSelected(i2 == this.mSelected);
            this.mListItems[i][i2].invalidate();
            i2++;
        }
    }

    private void clearItemBackGround() {
        clearItemBackGround(this.mOrientation);
    }

    private boolean isEventInsideView(View view, MotionEvent motionEvent) {
        Rect rect = new Rect();
        view.getLocalVisibleRect(rect);
        if (this.mOrientation == 1 && this.mReverseLandscape) {
            rect = new Rect(-rect.right, -rect.bottom, -rect.left, -rect.top);
        }
        return rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    private int getIndex(View view) {
        View[] viewArr = this.mListItems[this.mOrientation];
        int length = viewArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length && !viewArr[i2].equals(view); i2++) {
            i++;
        }
        return i;
    }

    public void setOrientation(int i) {
        int i2 = this.mOrientation;
        if (i == i2) {
            return;
        }
        if (this.mView[i2].getVisibility() == 0) {
            cancelTouch();
            this.mView[this.mOrientation].setVisibility(4);
            this.mView[i].setVisibility(0);
        }
        this.mOrientation = i;
    }

    public void setReverseLandscape(boolean z) {
        if (z == this.mReverseLandscape) {
            return;
        }
        this.mView[1].setRotation(z ? 180.0f : 0.0f);
        this.mReverseLandscape = z;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public Rect getGlobalRectOfSelectedItem() {
        if (this.mListItems[this.mOrientation] == null) {
            return null;
        }
        Rect rect = new Rect();
        this.mListItems[this.mOrientation][this.mSelected].getGlobalVisibleRect(rect);
        return rect;
    }

    public void setItemVisibility(int i, boolean z) {
        View[][] viewArr = this.mListItems;
        View[] viewArr2 = viewArr[this.mOrientation];
        if (viewArr2 != null && i >= 0 && i <= viewArr2.length) {
            viewArr[0][i].setVisibility(z ? 0 : 8);
            this.mListItems[1][i].setVisibility(z ? 0 : 8);
        }
    }

    private boolean isAppTitleView(View view) {
        int id = view.getId();
        int[] iArr = IDS_APP_TITLE;
        return id == iArr[0] || view.getId() == iArr[1];
    }

    public void setActive(boolean z) {
        this.mIsActive = z;
    }

    public boolean isOpened() {
        return this.mIsActive;
    }

    public int getSelected() {
        return this.mSelected;
    }
}
