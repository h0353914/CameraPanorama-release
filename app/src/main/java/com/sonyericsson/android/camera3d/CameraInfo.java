package com.sonyericsson.android.camera3d;

import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import android.util.SizeF;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import java.util.ArrayList;

public class CameraInfo {
    private static final String LOG_TAG = "Camera2App";
    public static final int OPEN_STATE_CLOSE = 0;
    public static final int OPEN_STATE_OPENED = 2;
    public static final int OPEN_STATE_OPEN_REQUEST = 1;
    private Rect mActiveArray;
    private String mCameraId;
    private CameraCaptureSession mCaptureSession;
    private Size mCaptureSize;
    private float mFocalLength;
    private int mHardwareLevel;
    private boolean mIsEnabledZsl;
    private CameraDevice mOpenCameraDevice;
    private int mOpenState;
    private int mOrientation;
    private SizeF mPhysicalSize;
    private Size mPixelArraySize;
    private Size mPreviewSize;
    public static final Range<Double> PREVIEW_GAIN_RANGE = new Range<>(Double.valueOf(0.5d), Double.valueOf(2.0d));
    public static final Range<Double> CAPTURE_GAIN_RANGE = new Range<>(Double.valueOf(0.98d), Double.valueOf(1.02d));
    private final ArrayList<Range<Integer>> mTargetFpsRanges = new ArrayList<>();
    private Range<Long> mExposureTimeRange = new Range<>(1L, 1L);
    private Long mMaxFrameDuration = 1L;
    private Range<Integer> mSensitivityRange = new Range<>(0, 0);
    private Integer mMaxAnalogSensitivity = 1;
    private Rational mAeCompensationStep = new Rational(1, 1);
    private Range<Integer> mAeCompensationRange = new Range<>(0, 0);

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setOrientation(int i) {
        this.mOrientation = i;
    }

    public int getHardwareLevel() {
        return this.mHardwareLevel;
    }

    public void setHardwareLevel(int i) {
        this.mHardwareLevel = i;
    }

    public String getCameraId() {
        return this.mCameraId;
    }

    public void setCameraId(String str) {
        this.mCameraId = str;
        LogFilter.i(LOG_TAG, "CameraId='" + this.mCameraId + "'");
    }

    public CameraDevice getOpenCameraDevice() throws CameraAccessException {
        CameraDevice cameraDevice = this.mOpenCameraDevice;
        if (cameraDevice != null) {
            return cameraDevice;
        }
        throw new CameraAccessException(2);
    }

    public void setOpenCameraDevice(CameraDevice cameraDevice) {
        this.mOpenCameraDevice = cameraDevice;
        if (cameraDevice != null) {
            setOpenState(2);
        }
    }

    public int getPreviewWidth() {
        return this.mPreviewSize.getWidth();
    }

    public void setPreviewWidth(int i) {
        setPreviewSize(i, this.mPreviewSize.getHeight());
    }

    public int getPreviewHeight() {
        return this.mPreviewSize.getHeight();
    }

    public void setPreviewHeight(int i) {
        setPreviewSize(this.mPreviewSize.getWidth(), i);
    }

    public void setPreviewSize(int i, int i2) {
        this.mPreviewSize = new Size(i, i2);
    }

    public int getCaptureWidth() {
        return this.mCaptureSize.getWidth();
    }

    public void setCaptureWidth(int i) {
        setCaptureSize(i, this.mCaptureSize.getHeight());
    }

    public int getCaptureHeight() {
        return this.mCaptureSize.getHeight();
    }

    public void setCaptureHeight(int i) {
        setCaptureSize(this.mCaptureSize.getWidth(), i);
    }

    public void setCaptureSize(int i, int i2) {
        this.mCaptureSize = new Size(i, i2);
    }

    public CameraCaptureSession getCaptureSession() throws CameraAccessException {
        CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
        if (cameraCaptureSession != null) {
            return cameraCaptureSession;
        }
        throw new CameraAccessException(2);
    }

    public void setCaptureSession(CameraCaptureSession cameraCaptureSession) {
        this.mCaptureSession = cameraCaptureSession;
    }

    public ArrayList<Range<Integer>> getTargetFpsRanges() {
        return this.mTargetFpsRanges;
    }

    public void setTargetFpsRanges(Range<Integer>[] rangeArr) {
        this.mTargetFpsRanges.clear();
        for (Range<Integer> range : rangeArr) {
            this.mTargetFpsRanges.add(new Range<>((Integer) range.getLower(), (Integer) range.getUpper()));
        }
    }

    public CameraInfo() {
        clearCameraId();
        this.mHardwareLevel = 2;
        this.mOpenCameraDevice = null;
        this.mCaptureSession = null;
        setPreviewSize(0, 0);
        setCaptureSize(0, 0);
        this.mFocalLength = 0.0f;
        setPhysicalSize(0.0f, 0.0f);
        setPixelArraySize(0, 0);
        setActiveArraySize(0, 0, 0, 0);
        this.mOpenState = 0;
        this.mIsEnabledZsl = false;
    }

    public boolean isCameraEnabled() {
        return !this.mCameraId.isEmpty();
    }

    private void clearCameraId() {
        this.mCameraId = "";
    }

    public void setFocalLength(float f) {
        this.mFocalLength = f;
    }

    public float getFocalLength() {
        return this.mFocalLength;
    }

    public void setPhysicalSize(float f, float f2) {
        this.mPhysicalSize = new SizeF(f, f2);
    }

    public float getPhysicalWidth() {
        return this.mPhysicalSize.getWidth();
    }

    public float getPhysicalHeight() {
        return this.mPhysicalSize.getHeight();
    }

    public void setPixelArraySize(int i, int i2) {
        this.mPixelArraySize = new Size(i, i2);
    }

    public int getPixelArrayWidth() {
        return this.mPixelArraySize.getWidth();
    }

    public int getPixelArrayHeight() {
        return this.mPixelArraySize.getHeight();
    }

    public void setActiveArraySize(int i, int i2, int i3, int i4) {
        this.mActiveArray = new Rect(i, i2, i3, i4);
    }

    public int getActiveArrayWidth() {
        return this.mActiveArray.width();
    }

    public int getActiveArrayHeight() {
        return this.mActiveArray.height();
    }

    public int getActiveArrayLeft() {
        return this.mActiveArray.left;
    }

    public int getActiveArrayRight() {
        return this.mActiveArray.right;
    }

    public int getActiveArrayTop() {
        return this.mActiveArray.top;
    }

    public int getActiveArrayBottom() {
        return this.mActiveArray.bottom;
    }

    public void onCloseCamera(CameraDevice cameraDevice) {
        CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
        if (cameraCaptureSession != null) {
            cameraCaptureSession.close();
            this.mCaptureSession = null;
        }
        CameraDevice cameraDevice2 = this.mOpenCameraDevice;
        if (cameraDevice2 != null && cameraDevice2 == cameraDevice) {
            cameraDevice2.close();
            this.mOpenCameraDevice = null;
        }
        setOpenState(0);
    }

    public void onCloseCamera() {
        onCloseCamera(this.mOpenCameraDevice);
    }

    public void abortCaptures() {
        CameraCaptureSession cameraCaptureSession = this.mCaptureSession;
        if (cameraCaptureSession != null) {
            try {
                cameraCaptureSession.abortCaptures();
            } catch (CameraAccessException | IllegalStateException e) {
                e.printStackTrace();
            }
        }
    }

    public void setExposureTimeRange(Long l, Long l2) {
        this.mExposureTimeRange = new Range<>(l, l2);
    }

    public Long getExposureTimeRangeLength() {
        return Long.valueOf(((Long) this.mExposureTimeRange.getUpper()).longValue() - ((Long) this.mExposureTimeRange.getLower()).longValue());
    }

    public Long getExposureTimeMin() {
        return (Long) this.mExposureTimeRange.getLower();
    }

    public Long getExposureTimeMax() {
        return (Long) this.mExposureTimeRange.getUpper();
    }

    public boolean containsExposureTime(Long l) {
        return this.mExposureTimeRange.contains(l);
    }

    public Long clampExposureTime(Long l) {
        return (Long) this.mExposureTimeRange.clamp(l);
    }

    public void setMaxFrameDuration(Long l) {
        this.mMaxFrameDuration = l;
    }

    public Long getMaxFrameDuration() {
        return this.mMaxFrameDuration;
    }

    public boolean containsFrameDuration(Long l) {
        return l.longValue() <= this.mMaxFrameDuration.longValue();
    }

    public void setSensitivityRange(Integer num, Integer num2) {
        this.mSensitivityRange = new Range<>(num, num2);
    }

    public int getSensitivityRangeLength() {
        return ((Integer) this.mSensitivityRange.getUpper()).intValue() - ((Integer) this.mSensitivityRange.getLower()).intValue();
    }

    public int getSensitivityMin() {
        return ((Integer) this.mSensitivityRange.getLower()).intValue();
    }

    public int getSensitivityMax() {
        return ((Integer) this.mSensitivityRange.getUpper()).intValue();
    }

    public boolean containsSensitivity(Integer num) {
        return this.mSensitivityRange.contains(num);
    }

    public int clampSensitivityRange(int i) {
        return ((Integer) this.mSensitivityRange.clamp(Integer.valueOf(i))).intValue();
    }

    public void setMaxAnalogSensitivity(Integer num) {
        this.mMaxAnalogSensitivity = num;
    }

    public int getMaxAnalogSensitivity() {
        return this.mMaxAnalogSensitivity.intValue();
    }

    public void setAeCompensationStep(Rational rational) {
        this.mAeCompensationStep = new Rational(rational.getNumerator(), rational.getDenominator());
    }

    public double getAeCompensationStep() {
        return this.mAeCompensationStep.doubleValue();
    }

    public int getAeCompensationNumerator() {
        return this.mAeCompensationStep.getNumerator();
    }

    public int getAeCompensationDenominator() {
        return this.mAeCompensationStep.getDenominator();
    }

    public void setAeCompensationRange(Integer num, Integer num2) {
        this.mAeCompensationRange = new Range<>(num, num2);
    }

    public int getAeCompensationMin() {
        return ((Integer) this.mAeCompensationRange.getLower()).intValue();
    }

    public int getAeCompensationMax() {
        return ((Integer) this.mAeCompensationRange.getUpper()).intValue();
    }

    public void setOpenState(int i) {
        this.mOpenState = i;
    }

    public int getOpenState() {
        return this.mOpenState;
    }

    public void setEnabledZsl(boolean z) {
        this.mIsEnabledZsl = z;
    }

    public boolean isEnabledZsl() {
        return this.mIsEnabledZsl;
    }
}
