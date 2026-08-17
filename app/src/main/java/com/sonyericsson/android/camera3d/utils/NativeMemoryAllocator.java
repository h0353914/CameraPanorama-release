package com.sonyericsson.android.camera3d.utils;

import java.nio.ByteBuffer;

public class NativeMemoryAllocator {
    private static final String TAG = "NativeMemoryAllocator";

    public static native ByteBuffer allocateBuffer(int i);

    public static native void freeBuffer(ByteBuffer byteBuffer);

    public static native long getAddress(ByteBuffer byteBuffer);

    static {
        try {
            System.loadLibrary("morpho_memory_allocator");
            LogFilter.d(TAG, "load libmorpho_memory_allocator.so");
        } catch (UnsatisfiedLinkError e) {
            LogFilter.e(TAG, e.getMessage());
            LogFilter.e(TAG, "can't loadLibrary");
        }
    }
}
