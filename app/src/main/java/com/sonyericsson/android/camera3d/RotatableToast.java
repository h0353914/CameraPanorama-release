package com.sonyericsson.android.camera3d;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.sonyericsson.android.camera3d.utils.LogFilter;

public class RotatableToast extends RelativeLayout {
    private static final int ORIENTATION_LANDSCAPE = 0x5a;
    private static final int ORIENTATION_PORTRAIT = 0x0;
    private static final String TAG = "RotatableToast";
    public static final int TOAST_DURATION_LONG = 0xdac;
    public static final int TOAST_DURATION_SHORT = 0x7d0;

    private final Context mContext;
    private boolean mDisplayToastFlg;
    private boolean mFinishAfterToast;
    private final RelativeLayout mRotatableToastContainerForPortrait;
    private final TextView mRotatableToastMessageForPortrait;

    public RotatableToast(Context context) {
        super(context);
        mFinishAfterToast = false;
        mDisplayToastFlg = false;
        mContext = context;
        mDisplayToastFlg = false;

        LayoutInflater.from(context).inflate(R.layout.rotatable_toast, this);

        mRotatableToastContainerForPortrait =
                (RelativeLayout) findViewById(R.id.rotatable_toast_container);
        mRotatableToastMessageForPortrait =
                (TextView) findViewById(R.id.text_view_rotatable_toast);

        mRotatableToastContainerForPortrait.setVisibility(GONE);
    }

    private int getOrientation(int angle) {
        int result = ORIENTATION_PORTRAIT;
        if (angle >= 0x1e && 0x14a >= angle) {
            if (0x3c <= angle && angle < 0x12c) {
                result = ORIENTATION_LANDSCAPE;
            }
        }
        return result;
    }

    public boolean getRotatableToast() {
        return mDisplayToastFlg;
    }

    public void invisibleRotatableToast() {
        mDisplayToastFlg = false;
        mRotatableToastContainerForPortrait.setVisibility(GONE);
    }

    public void setRotatableToastMessage(CharSequence message) {
        mRotatableToastMessageForPortrait.setText(message);
    }

    public void startRotatableToast(int duration, boolean finishAfterToast, int angle) {
        mDisplayToastFlg = true;
        int orientation = getOrientation(angle);
        mRotatableToastContainerForPortrait.setRotation((float) orientation);
        mRotatableToastContainerForPortrait.setVisibility(VISIBLE);
        mFinishAfterToast = finishAfterToast;
        new ShowToastTask(duration).execute(new Integer[1]);
    }

    public void toggleRotatableToastVisibility(int angle) {
        if (mDisplayToastFlg) {
            int orientation = getOrientation(angle);
            mRotatableToastContainerForPortrait.setRotation((float) orientation);
            mRotatableToastContainerForPortrait.setVisibility(VISIBLE);
        } else {
            mRotatableToastContainerForPortrait.setVisibility(GONE);
        }
    }

    private class ShowToastTask extends AsyncTask<Integer, Integer, Integer> {
        private final int mDuration;

        public ShowToastTask(int duration) {
            mDuration = duration;
        }

        @Override
        protected Integer doInBackground(Integer... params) {
            LogFilter.d(TAG, "UpdatePreviewTask doInBackground()");
            int result;
            try {
                Thread.sleep((long) mDuration);
                result = 0;
            } catch (InterruptedException e) {
                e.printStackTrace();
                result = -1;
            }
            return Integer.valueOf(result);
        }

        @Override
        protected void onPostExecute(Integer result) {
            LogFilter.d(TAG, "UpdatePreviewTask onPostExecute()");
            invisibleRotatableToast();
            if (mFinishAfterToast) {
                ((Activity) mContext).finish();
            }
        }

        @Override
        protected void onPreExecute() {
            LogFilter.d(TAG, "ShowToastTask onPreExecute()");
            RotatableToast.this.setVisibility(VISIBLE);
        }
    }
}
