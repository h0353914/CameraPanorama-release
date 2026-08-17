package com.sonyericsson.android.camera3d.utils.io;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.MediaStore;
import java.io.File;
import java.util.Locale;
import java.util.Objects;

public class StorageMonitor {
    private static final String LOG_TAG = "Camera2App";

    public static boolean isExternalStorageMounted(Context context) {
        for (File file : context.getExternalFilesDirs(null)) {
            if (file != null && Environment.isExternalStorageRemovable(file)) {
                return true;
            }
        }
        return false;
    }

    public static long getAvailableStorageSpace(boolean z, Context context) {
        StorageVolume storageVolume;
        String path = null;
        for (File file : context.getExternalFilesDirs(null)) {
            if (file != null && (storageVolume = getStorageManager(context).getStorageVolume(file)) != null) {
                if (z) {
                    if (storageVolume.isPrimary()) {
                        path = file.getPath();
                        break;
                    }
                } else if (!storageVolume.isPrimary()) {
                    path = file.getPath();
                    break;
                }
            }
        }
        if (path == null) {
            return -1L;
        }
        StatFs statFs = new StatFs(new File(path).getPath());
        return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
    }

    private static StorageManager getStorageManager(Context context) {
        return (StorageManager) context.getSystemService("storage");
    }

    public static String getVolume(boolean z, Context context) {
        if (z) {
            String str = null;
            for (String str2 : MediaStore.getExternalVolumeNames(context)) {
                if (Objects.equals(normalizeUuid(getExternalVolumeUuid(context)), str2)) {
                    str = str2;
                }
            }
            return str;
        }
        return "external_primary";
    }

    private static String normalizeUuid(String str) {
        if (str != null) {
            return str.toLowerCase(Locale.US);
        }
        return null;
    }

    private static String getExternalVolumeUuid(Context context) {
        StorageVolume storageVolume;
        for (File file : context.getExternalFilesDirs(null)) {
            if (file != null && (storageVolume = getStorageManager(context).getStorageVolume(file)) != null && !storageVolume.isPrimary()) {
                return storageVolume.getUuid();
            }
        }
        return null;
    }
}
