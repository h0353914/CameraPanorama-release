package com.sonyericsson.android.camera3d;

import android.media.Image;

import com.sonyericsson.android.camera3d.utils.NativeMemoryAllocator;

import java.lang.reflect.Field;
import java.nio.ByteBuffer;

public class PanoramaGP2ImageFormat {
    public static final String YUV420_PLANAR = "YUV420_PLANAR";
    public static final String YUV420_SEMIPLANAR = "YUV420_SEMIPLANAR";
    public static final String YVU420_SEMIPLANAR = "YVU420_SEMIPLANAR";

    private static long getByteBufferAddress(ByteBuffer buffer) {
        try {
            Field field = java.nio.Buffer.class.getDeclaredField("effectiveDirectAddress");
            field.setAccessible(true);
            return field.getLong(buffer);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            return NativeMemoryAllocator.getAddress(buffer);
        }
    }

    public static String getImageFormat(Image image) {
        Image.Plane[] planes = image.getPlanes();
        long addr2 = getByteBufferAddress(planes[2].getBuffer());
        long addr1 = getByteBufferAddress(planes[1].getBuffer());
        long diff = addr2 - addr1;
        if (diff == 1L) {
            return "YUV420_SEMIPLANAR";
        } else if (diff == -1L) {
            return "YVU420_SEMIPLANAR";
        } else {
            return "YUV420_PLANAR";
        }
    }
}
