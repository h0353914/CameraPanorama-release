package com.sonyericsson.android.camera3d.utils.io;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;

import com.sonyericsson.android.camera3d.utils.LogFilter;

import java.io.File;
import java.io.IOException;

public class StorageMonitor {
    private static final String LOG_TAG = "Camera2App";

    public static long getAvailableExternalStorageSpace(Context context) {
        String path = getExternalStorageRootPath(context);
        if (path != null) {
            return getAvailableStorageSpace(new File(path));
        }
        return -1L;
    }

    public static long getAvailableInternalStorageSpace() {
        File dir = Environment.getExternalStorageDirectory();
        if (dir != null) {
            return getAvailableStorageSpace(dir);
        }
        return -1L;
    }

    private static long getAvailableStorageSpace(File file) {
        StatFs statFs = new StatFs(file.getPath());
        return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
    }

    public static String getExternalStorageRootPath(Context context) {
        if (!isExternalStorageMounted(context)) {
            return null;
        }

        File[] files = new File("/storage/").listFiles();
        if (files != null && files.length > 0) {
            for (int i = 0; i < files.length; i++) {
                File file = files[i];
                if (file.getName().matches("emulated")) {
                    return null;
                }

                String path;
                try {
                    path = file.getCanonicalPath();
                } catch (IOException e) {
                    path = file.getAbsolutePath();
                }

                LogFilter.d(LOG_TAG, String.format("%s is %s", file.getPath(),
                        isMounted(path) ? "mounted." : "not mounted."));

                if (isMounted(path)) {
                    return path;
                }
            }
        }

        return null;
    }

    public static String getInternalStorageRootPath() {
        File dir = Environment.getExternalStorageDirectory();
        if (dir != null) {
            return dir.getAbsolutePath();
        }
        return null;
    }

    public static boolean isExternalStorageMounted(Context context) {
        File[] dirs = context.getExternalFilesDirs(null);
        for (int i = 0; i < dirs.length; i++) {
            File dir = dirs[i];
            if (dir != null && Environment.isExternalStorageRemovable(dir)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isExternalStorageWritable(String path) {
        return new File(path).canWrite();
    }

    private static boolean isMounted(String path) {
        return new File(path).canExecute();
    }
}
