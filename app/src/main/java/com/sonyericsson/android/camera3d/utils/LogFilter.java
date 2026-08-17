package com.sonyericsson.android.camera3d.utils;

import android.util.Log;

public class LogFilter {
    private static final boolean D = true;
    private static final boolean E = true;
    private static final boolean I = true;
    private static final boolean V = true;
    private static final boolean W = true;

    public static void v(String str, String str2) {
        Log.v(str, str2);
    }

    public static void v(String str, String str2, Throwable th) {
        Log.v(str, str2, th);
    }

    public static void d(String str, String str2) {
        Log.d(str, str2);
    }

    public static void d(String str, String str2, Throwable th) {
        Log.d(str, str2, th);
    }

    public static void i(String str, String str2) {
        Log.i(str, str2);
    }

    public static void i(String str, String str2, Throwable th) {
        Log.i(str, str2, th);
    }

    public static void w(String str, String str2) {
        Log.w(str, str2);
    }

    public static void w(String str, String str2, Throwable th) {
        Log.w(str, str2, th);
    }

    public static void e(String str, String str2) {
        Log.e(str, str2);
    }

    public static void e(String str, String str2, Throwable th) {
        Log.e(str, str2, th);
    }
}
