// ============================================================================
// STAGING FRAGMENT — 待合併進 Camera2App.java 的內部類別
// 內容涵蓋 Camera2App$PanoramaFirst 與 Camera2App$PanoramaInit 兩個 inner class。
// 本檔案不可獨立編譯，僅供合併時複製貼上使用（隱式參照外部 Camera2App 欄位/方法，
// 不使用 this$0. 前綴）。
//
// 合併時所需的 fully-qualified imports：
//   android.graphics.Point
//   java.io.File
//   java.lang.StringBuilder (implicit, no import needed)
//   java.util.Locale
//   com.sonyericsson.android.camera3d.CameraInfo
//   com.sonyericsson.android.camera3d.CaptureImage
//   com.sonyericsson.android.camera3d.InternalSettings
//   com.sonyericsson.android.camera3d.MorphoPanoramaGP2
//   com.sonyericsson.android.camera3d.MorphoPanoramaGP2.InitParam (MorphoPanoramaGP2$InitParam)
//   com.sonyericsson.android.camera3d.base.MorphoCameraBase
//   com.sonyericsson.android.camera3d.base.PanoramaState
//   com.sonyericsson.android.camera3d.utils.LogFilter
// ============================================================================


/**
 * 全景拍攝：拍下第一張影像後，初始化並啟動 MorphoPanoramaGP2 引擎的狀態。
 */
private final class PanoramaFirst extends PanoramaState {

    @Override
    public boolean onSaveImage(CaptureImage image) {
        image.close();
        setNullDirectionFunction();
        if (!isEngineRunning()) {
            LogFilter.e("Camera2App", "PanoramaFirst.onSaveImage mMorphoPanoramaGP2 is null!!");
            return false;
        }

        CameraInfo cameraInfo = mMorphoCamera.cameraInfo();

        Point point = new Point();
        point.x = cameraInfo.getCaptureWidth() / 2;
        point.y = cameraInfo.getCaptureHeight() / 2;

        String name = createName(System.currentTimeMillis());
        mInputFolderPath = mFolderPath + File.separator + "input" + File.separator + name;

        if (mInternalSettings.save_input_images == 0) {
            mMorphoPanoramaGP2.disableSaveInputImages();
        } else {
            File inputDir = new File(mInputFolderPath);
            if (!inputDir.exists() && !inputDir.mkdirs()) {
                return false;
            }
            switch (mInternalSettings.save_input_images) {
                case 1:
                    mInternalSettings.initializeEncoder(mInputFolderPath, mInitParam.input_width, mInitParam.input_height);
                    break;
                case 2:
                    mMorphoPanoramaGP2.enableSaveInputImages(mInputFolderPath);
                    break;
                default:
                    break;
            }
        }

        int ret = mMorphoPanoramaGP2.setShrinkRatio(mInternalSettings.shrink_ratio);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setShrinkRatio error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.setCalcseamPixnum(mInternalSettings.calcseam_pixnum);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setCalcseamPixnum error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.setUseDeform(mInternalSettings.use_deform);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setUseDeform error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.setUseLuminanceCorrection(mInternalSettings.use_luminance_correction);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setUseLuminanceCorrection error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.setSeamsearchRatio(mInternalSettings.seamsearch_ratio);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setSeamsearchRatio error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.setZrotationCoeff(mInternalSettings.zrotation_coeff);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setZrotationCoeff error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.setDrawThreshold(mInternalSettings.draw_threshold);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setDrawThreshold error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.setUnsharpStrength(mInternalSettings.unsharp_strength);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setUnsharpStrength error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.setAovGain(mInternalSettings.aov_gain);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setAovGain error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.setDistortionCorrectionParam(mInternalSettings.distortion_k1, mInternalSettings.distortion_k2,
                mInternalSettings.distortion_k3, mInternalSettings.distortion_k4);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setDistortionCorrectionParam error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.setRotationRatio(mInternalSettings.rotation_ratio);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setRotationRatio error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.setProjectionMode(mInternalSettings.projection_mode);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setProjectionMode error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.setMotionDetectionMode(mInternalSettings.motion_detection_mode);
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.setMotionDetectionMode error ret:0x%08X", ret));
        }

        ret = mMorphoPanoramaGP2.start(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight());
        if (ret != 0) {
            LogFilter.e("Camera2App", "mMorphoPanoramaGP2.start error ret:" + ret);
            onErrorCapture();
            return false;
        }

        mPanoramaState = new DecideDirection();
        mPanoramaState.setPanoramaStateEventListener(listener);
        clearListener();
        return true;
    }

    @Override
    public void repeatTakePicture() {
        boolean result;
        switch (mInternalSettings.getCaptureMode()) {
            case 1:
                result = mMorphoCamera.takePicture();
                break;
            case 2:
                result = mMorphoCamera.takePictureZSL();
                break;
            case 3:
                result = mMorphoCamera.takePictureBurst();
                break;
            default:
                result = true;
                break;
        }
        if (!result) {
            onErrorCapture();
        }
    }
}

/**
 * 全景拍攝：建立/確認 MorphoPanoramaGP2 引擎的初始狀態。
 */
private final class PanoramaInit extends PanoramaState {

    @Override
    public boolean onSaveImage(CaptureImage image) {
        mImageFormat = image.getImageFormat();
        LogFilter.i("Camera2App", "ImageFormat :" + mImageFormat);

        EnumResultCreateEngine result = createEngine();
        switch (result) {
            case RESULT_NEWLY_CREATED: {
                int ret = mMorphoPanoramaGP2.setInputImageFormat(mImageFormat);
                if (ret != 0) {
                    LogFilter.e("Camera2App", "mMorphoPanoramaGP2.setImageFormat error ret:" + ret);
                }
                mPanoramaState = new PanoramaFirst();
                mPanoramaState.setPanoramaStateEventListener(listener);
                clearListener();
                return mPanoramaState.onSaveImage(image);
            }
            case RESULT_ALREADY_CREATED:
                mPanoramaState = new PanoramaPreview();
                mPanoramaState.setPanoramaStateEventListener(listener);
                clearListener();
                image.close();
                return true;
            default:
                onErrorCapture();
                return false;
        }
    }

    @Override
    public void repeatTakePicture() {
        boolean result;
        switch (mInternalSettings.getCaptureMode()) {
            case 1:
                result = mMorphoCamera.takePicture();
                break;
            case 2:
                result = mMorphoCamera.takePictureZSL();
                break;
            case 3:
                result = mMorphoCamera.takePictureBurst();
                break;
            default:
                result = true;
                break;
        }
        if (!result) {
            onErrorCapture();
        }
    }
}
