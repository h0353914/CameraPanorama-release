package com.sonyericsson.android.camera3d.base;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.View;

import com.sonyericsson.android.camera3d.R;

import java.lang.reflect.Array;

public class SettingListBase implements View.OnTouchListener {
    public interface OnSelectedListener {
        void onSelected(SettingListBase list, int index);
    }

    public static final int[] IDS_APP_TITLE = {
            R.id.setting_dialog_app_title_portrait,
            R.id.setting_dialog_app_title_landscape
    };
    public static final int LANDSCAPE = 1;
    public static final int PORTRAIT = 0;
    private static final int TOUCH_INDEX_NONE = -1;

    protected final Context mContext;
    private boolean mIsActive;
    protected final View[][] mListItems;
    protected final boolean[] mListItemsEnabled;
    private OnSelectedListener mOnSelectedListener;
    protected int mOrientation;
    private int mSelected;
    private int mTouchIndex;
    protected final View[] mView;

    protected SettingListBase(Context context, OnSelectedListener listener, int itemCount) {
        mOnSelectedListener = null;
        mContext = context;
        mSelected = 0;
        mTouchIndex = TOUCH_INDEX_NONE;
        mOnSelectedListener = listener;
        mView = new View[2];
        mListItems = (View[][]) Array.newInstance(View.class, new int[]{2, itemCount});
        mListItemsEnabled = new boolean[itemCount];
        for (int i = 0; i < mListItemsEnabled.length; i++) {
            mListItemsEnabled[i] = true;
        }
        mOrientation = PORTRAIT;
    }

    private void clearItemBackGround() {
        clearItemBackGround(mOrientation);
    }

    private void clearItemBackGround(int orientation) {
        View[] items = mListItems[orientation];
        if (items == null) {
            return;
        }
        for (int i = 0; i < items.length; i++) {
            items[i].setSelected(i == mSelected);
            items[i].invalidate();
        }
    }

    private int getIndex(View view) {
        View[] items = mListItems[mOrientation];
        int index = 0;
        for (View item : items) {
            if (item.equals(view)) {
                break;
            }
            index++;
        }
        return index;
    }

    private boolean isAppTitleView(View view) {
        int id = view.getId();
        return id == IDS_APP_TITLE[0] || id == IDS_APP_TITLE[1];
    }

    private boolean isEventInsideView(View view, MotionEvent event) {
        Rect rect = new Rect();
        view.getLocalVisibleRect(rect);
        int x = (int) event.getX();
        int y = (int) event.getY();
        return rect.contains(x, y);
    }

    protected void cancelTouch() {
        View[] items = mListItems[mOrientation];
        for (View item : items) {
            item.setPressed(false);
        }
        clearItemBackGround();
        mTouchIndex = TOUCH_INDEX_NONE;
    }

    public Rect getGlobalRectOfSelectedItem() {
        View[] items = mListItems[mOrientation];
        if (items == null) {
            return null;
        }
        Rect rect = new Rect();
        items[mSelected].getGlobalVisibleRect(rect);
        return rect;
    }

    public int getOrientation() {
        return mOrientation;
    }

    public int getSelected() {
        return mSelected;
    }

    public View getView() {
        return mView[mOrientation];
    }

    public View getView(int index) {
        return mView[index];
    }

    public boolean isOpened() {
        return mIsActive;
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        if (getView().getVisibility() != View.VISIBLE) {
            return true;
        }

        int action = event.getAction();
        if (action == MotionEvent.ACTION_DOWN) {
            if (mIsActive && !isAppTitleView(v)) {
                v.setPressed(true);
            }
            mTouchIndex = getIndex(v);
            return true;
        }

        if (action == MotionEvent.ACTION_UP) {
            boolean wasActive = mIsActive;
            v.setPressed(false);
            if (mTouchIndex != TOUCH_INDEX_NONE) {
                if (mListItemsEnabled[mTouchIndex]) {
                    setSelectedIndex(mTouchIndex);
                } else {
                    clearItemBackGround();
                }
            }
            mTouchIndex = TOUCH_INDEX_NONE;
            if (wasActive && !isAppTitleView(v)) {
                v.playSoundEffect(SoundEffectConstants.CLICK);
            }
            return true;
        }

        if (action == MotionEvent.ACTION_MOVE) {
            if (!isEventInsideView(v, event)) {
                v.setPressed(false);
                clearItemBackGround();
                mTouchIndex = TOUCH_INDEX_NONE;
            }
            return false;
        }

        if (action == MotionEvent.ACTION_CANCEL) {
            v.setPressed(false);
            clearItemBackGround();
            mTouchIndex = TOUCH_INDEX_NONE;
            return false;
        }

        return false;
    }

    public void setActive(boolean active) {
        mIsActive = active;
    }

    public void setItemVisibility(int index, boolean visible) {
        View[] items = mListItems[mOrientation];
        if (items == null) {
            return;
        }
        if (index < 0 || index > items.length) {
            return;
        }
        int visibility = visible ? View.VISIBLE : View.GONE;
        mListItems[0][index].setVisibility(visibility);
        mListItems[1][index].setVisibility(visibility);
    }

    public void setOrientation(int orientation) {
        if (orientation == mOrientation) {
            return;
        }
        if (mView[mOrientation].getVisibility() == View.VISIBLE) {
            cancelTouch();
            mView[mOrientation].setVisibility(View.INVISIBLE);
            mView[orientation].setVisibility(View.VISIBLE);
        }
        mOrientation = orientation;
    }

    protected void setSelectedIndex(int index) {
        View[] items = mListItems[mOrientation];
        if (items == null) {
            return;
        }
        if (index < 0 || index > items.length) {
            return;
        }
        mSelected = index;
        clearItemBackGround(0);
        clearItemBackGround(1);
        if (mOnSelectedListener != null) {
            mOnSelectedListener.onSelected(this, mSelected);
        }
    }
}
