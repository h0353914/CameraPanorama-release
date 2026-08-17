package com.sonyericsson.android.camera3d;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.sonyericsson.android.camera3d.core.Error;
import com.sonyericsson.android.camera3d.core.MorphoSensorFusion;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import java.util.ArrayList;
import java.util.Locale;

class SensorFusion implements SensorEventListener {
    private static final String LOG_TAG = "SensorFusion";
    private static final int MAX_DATA_NUM = 512;
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
    public static final int SENSOR_TYPE_NUM = 4;
    public static final int SENSOR_TYPE_ROTATION_VECTOR = 3;
    public static final int STATE_CALC_OFFSET = 0;
    public static final int STATE_PROCESS = 1;
    private ArrayList<ArrayList<MorphoSensorFusion.SensorData>> mAllValueList;
    private int mMode;
    private MorphoSensorFusion mMorphoSensorFusion;
    private final double[][] mSensorMatrix;
    private final boolean mStock;
    private final ArrayList<MorphoSensorFusion.SensorData> mPartOfGyroscopeList = new ArrayList<>();
    private final ArrayList<MorphoSensorFusion.SensorData> mPartOfAccelerometerList = new ArrayList<>();
    private final ArrayList<MorphoSensorFusion.SensorData> mPartOfMagneticFieldList = new ArrayList<>();
    private final ArrayList<MorphoSensorFusion.SensorData> mPartOfRotationVectorList = new ArrayList<>();

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public SensorFusion(boolean z) {
        this.mStock = z;
        int i = 0;
        if (z) {
            this.mAllValueList = new ArrayList<>();
            for (int i2 = 0; i2 < 4; i2++) {
                this.mAllValueList.add(new ArrayList<>());
            }
        }
        this.mSensorMatrix = new double[4][];
        while (true) {
            double[][] dArr = this.mSensorMatrix;
            if (i >= dArr.length) {
                break;
            }
            dArr[i] = createMatrix();
            i++;
        }
        MorphoSensorFusion morphoSensorFusion = new MorphoSensorFusion();
        this.mMorphoSensorFusion = morphoSensorFusion;
        int iInitialize = morphoSensorFusion.initialize();
        if (iInitialize != 0) {
            LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoSensorFusion.initialize error ret:0x%08X", Integer.valueOf(iInitialize)));
        }
    }

    public void release() {
        synchronized (this) {
            int iFinish = this.mMorphoSensorFusion.finish();
            if (iFinish != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoSensorFusion.finish error ret:0x%08X", Integer.valueOf(iFinish)));
            }
            this.mMorphoSensorFusion = null;
        }
    }

    public int setMode(int i) {
        int mode;
        synchronized (this) {
            this.mMode = i;
            mode = this.mMorphoSensorFusion.setMode(i);
        }
        return mode;
    }

    public int setOffsetMode(int i) {
        int offsetMode;
        synchronized (this) {
            offsetMode = this.mMorphoSensorFusion.setOffsetMode(i);
        }
        return offsetMode;
    }

    public int setOffset(MorphoSensorFusion.SensorData sensorData, int i) {
        int offset;
        synchronized (this) {
            offset = this.mMode == 4 ? this.mMorphoSensorFusion.setOffset(sensorData, i) : Error.ERROR_STATE;
        }
        return offset;
    }

    public int setAppState(int i) {
        int appState;
        synchronized (this) {
            appState = this.mMorphoSensorFusion.setAppState(i);
        }
        return appState;
    }

    public int setRotation(int i) {
        int rotation;
        synchronized (this) {
            rotation = this.mMorphoSensorFusion.setRotation(i);
        }
        return rotation;
    }

    public void setInitialOrientation(int i) {
        double radians = Math.toRadians(i);
        calcRotationMatrix(this.mSensorMatrix[0], 0.0d, 0.0d, radians);
        calcRotationMatrix(this.mSensorMatrix[3], 0.0d, 0.0d, radians);
        calcRotationMatrix(this.mSensorMatrix[1], 0.0d, 0.0d, radians);
    }

    public void resetOffsetValue() {
        synchronized (this) {
            this.mMorphoSensorFusion.setAppState(1);
            this.mMorphoSensorFusion.calc();
        }
    }

    public int getSensorMatrix(double[] dArr, double[] dArr2, double[] dArr3, int[] iArr) {
        int iUpdateSensorMatrix;
        synchronized (this) {
            iUpdateSensorMatrix = isUpdateSensorMatrix() ? updateSensorMatrix() : 0;
            if (dArr != null) {
                double[] dArr4 = this.mSensorMatrix[0];
                System.arraycopy(dArr4, 0, dArr, 0, dArr4.length);
            }
            if (dArr2 != null) {
                double[] dArr5 = this.mSensorMatrix[3];
                System.arraycopy(dArr5, 0, dArr2, 0, dArr5.length);
            }
            if (dArr3 != null) {
                double[] dArr6 = this.mSensorMatrix[1];
                System.arraycopy(dArr6, 0, dArr3, 0, dArr6.length);
            }
            if (this.mStock && iArr != null && iArr.length == this.mAllValueList.size()) {
                for (int i = 0; i < this.mAllValueList.size(); i++) {
                    iArr[i] = this.mAllValueList.get(i).size() - 1;
                }
            }
        }
        return iUpdateSensorMatrix;
    }

    public ArrayList<ArrayList<MorphoSensorFusion.SensorData>> getStockData() {
        ArrayList<ArrayList<MorphoSensorFusion.SensorData>> arrayList;
        if (!this.mStock) {
            return null;
        }
        synchronized (this) {
            arrayList = this.mAllValueList;
        }
        return arrayList;
    }

    public void clearStockData() {
        synchronized (this) {
            if (this.mStock) {
                for (int i = 0; i < this.mAllValueList.size(); i++) {
                    this.mAllValueList.get(i).clear();
                }
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        synchronized (this) {
            MorphoSensorFusion.SensorData sensorData = new MorphoSensorFusion.SensorData(sensorEvent.timestamp, sensorEvent.values);
            int type = sensorEvent.sensor.getType();
            if (type == 1) {
                this.mPartOfAccelerometerList.add(sensorData);
            } else if (type == 2) {
                this.mPartOfMagneticFieldList.add(sensorData);
            } else if (type == 4) {
                this.mPartOfGyroscopeList.add(sensorData);
            } else if (type == 11) {
                this.mPartOfRotationVectorList.add(sensorData);
            }
            while (this.mPartOfGyroscopeList.size() > 512) {
                this.mPartOfGyroscopeList.remove(0);
            }
            while (this.mPartOfAccelerometerList.size() > 512) {
                this.mPartOfAccelerometerList.remove(0);
            }
            while (this.mPartOfMagneticFieldList.size() > 512) {
                this.mPartOfMagneticFieldList.remove(0);
            }
            while (this.mPartOfRotationVectorList.size() > 512) {
                this.mPartOfRotationVectorList.remove(0);
            }
        }
    }

    private boolean isUpdateSensorMatrix() {
        boolean zIsExistValue;
        boolean zIsExistValue2;
        int i = this.mMode;
        if (i == 0) {
            zIsExistValue = isExistValue(this.mPartOfGyroscopeList) & isExistValue(this.mPartOfAccelerometerList);
            zIsExistValue2 = isExistValue(this.mPartOfMagneticFieldList);
        } else {
            if (i == 1) {
                return isExistValue(this.mPartOfGyroscopeList);
            }
            if (i == 2) {
                zIsExistValue = isExistValue(this.mPartOfGyroscopeList);
                zIsExistValue2 = isExistValue(this.mPartOfAccelerometerList);
            } else if (i == 3) {
                zIsExistValue = isExistValue(this.mPartOfAccelerometerList);
                zIsExistValue2 = isExistValue(this.mPartOfMagneticFieldList);
            } else {
                if (i != 4) {
                    return false;
                }
                zIsExistValue = isExistValue(this.mPartOfGyroscopeList);
                zIsExistValue2 = isExistValue(this.mPartOfRotationVectorList);
            }
        }
        return zIsExistValue2 & zIsExistValue;
    }

    private boolean isExistValue(ArrayList<MorphoSensorFusion.SensorData> arrayList) {
        return arrayList.size() >= 1;
    }

    private int updateSensorMatrix() {
        if (this.mStock) {
            this.mAllValueList.get(0).addAll(this.mPartOfGyroscopeList);
            this.mAllValueList.get(1).addAll(this.mPartOfAccelerometerList);
            this.mAllValueList.get(2).addAll(this.mPartOfMagneticFieldList);
            this.mAllValueList.get(3).addAll(this.mPartOfRotationVectorList);
        }
        int iCalc = 0;
        while (true) {
            if (this.mPartOfGyroscopeList.size() > 0 && (iCalc = setInputSensorData(getSensorDataArray(this.mPartOfGyroscopeList), 0)) != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.setSensorData(SENSOR_TYPE_GYROSCOPE) error ret:0x%08X", Integer.valueOf(iCalc)));
            }
            if (this.mPartOfAccelerometerList.size() > 0 && (iCalc = setInputSensorData(getSensorDataArray(this.mPartOfAccelerometerList), 1)) != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.setSensorData(SENSOR_TYPE_ACCELEROMETER) error ret:0x%08X", Integer.valueOf(iCalc)));
            }
            if (this.mPartOfMagneticFieldList.size() > 0 && (iCalc = setInputSensorData(getSensorDataArray(this.mPartOfMagneticFieldList), 2)) != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.setSensorData(SENSOR_TYPE_MAGNETIC_FIELD) error ret:0x%08X", Integer.valueOf(iCalc)));
            }
            if (this.mPartOfRotationVectorList.size() > 0 && (iCalc = setInputSensorData(getSensorDataArray(this.mPartOfRotationVectorList), 3)) != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.setSensorData(SENSOR_TYPE_ROTATION_VECTOR) error ret:0x%08X", Integer.valueOf(iCalc)));
            }
            iCalc |= this.mMorphoSensorFusion.calc();
            if (this.mPartOfGyroscopeList.size() == 0 && this.mPartOfAccelerometerList.size() == 0 && this.mPartOfMagneticFieldList.size() == 0 && this.mPartOfRotationVectorList.size() == 0) {
                clearArrayList(this.mPartOfGyroscopeList);
                clearArrayList(this.mPartOfAccelerometerList);
                clearArrayList(this.mPartOfMagneticFieldList);
                clearArrayList(this.mPartOfRotationVectorList);
                return this.mMorphoSensorFusion.outputRotationMatrix3x3(3, this.mSensorMatrix[3]) | iCalc | this.mMorphoSensorFusion.outputRotationMatrix3x3(1, this.mSensorMatrix[1]) | this.mMorphoSensorFusion.outputRotationMatrix3x3(0, this.mSensorMatrix[0]);
            }
        }
    }

    private void clearArrayList(ArrayList<MorphoSensorFusion.SensorData> arrayList) {
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        arrayList.clear();
    }

    private Object[] getSensorDataArray(ArrayList<MorphoSensorFusion.SensorData> arrayList) {
        if (arrayList == null || arrayList.size() <= 0) {
            return null;
        }
        int size = arrayList.size();
        if (size > 512) {
            size = 512;
        }
        Object[] objArr = new Object[size];
        for (int i = 0; i < size; i++) {
            objArr[i] = new MorphoSensorFusion.SensorData(arrayList.get(i).mTimeStamp, arrayList.get(i).mValues);
        }
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.remove(0);
        }
        return objArr;
    }

    private int setInputSensorData(Object[] objArr, int i) {
        return objArr == null ? Error.ERROR_PARAM : this.mMorphoSensorFusion.setSensorData(objArr, i);
    }

    private void calcRotationMatrix(double[] dArr, double d, double d2, double d3) {
        double[] dArrCreateMatrix = createMatrix();
        double[] dArrCreateMatrix2 = createMatrix();
        double[] dArrCreateMatrix3 = createMatrix();
        double[] dArrCreateMatrix4 = createMatrix();
        dArrCreateMatrix[4] = Math.cos(d2);
        dArrCreateMatrix[5] = -Math.sin(d2);
        dArrCreateMatrix[7] = Math.sin(d2);
        dArrCreateMatrix[8] = Math.cos(d2);
        dArrCreateMatrix2[0] = Math.cos(d);
        dArrCreateMatrix2[2] = Math.sin(d);
        dArrCreateMatrix2[6] = -Math.sin(d);
        dArrCreateMatrix2[8] = Math.cos(d);
        dArrCreateMatrix3[0] = Math.cos(d3);
        dArrCreateMatrix3[1] = -Math.sin(d3);
        dArrCreateMatrix3[3] = Math.sin(d3);
        dArrCreateMatrix3[4] = Math.cos(d3);
        multMatrix(dArrCreateMatrix4, dArrCreateMatrix, dArrCreateMatrix2);
        multMatrix(dArr, dArrCreateMatrix4, dArrCreateMatrix3);
    }

    private double[] createMatrix() {
        return new double[]{1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d};
    }

    private void multMatrix(double[] dArr, double[] dArr2, double[] dArr3) {
        double[] dArr4 = new double[9];
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                double d = 0.0d;
                for (int i3 = 0; i3 < 3; i3++) {
                    d += dArr2[(i * 3) + i3] * dArr3[(i3 * 3) + i2];
                }
                dArr4[(i * 3) + i2] = d;
            }
        }
        System.arraycopy(dArr4, 0, dArr, 0, 9);
    }
}
