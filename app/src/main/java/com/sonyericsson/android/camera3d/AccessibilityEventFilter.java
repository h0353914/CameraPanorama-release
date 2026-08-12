package com.sonyericsson.android.camera3d;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

import com.sonyericsson.android.camera3d.utils.LogFilter;

public class AccessibilityEventFilter extends View.AccessibilityDelegate {
    public static final String TAG = "AccessibilityEventFilter";

    private String mAllowedClassName;

    public AccessibilityEventFilter() {
        mAllowedClassName = "";
    }

    public AccessibilityEventFilter(Class<?> clazz) {
        mAllowedClassName = "";
        mAllowedClassName = String.copyValueOf(clazz.getName().toCharArray());
    }

    @Override
    public boolean onRequestSendAccessibilityEvent(ViewGroup host, View child, AccessibilityEvent event) {
        int eventType = event.getEventType();
        boolean isTypeMatch;
        if (eventType == 0x8 || eventType == 0x10000 || eventType == 0x8000) {
            isTypeMatch = true;
        } else {
            isTypeMatch = false;
        }

        boolean hasContent = true;
        if (event.getRecordCount() <= 0 && event.getText().isEmpty()) {
            if (event.getContentDescription() == null) {
                hasContent = false;
            }
        }

        if (isTypeMatch || hasContent) {
            if (!mAllowedClassName.equals(event.getClassName())) {
                LogFilter.d(TAG, "onRequestSendAccessibilityEvent: This event should be ignored. Ignored event = "
                        + event.toString());
                return false;
            }
        }

        return super.onRequestSendAccessibilityEvent(host, child, event);
    }
}
