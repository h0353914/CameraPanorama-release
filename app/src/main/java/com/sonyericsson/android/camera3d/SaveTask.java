package com.sonyericsson.android.camera3d;

import android.os.Handler;
import android.os.Looper;

class SaveTask implements Runnable {
    private final ISaveTaskEventListener mListener;
    private Handler mUiHandler = new Handler(Looper.getMainLooper());

    public interface ISaveTaskEventListener {
        void onSaveFinish(boolean z);

        boolean requestSaveProcess();
    }

    public SaveTask(ISaveTaskEventListener iSaveTaskEventListener) {
        this.mListener = iSaveTaskEventListener == null ? new ISaveTaskEventListener() { // from class: com.sonyericsson.android.camera3d.SaveTask.1
            @Override // com.sonyericsson.android.camera3d.SaveTask.ISaveTaskEventListener
            public void onSaveFinish(boolean z) {
            }

            @Override // com.sonyericsson.android.camera3d.SaveTask.ISaveTaskEventListener
            public boolean requestSaveProcess() {
                return true;
            }
        } : iSaveTaskEventListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        final boolean zRequestSaveProcess = this.mListener.requestSaveProcess();
        this.mUiHandler.post(new Runnable() { // from class: com.sonyericsson.android.camera3d.SaveTask.2
            @Override // java.lang.Runnable
            public void run() {
                SaveTask.this.mListener.onSaveFinish(zRequestSaveProcess);
            }
        });
    }
}
