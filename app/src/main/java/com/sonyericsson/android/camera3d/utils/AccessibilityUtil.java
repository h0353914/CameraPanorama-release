package com.sonyericsson.android.camera3d.utils;

import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public class AccessibilityUtil {
    private static volatile AccessibilityUtil sInstance;
    private AccessibilityManager mAccessibilityManager;
    private boolean mIsTalkBackEnabled;
    private CopyOnWriteArrayList<AccessibilityManager.TouchExplorationStateChangeListener> mListenerList;
    private AccessibilityManager.TouchExplorationStateChangeListener mTouchExplorationStateChangeListener;

    public static AccessibilityUtil getInstance(Context context) {
        if (sInstance == null) {
            synchronized (AccessibilityUtil.class) {
                if (sInstance == null) {
                    sInstance = new AccessibilityUtil(context);
                }
            }
        }
        return sInstance;
    }

    private AccessibilityUtil(Context context) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        this.mAccessibilityManager = accessibilityManager;
        this.mIsTalkBackEnabled = accessibilityManager.isTouchExplorationEnabled();
        this.mListenerList = new CopyOnWriteArrayList<>();
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: com.sonyericsson.android.camera3d.utils.AccessibilityUtil.1
            @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
            public void onTouchExplorationStateChanged(boolean z) {
                AccessibilityUtil.this.mIsTalkBackEnabled = z;
                Iterator it = AccessibilityUtil.this.mListenerList.iterator();
                while (it.hasNext()) {
                    ((AccessibilityManager.TouchExplorationStateChangeListener) it.next()).onTouchExplorationStateChanged(z);
                }
            }
        };
        this.mTouchExplorationStateChangeListener = touchExplorationStateChangeListener;
        this.mAccessibilityManager.addTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
    }

    public void registerTouchExplorationStateChangeListener(AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        if (this.mAccessibilityManager != null) {
            this.mListenerList.addIfAbsent(touchExplorationStateChangeListener);
        }
    }

    public void unregisterTouchExplorationStateChangeListener(AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener) {
        if (this.mAccessibilityManager != null) {
            this.mListenerList.remove(touchExplorationStateChangeListener);
        }
    }

    public boolean isTalkBackEnabled() {
        return this.mIsTalkBackEnabled;
    }

    public void release() {
        this.mAccessibilityManager.removeTouchExplorationStateChangeListener(this.mTouchExplorationStateChangeListener);
    }
}
