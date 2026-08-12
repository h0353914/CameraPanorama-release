// ============================================================================
// STAGING FRAGMENT — 待合併進 Camera2App.java 的內部類別
// 內容涵蓋「DecideDirection 群集」共 5 個類別，巢狀關係如下：
//   Camera2App$DecideDirection
//     └── Camera2App$DecideDirection$DecideDirectionAttach (extends base.AttachRunnable)
//           ├── Camera2App$DecideDirection$DecideDirectionAttach$1
//           │     （匿名 Runnable，於 run() 內 runOnUiThread(...) 呼叫點原地內嵌，
//           │       不獨立寫成具名類別 —— 對應原 smali 的 EnclosingMethod 標註）
//           ├── Camera2App$DecideDirection$DecideDirectionAttach$DecideRunnable
//           └── Camera2App$DecideDirection$DecideDirectionAttach$DecideFailRunnable
// 本檔案不可獨立編譯，僅供合併時複製貼上使用（隱式參照外部 Camera2App 欄位/方法，
// 不使用 this$0. / this$1. / this$2. 前綴；具名內部類別直接以簡單名稱存取外層私有成員，
// 匿名類別則比照專案既有慣例以 Camera2App.this. 明示存取 Camera2App 層級成員）。
//
// 所有 access$NNN(...) 合成橋接方法已還原為對 Camera2App / DecideDirection 私有欄位/方法的
// 直接存取（因為在最終合併後，這些內部類別會是 Camera2App 的內部類別，可直接存取外層 private
// 成員，不再需要合成橋接方法）。已核對 /home/h/tmp/SemcCameraUI/.tmp/camera2app_field_reference.txt
// 與 camera2app_method_reference.txt，確認所有欄位/方法名稱、型別均與原始 smali 100% 一致。
//
// 合併時所需的 fully-qualified imports：
//   android.location.Location
//   android.os.Build
//   android.view.View
//   java.util.Locale
//   com.sonyericsson.android.camera3d.base.AttachRunnable
//   com.sonyericsson.android.camera3d.base.DirectionFunction
//   com.sonyericsson.android.camera3d.base.MorphoCameraBase (欄位型別，隱含使用)
//   com.sonyericsson.android.camera3d.base.PanoramaState
//   com.sonyericsson.android.camera3d.utils.LogFilter
//   （CameraInfo、CameraConstants、CaptureImage、InternalSettings、MorphoPanoramaGP2、
//     MorphoPanoramaGP2.InitParam、PanoramaGP2LocationManager、Right/Left/Up/DownDirectionFunction
//     皆與 Camera2App 同屬 com.sonyericsson.android.camera3d 套件，合併後不需 import）
//   （R.string.cam_strings_panorama_sd_permission_data_storage_info_txt = 0x7f0c0076、
//     R.id.panoramagp2_preview_background = 0x7f080085、
//     R.drawable.cam_addon_panorama_progress_bar_h_icn_left = 0x7f07005e、
//     R.drawable.cam_addon_panorama_progress_bar_h_icn_right = 0x7f07005f
//     四個資源 id 已由 res/values/public.xml 核對還原為符號名稱）
// ============================================================================


/**
 * 全景拍攝：等待使用者依提示方向平移相機，透過 MorphoPanoramaGP2 判斷應繼續往哪個方向移動，
 * 直到方向判定完成為止，再切換至 PanoramaPreview 狀態。
 */
private final class DecideDirection extends PanoramaState {
    private DecideDirectionAttach mAttachRunnable;
    private boolean mSaveResult;

    DecideDirection() {
        mAttachRunnable = null;
        mSaveResult = false;
        mAngle = mInitParam.output_rotation;
    }

    @Override
    public boolean onSaveImage(CaptureImage image) {
        if (!isEngineRunning()) {
            LogFilter.e("Camera2App", "DecideDirection.onSaveImage mMorphoPanoramaGP2 is null!!");
            image.close();
            return false;
        }
        addAttachQueue(image);
        if (mAttachRunnable == null) {
            mAttachRunnable = new DecideDirectionAttach();
            mExecutor.submit(mAttachRunnable);
        }
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

    /**
     * 全景拍攝：於背景執行緒接收 attach queue 的影像，交給 MorphoPanoramaGP2 判斷應該往哪個
     * 方向移動；一旦方向判定完成（DirectionFunction.enabled() 為 true）或收到結束訊號，
     * 就通知 UI 執行緒切換到下一個狀態。
     */
    private final class DecideDirectionAttach extends AttachRunnable {

        /**
         * 依 MorphoPanoramaGP2 判斷出的方向，建立對應的 DirectionFunction 並更新畫面上方向箭頭的
         * 旋轉角度。當輸出旋轉角度為 90 或 270 度時，水平／垂直方向的判定方式與其他角度不同
         * （水平／垂直互換使用 getScaleH()／getScaleV()，且箭頭方向改以新建立的 DirectionFunction
         * 本身的 getDirection() 為準，並依前置鏡頭再反轉一次），此處完整保留原始邏輯。
         */
        private void createDirection(int direction) {
            if (mIsPanoramaCancel) {
                return;
            }
            CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
            int outputRotation = mInitParam.output_rotation;
            if (outputRotation != 90 && outputRotation != 270) {
                switch (direction) {
                    case MorphoPanoramaGP2.DIRECTION_VERTICAL_UP: {
                        LogFilter.i("Camera2App", "direction : VERTICAL_UP");
                        int scale = getScaleH();
                        if (mCameraOrientation == 90) {
                            mDirectionFunction = new UpDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            mArrowDir = 1;
                        } else {
                            mDirectionFunction = new DownDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            mArrowDir = 0;
                        }
                        break;
                    }
                    case MorphoPanoramaGP2.DIRECTION_VERTICAL_DOWN: {
                        LogFilter.i("Camera2App", "direction : VERTICAL_DOWN");
                        int scale = getScaleH();
                        if (mCameraOrientation == 90) {
                            mDirectionFunction = new DownDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            mArrowDir = 0;
                        } else {
                            mDirectionFunction = new UpDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            mArrowDir = 1;
                        }
                        break;
                    }
                    case MorphoPanoramaGP2.DIRECTION_HORIZONTAL_LEFT: {
                        LogFilter.i("Camera2App", "direction : HORIZONTAL_LEFT");
                        int scale = getScaleV();
                        if (mCameraOrientation == 90) {
                            mDirectionFunction = new LeftDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            mArrowDir = 2;
                        } else {
                            mDirectionFunction = new RightDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            mArrowDir = 3;
                        }
                        break;
                    }
                    case MorphoPanoramaGP2.DIRECTION_HORIZONTAL_RIGHT: {
                        LogFilter.i("Camera2App", "direction : HORIZONTAL_RIGHT");
                        int scale = getScaleV();
                        if (mCameraOrientation == 90) {
                            mDirectionFunction = new RightDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            mArrowDir = 3;
                        } else {
                            mDirectionFunction = new LeftDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                            mArrowDir = 2;
                        }
                        break;
                    }
                    default:
                        break;
                }
            } else {
                switch (direction) {
                    case MorphoPanoramaGP2.DIRECTION_VERTICAL_UP: {
                        LogFilter.i("Camera2App", "direction : VERTICAL_UP");
                        int scale = getScaleV();
                        if (mCameraOrientation == 90) {
                            mDirectionFunction = new RightDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                        } else {
                            mDirectionFunction = new LeftDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                        }
                        break;
                    }
                    case MorphoPanoramaGP2.DIRECTION_VERTICAL_DOWN: {
                        LogFilter.i("Camera2App", "direction : VERTICAL_DOWN");
                        int scale = getScaleV();
                        if (mCameraOrientation == 90) {
                            mDirectionFunction = new LeftDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                        } else {
                            mDirectionFunction = new RightDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                        }
                        break;
                    }
                    case MorphoPanoramaGP2.DIRECTION_HORIZONTAL_LEFT: {
                        LogFilter.i("Camera2App", "direction : HORIZONTAL_LEFT");
                        int scale = getScaleH();
                        if (mCameraOrientation == 90) {
                            mDirectionFunction = new UpDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                        } else {
                            mDirectionFunction = new DownDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                        }
                        break;
                    }
                    case MorphoPanoramaGP2.DIRECTION_HORIZONTAL_RIGHT: {
                        LogFilter.i("Camera2App", "direction : HORIZONTAL_RIGHT");
                        int scale = getScaleH();
                        if (mCameraOrientation == 90) {
                            mDirectionFunction = new DownDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                        } else {
                            mDirectionFunction = new UpDirectionFunction(cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(),
                                    mMaxWidth, mMaxHeight, scale, mInitParam.output_rotation);
                        }
                        break;
                    }
                    default:
                        break;
                }
                mArrowDir = mDirectionFunction.getDirection();
                if (mIsFrontCamera) {
                    mArrowDir = DirectionFunction.reverseDirection(mArrowDir);
                }
            }

            float rotation;
            switch (mArrowDir) {
                case 0:
                    rotation = 180.0f;
                    break;
                case 1:
                    rotation = 0.0f;
                    break;
                case 2:
                    rotation = 270.0f;
                    break;
                case 3:
                    rotation = 90.0f;
                    break;
                default:
                    rotation = 0.0f;
                    break;
            }
            mPreviewArrow.setRotation(rotation);
        }

        // 注意：getScaleH()／getScaleV() 皆以 SurfaceView／TextureView 的「高度」計算縮放比例
        // （getScaleV() 也是除以高度，而非寬度）——這是原始程式碼既有寫法，忠實保留，非筆誤修正。

        private int getScaleH() {
            if (mSurfaceView != null && mSurfaceView.getVisibility() == View.VISIBLE) {
                int height = mSurfaceView.getHeight();
                return Math.max(1, (mMaxHeight + height - 1) / height);
            }
            int height = mTextureView.getHeight();
            return Math.max(1, (mMaxHeight + height - 1) / height);
        }

        private int getScaleV() {
            if (mSurfaceView != null && mSurfaceView.getVisibility() == View.VISIBLE) {
                int height = mSurfaceView.getHeight();
                return Math.max(1, (mMaxWidth + height - 1) / height);
            }
            int height = mTextureView.getHeight();
            return Math.max(1, (mMaxWidth + height - 1) / height);
        }

        @Override
        public void run() {
            try {
                if (mInternalSettings.ui_control_mode == 2) {
                    // 簡易模式：僅執行 attach() 判斷方向，迴圈中不會另存中途影像。
                    while (true) {
                        CaptureImage image = mAttachImageQueue.take();
                        if (image == sAttachExit) {
                            LogFilter.d("Camera2App", "attach thread exit. (request exit)");
                            return;
                        }
                        setImage(image);
                        boolean decided = false;
                        synchronized (CameraConstants.CameraSynchronizedObject) {
                            int direction;
                            synchronized (CameraConstants.EngineSynchronizedObject) {
                                if (!isEngineRunning() || mEngineEnding) {
                                    LogFilter.i("Camera2App", "attach thread exit. (engine is stop.)");
                                    closeSrc();
                                    return;
                                }
                                if (mMorphoPanoramaGP2.getAttachCount() % 5 == 0) {
                                    setInitialRotationByGravity();
                                    mIsSensorAverage = true;
                                }
                                setSensorFusionValue();
                                int ret = mMorphoPanoramaGP2.attach(byteBuffer[0], byteBuffer[1], byteBuffer[2],
                                        rowStride[0], rowStride[1], rowStride[2],
                                        pixelStride[0], pixelStride[1], pixelStride[2], null);
                                closeSrc();
                                mIsInvalidDir = (ret == MorphoPanoramaGP2.ERROR_INVALID_DIR);
                                if (ret != 0) {
                                    if (!mIsInvalidDir) {
                                        LogFilter.e("Camera2App", "mMorphoPanoramaGP2.attach error ret:" + ret);
                                    }
                                    runOnUiThread(new DecideFailRunnable());
                                    return;
                                }
                                direction = mMorphoPanoramaGP2.getDirection();
                                if (direction != mInitParam.direction) {
                                    int[] outputImageSize = new int[2];
                                    int sizeRet = mMorphoPanoramaGP2.getOutputImageSize(outputImageSize);
                                    if (sizeRet != 0) {
                                        LogFilter.e("Camera2App", String.format(Locale.US,
                                                "MorphoSensorFusion.getOutputImageSize error ret:0x%08X", sizeRet));
                                    }
                                    mMaxWidth = outputImageSize[0];
                                    mMaxHeight = outputImageSize[1];
                                }
                            }
                            if (direction != mInitParam.direction) {
                                createDirection(direction);
                                if (mDirectionFunction.enabled()) {
                                    decided = true;
                                } else {
                                    try {
                                        Thread.sleep(SLEEP_MILLISEC, SLEEP_NANOSEC);
                                    } catch (InterruptedException ignored) {
                                        // 原始 smali 對此處的 InterruptedException 直接吞掉並重試迴圈，忠實保留。
                                    }
                                }
                            }
                        }
                        if (decided) {
                            break;
                        }
                    }
                } else {
                    // 一般模式：多一層取消處理——若全景拍攝已被取消，僅在「第一次」遇到取消時，
                    // 把目前影像另存為一般照片（建立存檔路徑失敗時則略過儲存，但仍會通知 UI 並清理
                    // 資源），之後的取消影像則直接丟棄不再重複儲存。
                    // 注意：此處使用的鎖是 mSyncCancelSave，而非其他 attach 迴圈慣用的
                    // CameraSynchronizedObject——這是原始程式碼既有寫法，忠實保留。此迴圈也沒有
                    // 第一個迴圈那樣的 Thread.sleep()，方向未判定完成時會立即進行下一輪 attach。
                    boolean pendingCancelSave = true;
                    while (true) {
                        CaptureImage image = mAttachImageQueue.take();
                        if (image == sAttachExit) {
                            LogFilter.d("Camera2App", "attach thread exit. (request exit)");
                            return;
                        }
                        setImage(image);
                        boolean decided = false;
                        synchronized (mSyncCancelSave) {
                            if (mIsPanoramaCancel) {
                                if (pendingCancelSave) {
                                    String path = createNewFilePath();
                                    if (path != null) {
                                        CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
                                        int width = cameraInfo.getCaptureWidth();
                                        int height = cameraInfo.getCaptureHeight();
                                        double exposureTimeSec = mLatestCaptureResult.getExposureTime() / 1000.0 / 1000.0 / 1000.0;
                                        int iso = mLatestCaptureResult.getIsoValue();
                                        Location location = mSettings.isSaveLocation() ? mLocationManager.getLocation() : null;
                                        playSound(mStopSoundId);
                                        boolean saved;
                                        if (Build.VERSION.SDK_INT >= 28 && isSaveDestinationExternal()) {
                                            String albumDirName = String.format(Locale.US, "%d%s", mSaveDirId, "ANDRO");
                                            saved = saveJpeg2Sd(getApplicationContext(), getContentResolver(),
                                                    mSettings.getSdCardGrantedUri(), path, albumDirName, width, height,
                                                    mInitParam.input_format, location, exposureTimeSec, iso, mCurOrientation);
                                        } else {
                                            saved = saveJpeg(getContentResolver(), path, width, height,
                                                    mInitParam.input_format, location, exposureTimeSec, iso, mCurOrientation);
                                        }
                                        mSaveResult = saved;
                                        mSavePanoramaPath = path;
                                    }
                                    Camera2App.this.runOnUiThread(new Runnable() {
                                        @Override
                                        public void run() {
                                            Camera2App.this.getSavingProgressBar().setVisibility(View.INVISIBLE);
                                            if (Camera2App.this.mActive && !Camera2App.this.mSavingBackground
                                                    && !Camera2App.this.mTemperatureHigh) {
                                                if (Camera2App.this.mIsNotifySave2Internal && mSaveResult) {
                                                    Camera2App.this.startRotatableToast(Camera2App.this.getResources().getString(
                                                            R.string.cam_strings_panorama_sd_permission_data_storage_info_txt), 3500, false);
                                                }
                                                Camera2App.this.mMorphoCamera.finishState();
                                            }
                                            Camera2App.this.mIsNotifySave2Internal = false;
                                            if (Camera2App.this.mSavingBackground) {
                                                Camera2App.this.mMorphoCamera.cancelState();
                                                Camera2App.this.mMorphoCamera.setDefaultCameraState();
                                                Camera2App.this.mMorphoCamera.pause();
                                                Camera2App.this.mMorphoCamera.exit();
                                            }
                                            if (Camera2App.this.isEngineRunning()) {
                                                Camera2App.this.finishEngine();
                                            }
                                            Camera2App.this.mTemperatureHigh = false;
                                            Camera2App.this.mIsPanoramaCancel = false;
                                            if (Camera2App.this.mActive && !Camera2App.this.mTemperatureHigh) {
                                                Camera2App.this.checkRemainingMemory(false);
                                            }
                                        }
                                    });
                                    pendingCancelSave = false;
                                }
                                closeSrc();
                            } else {
                                int direction;
                                synchronized (CameraConstants.EngineSynchronizedObject) {
                                    if (!isEngineRunning() || mEngineEnding) {
                                        LogFilter.i("Camera2App", "attach thread exit. (engine is stop.)");
                                        closeSrc();
                                        return;
                                    }
                                    if (mMorphoPanoramaGP2.getAttachCount() % 5 == 0) {
                                        setInitialRotationByGravity();
                                        mIsSensorAverage = true;
                                    }
                                    setSensorFusionValue();
                                    int ret = mMorphoPanoramaGP2.attach(byteBuffer[0], byteBuffer[1], byteBuffer[2],
                                            rowStride[0], rowStride[1], rowStride[2],
                                            pixelStride[0], pixelStride[1], pixelStride[2], null);
                                    closeSrc();
                                    mIsInvalidDir = (ret == MorphoPanoramaGP2.ERROR_INVALID_DIR);
                                    if (ret != 0) {
                                        if (!mIsInvalidDir) {
                                            LogFilter.e("Camera2App", "mMorphoPanoramaGP2.attach error ret:" + ret);
                                        }
                                        runOnUiThread(new DecideFailRunnable());
                                        return;
                                    }
                                    direction = mMorphoPanoramaGP2.getDirection();
                                    if (direction != mInitParam.direction) {
                                        int[] outputImageSize = new int[2];
                                        int sizeRet = mMorphoPanoramaGP2.getOutputImageSize(outputImageSize);
                                        if (sizeRet != 0) {
                                            LogFilter.e("Camera2App", String.format(Locale.US,
                                                    "MorphoSensorFusion.getOutputImageSize error ret:0x%08X", sizeRet));
                                        }
                                        mMaxWidth = outputImageSize[0];
                                        mMaxHeight = outputImageSize[1];
                                    }
                                }
                                if (direction != mInitParam.direction) {
                                    createDirection(direction);
                                    if (mDirectionFunction.enabled()) {
                                        decided = true;
                                    }
                                }
                            }
                        }
                        if (decided) {
                            break;
                        }
                    }
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
                runOnUiThread(new DecideFailRunnable());
                return;
            }
            stopCaptureTimer();
            runOnUiThread(new DecideRunnable());
        }

        /**
         * 全景拍攝：方向已判定完成，切換到 PanoramaPreview 狀態並更新方向箭頭底圖，於 UI 執行緒執行。
         */
        private final class DecideRunnable implements Runnable {

            private void runMain() {
                synchronized (CameraConstants.EngineSynchronizedObject) {
                    if (mMorphoPanoramaGP2 == null) {
                        mMorphoCamera.cancelState();
                        mMorphoCamera.startState();
                        return;
                    }
                    if ("Sony".equals(Build.MANUFACTURER)) {
                        mIsSensorAverage = false;
                        mSensorCnt = 0;
                    } else {
                        unregisterGravitySensorListener();
                    }
                    mAttachNumDirectionUndecided = mMorphoPanoramaGP2.getAttachCount();
                    boolean aborted = mPanoramaState.isAborted();
                    mPanoramaState = new PanoramaPreview(aborted);
                    mPanoramaState.setPanoramaStateEventListener(listener);
                    clearListener();
                    if (mArrowDir == 0 || mArrowDir == 3) {
                        findViewById(R.id.panoramagp2_preview_background)
                                .setBackgroundResource(R.drawable.cam_addon_panorama_progress_bar_h_icn_left);
                    } else {
                        findViewById(R.id.panoramagp2_preview_background)
                                .setBackgroundResource(R.drawable.cam_addon_panorama_progress_bar_h_icn_right);
                    }
                }
            }

            @Override
            public void run() {
                if (mInternalSettings.ui_control_mode == 2) {
                    synchronized (CameraConstants.CameraSynchronizedObject) {
                        runMain();
                    }
                } else {
                    runMain();
                }
            }
        }

        /**
         * 全景拍攝：attach() 失敗（含方向判定無效）時，恢復拍攝狀態並清除背景儲存通知旗標，於 UI
         * 執行緒執行。
         */
        private final class DecideFailRunnable implements Runnable {
            @Override
            public void run() {
                mMorphoCamera.cancelState();
                mMorphoCamera.startState();
                mIsNotifySave2Internal = false;
            }
        }
    }
}
