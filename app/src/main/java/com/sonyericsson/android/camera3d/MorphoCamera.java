package com.sonyericsson.android.camera3d;

import android.app.Activity;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import android.util.SizeF;
import android.view.Surface;
import android.view.TextureView;
import com.sonyericsson.android.camera3d.base.MorphoCameraBase;
import com.sonyericsson.android.camera3d.camera_states.CameraState;
import com.sonyericsson.android.camera3d.camera_states.IMorphoPanoramaGP2Callback;
import com.sonyericsson.android.camera3d.camera_states.MorphoPanoramaGP2CameraState;
import com.sonyericsson.android.camera3d.camera_states.PreviewState;
import com.sonyericsson.android.camera3d.device.SomcCameraCharacteristicsKeys;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public class MorphoCamera extends MorphoCameraBase {
    private static final String LOG_TAG = "MorphoCamera2";
    private final CameraInfo mCameraInfo;
    private final CameraManager mCameraManager;
    private MorphoPanoramaGP2CameraState mCameraState;
    private ExecutorService mCaptureSessionCallbackExecutor;
    private ImageReader mImageReader;
    private ImageReader mImageReaderIdling;
    private MorphoCameraBase.IMorphoCameraListener mListener;
    private Surface mPreviewSurface;
    private Surface mPreviewSurfaceMini;
    private long mTvTargetExposureTime;
    private int mTvTargetSensorSensitivity;
    private TextureView mTextureView = null;
    private TextureView mTextureViewMini = null;
    private HandlerThread mBackgroundHandlerThread = null;
    private final ImageReader.OnImageAvailableListener mPreviewAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: com.sonyericsson.android.camera3d.MorphoCamera.2
        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            synchronized (CameraConstants.CameraSynchronizedObject) {
                if (MorphoCamera.this.mIsAvailable) {
                    if (MorphoCamera.this.mListener.onPreviewImageAvailable()) {
                        if (!MorphoCamera.this.mCameraState.camera2Params().tv()) {
                            try {
                                Image imageAcquireNextImage = imageReader.acquireNextImage();
                                if (imageAcquireNextImage != null) {
                                    imageAcquireNextImage.close();
                                }
                            } catch (IllegalStateException e) {
                                e.printStackTrace();
                                MorphoCamera.this.mListener.onError();
                                return;
                            }
                        }
                        return;
                    }
                    try {
                        Image imageAcquireNextImage2 = imageReader.acquireNextImage();
                        if (imageAcquireNextImage2 != null) {
                            imageAcquireNextImage2.close();
                        }
                        return;
                    } catch (IllegalStateException e2) {
                        e2.printStackTrace();
                        MorphoCamera.this.mListener.onError();
                        return;
                    }
                }
            }
        }
    };
    private final ImageReader.OnImageAvailableListener mTakePictureAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: com.sonyericsson.android.camera3d.MorphoCamera.3
        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            try {
                Image imageAcquireNextImage = imageReader.acquireNextImage();
                if (imageAcquireNextImage == null) {
                    LogFilter.w(MorphoCamera.LOG_TAG, "ImageReader#acquireNextImage() is null.");
                    return;
                }
                Camera2Image camera2Image = new Camera2Image(imageAcquireNextImage);
                if (MorphoCamera.this.mListener.onPictureTaken(camera2Image)) {
                    return;
                }
                camera2Image.close();
            } catch (IllegalStateException e) {
                e.printStackTrace();
                MorphoCamera.this.mListener.onError();
            }
        }
    };
    private final CameraDevice.StateCallback mStateCallback = new CameraDevice.StateCallback() { // from class: com.sonyericsson.android.camera3d.MorphoCamera.4
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            synchronized (CameraConstants.CameraSynchronizedObject) {
                if (MorphoCamera.this.mIsAvailable) {
                    MorphoCamera.this.mCameraInfo.setOpenCameraDevice(cameraDevice);
                    SurfaceTexture surfaceTexture = MorphoCamera.this.mTextureView != null ? MorphoCamera.this.mTextureView.getSurfaceTexture() : null;
                    if (surfaceTexture != null) {
                        if (MorphoCamera.this.mImageReader != null) {
                            MorphoCamera.this.mListener.onOpened();
                            if (Build.MODEL.equals("EVA-TL00")) {
                                surfaceTexture.setDefaultBufferSize(1920, 1440);
                            } else {
                                LogFilter.i(MorphoCamera.LOG_TAG, String.format(Locale.US, "preview_size : %d x %d", Integer.valueOf(MorphoCamera.this.mCameraInfo.getPreviewWidth()), Integer.valueOf(MorphoCamera.this.mCameraInfo.getPreviewHeight())));
                                surfaceTexture.setDefaultBufferSize(MorphoCamera.this.mCameraInfo.getPreviewWidth(), MorphoCamera.this.mCameraInfo.getPreviewHeight());
                            }
                            MorphoCamera.this.mPreviewSurface = new Surface(surfaceTexture);
                            if (MorphoCamera.this.mTextureViewMini != null) {
                                SurfaceTexture surfaceTexture2 = MorphoCamera.this.mTextureViewMini.getSurfaceTexture();
                                surfaceTexture2.setDefaultBufferSize(MorphoCamera.this.mTextureViewMini.getWidth(), MorphoCamera.this.mTextureViewMini.getHeight());
                                MorphoCamera.this.mPreviewSurfaceMini = new Surface(surfaceTexture2);
                            }
                            try {
                                try {
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add(new OutputConfiguration(MorphoCamera.this.mPreviewSurface));
                                    arrayList.add(new OutputConfiguration(MorphoCamera.this.mImageReader.getSurface()));
                                    if (MorphoCamera.this.mPreviewSurfaceMini != null) {
                                        arrayList.add(new OutputConfiguration(MorphoCamera.this.mPreviewSurfaceMini));
                                    }
                                    MorphoCamera.this.mCameraInfo.getOpenCameraDevice().createCaptureSession(new SessionConfiguration(0, arrayList, MorphoCamera.this.mCaptureSessionCallbackExecutor, MorphoCamera.this.mSessionCallback));
                                } catch (SecurityException e) {
                                    e.printStackTrace();
                                }
                                MorphoCamera.this.mCameraState.setPreviewSurface(MorphoCamera.this.mPreviewSurface);
                                if (MorphoCamera.this.mPreviewSurfaceMini != null) {
                                    MorphoCamera.this.mCameraState.setMiniPreviewSurface(MorphoCamera.this.mPreviewSurfaceMini);
                                }
                                return;
                            } catch (CameraAccessException e2) {
                                e2.printStackTrace();
                                MorphoCamera.this.mCameraInfo.onCloseCamera(cameraDevice);
                                MorphoCamera.this.mPreviewSurface = null;
                                MorphoCamera.this.mPreviewSurfaceMini = null;
                                MorphoCamera.this.mListener.onError();
                                return;
                            }
                        }
                        LogFilter.w(MorphoCamera.LOG_TAG, "CameraDevice.StateCallback.onOpened ImageReader is null!!");
                        cameraDevice.close();
                        MorphoCamera.this.mCameraInfo.setOpenState(0);
                        return;
                    }
                    LogFilter.w(MorphoCamera.LOG_TAG, "CameraDevice.StateCallback.onOpened SurfaceTexture is null!!");
                    cameraDevice.close();
                    MorphoCamera.this.mCameraInfo.setOpenState(0);
                }
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            MorphoCamera.this.mCameraInfo.onCloseCamera(cameraDevice);
            MorphoCamera.this.mPreviewSurface = null;
            MorphoCamera.this.mCameraState.setPreviewSurface(null);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            LogFilter.e(MorphoCamera.LOG_TAG, String.format(Locale.US, "CameraDevice.StateCallback.onError (%d)", Integer.valueOf(i)));
            MorphoCamera.this.mListener.onError();
        }
    };
    private final CameraCaptureSession.StateCallback mSessionCallback = new CameraCaptureSession.StateCallback() { // from class: com.sonyericsson.android.camera3d.MorphoCamera.5
        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            synchronized (CameraConstants.CameraSynchronizedObject) {
                if (MorphoCamera.this.mIsAvailable) {
                    if (MorphoCamera.this.mCameraInfo.isCameraEnabled() && MorphoCamera.this.mCameraInfo.getOpenState() == 2) {
                        MorphoCamera.this.mCameraInfo.setCaptureSession(cameraCaptureSession);
                        MorphoCamera.this.mCameraState = new PreviewState();
                        MorphoCamera.this.mCameraState.onStart();
                    }
                }
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            LogFilter.e(MorphoCamera.LOG_TAG, "CameraCaptureSession.StateCallback.onConfigureFailed");
            MorphoCamera.this.mCameraInfo.onCloseCamera();
            MorphoCamera.this.mPreviewSurface = null;
            MorphoCamera.this.mCameraState.setPreviewSurface(null);
        }
    };
    private final CameraCaptureSession.CaptureCallback mCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.sonyericsson.android.camera3d.MorphoCamera.6
        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
            MorphoCamera.this.mCameraState.onProgressed(captureResult);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            MorphoCamera.this.mCameraState.onCaptureCompleted(captureRequest, totalCaptureResult);
            synchronized (CameraConstants.CameraSynchronizedObject) {
                if (MorphoCamera.this.mIsAvailable) {
                    MorphoCamera.this.mListener.onCaptureCompleted(captureRequest, totalCaptureResult);
                }
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureSequenceCompleted(CameraCaptureSession cameraCaptureSession, int i, long j) {
            MorphoCamera.this.mCameraState.onCaptureSequenceCompleted(i);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
            LogFilter.w(MorphoCamera.LOG_TAG, "CameraCaptureSession.CaptureCallback.onCaptureFailed >Reason:" + captureFailure.getReason());
        }
    };
    private final Comparator<Size> mSizeComparator = new Comparator<Size>() { // from class: com.sonyericsson.android.camera3d.MorphoCamera.7
        @Override // java.util.Comparator
        public int compare(Size size, Size size2) {
            int width = size2.getWidth() - size.getWidth();
            return width == 0 ? size2.getHeight() - size.getHeight() : width;
        }
    };

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public CameraInfo cameraInfo() {
        return this.mCameraInfo;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public final CameraState cameraState() {
        return this.mCameraState;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public int burstRemaining() {
        return this.mCameraState.getCameraStartupInfo().burstRemaining;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void setBurstRemaining(int i) {
        this.mCameraState.setBurstRemaining(i);
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void setMorphoPanoramaGP2Interface(IMorphoPanoramaGP2Callback iMorphoPanoramaGP2Callback) {
        this.mCameraState.setMorphoPanoramaGP2Interface(iMorphoPanoramaGP2Callback);
    }

    public void setCamera2Params(Camera2ParamsFragment camera2ParamsFragment) {
        this.mCameraState.setCamera2Params(camera2ParamsFragment);
    }

    public MorphoCamera(MorphoCameraBase.IMorphoCameraListener iMorphoCameraListener, Activity activity, int i, int i2) {
        this.mCameraManager = (CameraManager) activity.getSystemService("camera");
        CameraInfo cameraInfo = new CameraInfo();
        this.mCameraInfo = cameraInfo;
        cameraInfo.setCameraId(String.valueOf(i));
        this.mListener = iMorphoCameraListener == null ? nullMorphoCameraListener : iMorphoCameraListener;
        this.mCaptureSessionCallbackExecutor = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: com.sonyericsson.android.camera3d.MorphoCamera.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("CreateCaptureSessionCallback");
                thread.setPriority(10);
                return thread;
            }
        });
        this.mCameraState = new MorphoPanoramaGP2CameraState();
        MorphoPanoramaGP2CameraState.initialize(i2);
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void exit() {
        this.mListener = nullMorphoCameraListener;
        ExecutorService executorService = this.mCaptureSessionCallbackExecutor;
        if (executorService != null) {
            executorService.shutdown();
            this.mCaptureSessionCallbackExecutor = null;
        }
    }

    // 對照 smali（MorphoCamera.pause()）手動重建：jadx 誤把 catchall 清理路徑
    // 展開成 if(samsung)/else 兩份完全重複的清理程式碼，並在結尾留下一個沒有
    // 對應變數的 `throw th;`。實際上 smali 只有一份清理程式碼（samsung 分支只是
    // 多包一層 try/catch 送出一次停止曝光的 capture request），清理流程本身
    // 不分支、無條件執行；catchall 只是 Java `synchronized` 區塊本來就會做的
    // 「例外時仍要 monitor-exit 並原樣往外拋」，不需要手動宣告 throw。
    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void pause() {
        synchronized (CameraConstants.CameraSynchronizedObject) {
            this.mIsAvailable = false;
            this.mCameraState.setPreviewSurface(null);
            if (Build.MANUFACTURER.equals("samsung")) {
                try {
                    CaptureRequest.Builder builderCreateCaptureRequest = this.mCameraInfo.getOpenCameraDevice().createCaptureRequest(2);
                    builderCreateCaptureRequest.addTarget(this.mPreviewSurface);
                    this.mCameraInfo.getCaptureSession().capture(builderCreateCaptureRequest.build(), null, null);
                } catch (CameraAccessException e) {
                    e.printStackTrace();
                }
            }
            this.mCameraInfo.onCloseCamera();
            this.mPreviewSurface = null;
            ImageReader imageReader = this.mImageReader;
            if (imageReader != null) {
                imageReader.close();
                this.mImageReader = null;
            }
            ImageReader imageReader2 = this.mImageReaderIdling;
            if (imageReader2 != null) {
                imageReader2.close();
                this.mImageReaderIdling = null;
            }
            this.mCameraState.setImageReader(null);
            this.mCameraState.setImageReaderIdling(null);
            HandlerThread handlerThread = this.mBackgroundHandlerThread;
            if (handlerThread != null) {
                handlerThread.quit();
                this.mBackgroundHandlerThread = null;
            }
            this.mCameraState.setBackgroundHandlerThread(null);
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void resume(Size size, Size size2) {
        synchronized (CameraConstants.CameraSynchronizedObject) {
            this.mCameraInfo.setCaptureSize(size.getWidth(), size.getHeight());
            this.mCameraInfo.setPreviewSize(size2.getWidth(), size2.getHeight());
            HandlerThread handlerThread = new HandlerThread("BackgroundHandlerThread");
            this.mBackgroundHandlerThread = handlerThread;
            handlerThread.start();
            this.mCameraState.setBackgroundHandlerThread(this.mBackgroundHandlerThread);
            Handler handlerBackgroundHandler = this.mCameraState.backgroundHandler();
            ImageReader imageReaderNewInstance = ImageReader.newInstance(this.mCameraInfo.getCaptureWidth(), this.mCameraInfo.getCaptureHeight(), 35, 3);
            this.mImageReader = imageReaderNewInstance;
            imageReaderNewInstance.setOnImageAvailableListener(this.mPreviewAvailableListener, handlerBackgroundHandler);
            ImageReader imageReaderNewInstance2 = ImageReader.newInstance(320, ((int) ((320 * this.mCameraInfo.getCaptureHeight()) / this.mCameraInfo.getCaptureWidth())) & (-2), 35, 3);
            this.mImageReaderIdling = imageReaderNewInstance2;
            imageReaderNewInstance2.setOnImageAvailableListener(this.mPreviewAvailableListener, handlerBackgroundHandler);
            this.mCameraState.setCameraInfo(this.mCameraInfo);
            this.mCameraState.setCaptureCallback(this.mCaptureCallback);
            this.mCameraState.setImageReader(this.mImageReader);
            this.mCameraState.setImageReaderIdling(this.mImageReaderIdling);
            this.mCameraState.setOnPreviewImageAvailableListener(this.mPreviewAvailableListener);
            this.mCameraState.setOnTakePictureImageAvailableListener(this.mTakePictureAvailableListener);
            this.mIsAvailable = true;
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getAllCameras() {
        String[] strArr = null;
        try {
            String[] cameraIdList = this.mCameraManager.getCameraIdList();
            int length = cameraIdList.length;
            strArr = new String[length];
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < cameraIdList.length; i4++) {
                Integer num = (Integer) this.mCameraManager.getCameraCharacteristics(cameraIdList[i4]).get(CameraCharacteristics.LENS_FACING);
                if (num == null) {
                    i++;
                    strArr[i4] = String.format(Locale.US, "Other %d", Integer.valueOf(i));
                } else {
                    int iIntValue = num.intValue();
                    if (iIntValue == 0) {
                        i2++;
                        strArr[i4] = String.format(Locale.US, "Front %d", Integer.valueOf(i2));
                    } else if (iIntValue != 1) {
                        i++;
                        strArr[i4] = String.format(Locale.US, "Other %d", Integer.valueOf(i));
                    } else {
                        i3++;
                        strArr[i4] = String.format(Locale.US, "Back %d", Integer.valueOf(i3));
                    }
                }
            }
            if (i == 1) {
                for (int i5 = 0; i5 < length; i5++) {
                    if (strArr[i5].contains("Other")) {
                        strArr[i5] = strArr[i5].replace(" 1", "");
                    }
                }
            }
            if (i2 == 1) {
                for (int i6 = 0; i6 < length; i6++) {
                    if (strArr[i6].contains("Front")) {
                        strArr[i6] = strArr[i6].replace(" 1", "");
                    }
                }
            }
            if (i3 == 1) {
                for (int i7 = 0; i7 < length; i7++) {
                    if (strArr[i7].contains("Back")) {
                        strArr[i7] = strArr[i7].replace(" 1", "");
                    }
                }
            }
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
        return strArr;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public boolean isFrontCamera(int i) throws IllegalArgumentException {
        try {
            Integer num = (Integer) this.mCameraManager.getCameraCharacteristics(String.valueOf(i)).get(CameraCharacteristics.LENS_FACING);
            return num != null && num.intValue() == 0;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean prepareCamera(TextureView textureView) {
        return prepareCamera(textureView, null);
    }

    public boolean prepareCamera(TextureView textureView, TextureView textureView2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        this.mTextureView = textureView;
        this.mTextureViewMini = textureView2;
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = this.mCameraState.getCameraStartupInfo();
        try {
            CameraCharacteristics cameraCharacteristics = this.mCameraManager.getCameraCharacteristics(this.mCameraInfo.getCameraId());
            Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
            Integer num2 = (Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
            if (num != null && num2 != null) {
                this.mCameraInfo.setHardwareLevel(num.intValue());
                this.mCameraInfo.setOrientation(num2.intValue());
                float[] fArr = (float[]) cameraCharacteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS);
                SizeF sizeF = (SizeF) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE);
                Size size = (Size) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE);
                Rect rect = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
                boolean z12 = true;
                if (this.mCameraInfo.getHardwareLevel() != 2 && this.mCameraInfo.getHardwareLevel() != 0) {
                    Range range = (Range) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE);
                    Long l = (Long) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_MAX_FRAME_DURATION);
                    Range rangeIntersect = (Range) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE);
                    if (rangeIntersect != null) {
                        rangeIntersect = rangeIntersect.intersect((Integer) rangeIntersect.getLower(), Integer.valueOf(CameraConstants.MAX_ISO_VALUE));
                    }
                    Integer num3 = (Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_MAX_ANALOG_SENSITIVITY);
                    if (range != null) {
                        this.mCameraInfo.setExposureTimeRange((Long) range.getLower(), (Long) range.getUpper());
                    }
                    if (l != null) {
                        this.mCameraInfo.setMaxFrameDuration(l);
                    }
                    if (rangeIntersect != null) {
                        this.mCameraInfo.setSensitivityRange((Integer) rangeIntersect.getLower(), (Integer) rangeIntersect.getUpper());
                    }
                    if (num3 != null) {
                        this.mCameraInfo.setMaxAnalogSensitivity(num3);
                    }
                    Range range2 = (Range) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_RANGE);
                    Rational rational = (Rational) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP);
                    if (range2 != null) {
                        this.mCameraInfo.setAeCompensationRange((Integer) range2.getLower(), (Integer) range2.getUpper());
                    }
                    if (rational != null) {
                        this.mCameraInfo.setAeCompensationStep(rational);
                    }
                    cameraStartupInfo.available_ae_mode = true;
                    cameraStartupInfo.available_af_mode = true;
                    cameraStartupInfo.available_scene_mode_sports = true;
                    cameraStartupInfo.available_antibanding_mode = true;
                    cameraStartupInfo.available_image_quality_settings = true;
                } else {
                    int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES);
                    if (iArr != null) {
                        int length = iArr.length;
                        z = false;
                        z2 = false;
                        for (int i = 0; i < length; i++) {
                            int i2 = iArr[i];
                            z |= i2 == 1;
                            z2 |= i2 == 0;
                        }
                    } else {
                        z = false;
                        z2 = false;
                    }
                    cameraStartupInfo.available_ae_mode = z && z2;
                    int[] iArr2 = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
                    if (iArr2 != null) {
                        int length2 = iArr2.length;
                        z3 = false;
                        z4 = false;
                        for (int i3 = 0; i3 < length2; i3++) {
                            int i4 = iArr2[i3];
                            z4 |= i4 == 1;
                            z3 |= i4 == 4;
                        }
                    } else {
                        z3 = false;
                        z4 = false;
                    }
                    cameraStartupInfo.available_af_mode = z4 && z3;
                    int[] iArr3 = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AVAILABLE_SCENE_MODES);
                    if (iArr3 != null) {
                        z5 = false;
                        for (int i5 : iArr3) {
                            z5 |= i5 == 13;
                        }
                    } else {
                        z5 = false;
                    }
                    cameraStartupInfo.available_scene_mode_sports = z5;
                    int[] iArr4 = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_ANTIBANDING_MODES);
                    if (iArr4 != null) {
                        int length3 = iArr4.length;
                        int i6 = 0;
                        z6 = false;
                        z7 = false;
                        z8 = false;
                        z9 = false;
                        while (i6 < length3) {
                            int i7 = iArr4[i6];
                            z6 |= i7 == 0 ? z12 : false;
                            z7 |= i7 == 3;
                            z8 |= i7 == 1;
                            z9 |= i7 == 2;
                            i6++;
                            z12 = true;
                        }
                    } else {
                        z6 = false;
                        z7 = false;
                        z8 = false;
                        z9 = false;
                    }
                    cameraStartupInfo.available_antibanding_mode = z6 && z7 && z8 && z9;
                    LogFilter.i(LOG_TAG, String.format(Locale.US, "AVAILABLE AE_MODE(%s), AF_MODE(%s), SM_SPORTS(%s), ANTIBANDING_MODE(%s)", Boolean.toString(cameraStartupInfo.available_ae_mode), Boolean.toString(cameraStartupInfo.available_af_mode), Boolean.toString(cameraStartupInfo.available_scene_mode_sports), Boolean.toString(cameraStartupInfo.available_antibanding_mode)));
                }
                this.mCameraInfo.setTargetFpsRanges((Range[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES));
                cameraStartupInfo.available_fallback_mode = ((int[]) tryGetCharacteristics(cameraCharacteristics, SomcCameraCharacteristicsKeys.SONYMOBILE_LOGICAL_MULTI_CAMERA_AVAILABLE_FALLBACK_MODES)) != null;
                LogFilter.i(LOG_TAG, "CameraCharacteristics ======= ========= ==========");
                LogFilter.i(LOG_TAG, String.format(Locale.US, "INFO_SUPPORTED_HARDWARE_LEVEL=%d", Integer.valueOf(this.mCameraInfo.getHardwareLevel())));
                LogFilter.i(LOG_TAG, String.format(Locale.US, "SENSOR_ORIENTATION=%d", Integer.valueOf(this.mCameraInfo.getOrientation())));
                int[] iArr5 = (int[]) cameraCharacteristics.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
                if (iArr5 != null) {
                    z10 = false;
                    z11 = false;
                    for (int i8 : iArr5) {
                        LogFilter.i(LOG_TAG, "REQUEST_AVAILABLE_CAPABILITIES : " + i8);
                        if (i8 == 4) {
                            z10 = true;
                        }
                        if (i8 == 7) {
                            z11 = true;
                        }
                    }
                } else {
                    z10 = false;
                    z11 = false;
                }
                this.mCameraInfo.setEnabledZsl(z10 && z11);
                LogFilter.v(LOG_TAG, "TARGET_FPS_RANGES");
                Iterator<Range<Integer>> it = this.mCameraInfo.getTargetFpsRanges().iterator();
                while (it.hasNext()) {
                    LogFilter.v(LOG_TAG, it.next().toString());
                }
                LogFilter.v(LOG_TAG, String.format(Locale.US, "AE Step=%f (%d/%d), Range(%d, %d)", Double.valueOf(this.mCameraInfo.getAeCompensationStep()), Integer.valueOf(this.mCameraInfo.getAeCompensationNumerator()), Integer.valueOf(this.mCameraInfo.getAeCompensationDenominator()), Integer.valueOf(this.mCameraInfo.getAeCompensationMin()), Integer.valueOf(this.mCameraInfo.getAeCompensationMax())));
                LogFilter.i(LOG_TAG, "========= ========= ========= ========= ==========");
                if (fArr != null) {
                    this.mCameraInfo.setFocalLength(fArr[0]);
                }
                if (sizeF != null) {
                    this.mCameraInfo.setPhysicalSize(sizeF.getWidth(), sizeF.getHeight());
                }
                if (size != null) {
                    this.mCameraInfo.setPixelArraySize(size.getWidth(), size.getHeight());
                }
                if (rect == null) {
                    return true;
                }
                this.mCameraInfo.setActiveArraySize(rect.left, rect.top, rect.right, rect.bottom);
                return true;
            }
            return false;
        } catch (CameraAccessException | SecurityException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean openCamera(boolean z) throws IllegalArgumentException {
        if (this.mIsAvailable && this.mTextureView != null) {
            MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = this.mCameraState.getCameraStartupInfo();
            CameraManager cameraManager = this.mCameraManager;
            try {
                this.mCameraInfo.setOpenState(1);
                if (z) {
                    cameraManager.openCamera(this.mCameraInfo.getCameraId(), this.mStateCallback, new Handler(cameraStartupInfo.backgroundHandlerThread.getLooper()));
                } else {
                    cameraManager.openCamera(this.mCameraInfo.getCameraId(), this.mStateCallback, (Handler) null);
                }
                return true;
            } catch (CameraAccessException | SecurityException e) {
                e.printStackTrace();
                this.mCameraInfo.setOpenState(0);
            }
        }
        return false;
    }

    public boolean openCamera(TextureView textureView, boolean z) throws IllegalArgumentException {
        boolean zPrepareCamera = prepareCamera(textureView);
        return zPrepareCamera ? openCamera(z) : zPrepareCamera;
    }

    public boolean openCamera(TextureView textureView) throws IllegalArgumentException {
        return openCamera(textureView, false);
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public boolean takePicture() {
        if (!this.mIsAvailable) {
            return false;
        }
        try {
            this.mCameraInfo.getCaptureSession().capture(this.mCameraState.getCameraStartupInfo().captureRequest, this.mCaptureCallback, this.mCameraState.backgroundHandler());
            return true;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public boolean takePictureBurst() {
        if (!this.mIsAvailable) {
            return false;
        }
        try {
            this.mCameraState.setBurstRemaining(CameraConstants.BURST_SHOT_NUM);
            LogFilter.i(LOG_TAG, "captureBurst");
            this.mCameraInfo.getCaptureSession().captureBurst(this.mCameraState.getCameraStartupInfo().burstRequestList, this.mCaptureCallback, this.mCameraState.backgroundHandler());
            return true;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public boolean takePictureZSL() {
        if (!this.mIsAvailable) {
            return false;
        }
        try {
            CaptureRequest.Builder builderCreateCaptureRequest = this.mCameraInfo.getOpenCameraDevice().createCaptureRequest(5);
            builderCreateCaptureRequest.addTarget(this.mPreviewSurface);
            builderCreateCaptureRequest.addTarget(this.mImageReader.getSurface());
            builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_LOCK, false);
            builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AWB_LOCK, false);
            builderCreateCaptureRequest.set(CaptureRequest.CONTROL_MODE, 1);
            this.mCameraInfo.getCaptureSession().capture(builderCreateCaptureRequest.build(), this.mCaptureCallback, this.mCameraState.backgroundHandler());
            return true;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void updateCameraState(CameraState cameraState) {
        if (cameraState instanceof MorphoPanoramaGP2CameraState) {
            this.mCameraState = (MorphoPanoramaGP2CameraState) cameraState;
        } else {
            LogFilter.w(LOG_TAG, "#updateCameraState, argument is invalid.");
            setDefaultCameraState();
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void cancelState() {
        this.mCameraState.onCancel();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void startState() {
        this.mCameraState.onStart();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void stopState() {
        this.mCameraState.onStop();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public boolean finishState() {
        return this.mCameraState.onFinish();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void startTakePictureState() {
        this.mCameraState.onTakePictureStart();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public boolean canExitState() {
        return this.mCameraState.canExit();
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public void setDefaultCameraState() {
        this.mCameraState = new MorphoPanoramaGP2CameraState();
    }

    public void updateTvValue() {
        Camera2ParamsFragment camera2ParamsFragmentCamera2Params = this.mCameraState.camera2Params();
        this.mTvTargetSensorSensitivity = camera2ParamsFragmentCamera2Params.sensorSensitivity();
        this.mTvTargetExposureTime = camera2ParamsFragmentCamera2Params.exposureTime().longValue();
    }

    public void calculateNewRequest(double d) {
        double dDoubleValue;
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = this.mCameraState.getCameraStartupInfo();
        Integer num = (Integer) cameraStartupInfo.totalCaptureResult.get(TotalCaptureResult.SENSOR_SENSITIVITY);
        Long l = (Long) cameraStartupInfo.totalCaptureResult.get(TotalCaptureResult.SENSOR_EXPOSURE_TIME);
        if (num == null || l == null) {
            LogFilter.e(LOG_TAG, "SENSOR_SENSITIVITY or SENSOR_EXPOSURE_TIME is null.");
            return;
        }
        Camera2ParamsFragment camera2ParamsFragmentCamera2Params = this.mCameraState.camera2Params();
        int iEvSteps = camera2ParamsFragmentCamera2Params.evSteps();
        if (iEvSteps == 0) {
            dDoubleValue = ((Double) CameraInfo.CAPTURE_GAIN_RANGE.clamp(Double.valueOf(d))).doubleValue();
        } else {
            dDoubleValue = ((Double) CameraInfo.CAPTURE_GAIN_RANGE.clamp(Double.valueOf(Math.exp(Math.log(2.0d) * this.mCameraInfo.getAeCompensationStep() * ((double) iEvSteps)) * d))).doubleValue();
        }
        double dIntValue = dDoubleValue * ((double) num.intValue()) * l.longValue();
        int iClampSensitivityRange = this.mCameraInfo.clampSensitivityRange((int) (dIntValue / camera2ParamsFragmentCamera2Params.shutterSpeedInNanoSeconds()));
        long jMin = Math.min(this.mCameraInfo.clampExposureTime(Long.valueOf((long) (dIntValue / ((double) iClampSensitivityRange)))).longValue(), CameraConstants.TV_EXPOSURE_TIME_MAX);
        this.mTvTargetSensorSensitivity = iClampSensitivityRange;
        this.mTvTargetExposureTime = jMin;
        int iCalculateSensorSensitivity = calculateSensorSensitivity(iClampSensitivityRange);
        long jCalculateExposureTime = calculateExposureTime(jMin);
        camera2ParamsFragmentCamera2Params.setSensorSensitivity(iCalculateSensorSensitivity);
        camera2ParamsFragmentCamera2Params.setExposureTime(jCalculateExposureTime);
    }

    public boolean startTakePictureNewRequest(int i) {
        MorphoPanoramaGP2CameraState.CameraStartupInfo cameraStartupInfo = this.mCameraState.getCameraStartupInfo();
        CaptureRequest.Builder builder = cameraStartupInfo.currentRequestBuilder;
        CaptureRequest.Builder builder2 = cameraStartupInfo.currentBurstRequestBuilder;
        Camera2ParamsFragment camera2ParamsFragmentCamera2Params = this.mCameraState.camera2Params();
        builder.set(CaptureRequest.CONTROL_AE_LOCK, false);
        builder.set(CaptureRequest.CONTROL_AWB_LOCK, false);
        int iSensorSensitivity = camera2ParamsFragmentCamera2Params.sensorSensitivity();
        Long lExposureTime = camera2ParamsFragmentCamera2Params.exposureTime();
        Long lFrameDuration = camera2ParamsFragmentCamera2Params.frameDuration();
        builder.set(CaptureRequest.SENSOR_SENSITIVITY, Integer.valueOf(iSensorSensitivity));
        builder.set(CaptureRequest.SENSOR_EXPOSURE_TIME, lExposureTime);
        builder.set(CaptureRequest.SENSOR_FRAME_DURATION, lFrameDuration);
        if (i == 3 || i == 4) {
            builder2.set(CaptureRequest.CONTROL_AE_LOCK, false);
            builder2.set(CaptureRequest.CONTROL_AWB_LOCK, false);
            builder2.set(CaptureRequest.SENSOR_SENSITIVITY, Integer.valueOf(iSensorSensitivity));
            builder2.set(CaptureRequest.SENSOR_EXPOSURE_TIME, lExposureTime);
            builder2.set(CaptureRequest.SENSOR_FRAME_DURATION, lFrameDuration);
            CaptureRequest captureRequestBuild = builder2.build();
            cameraStartupInfo.burstRequestList.clear();
            cameraStartupInfo.burstRequestList.add(captureRequestBuild);
        }
        try {
            Handler handlerBackgroundHandler = this.mCameraState.backgroundHandler();
            cameraStartupInfo.captureRequest = builder.build();
            CameraCaptureSession captureSession = this.mCameraInfo.getCaptureSession();
            synchronized (CameraConstants.CameraSynchronizedObject) {
                try {
                    if (i == 1 || i == 2) {
                        captureSession.capture(cameraStartupInfo.captureRequest, this.mCaptureCallback, handlerBackgroundHandler);
                    } else if (i == 3) {
                        this.mCameraState.setBurstRemaining(0);
                        captureSession.capture(cameraStartupInfo.captureRequest, this.mCaptureCallback, handlerBackgroundHandler);
                    } else if (i != 4) {
                        captureSession.setRepeatingRequest(cameraStartupInfo.captureRequest, this.mCaptureCallback, handlerBackgroundHandler);
                    } else {
                        captureSession.stopRepeating();
                        captureSession.setRepeatingBurst(cameraStartupInfo.burstRequestList, this.mCaptureCallback, handlerBackgroundHandler);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return false;
        }
    }

    private int calculateSensorSensitivity(int i) {
        Camera2ParamsFragment camera2ParamsFragmentCamera2Params = this.mCameraState.camera2Params();
        if (i - camera2ParamsFragmentCamera2Params.sensorSensitivity() > 5) {
            return Math.min(camera2ParamsFragmentCamera2Params.sensorSensitivity() + 5, this.mTvTargetSensorSensitivity);
        }
        return i - camera2ParamsFragmentCamera2Params.sensorSensitivity() < -5 ? Math.max(camera2ParamsFragmentCamera2Params.sensorSensitivity() - 5, this.mTvTargetSensorSensitivity) : i;
    }

    private long calculateExposureTime(long j) {
        Camera2ParamsFragment camera2ParamsFragmentCamera2Params = this.mCameraState.camera2Params();
        if (j - camera2ParamsFragmentCamera2Params.exposureTime().longValue() > CameraConstants.TV_EXPOSURE_TIME_DIFF) {
            return Math.min(camera2ParamsFragmentCamera2Params.exposureTime().longValue() + CameraConstants.TV_EXPOSURE_TIME_DIFF, this.mTvTargetExposureTime);
        }
        return j - camera2ParamsFragmentCamera2Params.exposureTime().longValue() < -500000 ? Math.max(camera2ParamsFragmentCamera2Params.exposureTime().longValue() - CameraConstants.TV_EXPOSURE_TIME_DIFF, this.mTvTargetExposureTime) : j;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public int[] getSupportedPreviewSizes() {
        if (!this.mCameraInfo.isCameraEnabled()) {
            return new int[0];
        }
        try {
            StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) this.mCameraManager.getCameraCharacteristics(this.mCameraInfo.getCameraId()).get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
            if (streamConfigurationMap == null) {
                return new int[0];
            }
            List<Size> listAsList = Arrays.asList(streamConfigurationMap.getOutputSizes(35));
            Collections.sort(listAsList, this.mSizeComparator);
            int[] iArr = new int[listAsList.size() * 2];
            int i = 0;
            for (Size size : listAsList) {
                int i2 = i + 1;
                iArr[i] = size.getWidth();
                i += 2;
                iArr[i2] = size.getHeight();
            }
            return iArr;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return new int[0];
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getAvailableColorCorrectionMode() {
        if (this.mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return new String[]{"FAST", "HIGH_QUALITY"};
        }
        return null;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getAvailableColorCorrectionModeValues() {
        if (this.mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return new String[]{String.valueOf(1), String.valueOf(2)};
        }
        return null;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getColorCorrectionModeDefaultValues() {
        return getImageQualitySettingsDefaultValues(CaptureRequest.COLOR_CORRECTION_MODE);
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getAvailableEdgeMode() {
        if (!this.mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        try {
            int[] iArr = (int[]) this.mCameraManager.getCameraCharacteristics(this.mCameraInfo.getCameraId()).get(CameraCharacteristics.EDGE_AVAILABLE_EDGE_MODES);
            if (iArr == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (i == 0) {
                    arrayList.add("OFF");
                } else if (i == 1) {
                    arrayList.add("FAST");
                } else if (i == 2) {
                    arrayList.add("HIGH_QUALITY");
                }
            }
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getAvailableEdgeModeValues() {
        if (!this.mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        try {
            int[] iArr = (int[]) this.mCameraManager.getCameraCharacteristics(this.mCameraInfo.getCameraId()).get(CameraCharacteristics.EDGE_AVAILABLE_EDGE_MODES);
            if (iArr == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (i == 0 || i == 1 || i == 2) {
                    arrayList.add(String.valueOf(i));
                }
            }
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getEdgeModeDefaultValues() {
        return getImageQualitySettingsDefaultValues(CaptureRequest.EDGE_MODE);
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getAvailableNoiseReductionMode() {
        if (!this.mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        try {
            int[] iArr = (int[]) this.mCameraManager.getCameraCharacteristics(this.mCameraInfo.getCameraId()).get(CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES);
            if (iArr == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (i == 0) {
                    arrayList.add("OFF");
                } else if (i == 1) {
                    arrayList.add("FAST");
                } else if (i == 2) {
                    arrayList.add("HIGH_QUALITY");
                }
            }
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getAvailableNoiseReductionModeValues() {
        if (!this.mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        try {
            int[] iArr = (int[]) this.mCameraManager.getCameraCharacteristics(this.mCameraInfo.getCameraId()).get(CameraCharacteristics.NOISE_REDUCTION_AVAILABLE_NOISE_REDUCTION_MODES);
            if (iArr == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (i == 0 || i == 1 || i == 2) {
                    arrayList.add(String.valueOf(i));
                }
            }
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getNoiseReductionModeDefaultValues() {
        return getImageQualitySettingsDefaultValues(CaptureRequest.NOISE_REDUCTION_MODE);
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getAvailableShadingMode() {
        if (this.mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return new String[]{"OFF", "FAST"};
        }
        return null;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getAvailableShadingModeValues() {
        if (this.mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return new String[]{String.valueOf(0), String.valueOf(1)};
        }
        return null;
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getShadingModeDefaultValues() {
        return getImageQualitySettingsDefaultValues(CaptureRequest.SHADING_MODE);
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getAvailableTonemapMode() {
        if (!this.mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        try {
            int[] iArr = (int[]) this.mCameraManager.getCameraCharacteristics(this.mCameraInfo.getCameraId()).get(CameraCharacteristics.TONEMAP_AVAILABLE_TONE_MAP_MODES);
            if (iArr == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (i == 1) {
                    arrayList.add("FAST");
                } else if (i == 2) {
                    arrayList.add("HIGH_QUALITY");
                }
            }
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getAvailableTonemapModeValues() {
        if (!this.mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        try {
            int[] iArr = (int[]) this.mCameraManager.getCameraCharacteristics(this.mCameraInfo.getCameraId()).get(CameraCharacteristics.TONEMAP_AVAILABLE_TONE_MAP_MODES);
            if (iArr == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                if (i == 1 || i == 2) {
                    arrayList.add(String.valueOf(i));
                }
            }
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.sonyericsson.android.camera3d.base.MorphoCameraBase
    public String[] getTonemapModeDefaultValues() {
        return getImageQualitySettingsDefaultValues(CaptureRequest.TONEMAP_MODE);
    }

    private String[] getImageQualitySettingsDefaultValues(CaptureRequest.Key<Integer> key) {
        String str;
        if (!this.mCameraState.getCameraStartupInfo().available_image_quality_settings) {
            return null;
        }
        String[] strArr = new String[3];
        try {
            Integer num = (Integer) this.mCameraInfo.getOpenCameraDevice().createCaptureRequest(1).get(key);
            if (num == null) {
                return null;
            }
            strArr[0] = String.valueOf(num);
            try {
                Integer num2 = (Integer) this.mCameraInfo.getOpenCameraDevice().createCaptureRequest(2).get(key);
                if (num2 != null) {
                    strArr[1] = String.valueOf(num2);
                } else {
                    strArr[1] = strArr[0];
                }
            } catch (CameraAccessException e) {
                e.printStackTrace();
                return null;
            } catch (IllegalStateException e2) {
                e2.printStackTrace();
                return null;
            } catch (Exception unused) {
                strArr[1] = strArr[0];
            }
            if (this.mCameraInfo.isEnabledZsl()) {
                try {
                    Integer num3 = (Integer) this.mCameraInfo.getOpenCameraDevice().createCaptureRequest(5).get(key);
                    if (num3 != null) {
                        strArr[2] = String.valueOf(num3);
                    } else {
                        strArr[2] = strArr[0];
                    }
                } catch (CameraAccessException e3) {
                    e3.printStackTrace();
                    return null;
                } catch (IllegalStateException e4) {
                    e4.printStackTrace();
                    return null;
                } catch (Exception unused2) {
                    strArr[2] = strArr[0];
                    this.mCameraInfo.setEnabledZsl(false);
                }
            } else {
                strArr[2] = strArr[0];
            }
            if (CaptureRequest.COLOR_CORRECTION_MODE.equals(key)) {
                str = "COLOR_CORRECTION_MODE";
            } else if (CaptureRequest.EDGE_MODE.equals(key)) {
                str = "EDGE_MODE";
            } else if (CaptureRequest.NOISE_REDUCTION_MODE.equals(key)) {
                str = "NOISE_REDUCTION_MODE";
            } else if (CaptureRequest.SHADING_MODE.equals(key)) {
                str = "SHADING_MODE";
            } else if (!CaptureRequest.TONEMAP_MODE.equals(key)) {
                str = "";
            } else {
                str = "TONEMAP_MODE";
            }
            LogFilter.i(LOG_TAG, String.format(Locale.US, "getImageQualitySettingsDefaultValues %s[PREVIEW] : %s", str, strArr[0]));
            LogFilter.i(LOG_TAG, String.format(Locale.US, "getImageQualitySettingsDefaultValues %s[STILL]   : %s", str, strArr[1]));
            LogFilter.i(LOG_TAG, String.format(Locale.US, "getImageQualitySettingsDefaultValues %s[ZSL]     : %s", str, strArr[2]));
            return strArr;
        } catch (CameraAccessException e5) {
            e5.printStackTrace();
            return null;
        } catch (IllegalStateException e6) {
            e6.printStackTrace();
            return null;
        } catch (Exception unused3) {
            return null;
        }
    }

    private <T> T tryGetCharacteristics(CameraCharacteristics cameraCharacteristics, CameraCharacteristics.Key<T> key) {
        try {
            return (T) cameraCharacteristics.get(key);
        } catch (IllegalArgumentException unused) {
            LogFilter.e(LOG_TAG, "tryGetCharacteristics: Unknown key: " + key.getName());
            return null;
        }
    }
}
