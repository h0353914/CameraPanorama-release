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

    public void start() {
        this.mTime = getCurTime();
    }

    public void stop() {
        this.mTime = getCurTime() - this.mTime;
    }

    public long get() {
        return this.mTime;
    }

    public void putLog(String str, String str2) {
        LogFilter.i(str, String.format(Locale.US, "PRINT_PROCESSING_TIME :%s : %2$,3d nsec", str2, Long.valueOf(get())));
    }

    public static PerformanceCounter newInstance(boolean z) {
        return z ? new PerformanceCounter() : new PerformanceCounterOff();
    }

    private static class PerformanceCounterOff extends PerformanceCounter {
        @Override // com.sonyericsson.android.camera3d.PerformanceCounter
        public long get() {
            return 0L;
        }

        @Override // com.sonyericsson.android.camera3d.PerformanceCounter
        public void putLog(String str, String str2) {
        }

        @Override // com.sonyericsson.android.camera3d.PerformanceCounter
        public void start() {
        }

        @Override // com.sonyericsson.android.camera3d.PerformanceCounter
        public void stop() {
        }

        private PerformanceCounterOff() {
            super();
        }
    }
}
