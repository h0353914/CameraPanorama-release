package com.sonyericsson.android.camera3d;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Insets;
import android.graphics.Rect;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class Util {
    private static final String[] PERMISSIONS_LOCATION = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"};

    public enum ApplicationType {
        SYSTEM,
        UPDATED_SYSTEM_APP,
        OTHER
    }

    public static boolean isMarshmallow() {
        return true;
    }

    public static boolean checkPermissionGrant(String[] strArr, Activity activity) {
        if (strArr == null || strArr.length < 1) {
            return false;
        }
        return getPermissionNotGranted(strArr, activity).isEmpty();
    }

    public static boolean checkPermissionsResult(int[] iArr) {
        for (int i : iArr) {
            if (i != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean checkLocationPermissionsResult(int[] iArr) {
        for (int i : iArr) {
            if (i == 0) {
                return true;
            }
        }
        return false;
    }

    public static List<String> getPermissionNotGranted(String[] strArr, Activity activity) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (String str : strArr) {
            if (activity.checkSelfPermission(str) != 0) {
                arrayList.add(str);
            } else {
                arrayList2.add(str);
            }
        }
        List<String> listFindLocationPermissions = findLocationPermissions(arrayList2);
        List<String> listFindLocationPermissions2 = findLocationPermissions(arrayList);
        if (!listFindLocationPermissions.isEmpty()) {
            arrayList.removeAll(listFindLocationPermissions2);
        }
        return arrayList;
    }

    public static boolean determineDialogType(List<String> list, Activity activity) {
        Iterator<String> it = list.iterator();
        return !it.hasNext() || activity.shouldShowRequestPermissionRationale(it.next());
    }

    public static boolean isSystemApp(Context context) {
        return !getApplicationType(context).equals(ApplicationType.OTHER);
    }

    private static ApplicationType getApplicationType(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
                if (packageInfo != null && packageInfo.applicationInfo != null) {
                    int i = packageInfo.applicationInfo.flags;
                    if ((i & 128) != 0) {
                        return ApplicationType.UPDATED_SYSTEM_APP;
                    }
                    if ((i & 1) != 0) {
                        return ApplicationType.SYSTEM;
                    }
                    return ApplicationType.OTHER;
                }
                return ApplicationType.OTHER;
            }
            return ApplicationType.OTHER;
        } catch (PackageManager.NameNotFoundException unused) {
            return ApplicationType.OTHER;
        }
    }

    public static Rect getDisplayRectSize(Context context) {
        WindowMetrics currentWindowMetrics = ((WindowManager) context.getSystemService("window")).getCurrentWindowMetrics();
        Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.navigationBars() | WindowInsets.Type.displayCutout());
        int i = insetsIgnoringVisibility.right + insetsIgnoringVisibility.left;
        int i2 = insetsIgnoringVisibility.top + insetsIgnoringVisibility.bottom;
        Rect bounds = currentWindowMetrics.getBounds();
        return new Rect(0, 0, bounds.width() - i, bounds.height() - i2);
    }

    private static List<String> findLocationPermissions(List<String> list) {
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        for (String str : list) {
            if (Arrays.asList(PERMISSIONS_LOCATION).contains(str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }
}
