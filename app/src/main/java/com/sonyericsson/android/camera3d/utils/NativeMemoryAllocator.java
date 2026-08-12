package com.sonyericsson.android.camera3d.utils;

import java.nio.ByteBuffer;

public class NativeMemoryAllocator {
    private static final String TAG = "NativeMemoryAllocator";

    static {
        try {
            System.loadLibrary("morpho_memory_allocator");
            LogFilter.d("NativeMemoryAllocator", "load libmorpho_memory_allocator.so");
        } catch (UnsatisfiedLinkError e) {
            LogFilter.e("NativeMemoryAllocator", e.getMessage());
            LogFilter.e("NativeMemoryAllocator", "can't loadLibrary");
        }
    }

    public static native ByteBuffer allocateBuffer(int size);

    public static native void freeBuffer(ByteBuffer buffer);

    public static native long getAddress(ByteBuffer buffer);
}
