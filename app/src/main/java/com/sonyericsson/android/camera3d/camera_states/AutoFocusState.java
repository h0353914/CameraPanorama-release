package com.sonyericsson.android.camera3d.camera_states;

import android.hardware.camera2.CameraAccessException;
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

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public boolean canExit() {
        return false;
    }

    public AutoFocusState() {
        this.mState = -1;
        this.mSubState = -1;
        this.mSameAFStateCount = 0;
        this.mCancel = false;
        this.mIsFiredErrorCapture = false;
        this.mToNext = true;
    }

    public AutoFocusState(boolean z) {
        this.mState = -1;
        this.mSubState = -1;
        this.mSameAFStateCount = 0;
        this.mCancel = false;
        this.mIsFiredErrorCapture = false;
        this.mToNext = z;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onStart() {
        this.mIsFiredErrorCapture = false;
        lockFocus();
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public boolean onFinish() {
        onCancel();
        return false;
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onCancel() {
        this.mCancel = true;
        unlockFocus();
        getCameraStartupInfo().gp2Callback.onAutoFocusFinish(false);
        getCameraStartupInfo().gp2Callback.updateCameraState(new PreviewState());
    }

    @Override // com.sonyericsson.android.camera3d.camera_states.CameraState
    public void onCaptureCompleted(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = getCameraStartupInfo();
        if (cameraStartupInfo.camera2Params.tv()) {
            if (cameraStartupInfo.imageReaderIdling != null) {
                safeImageClose(cameraStartupInfo.imageReaderIdling.acquireLatestImage());
            }
            if (cameraStartupInfo.imageReader != null) {
                safeImageClose(cameraStartupInfo.imageReader.acquireLatestImage());
            }
        }
        int i = this.mState;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
                    LogFilter.i("MorphoCamera2State", "WAITING_NON_PRECAPTURE AE STATE = " + num);
                    if (num == null || num.intValue() != 5) {
                        this.mState = -1;
                        autoFocusEnd(false);
                        return;
                    }
                    return;
                }
                return;
            }
            Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
            LogFilter.i("MorphoCamera2State", "WAITING_PRECAPTURE AE STATE = " + num2);
            if (num2 == null || num2.intValue() == 5 || num2.intValue() == 4) {
                this.mState = 2;
                return;
            } else {
                if (num2.intValue() == 2) {
                    this.mState = -1;
                    autoFocusEnd(false);
                    return;
                }
                return;
            }
        }
        Integer num3 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
        if (num3 == null) {
            LogFilter.w("MorphoCamera2State", "AutoFocusState.onCaptureCompleted AF STATE is null");
            this.mState = -1;
            autoFocusEnd(false);
            return;
        }
        if (num3.intValue() == 4) {
            Integer num4 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
            LogFilter.i("MorphoCamera2State", "AutoFocusState.onCaptureCompleted AF STATE = " + num3 + ", AE STATE = " + num4);
            if (!cameraStartupInfo.camera2Params.auto() || num4 == null || num4.intValue() == 2 || num4.intValue() == 4) {
                Integer num5 = (Integer) totalCaptureResult.get(CaptureResult.LENS_STATE);
                if (num5 == null || num5.intValue() != 0) {
                    return;
                }
                this.mState = -1;
                autoFocusEnd(true);
                return;
            }
        } else if (num3.intValue() == 5) {
            if (this.mSubState == 0) {
                Integer num6 = (Integer) totalCaptureResult.get(CaptureResult.LENS_STATE);
                if (num6 == null || num6.intValue() != 0) {
                    return;
                }
                this.mSubState = -1;
                this.mState = -1;
                autoFocusEnd(true);
                return;
            }
            Integer num7 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
            if (!cameraStartupInfo.camera2Params.auto() || num7 == null || num7.intValue() == 2 || num7.intValue() == 4) {
                Integer num8 = (Integer) totalCaptureResult.get(CaptureResult.LENS_STATE);
                if (num8 != null && num8.intValue() == 0) {
                    this.mState = -1;
                    autoFocusEnd(false);
                    return;
                } else {
                    this.mSubState = 0;
                    return;
                }
            }
            return;
        }
        if (num3.intValue() != 1 && num3.intValue() == this.mPreAFState) {
            int i2 = this.mSameAFStateCount + 1;
            this.mSameAFStateCount = i2;
            if (i2 >= 30) {
                this.mState = -1;
                autoFocusEnd(false);
                return;
            }
        } else {
            this.mSameAFStateCount = 0;
        }
        this.mPreAFState = num3.intValue();
    }

    public void setToNext(boolean z) {
        this.mToNext = z;
    }

    private void autoFocusEnd(final boolean z) {
        getCameraStartupInfo().gp2Callback.requestUiRunnable(new Runnable() { // from class: com.sonyericsson.android.camera3d.camera_states.AutoFocusState.1
            @Override // java.lang.Runnable
            public void run() {
                if (AutoFocusState.this.mCancel) {
                    LogFilter.i("MorphoCamera2State", "AutoFocus canceled.");
                } else {
                    AutoFocusState.this.getCameraStartupInfo().gp2Callback.onAutoFocusFinish(z);
                    AutoFocusState.this.toNextState();
                }
            }
        });
    }

    public void toNextState() {
        if (CameraConstants.AutoFocusType == 0 || !this.mToNext) {
            PreviewState previewState = new PreviewState();
            getCameraStartupInfo().gp2Callback.updateCameraState(previewState);
            previewState.onStart();
        } else {
            PreviewState previewState2 = new PreviewState();
            getCameraStartupInfo().gp2Callback.updateCameraState(previewState2);
            previewState2.toTakePictureState(getCameraStartupInfo().capture_mode);
        }
    }

    private void lockFocus() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = getCameraStartupInfo();
        try {
            CaptureRequest.Builder builderCreateCaptureRequest = cameraStartupInfo.cameraInfo.getOpenCameraDevice().createCaptureRequest(1);
            builderCreateCaptureRequest.addTarget(cameraStartupInfo.previewSurface);
            builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
            PreviewState.setupPreviewRequest(this, builderCreateCaptureRequest, false, cameraStartupInfo);
            if (CameraConstants.AutoFocusType == 0) {
                cameraStartupInfo.cameraInfo.getCaptureSession().setRepeatingRequest(builderCreateCaptureRequest.build(), cameraStartupInfo.captureCallback, backgroundHandler());
            } else if (CameraConstants.AutoFocusType == 1) {
                builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AF_MODE, 1);
                cameraStartupInfo.cameraInfo.getCaptureSession().setRepeatingRequest(builderCreateCaptureRequest.build(), cameraStartupInfo.captureCallback, backgroundHandler());
            } else if (CameraConstants.AutoFocusType == 2) {
                cameraStartupInfo.cameraInfo.getCaptureSession().capture(builderCreateCaptureRequest.build(), cameraStartupInfo.captureCallback, backgroundHandler());
            }
            this.mState = 0;
            this.mSameAFStateCount = 0;
            this.mPreAFState = -1;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            fireErrorCapture();
        }
    }

    private void unlockFocus() {
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = getCameraStartupInfo();
        try {
            CaptureRequest.Builder builderCreateCaptureRequest = cameraStartupInfo.cameraInfo.getOpenCameraDevice().createCaptureRequest(1);
            builderCreateCaptureRequest.addTarget(cameraStartupInfo.previewSurface);
            builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
            PreviewState.setupPreviewRequest(this, builderCreateCaptureRequest, false, cameraStartupInfo);
            if (CameraConstants.AutoFocusType == 0) {
                cameraStartupInfo.cameraInfo.getCaptureSession().setRepeatingRequest(builderCreateCaptureRequest.build(), null, backgroundHandler());
            } else if (CameraConstants.AutoFocusType == 1) {
                builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AF_MODE, 1);
                cameraStartupInfo.cameraInfo.getCaptureSession().setRepeatingRequest(builderCreateCaptureRequest.build(), null, backgroundHandler());
            } else if (CameraConstants.AutoFocusType == 2) {
                cameraStartupInfo.cameraInfo.getCaptureSession().capture(builderCreateCaptureRequest.build(), null, backgroundHandler());
            }
        } catch (CameraAccessException e) {
            e.printStackTrace();
            fireErrorCapture();
        }
    }

    private void fireErrorCapture() {
        if (this.mIsFiredErrorCapture) {
            return;
        }
        this.mIsFiredErrorCapture = true;
        getCameraStartupInfo().gp2Callback.onErrorCapture();
    }
}
