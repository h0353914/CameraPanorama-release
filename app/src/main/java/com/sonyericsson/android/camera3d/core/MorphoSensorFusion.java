package com.sonyericsson.android.camera3d.core;

public class MorphoSensorFusion {
    public static final int MAXIMUM_DATA_SIZE = 0x200;
    public static final int MODE_USE_ACCELEROMETER_AND_MAGNETIC_FIELD = 0x3;
    public static final int MODE_USE_ALL_SENSORS = 0x0;
    public static final int MODE_USE_GYROSCOPE = 0x1;
    public static final int MODE_USE_GYROSCOPE_AND_ROTATION_VECTOR = 0x4;
    public static final int MODE_USE_GYROSCOPE_WITH_ACCELEROMETER = 0x2;
    public static final int OFFSET_MODE_DYNAMIC = 0x1;
    public static final int OFFSET_MODE_STATIC = 0x0;
    public static final int ROTATE_0 = 0x0;
    public static final int ROTATE_180 = 0x2;
    public static final int ROTATE_270 = 0x3;
    public static final int ROTATE_90 = 0x1;
    public static final int SENSOR_TYPE_ACCELEROMETER = 0x1;
    public static final int SENSOR_TYPE_GYROSCOPE = 0x0;
    public static final int SENSOR_TYPE_MAGNETIC_FIELD = 0x2;
    public static final int SENSOR_TYPE_ROTATION_VECTOR = 0x3;
    public static final int STATE_CALC_OFFSET = 0x0;
    public static final int STATE_PROCESS = 0x1;

    private long mNative;

    static {
        try {
            System.loadLibrary("morpho_sensor_fusion");
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
        }
    }

    public MorphoSensorFusion() {
        mNative = 0L;
        long nativeObject = createNativeObject();
        if (nativeObject != 0L) {
            mNative = nativeObject;
        } else {
            mNative = 0L;
        }
    }

    private native int calc(long nativeObject);

    private native long createNativeObject();

    private native void deleteNativeObject(long nativeObject);

    private native int finish(long nativeObject);

    public static String getVersion() {
        return nativeGetVersion();
    }

    private native int initialize(long nativeObject);

    private static native String nativeGetVersion();

    private native int outputRotationAngle(long nativeObject, double[] values);

    private native int outputRotationMatrix3x3(long nativeObject, int type, double[] values);

    private native int setAppState(long nativeObject, int state);

    private native int setMode(long nativeObject, int mode);

    private native int setOffset(long nativeObject, SensorData data, int type);

    private native int setOffsetMode(long nativeObject, int mode);

    private native int setRotation(long nativeObject, int rotate);

    private native int setSensorData(long nativeObject, Object[] data, int size);

    private native int setSensorReliability(long nativeObject, int type, int reliability);

    public int calc() {
        if (mNative != 0L) {
            return calc(mNative);
        }
        return -0x7ffffffe;
    }

    public int finish() {
        if (mNative != 0L) {
            int ret = finish(mNative);
            deleteNativeObject(mNative);
            mNative = 0L;
            return ret;
        }
        return -0x7ffffffe;
    }

    public int initialize() {
        if (mNative != 0L) {
            return initialize(mNative);
        }
        return -0x7ffffffe;
    }

    public int outputRotationAngle(double[] values) {
        if (mNative != 0L) {
            return outputRotationAngle(mNative, values);
        }
        return -0x7ffffffe;
    }

    public int outputRotationMatrix3x3(int type, double[] values) {
        if (mNative != 0L) {
            return outputRotationMatrix3x3(mNative, type, values);
        }
        return -0x7ffffffe;
    }

    public int setAppState(int state) {
        if (mNative != 0L) {
            return setAppState(mNative, state);
        }
        return -0x7ffffffe;
    }

    public int setMode(int mode) {
        if (mNative != 0L) {
            return setMode(mNative, mode);
        }
        return -0x7ffffffe;
    }

    public int setOffset(SensorData data, int type) {
        if (mNative != 0L) {
            return setOffset(mNative, data, type);
        }
        return -0x7ffffffe;
    }

    public int setOffsetMode(int mode) {
        if (mNative != 0L) {
            return setOffsetMode(mNative, mode);
        }
        return -0x7ffffffe;
    }

    public int setRotation(int rotate) {
        if (mNative != 0L) {
            return setRotation(mNative, rotate);
        }
        return -0x7ffffffe;
    }

    public int setSensorData(Object[] data, int size) {
        if (mNative != 0L) {
            return setSensorData(mNative, data, size);
        }
        return -0x7ffffffe;
    }

    public int setSensorReliability(int type, int reliability) {
        if (mNative != 0L) {
            return setSensorReliability(mNative, type, reliability);
        }
        return -0x7ffffffe;
    }

    public static class SensorData {
        public final long mTimeStamp;
        public final double[] mValues;

        public SensorData(long timeStamp, double[] values) {
            mTimeStamp = timeStamp;
            mValues = values.clone();
        }

        public SensorData(long timeStamp, float[] values) {
            mTimeStamp = timeStamp;
            mValues = new double[values.length];
            for (int i = 0; i < values.length; i++) {
                mValues[i] = values[i];
            }
        }
    }
}
