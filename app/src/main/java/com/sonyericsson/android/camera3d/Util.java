package com.sonyericsson.android.camera3d;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Util {
    public enum ApplicationType {
        SYSTEM,
        UPDATED_SYSTEM_APP,
        OTHER
    }

    @TargetApi(23)
    public static boolean checkPermissionGrant(String[] permissions, Activity activity) {
        if (permissions == null || permissions.length < 1) {
            return false;
        }
        for (String permission : permissions) {
            if (activity.checkSelfPermission(permission) != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean checkPermissionsResult(int[] grantResults) {
        for (int result : grantResults) {
            if (result != 0) {
                return false;
            }
        }
        return true;
    }

    @TargetApi(23)
    public static boolean determineDialogType(List<String> permissions, Activity activity) {
        Iterator<String> iterator = permissions.iterator();
        if (iterator.hasNext()) {
            String permission = iterator.next();
            if (!activity.shouldShowRequestPermissionRationale(permission)) {
                return false;
            }
        }
        return true;
    }

    private static ApplicationType getApplicationType(Context context) {
        try {
            PackageManager pm = context.getPackageManager();
            if (pm == null) {
                return ApplicationType.OTHER;
            }
            PackageInfo packageInfo = pm.getPackageInfo(context.getPackageName(), 0);
            if (packageInfo == null) {
                return ApplicationType.OTHER;
            }
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo == null) {
                return ApplicationType.OTHER;
            }
            int flags = applicationInfo.flags;
            if ((flags & 0x80) != 0) {
                return ApplicationType.UPDATED_SYSTEM_APP;
            }
            if ((flags & 0x1) != 0) {
                return ApplicationType.SYSTEM;
            }
            return ApplicationType.OTHER;
        } catch (PackageManager.NameNotFoundException e) {
            return ApplicationType.OTHER;
        }
    }

    public static List<String> getPermissionNotGranted(String[] permissions, Activity activity) {
        List<String> result = new ArrayList<>();
        for (String permission : permissions) {
            if (activity.checkSelfPermission(permission) != 0) {
                result.add(permission);
            }
        }
        return result;
    }

    public static boolean isMarshmallow() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean isSystemApp(Context context) {
        ApplicationType type = getApplicationType(context);
        return !type.equals(ApplicationType.OTHER);
    }
}
