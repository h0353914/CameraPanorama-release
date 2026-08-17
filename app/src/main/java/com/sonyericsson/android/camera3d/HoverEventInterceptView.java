package com.sonyericsson.android.camera3d;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

public class HoverEventInterceptView extends RelativeLayout {
    public HoverEventInterceptView(Context context) {
        super(context);
    }

    public HoverEventInterceptView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HoverEventInterceptView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
        super.onInterceptHoverEvent(motionEvent);
        AccessibilityHelper.requestAccessibilityFocus(this, motionEvent);
        return true;
    }
}
