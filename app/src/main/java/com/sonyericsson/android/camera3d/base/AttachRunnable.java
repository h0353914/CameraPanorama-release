package com.sonyericsson.android.camera3d.base;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.location.Location;
import android.media.ExifInterface;
import android.media.Image;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.support.v4.provider.DocumentFile;
import android.text.format.DateFormat;

import com.sonyericsson.android.camera3d.Camera2App;
import com.sonyericsson.android.camera3d.CaptureImage;
import com.sonyericsson.android.camera3d.core.JpegIO;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import com.sonyericsson.android.camera3d.utils.NativeMemoryAllocator;

import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;

public abstract class AttachRunnable implements Runnable {
    protected final ByteBuffer[] byteBuffer;
    private boolean isNativeBuffer;
    protected final int[] pixelStride;
    protected final int[] rowStride;
    private CaptureImage srcImage;

    public AttachRunnable() {
        byteBuffer = new ByteBuffer[3];
        rowStride = new int[3];
        pixelStride = new int[3];
        isNativeBuffer = false;
    }

    private static ByteBuffer createBuffer(byte[] data, int offset, int length) {
        ByteBuffer buffer = NativeMemoryAllocator.allocateBuffer(length);
        buffer.put(data, offset, length);
        buffer.clear();
        return buffer;
    }

    private void putImage(ContentResolver resolver, ExifInterface exif, String path, String displayName,
                           Location location, double exposureTime, int iso, int orientationAngle,
                           long dateTaken, long fileSize) {
        int exifOrientation;
        if (orientationAngle == 90) {
            exifOrientation = 3;
        } else if (orientationAngle == 180) {
            exifOrientation = 8;
        } else if (orientationAngle == 270) {
            exifOrientation = 1;
        } else {
            exifOrientation = 6;
        }

        int mediaStoreOrientation;
        if (orientationAngle == 90) {
            mediaStoreOrientation = 180;
        } else if (orientationAngle == 180) {
            mediaStoreOrientation = 270;
        } else if (orientationAngle == 270) {
            mediaStoreOrientation = 0;
        } else {
            mediaStoreOrientation = 90;
        }

        String dateStr = DateFormat.format("yyyy:MM:dd kk:mm:ss", dateTaken).toString();

        if (exif != null) {
            exif.setAttribute("DateTime", dateStr);
            exif.setAttribute("DateTimeOriginal", dateStr);
            exif.setAttribute("DateTimeDigitized", dateStr);
            exif.setAttribute("Make", Build.MANUFACTURER);
            exif.setAttribute("Model", Build.MODEL);

            if (location != null) {
                double lat = location.getLatitude();
                double lon = location.getLongitude();
                String latStr = Camera2App.locationValueToString(lat);
                String latRef = Camera2App.latitudeValueToNorS(lat);
                String lonStr = Camera2App.locationValueToString(lon);
                String lonRef = Camera2App.longitudeValueToEorW(lon);
                exif.setAttribute("GPSLatitude", latStr);
                exif.setAttribute("GPSLatitudeRef", latRef);
                exif.setAttribute("GPSLongitude", lonStr);
                exif.setAttribute("GPSLongitudeRef", lonRef);
            }

            exif.setAttribute("ExposureTime", String.valueOf(exposureTime));
            exif.setAttribute("Orientation", String.valueOf(exifOrientation));

            if (Build.VERSION.SDK_INT >= 24) {
                exif.setAttribute("ISOSpeedRatings", String.valueOf(iso));
            } else {
                exif.setAttribute("ISOSpeedRatings", String.valueOf(iso));
            }

            try {
                exif.saveAttributes();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        ContentValues values = new ContentValues(8);
        values.put("title", displayName);
        values.put("_display_name", displayName);
        values.put("datetaken", Long.valueOf(dateTaken));
        long dateAddedSec = dateTaken / 1000L;
        values.put("date_added", Long.valueOf(dateAddedSec));
        values.put("date_modified", Long.valueOf(dateAddedSec));
        values.put("mime_type", "image/jpeg");
        values.put("_data", path);
        values.put("_size", Long.valueOf(fileSize));
        values.put("orientation", Integer.valueOf(mediaStoreOrientation));

        resolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, values);
    }

    private void setPlane(Image.Plane plane, int index) {
        byteBuffer[index] = plane.getBuffer();
        rowStride[index] = plane.getRowStride();
        pixelStride[index] = plane.getPixelStride();
    }

    protected void closeSrc() {
        srcImage.close();
        if (isNativeBuffer) {
            NativeMemoryAllocator.freeBuffer(byteBuffer[0]);
            NativeMemoryAllocator.freeBuffer(byteBuffer[1]);
            NativeMemoryAllocator.freeBuffer(byteBuffer[2]);
            byteBuffer[0] = null;
            byteBuffer[1] = null;
            byteBuffer[2] = null;
            isNativeBuffer = false;
        }
    }

    protected boolean saveJpeg(ContentResolver resolver, String path, int width, int height, String format,
                                Location location, double exposureTime, int iso, int orientationAngle) {
        int total = byteBuffer[0].capacity() + byteBuffer[1].capacity() + byteBuffer[2].capacity();
        ByteBuffer merged = NativeMemoryAllocator.allocateBuffer(total);
        merged.put(byteBuffer[0]);
        if ("YVU420_SEMIPLANAR".equals(format)) {
            merged.put(byteBuffer[2]);
            merged.put(byteBuffer[1]);
        } else {
            merged.put(byteBuffer[1]);
            merged.put(byteBuffer[2]);
        }
        merged.clear();

        int ret = JpegIO.writeJPEG(merged, width, height, path, format);
        NativeMemoryAllocator.freeBuffer(merged);

        if (ret != 0) {
            LogFilter.e("PanoramaGP2", "writeJPEG ret = " + ret);
            return false;
        }

        String displayName = path.substring(path.lastIndexOf(File.separator) + 1);

        ExifInterface exif;
        try {
            exif = new ExifInterface(path);
        } catch (IOException e) {
            e.printStackTrace();
            exif = null;
        }

        File file = new File(path);
        long now = System.currentTimeMillis();
        long size = file.length();

        putImage(resolver, exif, path, displayName, location, exposureTime, iso, orientationAngle, now, size);
        return true;
    }

    protected boolean saveJpeg2Sd(Context context, ContentResolver resolver, Uri treeUri, String tempPath,
                                   String albumDirName, int width, int height, String format, Location location,
                                   double exposureTime, int iso, int orientationAngle) {
        int total = byteBuffer[0].capacity() + byteBuffer[1].capacity() + byteBuffer[2].capacity();
        ByteBuffer merged = NativeMemoryAllocator.allocateBuffer(total);
        merged.put(byteBuffer[0]);
        if ("YVU420_SEMIPLANAR".equals(format)) {
            merged.put(byteBuffer[2]);
            merged.put(byteBuffer[1]);
        } else {
            merged.put(byteBuffer[1]);
            merged.put(byteBuffer[2]);
        }
        merged.clear();

        String displayName = tempPath.substring(tempPath.lastIndexOf(File.separator) + 1);

        DocumentFile root = DocumentFile.fromTreeUri(context, treeUri);
        DocumentFile dcimDir;
        if (!root.getName().matches("DCIM")) {
            DocumentFile found = root.findFile("DCIM");
            if (found == null) {
                DocumentFile created = root.createDirectory("DCIM");
                if (created == null) {
                    return false;
                }
                dcimDir = created;
            } else {
                dcimDir = found;
            }
        } else {
            dcimDir = root;
        }

        DocumentFile albumDir = dcimDir.findFile(albumDirName);
        DocumentFile targetFile = albumDir.createFile("image/jpeg", displayName);

        ParcelFileDescriptor pfd = null;
        int ret;
        try {
            pfd = resolver.openFileDescriptor(targetFile.getUri(), "rw");
            if (pfd == null) {
                ret = -0x7ffffff8;
            } else {
                ret = JpegIO.writeJPEG(merged, width, height, pfd.getFd(), format);
                try {
                    pfd.close();
                    if (ret == 0) {
                        pfd = resolver.openFileDescriptor(targetFile.getUri(), "rw");
                    }
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                    ret = -0x7ffffff0;
                    pfd = null;
                } catch (IOException e) {
                    e.printStackTrace();
                    pfd = null;
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            ret = -0x7ffffff0;
            pfd = null;
        } catch (IOException e) {
            e.printStackTrace();
            ret = 0;
            pfd = null;
        }

        NativeMemoryAllocator.freeBuffer(merged);

        if (ret != 0) {
            LogFilter.e("PanoramaGP2", "writeJPEG ret = " + ret);
            return false;
        }

        ExifInterface exif = null;
        if (pfd != null) {
            try {
                FileDescriptor fd = pfd.getFileDescriptor();
                exif = new ExifInterface(fd);
            } catch (IOException e) {
                e.printStackTrace();
                exif = null;
            }
        }

        long now = System.currentTimeMillis();
        long size = targetFile.length();

        putImage(resolver, exif, tempPath, displayName, location, exposureTime, iso, orientationAngle, now, size);

        if (pfd != null) {
            try {
                pfd.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return true;
    }

    protected void setImage(CaptureImage image) {
        Image img = image.image();
        if (img != null) {
            setPlane(img.getPlanes()[0], 0);
            setPlane(img.getPlanes()[1], 1);
            setPlane(img.getPlanes()[2], 2);
        } else {
            int width = image.getWidth();
            int height = image.getHeight();
            byte[] raw = image.raw();
            int ySize = width * height;

            byteBuffer[0] = createBuffer(raw, 0, ySize);
            int uOffset = ySize + 1;
            int uvHalf = ySize / 2;
            byteBuffer[1] = createBuffer(raw, uOffset, uvHalf - 1);
            byteBuffer[2] = createBuffer(raw, ySize, uvHalf);

            rowStride[0] = width;
            rowStride[1] = width;
            rowStride[2] = width;

            pixelStride[0] = 1;
            pixelStride[1] = 2;
            pixelStride[2] = 2;

            isNativeBuffer = true;
        }
        srcImage = image;
    }
}
