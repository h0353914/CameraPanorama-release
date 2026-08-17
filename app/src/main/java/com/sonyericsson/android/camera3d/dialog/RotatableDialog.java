package com.sonyericsson.android.camera3d.dialog;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import com.sonyericsson.android.camera3d.Util;
import com.sonyericsson.android.camera3d.utils.LogFilter;

public class RotatableDialog implements View.OnTouchListener, View.OnAttachStateChangeListener {
    public static final int LANDSCAPE = 2;
    public static final int PORTRAIT = 1;
    public static final int REVERSE_LANDSCAPE = 3;
    private static final String TAG = "RotatableDialog";
    private AlertDialog mDialog;
    private int mDialogWidthForLand;
    private int mDialogWidthForPort;
    private int mDisplayHeight;
    private int mDisplayWidth;
    private int mOrientation;
    private View mScrollableView;
    private final Rect mTempRect;
    private Window mWindow;

    private int calculateOutValue(int i, int i2, int i3) {
        if (i < i2) {
            return i - i2;
        }
        if (i3 < i) {
            return i - i3;
        }
        return 0;
    }

    public static class Builder extends AlertDialog.Builder {
        private int mSensorOrientation;

        public Builder(Context context) {
            super(context);
        }

        public Builder setOrientation(int i) {
            this.mSensorOrientation = i;
            return this;
        }

        public RotatableDialog createRotatableDialog() {
            RotatableDialog rotatableDialog = new RotatableDialog(super.create());
            rotatableDialog.setViewAsScrollable(null);
            rotatableDialog.setCancelable(false);
            rotatableDialog.setOrientation(this.mSensorOrientation);
            return rotatableDialog;
        }
    }

    private RotatableDialog(AlertDialog alertDialog) {
        this.mTempRect = new Rect();
        this.mOrientation = 1;
        this.mDialog = alertDialog;
        this.mWindow = alertDialog.getWindow();
    }

    public AlertDialog getDialog() {
        return this.mDialog;
    }

    private void release() {
        ViewGroup viewGroup = (ViewGroup) this.mWindow.getDecorView();
        viewGroup.removeOnAttachStateChangeListener(this);
        viewGroup.setOnTouchListener(null);
        this.mDialog = null;
        this.mWindow = null;
        this.mScrollableView = null;
    }

    private void initialize() {
        ViewGroup viewGroup = (ViewGroup) this.mWindow.getDecorView();
        viewGroup.addOnAttachStateChangeListener(this);
        viewGroup.setOnTouchListener(this);
        Rect displayRectSize = Util.getDisplayRectSize(this.mDialog.getContext());
        if (displayRectSize.width() > displayRectSize.height()) {
            this.mDisplayWidth = displayRectSize.width();
            this.mDisplayHeight = displayRectSize.height();
        } else {
            this.mDisplayWidth = displayRectSize.height();
            this.mDisplayHeight = displayRectSize.width();
        }
        try {
            Resources resources = this.mDialog.getContext().getResources();
            String string = resources.getString(R.dimen.dialog_min_width_major);
            String string2 = resources.getString(R.dimen.dialog_min_width_minor);
            String strReplace = string.replace("%", "");
            String strReplace2 = string2.replace("%", "");
            float f = Float.parseFloat(strReplace) / 100.0f;
            float f2 = Float.parseFloat(strReplace2) / 100.0f;
            this.mDialogWidthForLand = (int) (this.mDisplayWidth * f);
            this.mDialogWidthForPort = (int) (this.mDisplayHeight * f2);
        } catch (Resources.NotFoundException | NullPointerException | NumberFormatException e) {
            LogFilter.e(TAG, "Fail to get width of dialog for each orientation.", e);
        }
    }

    private void updateLayout(int i) {
        if (isShowing()) {
            ViewGroup viewGroup = (ViewGroup) this.mWindow.getDecorView();
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) viewGroup.getLayoutParams();
            View childAt = viewGroup.getChildAt(0);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            layoutParams2.height = -2;
            layoutParams2.gravity = 17;
            layoutParams.width = this.mDisplayHeight;
            layoutParams.height = this.mDisplayWidth;
            if (i == 1) {
                childAt.setRotation(0.0f);
                layoutParams2.width = this.mDialogWidthForPort;
            } else if (i == 2) {
                childAt.setRotation(90.0f);
                layoutParams2.width = this.mDialogWidthForLand;
            } else {
                childAt.setRotation(270.0f);
                layoutParams2.width = this.mDialogWidthForLand;
            }
            this.mWindow.getWindowManager().updateViewLayout(viewGroup, layoutParams);
            childAt.setLayoutParams(layoutParams2);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        ViewGroup viewGroup = (ViewGroup) this.mWindow.getDecorView();
        viewGroup.findViewById(R.id.content).setBackground(viewGroup.getBackground());
        viewGroup.setBackground(null);
        updateLayout(this.mOrientation);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        release();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        ViewGroup viewGroup = (ViewGroup) view;
        Rect rect = new Rect();
        viewGroup.getGlobalVisibleRect(rect);
        viewGroup.getChildAt(0).getGlobalVisibleRect(this.mTempRect);
        int iCalculateOutValue = calculateOutValue(rect.left + ((int) motionEvent.getX()), this.mTempRect.left, this.mTempRect.right);
        int iCalculateOutValue2 = calculateOutValue(rect.top + ((int) motionEvent.getY()), this.mTempRect.top, this.mTempRect.bottom);
        if (iCalculateOutValue != 0 || iCalculateOutValue2 != 0) {
            if (iCalculateOutValue > 0) {
                iCalculateOutValue += viewGroup.getWidth();
            }
            if (iCalculateOutValue2 > 0) {
                iCalculateOutValue2 += viewGroup.getHeight();
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.setLocation(iCalculateOutValue, iCalculateOutValue2);
            if (isShowing()) {
                this.mDialog.onTouchEvent(motionEventObtain);
            }
            motionEventObtain.recycle();
        }
        return false;
    }

    public void setOrientation(int i) {
        if (i == 1 || i == 2 || i == 3) {
            this.mOrientation = i;
        } else {
            this.mOrientation = 1;
        }
        updateLayout(i);
    }

    public void setViewAsScrollable(View view) {
        this.mScrollableView = view;
        if (view != null) {
            this.mDialog.setMessage("");
        }
    }

    public void show() {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.show();
            initialize();
        }
    }

    public void hide() {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.hide();
        }
    }

    public void dismiss() {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    public void cancel() {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.cancel();
        }
    }

    public void setCancelable(boolean z) {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.setCancelable(z);
        }
    }

    public void setCanceledOnTouchOutside(boolean z) {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.setCanceledOnTouchOutside(z);
        }
    }

    public void setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.setOnKeyListener(onKeyListener);
        }
    }

    public void setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.setOnCancelListener(onCancelListener);
        }
    }

    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog != null) {
            alertDialog.setOnDismissListener(onDismissListener);
        }
    }

    public boolean isShowing() {
        AlertDialog alertDialog = this.mDialog;
        return alertDialog != null && alertDialog.isShowing();
    }

    public void setPositiveButtonEnabled(boolean z) {
        Button button;
        AlertDialog alertDialog = this.mDialog;
        if (alertDialog == null || (button = alertDialog.getButton(-1)) == null) {
            return;
        }
        button.setEnabled(z);
    }

    public boolean isShown(DialogInterface dialogInterface) {
        return this.mDialog == dialogInterface;
    }
}
