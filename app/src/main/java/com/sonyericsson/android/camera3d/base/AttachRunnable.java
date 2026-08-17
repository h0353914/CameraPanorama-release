package com.sonyericsson.android.camera3d.base;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.location.Location;
import android.media.ExifInterface;
import android.media.Image;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.format.DateFormat;
import android.util.Pair;
import com.sonyericsson.android.camera3d.Camera2App;
import com.sonyericsson.android.camera3d.CaptureImage;
import com.sonyericsson.android.camera3d.PanoramaGP2ImageFormat;
import com.sonyericsson.android.camera3d.core.Error;
import com.sonyericsson.android.camera3d.core.JpegIO;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import com.sonyericsson.android.camera3d.utils.NativeMemoryAllocator;
import com.sonyericsson.android.camera3d.utils.io.StorageMonitor;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;

public abstract class AttachRunnable implements Runnable {
    private static final String PREFIX_DIR = "Camera";
    private static final String STORAGE_PATH_PREFIX = Environment.DIRECTORY_DCIM;
    private CaptureImage srcImage;
    protected final ByteBuffer[] byteBuffer = new ByteBuffer[3];
    protected final int[] rowStride = new int[3];
    protected final int[] pixelStride = new int[3];
    private boolean isNativeBuffer = false;

    protected void setImage(CaptureImage captureImage) {
        Image image = captureImage.image();
        if (image != null) {
            setPlane(image.getPlanes()[0], 0);
            setPlane(image.getPlanes()[1], 1);
            setPlane(image.getPlanes()[2], 2);
        } else {
            int width = captureImage.getWidth();
            int height = captureImage.getHeight();
            byte[] bArrRaw = captureImage.raw();
            int i = height * width;
            this.byteBuffer[0] = createBuffer(bArrRaw, 0, i);
            int i2 = i / 2;
            this.byteBuffer[1] = createBuffer(bArrRaw, i + 1, i2 - 1);
            this.byteBuffer[2] = createBuffer(bArrRaw, i, i2);
            int[] iArr = this.rowStride;
            iArr[0] = width;
            iArr[1] = width;
            iArr[2] = width;
            int[] iArr2 = this.pixelStride;
            iArr2[0] = 1;
            iArr2[1] = 2;
            iArr2[2] = 2;
            this.isNativeBuffer = true;
        }
        this.srcImage = captureImage;
    }

    protected void closeSrc() {
        this.srcImage.close();
        if (this.isNativeBuffer) {
            NativeMemoryAllocator.freeBuffer(this.byteBuffer[0]);
            NativeMemoryAllocator.freeBuffer(this.byteBuffer[1]);
            NativeMemoryAllocator.freeBuffer(this.byteBuffer[2]);
            ByteBuffer[] byteBufferArr = this.byteBuffer;
            byteBufferArr[0] = null;
            byteBufferArr[1] = null;
            byteBufferArr[2] = null;
            this.isNativeBuffer = false;
        }
    }

    private void setPlane(Image.Plane plane, int i) {
        this.byteBuffer[i] = plane.getBuffer();
        this.rowStride[i] = plane.getRowStride();
        this.pixelStride[i] = plane.getPixelStride();
    }

    private static ByteBuffer createBuffer(byte[] bArr, int i, int i2) {
        ByteBuffer byteBufferAllocateBuffer = NativeMemoryAllocator.allocateBuffer(i2);
        byteBufferAllocateBuffer.put(bArr, i, i2);
        byteBufferAllocateBuffer.clear();
        return byteBufferAllocateBuffer;
    }

    protected String saveJpeg(boolean z, Context context, ContentResolver contentResolver, String str, int i, int i2, String str2, Location location, double d, int i3, int i4) {
        Pair<Uri, String> pairInsertPhotoMedia;
        ParcelFileDescriptor parcelFileDescriptor;
        Pair<Uri, String> pair;
        long j;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        int iWriteJPEG = 0;
        ByteBuffer byteBufferAllocateBuffer = NativeMemoryAllocator.allocateBuffer(this.byteBuffer[0].capacity() + this.byteBuffer[1].capacity() + this.byteBuffer[2].capacity());
        byteBufferAllocateBuffer.put(this.byteBuffer[0]);
        if (PanoramaGP2ImageFormat.YVU420_SEMIPLANAR.equals(str2)) {
            byteBufferAllocateBuffer.put(this.byteBuffer[2]);
            byteBufferAllocateBuffer.put(this.byteBuffer[1]);
        } else {
            byteBufferAllocateBuffer.put(this.byteBuffer[1]);
            byteBufferAllocateBuffer.put(this.byteBuffer[2]);
        }
        byteBufferAllocateBuffer.clear();
        ExifInterface exifInterface = null;
        long statSize = 0;
        // 注意：smali 這裡外層還有一個 catch FileNotFoundException/IOException
        // 的 try（對應 insertPhotoMedia() 呼叫），但 insertPhotoMedia() 本身
        // 不會拋出這兩種例外（純 ContentResolver CRUD，無檔案 I/O），
        // 屬於 bytecode 層級「永遠不會真正觸發」的保留 catch table，
        // javac 對 checked exception 的可達性檢查不允許保留這種恆假的 catch，
        // 故省略（行為等價：本來就不可能進入這兩個 catch 分支）。
        {
            pairInsertPhotoMedia = insertPhotoMedia(z, context, contentResolver, str);
            if (pairInsertPhotoMedia != null) {
                // 對照 smali：開檔、寫入 JPEG、關檔、重開取檔案大小全部屬於同一段
                // try_start_1/try_end_1，共用同一組 FileNotFoundException/IOException
                // handler（catch_1/catch_0），一旦拋例外就整段跳過，直接沿用清理尾端
                // （goto_4/goto_3）。jadx 原本誤把 try 範圍縮小到只有 openFileDescriptor()
                // 那一行，導致後面 writeJPEG/close/reopen 的呼叫變成沒被 try 保護、
                // 且 catch 分支忘記指派 parcelFileDescriptorOpenFileDescriptor。
                try {
                    parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor((Uri) pairInsertPhotoMedia.first, "rw", null);
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        iWriteJPEG = JpegIO.writeJPEG(byteBufferAllocateBuffer, i, i2, parcelFileDescriptorOpenFileDescriptor.getFd(), str2);
                        parcelFileDescriptorOpenFileDescriptor.close();
                        if (iWriteJPEG == 0) {
                            parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor((Uri) pairInsertPhotoMedia.first, "rw", null);
                            statSize = parcelFileDescriptorOpenFileDescriptor.getStatSize();
                        }
                    } else {
                        iWriteJPEG = Error.ERROR_IO;
                    }
                    j = statSize;
                    pair = pairInsertPhotoMedia;
                    parcelFileDescriptor = parcelFileDescriptorOpenFileDescriptor;
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                    iWriteJPEG = Error.ERROR_UNSUPPORTED;
                    parcelFileDescriptor = null;
                    j = 0;
                    pair = pairInsertPhotoMedia;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    parcelFileDescriptor = null;
                    j = 0;
                    pair = pairInsertPhotoMedia;
                }
            } else {
                iWriteJPEG = Error.ERROR_IO;
                parcelFileDescriptor = null;
                j = statSize;
                pair = pairInsertPhotoMedia;
            }
        }
        NativeMemoryAllocator.freeBuffer(byteBufferAllocateBuffer);
        if (iWriteJPEG != 0) {
            LogFilter.e("PanoramaGP2", "writeJPEG ret = " + iWriteJPEG);
            return null;
        }
        if (parcelFileDescriptor != null) {
            try {
                exifInterface = new ExifInterface(parcelFileDescriptor.getFileDescriptor());
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }
        putImage(contentResolver, (Uri) pair.first, exifInterface, location, d, i3, i4, System.currentTimeMillis(), j);
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException e6) {
                e6.printStackTrace();
            }
        }
        return (String) pair.second;
    }

    private void putImage(ContentResolver contentResolver, Uri uri, ExifInterface exifInterface, Location location, double d, int i, int i2, long j, long j2) {
        int i3;
        int i4 = 270;
        if (i2 == 90) {
            i3 = 3;
        } else if (i2 != 180) {
            i3 = i2 != 270 ? 6 : 1;
        } else {
            i3 = 8;
        }
        if (i2 == 90) {
            i4 = 180;
        } else if (i2 != 180) {
            i4 = i2 != 270 ? 90 : 0;
        }
        String string = DateFormat.format("yyyy:MM:dd kk:mm:ss", j).toString();
        if (exifInterface != null) {
            exifInterface.setAttribute("DateTime", string);
            exifInterface.setAttribute("DateTimeOriginal", string);
            exifInterface.setAttribute("DateTimeDigitized", string);
            exifInterface.setAttribute("Make", Build.MANUFACTURER);
            exifInterface.setAttribute("Model", Build.MODEL);
            if (location != null) {
                double latitude = location.getLatitude();
                double longitude = location.getLongitude();
                String strLocationValueToString = Camera2App.locationValueToString(latitude);
                String strLatitudeValueToNorS = Camera2App.latitudeValueToNorS(latitude);
                String strLocationValueToString2 = Camera2App.locationValueToString(longitude);
                String strLongitudeValueToEorW = Camera2App.longitudeValueToEorW(longitude);
                exifInterface.setAttribute("GPSLatitude", strLocationValueToString);
                exifInterface.setAttribute("GPSLatitudeRef", strLatitudeValueToNorS);
                exifInterface.setAttribute("GPSLongitude", strLocationValueToString2);
                exifInterface.setAttribute("GPSLongitudeRef", strLongitudeValueToEorW);
            }
            exifInterface.setAttribute("ExposureTime", String.valueOf(d));
            exifInterface.setAttribute("Orientation", String.valueOf(i3));
            exifInterface.setAttribute("ISOSpeedRatings", String.valueOf(i));
            try {
                exifInterface.saveAttributes();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        if (uri != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("datetaken", Long.valueOf(j));
            long j3 = j / 1000;
            contentValues.put("date_added", Long.valueOf(j3));
            contentValues.put("date_modified", Long.valueOf(j3));
            contentValues.put("_size", Long.valueOf(j2));
            contentValues.put("orientation", Integer.valueOf(i4));
            contentValues.put("is_pending", (Integer) 0);
            contentResolver.update(uri, contentValues, null, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x00bc  */
    private Pair<Uri, String> insertPhotoMedia(boolean z, Context context, ContentResolver contentResolver, String str) {
        String str2;
        String volume = StorageMonitor.getVolume(z, context);
        if (volume == null) {
            return null;
        }
        ContentValues contentValues = new ContentValues();
        String strSubstring = str.substring(1, str.lastIndexOf(File.separator) + 1);
        String strSubstring2 = str.substring(str.lastIndexOf(File.separator) + 1);
        contentValues.put("_display_name", strSubstring2);
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("relative_path", strSubstring);
        contentValues.put("is_pending", (Integer) 1);
        Uri uriInsert = contentResolver.insert(MediaStore.Images.Media.getContentUri(volume), contentValues);
        Cursor cursorQuery = contentResolver.query(uriInsert, new String[]{"_display_name", "bucket_display_name", "_size"}, null, null, null);
        if (cursorQuery != null) {
            try {
                if (cursorQuery.moveToFirst()) {
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("bucket_display_name"));
                    if (cursorQuery.getString(cursorQuery.getColumnIndex("_display_name")).equals(strSubstring2) || !string.endsWith(PREFIX_DIR)) {
                        str2 = str;
                    } else {
                        str2 = File.separator + STORAGE_PATH_PREFIX + File.separator + PREFIX_DIR + File.separator + strSubstring2;
                        contentResolver.delete(uriInsert, null, null);
                        uriInsert = (Uri) insertPhotoMedia(z, context, contentResolver, str2).first;
                    }
                } else {
                    str2 = str;
                }
            } finally {
                cursorQuery.close();
            }
        } else {
            str2 = str;
        }
        return new Pair<>(uriInsert, str2);
    }
}
