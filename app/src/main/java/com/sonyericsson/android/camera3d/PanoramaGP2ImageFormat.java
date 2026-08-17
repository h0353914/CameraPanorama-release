package com.sonyericsson.android.camera3d;

import android.media.Image;
import com.sonyericsson.android.camera3d.utils.NativeMemoryAllocator;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;

public class PanoramaGP2ImageFormat {
    public static final String YUV420_PLANAR = "YUV420_PLANAR";
    public static final String YUV420_SEMIPLANAR = "YUV420_SEMIPLANAR";
    public static final String YVU420_SEMIPLANAR = "YVU420_SEMIPLANAR";

    private static long getByteBufferAddress(ByteBuffer byteBuffer) {
        try {
            Field declaredField = Buffer.class.getDeclaredField("effectiveDirectAddress");
            declaredField.setAccessible(true);
            return declaredField.getLong(byteBuffer);
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            return NativeMemoryAllocator.getAddress(byteBuffer);
        }
    }

    public static String getImageFormat(Image image) {
        Image.Plane[] planes = image.getPlanes();
        long byteBufferAddress = getByteBufferAddress(planes[2].getBuffer()) - getByteBufferAddress(planes[1].getBuffer());
        if (byteBufferAddress == 1) {
            return YUV420_SEMIPLANAR;
        }
        return byteBufferAddress == -1 ? YVU420_SEMIPLANAR : YUV420_PLANAR;
    }
}
