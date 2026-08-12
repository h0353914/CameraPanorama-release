package com.sonyericsson.android.camera3d.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;

import com.sonyericsson.android.camera3d.utils.LogFilter;

public class RotatableDialog implements View.OnTouchListener, View.OnAttachStateChangeListener {
    public static final int LANDSCAPE = 2;
    public static final int PORTRAIT = 1;
    private static final String TAG = "RotatableDialog";

    // Android 內部隱藏資源 (com.android.internal.R.string.config_prefDialogWidth / config_prefDialogHeight)
    private static final int CONFIG_PREF_DIALOG_WIDTH = 0x1050003;
    private static final int CONFIG_PREF_DIALOG_HEIGHT = 0x1050004;

    private AlertDialog mDialog;
    private int mDialogWidthForLand;
    private int mDialogWidthForPort;
    private int mDisplayHeight;
    private int mDisplayWidth;
    private int mOrientation;
    private View mScrollableView;
    private final Rect mTempRect;
    private Window mWindow;

    private RotatableDialog(AlertDialog dialog) {
        mTempRect = new Rect();
        mOrientation = PORTRAIT;
        mDialog = dialog;
        mWindow = dialog.getWindow();
    }

    private int calculateOutValue(int a, int b, int c) {
        if (a < b) {
            return a - b;
        }
        if (c < a) {
            return a - c;
        }
        return 0;
    }

    private void initialize() {
        ViewGroup decorView = (ViewGroup) mWindow.getDecorView();
        decorView.addOnAttachStateChangeListener(this);
        decorView.setOnTouchListener(this);

        Rect rect = new Rect();
        mWindow.getWindowManager().getDefaultDisplay().getRectSize(rect);
        if (rect.width() > rect.height()) {
            mDisplayWidth = rect.width();
            mDisplayHeight = rect.height();
        } else {
            mDisplayWidth = rect.height();
            mDisplayHeight = rect.width();
        }

        try {
            Resources resources = mDialog.getContext().getResources();
            String widthPercent = resources.getString(CONFIG_PREF_DIALOG_WIDTH);
            String heightPercent = resources.getString(CONFIG_PREF_DIALOG_HEIGHT);
            widthPercent = widthPercent.replace("%", "");
            heightPercent = heightPercent.replace("%", "");
            float widthRatio = Float.parseFloat(widthPercent) / 100.0f;
            float heightRatio = Float.parseFloat(heightPercent) / 100.0f;
            mDialogWidthForLand = (int) (mDisplayWidth * widthRatio);
            mDialogWidthForPort = (int) (mDisplayHeight * heightRatio);
        } catch (Resources.NotFoundException | NullPointerException | NumberFormatException e) {
            LogFilter.e(TAG, "Fail to get width of dialog for each orientation.", e);
        }
    }

    private void release() {
        ViewGroup decorView = (ViewGroup) mWindow.getDecorView();
        decorView.removeOnAttachStateChangeListener(this);
        decorView.setOnTouchListener(null);
        mDialog = null;
        mWindow = null;
        mScrollableView = null;
    }

    private void updateLayout(int orientation) {
        if (!isShowing()) {
            return;
        }

        ViewGroup decorView = (ViewGroup) mWindow.getDecorView();
        WindowManager.LayoutParams windowParams = (WindowManager.LayoutParams) decorView.getLayoutParams();
        View child = decorView.getChildAt(0);
        FrameLayout.LayoutParams childParams = (FrameLayout.LayoutParams) child.getLayoutParams();

        childParams.height = ViewGroup.LayoutParams.WRAP_CONTENT;
        childParams.gravity = Gravity.CENTER;

        windowParams.width = mDisplayHeight;
        windowParams.height = mDisplayWidth;

        if (orientation == PORTRAIT) {
            child.setRotation(0f);
            childParams.width = mDialogWidthForPort;
        } else {
            child.setRotation(90.0f);
            childParams.width = mDialogWidthForLand;
        }

        mWindow.getWindowManager().updateViewLayout(decorView, windowParams);
        child.setLayoutParams(childParams);
    }

    public void cancel() {
        if (mDialog != null) {
            mDialog.cancel();
        }
    }

    public void dismiss() {
        if (mDialog != null) {
            mDialog.dismiss();
        }
    }

    public AlertDialog getDialog() {
        return mDialog;
    }

    public void hide() {
        if (mDialog != null) {
            mDialog.hide();
        }
    }

    public boolean isShowing() {
        return mDialog != null && mDialog.isShowing();
    }

    public boolean isShown(DialogInterface dialog) {
        return mDialog == dialog;
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        ViewGroup group = (ViewGroup) v;
        Rect groupRect = new Rect();
        group.getGlobalVisibleRect(groupRect);

        View child = group.getChildAt(0);
        child.getGlobalVisibleRect(mTempRect);

        int outX = calculateOutValue(groupRect.left + (int) event.getX(), mTempRect.left, mTempRect.right);
        int outY = calculateOutValue(groupRect.top + (int) event.getY(), mTempRect.top, mTempRect.bottom);

        if (outX != 0 || outY != 0) {
            if (outX > 0) {
                outX += group.getWidth();
            }
            if (outY > 0) {
                outY += group.getHeight();
            }

            MotionEvent newEvent = MotionEvent.obtain(event);
            newEvent.setLocation((float) outX, (float) outY);

            if (isShowing()) {
                mDialog.onTouchEvent(newEvent);
            }

            newEvent.recycle();
        }
        return false;
    }

    @Override
    public void onViewAttachedToWindow(View v) {
        ViewGroup decorView = (ViewGroup) mWindow.getDecorView();
        View contentView = decorView.findViewById(android.R.id.content);
        contentView.setBackground(decorView.getBackground());
        decorView.setBackground(null);
        updateLayout(mOrientation);
    }

    @Override
    public void onViewDetachedFromWindow(View v) {
        release();
    }

    public void setCancelable(boolean cancelable) {
        if (mDialog != null) {
            mDialog.setCancelable(cancelable);
        }
    }

    public void setCanceledOnTouchOutside(boolean cancel) {
        if (mDialog != null) {
            mDialog.setCanceledOnTouchOutside(cancel);
        }
    }

    public void setOnCancelListener(DialogInterface.OnCancelListener listener) {
        if (mDialog != null) {
            mDialog.setOnCancelListener(listener);
        }
    }

    public void setOnDismissListener(DialogInterface.OnDismissListener listener) {
        if (mDialog != null) {
            mDialog.setOnDismissListener(listener);
        }
    }

    public void setOnKeyListener(DialogInterface.OnKeyListener listener) {
        if (mDialog != null) {
            mDialog.setOnKeyListener(listener);
        }
    }

    public void setOrientation(int orientation) {
        switch (orientation) {
            case PORTRAIT:
            case LANDSCAPE:
                mOrientation = orientation;
                break;
            default:
                mOrientation = PORTRAIT;
                break;
        }
        updateLayout(orientation);
    }

    public void setPositiveButtonEnabled(boolean enabled) {
        if (mDialog != null) {
            Button button = mDialog.getButton(AlertDialog.BUTTON_POSITIVE);
            if (button != null) {
                button.setEnabled(enabled);
            }
        }
    }

    public void setViewAsScrollable(View view) {
        mScrollableView = view;
        if (mScrollableView != null) {
            mDialog.setMessage("");
        }
    }

    public void show() {
        if (mDialog != null) {
            mDialog.show();
            initialize();
        }
    }

    public static class Builder extends AlertDialog.Builder {
        private int mSensorOrientation;

        public Builder(Context context) {
            super(context);
        }

        public RotatableDialog createRotatableDialog() {
            AlertDialog dialog = super.create();
            RotatableDialog rotatableDialog = new RotatableDialog(dialog);
            rotatableDialog.setViewAsScrollable(null);
            rotatableDialog.setCancelable(false);
            rotatableDialog.setOrientation(mSensorOrientation);
            return rotatableDialog;
        }

        public Builder setOrientation(int orientation) {
            mSensorOrientation = orientation;
            return this;
        }
    }
}
