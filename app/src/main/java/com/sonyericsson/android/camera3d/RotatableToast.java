package com.sonyericsson.android.camera3d;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class RotatableToast extends RelativeLayout {
    private static final int ORIENTATION_LANDSCAPE = 90;
    private static final int ORIENTATION_PORTRAIT = 0;
    private static final int ORIENTATION_REVERSE_LANDSCAPE = 270;
    private static final String TAG = "RotatableToast";
    public static final int TOAST_DURATION_LONG = 3500;
    public static final int TOAST_DURATION_SHORT = 2000;
    private final Context mContext;
    private boolean mDisplayToastFlg;
    private boolean mFinishAfterToast;
    private final RelativeLayout mRotatableToastContainerForPortrait;
    private final TextView mRotatableToastMessageForPortrait;
    private Handler mUiHandler;

    private int getOrientation(int i) {
        if (i < 30 || 330 < i) {
            return 0;
        }
        if (60 > i || i >= 120) {
            return (240 > i || i >= 300) ? 0 : 90;
        }
        return ORIENTATION_REVERSE_LANDSCAPE;
    }

    public RotatableToast(Context context) {
        super(context);
        this.mFinishAfterToast = false;
        this.mDisplayToastFlg = false;
        this.mContext = context;
        this.mUiHandler = new Handler(Looper.getMainLooper());
        this.mDisplayToastFlg = false;
        LayoutInflater.from(context).inflate(R.layout.rotatable_toast, this);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.rotatable_toast_container);
        this.mRotatableToastContainerForPortrait = relativeLayout;
        this.mRotatableToastMessageForPortrait = (TextView) findViewById(R.id.text_view_rotatable_toast);
        relativeLayout.setVisibility(8);
    }

    public void setRotatableToastMessage(CharSequence charSequence) {
        this.mRotatableToastMessageForPortrait.setText(charSequence);
    }

    public void toggleRotatableToastVisibility(int i) {
        if (this.mDisplayToastFlg) {
            this.mRotatableToastContainerForPortrait.setRotation(getOrientation(i));
            this.mRotatableToastContainerForPortrait.setVisibility(0);
            return;
        }
        this.mRotatableToastContainerForPortrait.setVisibility(8);
    }

    public void startRotatableToast(int i, boolean z, int i2) {
        this.mDisplayToastFlg = true;
        this.mRotatableToastContainerForPortrait.setRotation(getOrientation(i2));
        this.mRotatableToastContainerForPortrait.setVisibility(0);
        this.mFinishAfterToast = z;
        setVisibility(0);
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        executorServiceNewSingleThreadExecutor.execute(new ShowToastTask(i));
        executorServiceNewSingleThreadExecutor.shutdown();
    }

    public void invisibleRotatableToast() {
        this.mDisplayToastFlg = false;
        this.mRotatableToastContainerForPortrait.setVisibility(8);
    }

    public boolean getRotatableToast() {
        return this.mDisplayToastFlg;
    }

    private class ShowToastTask implements Runnable {
        private final int mDuration;

        public ShowToastTask(int i) {
            this.mDuration = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(this.mDuration);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            RotatableToast.this.mUiHandler.post(new Runnable() { // from class: com.sonyericsson.android.camera3d.RotatableToast.ShowToastTask.1
                @Override // java.lang.Runnable
                public void run() {
                    RotatableToast.this.invisibleRotatableToast();
                    if (RotatableToast.this.mFinishAfterToast) {
                        ((Activity) RotatableToast.this.mContext).finish();
                    }
                }
            });
        }
    }
}
