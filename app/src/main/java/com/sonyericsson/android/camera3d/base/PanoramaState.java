package com.sonyericsson.android.camera3d.base;

import com.sonyericsson.android.camera3d.CaptureImage;

public class PanoramaState {
    public interface IPanoramaStateEventListener {
        void requestEnd(PanoramaState state, int reason);
    }

    protected IPanoramaStateEventListener listener;
    protected boolean mAbort;

    public PanoramaState() {
        mAbort = false;
        clearListener();
    }

    public void abort() {
        mAbort = true;
    }

    protected void clearListener() {
        listener = new IPanoramaStateEventListener() {
            @Override
            public void requestEnd(PanoramaState state, int reason) {
            }
        };
    }

    public boolean hasImage() {
        return false;
    }

    public boolean isAborted() {
        return mAbort;
    }

    public boolean isEnableTvAnalysis() {
        return false;
    }

    public void notifyTvAnalyzed() {
    }

    public boolean onSaveImage(CaptureImage image) {
        return true;
    }

    public void repeatTakePicture() {
    }

    public void setPanoramaStateEventListener(IPanoramaStateEventListener listener) {
        this.listener = listener;
    }
}
