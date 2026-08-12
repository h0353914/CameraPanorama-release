package com.sonyericsson.android.camera3d;

import android.os.AsyncTask;

class SaveAsyncTask extends AsyncTask<Void, Void, Boolean> {
    public interface ISaveAsyncTaskEventListener {
        void onSaveFinish(boolean result);

        boolean requestSaveProcess();
    }

    private final ISaveAsyncTaskEventListener mListener;

    public SaveAsyncTask(ISaveAsyncTaskEventListener listener) {
        if (listener == null) {
            listener = new ISaveAsyncTaskEventListener() {
                @Override
                public void onSaveFinish(boolean result) {
                }

                @Override
                public boolean requestSaveProcess() {
                    return true;
                }
            };
        }
        mListener = listener;
    }

    @Override
    protected Boolean doInBackground(Void... params) {
        return Boolean.valueOf(mListener.requestSaveProcess());
    }

    @Override
    protected void onPostExecute(Boolean result) {
        super.onPostExecute(result);
        mListener.onSaveFinish(result.booleanValue());
    }
}
