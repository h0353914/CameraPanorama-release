package com.sonyericsson.android.camera3d;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.sonyericsson.android.camera3d.utils.LogFilter;

public class AccessibilityHelper {
    public static final String TAG = "AccessibilityHelper";
    private static final Rect sRectForHit = new Rect();
    private static boolean rootViewFocused = false;

    public static void onResume() {
        rootViewFocused = false;
    }

    public static View requestAccessibilityFocus(ViewGroup viewGroup, MotionEvent motionEvent) {
        View viewSearchContentDescribedView = searchContentDescribedView(viewGroup, motionEvent);
        if (viewSearchContentDescribedView == null || viewSearchContentDescribedView.getContentDescription() == null) {
            LogFilter.i(TAG, "TalkingView is not found.");
            viewGroup.performAccessibilityAction(64, null);
            rootViewFocused = true;
        } else {
            LogFilter.i(TAG, "Description: " + ((Object) viewSearchContentDescribedView.getContentDescription()));
            if (!rootViewFocused) {
                viewGroup.performAccessibilityAction(64, null);
                rootViewFocused = true;
            }
            viewSearchContentDescribedView.performAccessibilityAction(64, null);
        }
        return viewSearchContentDescribedView;
    }

    private static View searchContentDescribedView(ViewGroup viewGroup, MotionEvent motionEvent) {
        View viewSearchContentDescribedView;
        LogFilter.d(TAG, "searchContentDescribedView() is called.");
        if (viewGroup == null || motionEvent == null) {
            LogFilter.e(TAG, "searchContentDescribedView : Arg is null.[viewGroup = " + viewGroup + ", event = " + motionEvent + "]");
            return null;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (checkToTouch(childAt, x, y)) {
                if (childAt.getContentDescription() != null) {
                    viewSearchContentDescribedView = childAt;
                } else {
                    viewSearchContentDescribedView = childAt instanceof ViewGroup ? searchContentDescribedView((ViewGroup) childAt, motionEvent) : null;
                }
                if (viewSearchContentDescribedView != null) {
                    return viewSearchContentDescribedView;
                }
                if (childAt.getVisibility() == 0 && childAt.getAlpha() > 0.0f && childAt.isClickable()) {
                    return childAt;
                }
            }
        }
        return null;
    }

    private static boolean checkToTouch(View view, int i, int i2) {
        if (view == null || view.getVisibility() != 0) {
            return false;
        }
        Rect rect = sRectForHit;
        if (!view.getGlobalVisibleRect(rect)) {
            LogFilter.d(TAG, "checkToTouch: This view exists out of the parent view.");
            return false;
        }
        LogFilter.d(TAG, "checkToTouch: GlobalVisibleRect = " + rect);
        LogFilter.d(TAG, "checkToTouch: Point = (" + i + "," + i2 + ")");
        return rect.contains(i, i2);
    }
}
