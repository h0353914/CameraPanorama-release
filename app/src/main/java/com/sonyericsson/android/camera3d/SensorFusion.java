package com.sonyericsson.android.camera3d;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

import com.sonyericsson.android.camera3d.core.MorphoSensorFusion;
import com.sonyericsson.android.camera3d.utils.LogFilter;

import java.util.ArrayList;
import java.util.Locale;

class SensorFusion implements SensorEventListener {
    private static final String LOG_TAG = "SensorFusion";
    private static final int MAX_DATA_NUM = 0x200;
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
    public static final int SENSOR_TYPE_NUM = 0x4;
    public static final int SENSOR_TYPE_ROTATION_VECTOR = 0x3;
    public static final int STATE_CALC_OFFSET = 0x0;
    public static final int STATE_PROCESS = 0x1;

    private ArrayList<ArrayList<MorphoSensorFusion.SensorData>> mAllValueList;
    private int mMode;
    private MorphoSensorFusion mMorphoSensorFusion;
    private final ArrayList<MorphoSensorFusion.SensorData> mPartOfAccelerometerList;
    private final ArrayList<MorphoSensorFusion.SensorData> mPartOfGyroscopeList;
    private final ArrayList<MorphoSensorFusion.SensorData> mPartOfMagneticFieldList;
    private final ArrayList<MorphoSensorFusion.SensorData> mPartOfRotationVectorList;
    private final double[][] mSensorMatrix;
    private final boolean mStock;

    public SensorFusion(boolean stock) {
        mPartOfGyroscopeList = new ArrayList<>();
        mPartOfAccelerometerList = new ArrayList<>();
        mPartOfMagneticFieldList = new ArrayList<>();
        mPartOfRotationVectorList = new ArrayList<>();

        mStock = stock;
        if (mStock) {
            mAllValueList = new ArrayList<>();
            for (int i = 0; i < SENSOR_TYPE_NUM; i++) {
                mAllValueList.add(new ArrayList<MorphoSensorFusion.SensorData>());
            }
        }

        mSensorMatrix = new double[SENSOR_TYPE_NUM][];
        for (int i = 0; i < mSensorMatrix.length; i++) {
            mSensorMatrix[i] = createMatrix();
        }

        mMorphoSensorFusion = new MorphoSensorFusion();
        int ret = mMorphoSensorFusion.initialize();
        if (ret != 0) {
            String message = String.format(Locale.US, "MorphoSensorFusion.initialize error ret:0x%08X",
                    Integer.valueOf(ret));
            LogFilter.e(LOG_TAG, message);
        }
    }

    private void calcRotationMatrix(double[] out, double a, double b, double c) {
        double[] m0 = createMatrix();
        double[] m1 = createMatrix();
        double[] m2 = createMatrix();
        double[] m3 = createMatrix();

        m0[4] = Math.cos(b);
        m0[5] = -Math.sin(b);
        m0[7] = Math.sin(b);
        m0[8] = Math.cos(b);

        m1[0] = Math.cos(a);
        m1[2] = Math.sin(a);
        m1[6] = -Math.sin(a);
        m1[8] = Math.cos(a);

        m2[0] = Math.cos(c);
        m2[1] = -Math.sin(c);
        m2[3] = Math.sin(c);
        m2[4] = Math.cos(c);

        multMatrix(m3, m0, m1);
        multMatrix(out, m3, m2);
    }

    private void clearArrayList(ArrayList<MorphoSensorFusion.SensorData> list) {
        if (list != null && list.size() > 0) {
            list.clear();
        }
    }

    private double[] createMatrix() {
        return new double[]{
                1.0, 0.0, 0.0,
                0.0, 1.0, 0.0,
                0.0, 0.0, 1.0
        };
    }

    private Object[] getSensorDataArray(ArrayList<MorphoSensorFusion.SensorData> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }

        int size = list.size();
        if (size > MAX_DATA_NUM) {
            size = MAX_DATA_NUM;
        }

        Object[] result = new Object[size];
        for (int i = 0; i < size; i++) {
            MorphoSensorFusion.SensorData src = list.get(i);
            result[i] = new MorphoSensorFusion.SensorData(src.mTimeStamp, src.mValues);
        }

        for (int i = 0; i < size; i++) {
            list.remove(0);
        }

        return result;
    }

    private boolean isExistValue(ArrayList<MorphoSensorFusion.SensorData> list) {
        return list.size() >= 1;
    }

    private boolean isUpdateSensorMatrix() {
        switch (mMode) {
            case MODE_USE_ALL_SENSORS:
                return isExistValue(mPartOfGyroscopeList) && isExistValue(mPartOfAccelerometerList)
                        && isExistValue(mPartOfMagneticFieldList);
            case MODE_USE_GYROSCOPE:
                return isExistValue(mPartOfGyroscopeList);
            case MODE_USE_GYROSCOPE_WITH_ACCELEROMETER:
                return isExistValue(mPartOfGyroscopeList) && isExistValue(mPartOfAccelerometerList);
            case MODE_USE_ACCELEROMETER_AND_MAGNETIC_FIELD:
                return isExistValue(mPartOfAccelerometerList) && isExistValue(mPartOfMagneticFieldList);
            case MODE_USE_GYROSCOPE_AND_ROTATION_VECTOR:
                return isExistValue(mPartOfGyroscopeList) && isExistValue(mPartOfRotationVectorList);
            default:
                return false;
        }
    }

    private void multMatrix(double[] out, double[] a, double[] b) {
        double[] result = new double[9];
        for (int row = 0; row < 3; row++) {
            for (int col = 0; col < 3; col++) {
                double sum = 0.0;
                for (int k = 0; k < 3; k++) {
                    sum += a[row * 3 + k] * b[k * 3 + col];
                }
                result[row * 3 + col] = sum;
            }
        }
        System.arraycopy(result, 0, out, 0, result.length);
    }

    private int setInputSensorData(Object[] data, int type) {
        if (data == null) {
            return -0x7fffffff;
        }
        return mMorphoSensorFusion.setSensorData(data, type);
    }

    private int updateSensorMatrix() {
        if (mStock) {
            mAllValueList.get(0).addAll(mPartOfGyroscopeList);
            mAllValueList.get(1).addAll(mPartOfAccelerometerList);
            mAllValueList.get(2).addAll(mPartOfMagneticFieldList);
            mAllValueList.get(3).addAll(mPartOfRotationVectorList);
        }

        int ret = 0;
        while (true) {
            if (mPartOfGyroscopeList.size() > 0) {
                Object[] data = getSensorDataArray(mPartOfGyroscopeList);
                ret = setInputSensorData(data, SENSOR_TYPE_GYROSCOPE);
                if (ret != 0) {
                    String message = String.format(Locale.US,
                            "SensorFusion.setSensorData(SENSOR_TYPE_GYROSCOPE) error ret:0x%08X",
                            Integer.valueOf(ret));
                    LogFilter.e(LOG_TAG, message);
                }
            }

            if (mPartOfAccelerometerList.size() > 0) {
                Object[] data = getSensorDataArray(mPartOfAccelerometerList);
                int r = setInputSensorData(data, SENSOR_TYPE_ACCELEROMETER);
                if (r != 0) {
                    String message = String.format(Locale.US,
                            "SensorFusion.setSensorData(SENSOR_TYPE_ACCELEROMETER) error ret:0x%08X",
                            Integer.valueOf(r));
                    LogFilter.e(LOG_TAG, message);
                }
                ret = r;
            }

            if (mPartOfMagneticFieldList.size() > 0) {
                Object[] data = getSensorDataArray(mPartOfMagneticFieldList);
                int r = setInputSensorData(data, SENSOR_TYPE_MAGNETIC_FIELD);
                if (r != 0) {
                    String message = String.format(Locale.US,
                            "SensorFusion.setSensorData(SENSOR_TYPE_MAGNETIC_FIELD) error ret:0x%08X",
                            Integer.valueOf(r));
                    LogFilter.e(LOG_TAG, message);
                }
                ret = r;
            }

            if (mPartOfRotationVectorList.size() > 0) {
                Object[] data = getSensorDataArray(mPartOfRotationVectorList);
                int r = setInputSensorData(data, SENSOR_TYPE_ROTATION_VECTOR);
                if (r != 0) {
                    String message = String.format(Locale.US,
                            "SensorFusion.setSensorData(SENSOR_TYPE_ROTATION_VECTOR) error ret:0x%08X",
                            Integer.valueOf(r));
                    LogFilter.e(LOG_TAG, message);
                }
                ret = r;
            }

            ret |= mMorphoSensorFusion.calc();

            boolean empty = mPartOfGyroscopeList.size() == 0 && mPartOfAccelerometerList.size() == 0
                    && mPartOfMagneticFieldList.size() == 0 && mPartOfRotationVectorList.size() == 0;
            if (empty) {
                break;
            }
        }

        clearArrayList(mPartOfGyroscopeList);
        clearArrayList(mPartOfAccelerometerList);
        clearArrayList(mPartOfMagneticFieldList);
        clearArrayList(mPartOfRotationVectorList);

        ret |= mMorphoSensorFusion.outputRotationMatrix3x3(SENSOR_TYPE_ACCELEROMETER, mSensorMatrix[SENSOR_TYPE_ACCELEROMETER]);
        ret |= mMorphoSensorFusion.outputRotationMatrix3x3(SENSOR_TYPE_GYROSCOPE, mSensorMatrix[SENSOR_TYPE_GYROSCOPE]);
        ret |= mMorphoSensorFusion.outputRotationMatrix3x3(SENSOR_TYPE_MAGNETIC_FIELD, mSensorMatrix[SENSOR_TYPE_MAGNETIC_FIELD]);

        return ret;
    }

    public synchronized void clearStockData() {
        if (mStock) {
            for (int i = 0; i < mAllValueList.size(); i++) {
                mAllValueList.get(i).clear();
            }
        }
    }

    public synchronized int getSensorMatrix(double[] gyroscope, double[] rotationVector, double[] accelerometer, int[] counts) {
        int ret = 0;
        if (isUpdateSensorMatrix()) {
            ret |= updateSensorMatrix();
        }

        if (gyroscope != null) {
            System.arraycopy(mSensorMatrix[SENSOR_TYPE_GYROSCOPE], 0, gyroscope, 0, mSensorMatrix[SENSOR_TYPE_GYROSCOPE].length);
        }
        if (rotationVector != null) {
            System.arraycopy(mSensorMatrix[SENSOR_TYPE_ROTATION_VECTOR], 0, rotationVector, 0, mSensorMatrix[SENSOR_TYPE_ROTATION_VECTOR].length);
        }
        if (accelerometer != null) {
            System.arraycopy(mSensorMatrix[SENSOR_TYPE_ACCELEROMETER], 0, accelerometer, 0, mSensorMatrix[SENSOR_TYPE_ACCELEROMETER].length);
        }

        if (mStock && counts != null && counts.length == mAllValueList.size()) {
            for (int i = 0; i < mAllValueList.size(); i++) {
                counts[i] = mAllValueList.get(i).size() - 1;
            }
        }

        return ret;
    }

    public ArrayList<ArrayList<MorphoSensorFusion.SensorData>> getStockData() {
        if (mStock) {
            synchronized (this) {
                return mAllValueList;
            }
        }
        return null;
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }

    @Override
    public synchronized void onSensorChanged(SensorEvent event) {
        MorphoSensorFusion.SensorData data = new MorphoSensorFusion.SensorData(event.timestamp, event.values);

        int type = event.sensor.getType();
        if (type == Sensor.TYPE_ROTATION_VECTOR) {
            mPartOfRotationVectorList.add(data);
        } else if (type == Sensor.TYPE_GYROSCOPE) {
            mPartOfGyroscopeList.add(data);
        } else if (type == Sensor.TYPE_ACCELEROMETER) {
            mPartOfAccelerometerList.add(data);
        } else if (type == Sensor.TYPE_MAGNETIC_FIELD) {
            mPartOfMagneticFieldList.add(data);
        }

        while (mPartOfGyroscopeList.size() > MAX_DATA_NUM) {
            mPartOfGyroscopeList.remove(0);
        }
        while (mPartOfAccelerometerList.size() > MAX_DATA_NUM) {
            mPartOfAccelerometerList.remove(0);
        }
        while (mPartOfMagneticFieldList.size() > MAX_DATA_NUM) {
            mPartOfMagneticFieldList.remove(0);
        }
        while (mPartOfRotationVectorList.size() > MAX_DATA_NUM) {
            mPartOfRotationVectorList.remove(0);
        }
    }

    public synchronized void release() {
        int ret = mMorphoSensorFusion.finish();
        if (ret != 0) {
            String message = String.format(Locale.US, "MorphoSensorFusion.finish error ret:0x%08X",
                    Integer.valueOf(ret));
            LogFilter.e(LOG_TAG, message);
        }
        mMorphoSensorFusion = null;
    }

    public synchronized void resetOffsetValue() {
        mMorphoSensorFusion.setAppState(STATE_PROCESS);
        mMorphoSensorFusion.calc();
    }

    public synchronized int setAppState(int state) {
        return mMorphoSensorFusion.setAppState(state) | 0;
    }

    public void setInitialOrientation(int degrees) {
        double radians = Math.toRadians((double) degrees);
        calcRotationMatrix(mSensorMatrix[0], 0.0, 0.0, radians);
        calcRotationMatrix(mSensorMatrix[3], 0.0, 0.0, radians);
        calcRotationMatrix(mSensorMatrix[1], 0.0, 0.0, radians);
    }

    public synchronized int setMode(int mode) {
        mMode = mode;
        return mMorphoSensorFusion.setMode(mode) | 0;
    }

    public synchronized int setOffset(MorphoSensorFusion.SensorData data, int type) {
        if (mMode == MODE_USE_GYROSCOPE_AND_ROTATION_VECTOR) {
            return mMorphoSensorFusion.setOffset(data, type) | 0;
        }
        return -0x7ffffffe;
    }

    public synchronized int setOffsetMode(int mode) {
        return mMorphoSensorFusion.setOffsetMode(mode) | 0;
    }

    public synchronized int setRotation(int rotation) {
        return mMorphoSensorFusion.setRotation(rotation) | 0;
    }
}
