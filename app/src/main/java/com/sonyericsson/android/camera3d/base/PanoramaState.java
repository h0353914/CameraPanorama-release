package com.sonyericsson.android.camera3d.base;

import com.sonyericsson.android.camera3d.CaptureImage;

public class PanoramaState {
    protected IPanoramaStateEventListener listener;
    protected boolean mAbort = false;

    public interface IPanoramaStateEventListener {
        void requestEnd(PanoramaState panoramaState, int i);
    }

    public boolean hasImage() {
        return false;
    }

    public boolean isEnableTvAnalysis() {
        return false;
    }

    public void notifyTvAnalyzed() {
    }

    public void repeatTakePicture() {
    }

    protected void clearListener() {
        this.listener = new IPanoramaStateEventListener() { // from class: com.sonyericsson.android.camera3d.base.PanoramaState.1
            @Override // com.sonyericsson.android.camera3d.base.PanoramaState.IPanoramaStateEventListener
            public void requestEnd(PanoramaState panoramaState, int i) {
            }
        };
    }

    public void setPanoramaStateEventListener(IPanoramaStateEventListener iPanoramaStateEventListener) {
        this.listener = iPanoramaStateEventListener;
    }

    public PanoramaState() {
        clearListener();
    }

    public boolean onSaveImage(CaptureImage captureImage) {
        if (captureImage == null) {
            return true;
        }
        captureImage.close();
        return true;
    }

    public boolean isAborted() {
        return this.mAbort;
    }

    public void abort() {
        this.mAbort = true;
    }
}
