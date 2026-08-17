package com.sonyericsson.android.camera3d.core;

public class MorphoSensorFusion {
    public static final int MAXIMUM_DATA_SIZE = 512;
    public static final int MODE_USE_ACCELEROMETER_AND_MAGNETIC_FIELD = 3;
    public static final int MODE_USE_ALL_SENSORS = 0;
    public static final int MODE_USE_GYROSCOPE = 1;
    public static final int MODE_USE_GYROSCOPE_AND_ROTATION_VECTOR = 4;
    public static final int MODE_USE_GYROSCOPE_WITH_ACCELEROMETER = 2;
    public static final int OFFSET_MODE_DYNAMIC = 1;
    public static final int OFFSET_MODE_STATIC = 0;
    public static final int ROTATE_0 = 0;
    public static final int ROTATE_180 = 2;
    public static final int ROTATE_270 = 3;
    public static final int ROTATE_90 = 1;
    public static final int SENSOR_TYPE_ACCELEROMETER = 1;
    public static final int SENSOR_TYPE_GYROSCOPE = 0;
    public static final int SENSOR_TYPE_MAGNETIC_FIELD = 2;
    public static final int SENSOR_TYPE_ROTATION_VECTOR = 3;
    public static final int STATE_CALC_OFFSET = 0;
    public static final int STATE_PROCESS = 1;
    private long mNative;

    private native int calc(long j);

    private native long createNativeObject();

    private native void deleteNativeObject(long j);

    private native int finish(long j);

    private native int initialize(long j);

    private static native String nativeGetVersion();

    private native int outputRotationAngle(long j, double[] dArr);

    private native int outputRotationMatrix3x3(long j, int i, double[] dArr);

    private native int setAppState(long j, int i);

    private native int setMode(long j, int i);

    private native int setOffset(long j, SensorData sensorData, int i);

    private native int setOffsetMode(long j, int i);

    private native int setRotation(long j, int i);

    private native int setSensorData(long j, Object[] objArr, int i);

    private native int setSensorReliability(long j, int i, int i2);

    static {
        try {
            System.loadLibrary("morpho_sensor_fusion");
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
        }
    }

    public static class SensorData {
        public final long mTimeStamp;
        public final double[] mValues;

        public SensorData(long j, float[] fArr) {
            this.mTimeStamp = j;
            this.mValues = new double[fArr.length];
            for (int i = 0; i < fArr.length; i++) {
                this.mValues[i] = fArr[i];
            }
        }

        public SensorData(long j, double[] dArr) {
            this.mTimeStamp = j;
            this.mValues = (double[]) dArr.clone();
        }
    }

    public static String getVersion() {
        return nativeGetVersion();
    }

    public MorphoSensorFusion() {
        this.mNative = 0L;
        long jCreateNativeObject = createNativeObject();
        if (jCreateNativeObject != 0) {
            this.mNative = jCreateNativeObject;
        } else {
            this.mNative = 0L;
        }
    }

    public int initialize() {
        long j = this.mNative;
        return j != 0 ? initialize(j) : Error.ERROR_STATE;
    }

    public int finish() {
        long j = this.mNative;
        if (j == 0) {
            return Error.ERROR_STATE;
        }
        int iFinish = finish(j);
        deleteNativeObject(this.mNative);
        this.mNative = 0L;
        return iFinish;
    }

    public int setMode(int i) {
        long j = this.mNative;
        return j != 0 ? setMode(j, i) : Error.ERROR_STATE;
    }

    public int setAppState(int i) {
        long j = this.mNative;
        return j != 0 ? setAppState(j, i) : Error.ERROR_STATE;
    }

    public int setRotation(int i) {
        long j = this.mNative;
        return j != 0 ? setRotation(j, i) : Error.ERROR_STATE;
    }

    public int setSensorReliability(int i, int i2) {
        long j = this.mNative;
        return j != 0 ? setSensorReliability(j, i, i2) : Error.ERROR_STATE;
    }

    public int setOffsetMode(int i) {
        long j = this.mNative;
        return j != 0 ? setOffsetMode(j, i) : Error.ERROR_STATE;
    }

    public int setOffset(SensorData sensorData, int i) {
        long j = this.mNative;
        return j != 0 ? setOffset(j, sensorData, i) : Error.ERROR_STATE;
    }

    public int setSensorData(Object[] objArr, int i) {
        long j = this.mNative;
        return j != 0 ? setSensorData(j, objArr, i) : Error.ERROR_STATE;
    }

    public int calc() {
        long j = this.mNative;
        return j != 0 ? calc(j) : Error.ERROR_STATE;
    }

    public int outputRotationMatrix3x3(int i, double[] dArr) {
        long j = this.mNative;
        return j != 0 ? outputRotationMatrix3x3(j, i, dArr) : Error.ERROR_STATE;
    }

    public int outputRotationAngle(double[] dArr) {
        long j = this.mNative;
        return j != 0 ? outputRotationAngle(j, dArr) : Error.ERROR_STATE;
    }
}
