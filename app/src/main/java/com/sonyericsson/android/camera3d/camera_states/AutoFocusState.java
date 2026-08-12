package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;

import com.sonyericsson.android.camera3d.CameraConstants;
import com.sonyericsson.android.camera3d.utils.LogFilter;

public class AutoFocusState extends MorphoPanoramaGP2CameraState {
    private static final int AF_SAME_STATE_REPEAT_MAX = 30;
    private static final int STATE_INIT = -1;
    private static final int STATE_WAITING_LOCK = 0;
    private static final int STATE_WAITING_NON_PRECAPTURE = 2;
    private static final int STATE_WAITING_PRECAPTURE = 1;
    private static final int SUB_STATE_WAITING_LENS_STATIONARY = 0;

    private boolean mCancel;
    private boolean mIsFiredErrorCapture;
    private int mPreAFState;
    private int mSameAFStateCount;
    private int mState;
    private int mSubState;
    private boolean mToNext;

    public AutoFocusState() {
        super();
        mState = STATE_INIT;
        mSubState = STATE_INIT;
        mSameAFStateCount = 0;
        mCancel = false;
        mIsFiredErrorCapture = false;
        mToNext = true;
    }

    public AutoFocusState(boolean toNext) {
        super();
        mState = STATE_INIT;
        mSubState = STATE_INIT;
        mSameAFStateCount = 0;
        mCancel = false;
        mIsFiredErrorCapture = false;
        mToNext = toNext;
    }

    private void autoFocusEnd(final boolean success) {
        getCameraStartupInfo().gp2Callback.requestUiRunnable(new Runnable() {
            @Override
            public void run() {
                if (mCancel) {
                    LogFilter.i(LOG_TAG, "AutoFocus canceled.");
                    return;
                }
                getCameraStartupInfo().gp2Callback.onAutoFocusFinish(success);
                toNextState();
            }
        });
    }

    private void fireErrorCapture() {
        if (!mIsFiredErrorCapture) {
            mIsFiredErrorCapture = true;
            getCameraStartupInfo().gp2Callback.onErrorCapture();
        }
    }

    private void lockFocus() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
        try {
            CaptureRequest.Builder builder = info.cameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW);
            builder.addTarget(info.previewSurface);
            builder.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
            PreviewState.setupPreviewRequest(this, builder, false, info);
            if (CameraConstants.AutoFocusType == 0) {
                info.cameraInfo.getCaptureSession().setRepeatingRequest(builder.build(), info.captureCallback, backgroundHandler());
            } else if (CameraConstants.AutoFocusType == 1) {
                builder.set(CaptureRequest.CONTROL_AF_MODE, 1);
                info.cameraInfo.getCaptureSession().setRepeatingRequest(builder.build(), info.captureCallback, backgroundHandler());
            } else if (CameraConstants.AutoFocusType == 2) {
                info.cameraInfo.getCaptureSession().capture(builder.build(), info.captureCallback, backgroundHandler());
            }
            mState = STATE_WAITING_LOCK;
            mSameAFStateCount = 0;
            mPreAFState = -1;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            fireErrorCapture();
        }
    }

    private void toNextState() {
        if (CameraConstants.AutoFocusType != 0 && mToNext) {
            PreviewState next = new PreviewState();
            MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
            info.gp2Callback.updateCameraState(next);
            next.toTakePictureState(info.capture_mode);
            return;
        }
        PreviewState next = new PreviewState();
        getCameraStartupInfo().gp2Callback.updateCameraState(next);
        next.onStart();
    }

    private void unlockFocus() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
        try {
            CaptureRequest.Builder builder = info.cameraInfo.getOpenCameraDevice().createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW);
            builder.addTarget(info.previewSurface);
            builder.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
            PreviewState.setupPreviewRequest(this, builder, false, info);
            if (CameraConstants.AutoFocusType == 0) {
                info.cameraInfo.getCaptureSession().setRepeatingRequest(builder.build(), info.captureCallback, backgroundHandler());
            } else if (CameraConstants.AutoFocusType == 1) {
                builder.set(CaptureRequest.CONTROL_AF_MODE, 1);
                info.cameraInfo.getCaptureSession().setRepeatingRequest(builder.build(), info.captureCallback, backgroundHandler());
            } else if (CameraConstants.AutoFocusType == 2) {
                info.cameraInfo.getCaptureSession().capture(builder.build(), info.captureCallback, backgroundHandler());
            }
        } catch (CameraAccessException e) {
            e.printStackTrace();
            fireErrorCapture();
        }
    }

    @Override
    public boolean canExit() {
        return false;
    }

    @Override
    public void onCancel() {
        mCancel = true;
        unlockFocus();
        getCameraStartupInfo().gp2Callback.onAutoFocusFinish(false);
        PreviewState next = new PreviewState();
        getCameraStartupInfo().gp2Callback.updateCameraState(next);
    }

    @Override
    public void onCaptureCompleted(CaptureRequest request, TotalCaptureResult result) {
        MorphoPanoramaGP2CameraState.CameraStartupInfo info = getCameraStartupInfo();
        if (info.camera2Params.tv()) {
            if (info.imageReaderIdling != null) {
                safeImageClose(info.imageReaderIdling.acquireLatestImage());
            }
            if (info.imageReader != null) {
                safeImageClose(info.imageReader.acquireLatestImage());
            }
        }

        if (mState == STATE_WAITING_LOCK) {
            Integer afState = result.get(CaptureResult.CONTROL_AF_STATE);
            if (afState == null) {
                LogFilter.w(LOG_TAG, "AutoFocusState.onCaptureCompleted AF STATE is null");
                mState = STATE_INIT;
                autoFocusEnd(false);
                return;
            }

            if (afState.intValue() == 4) {
                Integer aeState = result.get(CaptureResult.CONTROL_AE_STATE);
                LogFilter.i(LOG_TAG, "AutoFocusState.onCaptureCompleted AF STATE = " + afState + ", AE STATE = " + aeState);
                if (!info.camera2Params.auto() || aeState == null || aeState.intValue() == 2) {
                    Integer lensState = result.get(CaptureResult.LENS_STATE);
                    if (lensState != null && lensState.intValue() == 0) {
                        mState = STATE_INIT;
                        autoFocusEnd(true);
                    }
                    return;
                }
            } else if (afState.intValue() == 5) {
                if (mSubState == 0) {
                    Integer lensState = result.get(CaptureResult.LENS_STATE);
                    if (lensState != null && lensState.intValue() == 0) {
                        mSubState = STATE_INIT;
                        mState = STATE_INIT;
                        autoFocusEnd(true);
                    }
                    return;
                }

                Integer aeState = result.get(CaptureResult.CONTROL_AE_STATE);
                if (!info.camera2Params.auto() || aeState == null || aeState.intValue() == 2) {
                    Integer lensState = result.get(CaptureResult.LENS_STATE);
                    if (lensState != null && lensState.intValue() == 0) {
                        mState = STATE_INIT;
                        autoFocusEnd(false);
                        return;
                    }
                    mSameAFStateCount = 0;
                }
                return;
            }

            int afStateValue = afState.intValue();
            if (afStateValue == 1 || afStateValue != mPreAFState) {
                mSameAFStateCount = 0;
            } else {
                mSameAFStateCount++;
                if (mSameAFStateCount >= AF_SAME_STATE_REPEAT_MAX) {
                    mState = STATE_INIT;
                    autoFocusEnd(false);
                    return;
                }
            }
            mPreAFState = afStateValue;
        } else if (mState == STATE_WAITING_PRECAPTURE) {
            Integer aeState = result.get(CaptureResult.CONTROL_AE_STATE);
            LogFilter.i(LOG_TAG, "WAITING_PRECAPTURE AE STATE = " + aeState);
            if (aeState == null || aeState.intValue() == 5 || aeState.intValue() == 4) {
                mState = STATE_WAITING_NON_PRECAPTURE;
            } else if (aeState.intValue() == 2) {
                mState = STATE_INIT;
                autoFocusEnd(false);
            }
        } else if (mState == STATE_WAITING_NON_PRECAPTURE) {
            Integer aeState = result.get(CaptureResult.CONTROL_AE_STATE);
            LogFilter.i(LOG_TAG, "WAITING_NON_PRECAPTURE AE STATE = " + aeState);
            if (aeState == null || aeState.intValue() != 5) {
                mState = STATE_INIT;
                autoFocusEnd(false);
            }
        }
    }

    @Override
    public boolean onFinish() {
        onCancel();
        return false;
    }

    @Override
    public void onStart() {
        mIsFiredErrorCapture = false;
        lockFocus();
    }

    public void setToNext(boolean toNext) {
        mToNext = toNext;
    }
}
