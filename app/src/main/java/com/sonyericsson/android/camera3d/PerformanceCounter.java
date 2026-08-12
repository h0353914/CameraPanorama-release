package com.sonyericsson.android.camera3d;

import com.sonyericsson.android.camera3d.utils.LogFilter;

import java.util.Locale;

public class PerformanceCounter {
    private long mTime;

    private PerformanceCounter() {
    }

    private long getCurTime() {
        return System.nanoTime();
    }

    public static PerformanceCounter newInstance(boolean enabled) {
        if (enabled) {
            return new PerformanceCounter();
        } else {
            return new PerformanceCounterOff();
        }
    }

    public long get() {
        return mTime;
    }

    public void putLog(String tag, String label) {
        String message = String.format(Locale.US, "PRINT_PROCESSING_TIME :%s : %2$,3d nsec",
                label, Long.valueOf(get()));
        LogFilter.i(tag, message);
    }

    public void start() {
        mTime = getCurTime();
    }

    public void stop() {
        mTime = getCurTime() - mTime;
    }

    private static class PerformanceCounterOff extends PerformanceCounter {
        private PerformanceCounterOff() {
        }

        @Override
        public long get() {
            return 0;
        }

        @Override
        public void putLog(String tag, String label) {
        }

        @Override
        public void start() {
        }

        @Override
        public void stop() {
        }
    }
}
