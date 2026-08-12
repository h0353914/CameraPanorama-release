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
    public static final Range<Double> CAPTURE_GAIN_RANGE;
    private static final String LOG_TAG = "Camera2App";
    public static final int OPEN_STATE_CLOSE = 0;
    public static final int OPEN_STATE_OPENED = 2;
    public static final int OPEN_STATE_OPEN_REQUEST = 1;
    public static final Range<Double> PREVIEW_GAIN_RANGE;

    static {
        PREVIEW_GAIN_RANGE = new Range<>(Double.valueOf(0.5), Double.valueOf(2.0));
        CAPTURE_GAIN_RANGE = new Range<>(Double.valueOf(0.98), Double.valueOf(1.02));
    }

    private Rect mActiveArray;
    private Range<Integer> mAeCompensationRange;
    private Rational mAeCompensationStep;
    private String mCameraId;
    private CameraCaptureSession mCaptureSession;
    private Size mCaptureSize;
    private Range<Long> mExposureTimeRange;
    private float mFocalLength;
    private int mHardwareLevel;
    private boolean mIsEnabledZsl;
    private Integer mMaxAnalogSensitivity;
    private Long mMaxFrameDuration;
    private CameraDevice mOpenCameraDevice;
    private int mOpenState;
    private int mOrientation;
    private SizeF mPhysicalSize;
    private Size mPixelArraySize;
    private Size mPreviewSize;
    private Range<Integer> mSensitivityRange;
    private final ArrayList<Range<Integer>> mTargetFpsRanges;

    public CameraInfo() {
        mTargetFpsRanges = new ArrayList<>();
        mExposureTimeRange = new Range<>(Long.valueOf(1L), Long.valueOf(1L));
        mMaxFrameDuration = Long.valueOf(1L);
        mSensitivityRange = new Range<>(Integer.valueOf(0), Integer.valueOf(0));
        mMaxAnalogSensitivity = Integer.valueOf(1);
        mAeCompensationStep = new Rational(1, 1);
        mAeCompensationRange = new Range<>(Integer.valueOf(0), Integer.valueOf(0));
        clearCameraId();
        mHardwareLevel = 2;
        mOpenCameraDevice = null;
        mCaptureSession = null;
        setPreviewSize(0, 0);
        setCaptureSize(0, 0);
        mFocalLength = 0;
        setPhysicalSize(0, 0);
        setPixelArraySize(0, 0);
        setActiveArraySize(0, 0, 0, 0);
        mOpenState = 0;
        mIsEnabledZsl = false;
    }

    private void clearCameraId() {
        mCameraId = "";
    }

    public void abortCaptures() {
        if (mCaptureSession != null) {
            try {
                mCaptureSession.abortCaptures();
            } catch (CameraAccessException | IllegalStateException e) {
                e.printStackTrace();
            }
        }
    }

    public Long clampExposureTime(Long time) {
        return mExposureTimeRange.clamp(time);
    }

    public int clampSensitivityRange(int sensitivity) {
        return mSensitivityRange.clamp(Integer.valueOf(sensitivity)).intValue();
    }

    public boolean containsExposureTime(Long time) {
        return mExposureTimeRange.contains(time);
    }

    public boolean containsFrameDuration(Long duration) {
        return duration.longValue() <= mMaxFrameDuration.longValue();
    }

    public boolean containsSensitivity(Integer sensitivity) {
        return mSensitivityRange.contains(sensitivity);
    }

    public int getActiveArrayBottom() {
        return mActiveArray.bottom;
    }

    public int getActiveArrayHeight() {
        return mActiveArray.height();
    }

    public int getActiveArrayLeft() {
        return mActiveArray.left;
    }

    public int getActiveArrayRight() {
        return mActiveArray.right;
    }

    public int getActiveArrayTop() {
        return mActiveArray.top;
    }

    public int getActiveArrayWidth() {
        return mActiveArray.width();
    }

    public int getAeCompensationDenominator() {
        return mAeCompensationStep.getDenominator();
    }

    public int getAeCompensationMax() {
        return mAeCompensationRange.getUpper().intValue();
    }

    public int getAeCompensationMin() {
        return mAeCompensationRange.getLower().intValue();
    }

    public int getAeCompensationNumerator() {
        return mAeCompensationStep.getNumerator();
    }

    public double getAeCompensationStep() {
        return mAeCompensationStep.doubleValue();
    }

    public String getCameraId() {
        return mCameraId;
    }

    public int getCaptureHeight() {
        return mCaptureSize.getHeight();
    }

    public CameraCaptureSession getCaptureSession() throws CameraAccessException {
        if (mCaptureSession == null) {
            throw new CameraAccessException(2);
        }
        return mCaptureSession;
    }

    public int getCaptureWidth() {
        return mCaptureSize.getWidth();
    }

    public Long getExposureTimeMax() {
        return mExposureTimeRange.getUpper();
    }

    public Long getExposureTimeMin() {
        return mExposureTimeRange.getLower();
    }

    public Long getExposureTimeRangeLength() {
        return Long.valueOf(mExposureTimeRange.getUpper().longValue() - mExposureTimeRange.getLower().longValue());
    }

    public float getFocalLength() {
        return mFocalLength;
    }

    public int getHardwareLevel() {
        return mHardwareLevel;
    }

    public int getMaxAnalogSensitivity() {
        return mMaxAnalogSensitivity.intValue();
    }

    public Long getMaxFrameDuration() {
        return mMaxFrameDuration;
    }

    public CameraDevice getOpenCameraDevice() throws CameraAccessException {
        if (mOpenCameraDevice == null) {
            throw new CameraAccessException(2);
        }
        return mOpenCameraDevice;
    }

    public int getOpenState() {
        return mOpenState;
    }

    public int getOrientation() {
        return mOrientation;
    }

    public float getPhysicalHeight() {
        return mPhysicalSize.getHeight();
    }

    public float getPhysicalWidth() {
        return mPhysicalSize.getWidth();
    }

    public int getPixelArrayHeight() {
        return mPixelArraySize.getHeight();
    }

    public int getPixelArrayWidth() {
        return mPixelArraySize.getWidth();
    }

    public int getPreviewHeight() {
        return mPreviewSize.getHeight();
    }

    public int getPreviewWidth() {
        return mPreviewSize.getWidth();
    }

    public int getSensitivityMax() {
        return mSensitivityRange.getUpper().intValue();
    }

    public int getSensitivityMin() {
        return mSensitivityRange.getLower().intValue();
    }

    public int getSensitivityRangeLength() {
        return mSensitivityRange.getUpper().intValue() - mSensitivityRange.getLower().intValue();
    }

    public ArrayList<Range<Integer>> getTargetFpsRanges() {
        return mTargetFpsRanges;
    }

    public boolean isCameraEnabled() {
        return !mCameraId.isEmpty();
    }

    public boolean isEnabledZsl() {
        return mIsEnabledZsl;
    }

    public void onCloseCamera() {
        onCloseCamera(mOpenCameraDevice);
    }

    public void onCloseCamera(CameraDevice device) {
        if (mCaptureSession != null) {
            mCaptureSession.close();
            mCaptureSession = null;
        }
        if (mOpenCameraDevice != null && mOpenCameraDevice == device) {
            mOpenCameraDevice.close();
            mOpenCameraDevice = null;
        }
        setOpenState(0);
    }

    public void setActiveArraySize(int left, int top, int right, int bottom) {
        mActiveArray = new Rect(left, top, right, bottom);
    }

    public void setAeCompensationRange(Integer lower, Integer upper) {
        mAeCompensationRange = new Range<>(lower, upper);
    }

    public void setAeCompensationStep(Rational step) {
        mAeCompensationStep = new Rational(step.getNumerator(), step.getDenominator());
    }

    public void setCameraId(String cameraId) {
        mCameraId = cameraId;
        LogFilter.i(LOG_TAG, "CameraId='" + mCameraId + "'");
    }

    public void setCaptureHeight(int height) {
        setCaptureSize(mCaptureSize.getWidth(), height);
    }

    public void setCaptureSession(CameraCaptureSession session) {
        mCaptureSession = session;
    }

    public void setCaptureSize(int width, int height) {
        mCaptureSize = new Size(width, height);
    }

    public void setCaptureWidth(int width) {
        setCaptureSize(width, mCaptureSize.getHeight());
    }

    public void setEnabledZsl(boolean enabled) {
        mIsEnabledZsl = enabled;
    }

    public void setExposureTimeRange(Long lower, Long upper) {
        mExposureTimeRange = new Range<>(lower, upper);
    }

    public void setFocalLength(float focalLength) {
        mFocalLength = focalLength;
    }

    public void setHardwareLevel(int hardwareLevel) {
        mHardwareLevel = hardwareLevel;
    }

    public void setMaxAnalogSensitivity(Integer maxAnalogSensitivity) {
        mMaxAnalogSensitivity = maxAnalogSensitivity;
    }

    public void setMaxFrameDuration(Long maxFrameDuration) {
        mMaxFrameDuration = maxFrameDuration;
    }

    public void setOpenCameraDevice(CameraDevice device) {
        mOpenCameraDevice = device;
        if (mOpenCameraDevice != null) {
            setOpenState(2);
        }
    }

    public void setOpenState(int openState) {
        mOpenState = openState;
    }

    public void setOrientation(int orientation) {
        mOrientation = orientation;
    }

    public void setPhysicalSize(float width, float height) {
        mPhysicalSize = new SizeF(width, height);
    }

    public void setPixelArraySize(int width, int height) {
        mPixelArraySize = new Size(width, height);
    }

    public void setPreviewHeight(int height) {
        setPreviewSize(mPreviewSize.getWidth(), height);
    }

    public void setPreviewSize(int width, int height) {
        mPreviewSize = new Size(width, height);
    }

    public void setPreviewWidth(int width) {
        setPreviewSize(width, mPreviewSize.getHeight());
    }

    public void setSensitivityRange(Integer lower, Integer upper) {
        mSensitivityRange = new Range<>(lower, upper);
    }

    public void setTargetFpsRanges(Range<Integer>[] ranges) {
        mTargetFpsRanges.clear();
        for (Range<Integer> range : ranges) {
            mTargetFpsRanges.add(new Range<>(range.getLower(), range.getUpper()));
        }
    }
}
