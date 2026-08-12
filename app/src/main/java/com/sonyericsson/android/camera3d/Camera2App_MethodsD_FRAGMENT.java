// ============================================================================
// STAGING FRAGMENT - 這不是完整的 .java 檔案，是 Camera2App 類別本體的一部分方法實作，
// 之後會被合併進 Camera2App.java 內（該檔案已含所有欄位宣告與建構子）。
// 對應批次清單: /home/h/tmp/SemcCameraUI/.tmp/camera2app_methods_batchD.txt (53 個方法)
//
// 合併時除了 Camera2App.java 目前已有的 import 之外，還需要以下型別（同套件
// com.sonyericsson.android.camera3d.* 底下的類別皆不需要 import）：
//
//   import android.annotation.TargetApi;
//   import android.content.ComponentName;
//   import android.content.Intent;
//   import android.content.IntentFilter;
//   import android.content.SharedPreferences;
//   import android.content.pm.PackageManager;
//   import android.hardware.Camera;
//   import android.hardware.SensorEvent;
//   import android.hardware.camera2.CaptureRequest;
//   import android.hardware.camera2.TotalCaptureResult;
//   import android.location.LocationManager;
//   import android.media.AudioManager;
//   import android.os.Bundle;
//   import android.provider.DocumentsContract;
//   import android.view.KeyEvent;
//   import android.view.WindowManager;
//   import android.webkit.MimeTypeMap;
//   import java.util.Locale;
//   import java.util.concurrent.TimeUnit;
//   import com.sonyericsson.android.camera3d.camera_states.AutoFocusState;
//   import com.sonyericsson.android.camera3d.camera_states.Camera1AutoFocusState;
//   import com.sonyericsson.android.camera3d.camera_states.CameraState;
//   import com.sonyericsson.android.camera3d.utils.LogFilter;
//
// 有幾處呼叫點對應 smali 中「編號」的匿名內部類別（Camera2App$4, $5, $6, $7, $8,
// $12, $13, $14, $18, $19, $20），這些是純粹的匿名類別（View.OnTouchListener、
// Runnable、BroadcastReceiver...），依專案慣例由另一支 anonymous-classes fragment
// 合併補上，此處以 TODO 註解 + null 佔位，合併時請替換為真正的匿名類別實例。
// 具名內部類別（Settings, ShotSettings, EnumDialogType, SensorSensitivityAverageManager,
// PanoramaInit, SavePictureState, ExtendedOrientationEventListener,
// UpdateCameraInfoViewRunnable 等）則直接以裸類名呼叫，對應 Camera2App.java 骨架中
// 已宣告的欄位型別。
// ============================================================================

@Override
public boolean isInfinityFocus() {
    return mInternalSettings.isInfinityFocus();
}

public boolean isSdCardGranted(Uri uri) {
    LogFilter.d("Camera2App", "isSdCardGranted():" + uri);
    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.P) {
        return true;
    }
    if (uri == null) {
        LogFilter.w("Camera2App", "checkUri is null");
        return false;
    }
    Uri treeUri = DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri));
    boolean granted = false;
    try {
        Uri created = DocumentsContract.createDocument(getContentResolver(), treeUri, DUMMY_FILE_MIME_TYPE, DUMMY_FILE_NAME);
        if (created != null) {
            if (DocumentsContract.deleteDocument(getContentResolver(), created)) {
                LogFilter.d("Camera2App", "SD Card is granted.");
                granted = true;
            } else {
                LogFilter.e("Camera2App", "SD Card is no granted for delete error.");
            }
        } else {
            LogFilter.d("Camera2App", "SD Card is no granted for createDocument failed.");
        }
    } catch (Exception e) {
        LogFilter.e("Camera2App", "file create failed");
    }
    LogFilter.d("Camera2App", "isSdCardGranted() result :" + granted);
    return granted;
}

@Override
public boolean isTvLock() {
    return mInternalSettings.isTvLock();
}

@Override
public void onAccuracyChanged(Sensor sensor, int accuracy) {
}

@Override
protected void onActivityResult(int requestCode, int resultCode, Intent data) {
    LogFilter.d("Camera2App", "onActivityResult: requestCode: " + requestCode + ", resultCode: " + resultCode);
    super.onActivityResult(requestCode, resultCode, data);
    reconstructLocalCache();
    if (requestCode == REQUEST_SD_CARD_PERMISSION) {
        if (resultCode == RESULT_OK) {
            mSettings.setSdCardGranted(data.getData());
            mSettings.setSaveInternalStorage(false);
            mFolderPath = getSaveDestinationRoot(false);
        } else if (resultCode == RESULT_CANCELED) {
            startDialog(EnumDialogType.DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE);
        }
    }
}

@Override
public void onAttachEnd() {
    synchronized (CameraConstants.EngineSynchronizedObject) {
        LogFilter.d("Camera2App", "onAttachEnd");
        mEngineEnding = true;
        if (mMorphoPanoramaGP2 != null) {
            mShotSettings.noiseReductionStrength = 0;
            if (isAutoEdgeNR()) {
                int isoAve = mSensorSensitivityAverageManager.get();
                LogFilter.d("Camera2App", "onAttachEnd isoAve=" + isoAve);
                if (isoAve >= 300 && isoAve <= 400) {
                    mShotSettings.noiseReductionStrength = 8;
                } else if (isoAve > 400) {
                    mShotSettings.noiseReductionStrength = Math.round(isoAve * 0.0375f);
                } else {
                    mShotSettings.noiseReductionStrength = 0;
                }
            } else {
                mShotSettings.noiseReductionStrength = mInternalSettings.nr_strength;
            }
            int ret = mMorphoPanoramaGP2.setNoiseReductionParam(mShotSettings.noiseReductionStrength);
            if (ret != 0) {
                LogFilter.e("Camera2App", "mMorphoPanoramaGP3.setNoiseReductionParam error ret:" + ret);
            }
            long start = System.currentTimeMillis();
            int endRet = mMorphoPanoramaGP2.end();
            LogFilter.d("Camera2App", "end time=" + (System.currentTimeMillis() - start));
            if (endRet != 0) {
                LogFilter.e("Camera2App", "mMorphoPanoramaGP2.end error ret:" + endRet);
            }
        }
    }
    releaseImageBitmap();
}

@Override
public void onAutoFocusFinish(boolean success) {
    mIsAutoFocusProcessing = false;
    if (success) {
        if (mGuiCapturePressed || mKeyFocusPressed) {
            playSound(mFocusedSoundId);
        }
        mAutoFocusCircle.setImageResource(R.drawable.cam_auto_focus_circle_focus_locked_icn);
    } else {
        mAutoFocusCircle.setVisibility(View.GONE);
    }
}

@Override
public void onBackPressed() {
    super.onBackPressed();
}

public void onCancelLocationSetting() {
    mShutdownView = false;
    mPermissionSequence = true;
    mSettingList.setChecked(SettingList.LIST_INDEX_SAVE_LOCATION, false);
    mScreenCounter = 3;
    showBlackScreen();
    try {
        startCamera();
    } catch (IllegalArgumentException e) {
        e.printStackTrace();
        onErrorCamera();
    }
}

@Override
public void onCaptureCompleted(CaptureRequest request, TotalCaptureResult result) {
    int hardwareLevel = mMorphoCamera.cameraInfo().getHardwareLevel();
    if (hardwareLevel == 2 || hardwareLevel == 0) {
        mUpdateCameraInfoViewRunnable.setTotalCaptureResult(result);
        mUpdateCameraInfoViewRunnable.run();
    }
    if (!isEngineRunning()) {
        onPreviewCaptureCompleted();
    }
}

@Override
public void onCheckedChanged(int index, boolean checked) {
    if (index == SettingList.LIST_INDEX_SAVE_LOCATION) {
        mSettings.setSaveLocation(checked);
        if (checked) {
            showPermissionOrValidateLocation();
        } else {
            stopGpsSearchTimer();
            getInfoIconsFragment().stopGpsSearch();
        }
    } else if (index == SettingList.LIST_INDEX_CAMERA_SOUND) {
        mSettings.setCameraSound(checked);
    }
}

public void onClickCameraSetting(View view) {
    mInternalSettings.revertCamera2ParamsFragmentMode();
    if (!isEngineRunning()) {
        mInternalSettings.toggleVisibilityCameraParamFrame();
    }
}

public void onClickSetting(View view) {
    mInternalSettings.revertCamera2ParamsFragmentMode();
    if (!isEngineRunning()) {
        LogFilter.i("Camera2App", "onClickSetting " + mAovs[0] + " " + mAovs[1]);
        String aspect = "" + ASPECT_TABLE[mSensorAspectIndex][0] + ":" + ASPECT_TABLE[mSensorAspectIndex][1];
        mInternalSettings.startSettingActivity(this, mAovs, aspect, mCamera2ImageQualitySettings,
                mMorphoCamera.getAllCameras());
    }
}

public void onClickShutter(View view) {
    synchronized (mSyncCancelSave) {
        if (mActive && !mIsPanoramaCancel) {
            mSavingBackground = false;
            if (isOpenedSettingDialog()) {
                closeSettingDialog();
            }
            mInternalSettings.revertCamera2ParamsFragmentMode();
            if (isSaveDestinationExternal() && !isSdCardGranted(mSettings.getSdCardGrantedUri())) {
                mIsNotifySave2Internal = true;
                setSaveDestination(true);
            }
            if (!checkRemainingMemory(false)) {
                mAutoFocusCircle.setVisibility(View.GONE);
                setViewsVisibility(0);
                return;
            }
            if (mIsAutoFocusProcessing) {
                CameraState state = mMorphoCamera.cameraState();
                if (state instanceof AutoFocusState) {
                    ((AutoFocusState) state).setToNext(true);
                    return;
                }
                if (state instanceof Camera1AutoFocusState) {
                    ((Camera1AutoFocusState) state).setToNext(true);
                    return;
                }
            }
            if (mDirectionFunction.enabled()) {
                if (mMorphoCamera.finishState()) {
                    return;
                }
            } else if (isEngineRunning() && !mIsInvalidDir) {
                showSavingProgressBar();
                mIsPanoramaCancel = true;
                return;
            }
            mIsPanoramaCancel = false;
            mMorphoCamera.startTakePictureState();
        }
    }
}

public void onClickThumbnail(View view) {
    if (isCapturing()) {
        return;
    }
    LogFilter.d("Camera2App", "Thumbnail click!");
    String mimeType = MimeTypeMap.getSingleton().getMimeTypeFromExtension(
            MimeTypeMap.getFileExtensionFromUrl(mThumbnailFilePath.toLowerCase()));

    Intent reviewIntent = createDefaultIntentView(mimeType);
    reviewIntent.setAction("com.android.camera.action.REVIEW");
    if (reviewIntent.resolveActivity(getPackageManager()) != null) {
        startActivityForResult(reviewIntent, REQUEST_VIEW);
        return;
    }

    Intent viewIntent = createDefaultIntentView(mimeType);
    viewIntent.setAction(Intent.ACTION_VIEW);
    if (viewIntent.resolveActivity(getPackageManager()) != null) {
        startActivityForResult(viewIntent, REQUEST_VIEW);
        return;
    }

    setThumbnail();
    Toast.makeText(this, R.string.no_image_viewer, Toast.LENGTH_LONG).show();
}

@Override
public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    LogFilter.i("Camera2App", String.format(Locale.US, "%s, BuildVersion:%d", Build.MODEL, Build.VERSION.SDK_INT));

    getMobilePhonePixels();

    setContentView(R.layout.camera2);

    requestToDimSystemUi();

    mCountDownTimer = new MyCountDownTimer(this, START_TIME, INTERVAL);
    mCaptureTimer = new CaptureTimer(this, 0xbb8L, INTERVAL);
    mCameraCheckTimer = new CameraCheckTimer(this, 0x1388L, INTERVAL);
    mCameraCheckTimer.start();

    mView = findViewById(R.id.fullView);
    mView.setFocusable(true);
    // TODO(合併階段): new Camera2App$4(this) 匿名 View.OnTouchListener，由 anonymous-classes fragment 合併
    mView.setOnTouchListener(null);

    initializeLayoutObjects();

    mLocationManager = new PanoramaGP2LocationManager((LocationManager) getSystemService(LOCATION_SERVICE));

    mSensorManager = (SensorManager) getSystemService(SENSOR_SERVICE);
    for (Sensor sensor : mSensorManager.getSensorList(-1)) {
        if (sensor.getType() == Sensor.TYPE_GYROSCOPE) {
            mGyroscope = mSensorManager.getDefaultSensor(Sensor.TYPE_GYROSCOPE);
        }
        if (sensor.getType() == Sensor.TYPE_ACCELEROMETER) {
            mAccelerometer = mSensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
        }
        if (sensor.getType() == Sensor.TYPE_ROTATION_VECTOR) {
            mRotationVector = mSensorManager.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR);
        }
    }

    mSensorFusion = new SensorFusion(true);
    mSensorFusionMode = 4;
    int ret = mSensorFusion.setMode(mSensorFusionMode);
    if (ret != 0) {
        LogFilter.e("Camera2App", String.format(Locale.US, "SensorFusion.setMode error ret:0x%08X", ret));
    }
    ret = mSensorFusion.setOffsetMode(0);
    if (ret != 0) {
        LogFilter.e("Camera2App", String.format(Locale.US, "SensorFusion.setOffsetMode error ret:0x%08X", ret));
    }
    ret = mSensorFusion.setAppState(1);
    if (ret != 0) {
        LogFilter.e("Camera2App", String.format(Locale.US, "SensorFusion.setAppState error ret:0x%08X", ret));
    }

    for (int i = 0; i < mCamera2ImageQualitySettings.length; i++) {
        mCamera2ImageQualitySettings[i] = new Camera2ImageQualitySettings();
    }

    // TODO(合併階段): new Camera2App$5(this) 匿名 ScaleGestureDetector.OnScaleGestureListener，由 anonymous-classes fragment 合併
    mScaleGestureDetector = new ScaleGestureDetector(this, null);

    // TODO(合併階段): new Camera2App$6(this) 匿名 HeaderButtonsFragment.OnSettingDialogStateChangedListener，由 anonymous-classes fragment 合併
    getHeaderButtonsFragment().setOnSettingDialogStateChangedListener(null);

    ErrorCaseHandler.setStatus(0);
    mCreateSequence = true;
    mSavePanoramaPath = null;
}

@Override
public void onDestroy() {
    LogFilter.d("Camera2App", "onDestroy");
    super.onDestroy();

    clearLocalCacheBackup();
    clearLocalCache();

    mSavePanoramaPath = null;
    mBroadcastReceiver = null;
    mRotatableToast = null;

    releaseImageBitmap();

    if (mThumbnailBitmap != null) {
        mThumbnailBitmap.recycle();
        mThumbnailBitmap = null;
    }

    if (mSensorFusion != null) {
        mSensorFusion.release();
    }

    changeTrackingFlag(true);

    mExecutor.shutdown();
    try {
        mExecutor.awaitTermination(0x64L, TimeUnit.MILLISECONDS);
    } catch (InterruptedException e) {
        mExecutor.shutdownNow();
        Thread.currentThread().interrupt();
    }

    mPinToast = null;
}

public void onDismissDialog(boolean positive, RotatableDialogFragment.EnumDismissFactor factor, boolean checked) {
    int status = ErrorCaseHandler.getStatus();
    switch (status) {
        case 2:
        case 3:
        case 5:
        case 6:
            finish();
            return;
        case 7:
            ErrorCaseHandler.setStatus(0);
            dismissDialog(positive, factor, checked);
            onRestart();
            onResume();
            return;
        default:
            dismissDialog(positive, factor, checked);
            setThumbnail();
            return;
    }
}

public void onDismissLicenseDialog() {
    dismissDialog(true, RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OTHER, false);
}

@Override
public void onError() {
    // TODO(合併階段): new Camera2App$18(this) 匿名 Runnable，由 anonymous-classes fragment 合併
    runOnUiThread(null);
}

@Override
public void onErrorCamera() {
    if (mMorphoCamera != null) {
        mMorphoCamera.cancelState();
    }
    // TODO(合併階段): new Camera2App$20(this) 匿名 Runnable，由 anonymous-classes fragment 合併
    runOnUiThread(null);
}

@Override
public void onErrorCapture() {
    if (mMorphoCamera != null) {
        mMorphoCamera.cancelState();
    }
    // TODO(合併階段): new Camera2App$19(this) 匿名 Runnable，由 anonymous-classes fragment 合併
    runOnUiThread(null);
}

@Override
public boolean onKeyDown(int keyCode, KeyEvent event) {
    if (keyCode == KeyEvent.KEYCODE_BACK) {
        startCountDownTimer();
        if (isOpenedSettingDialog()) {
            return true;
        }
        if (mInternalSettings.onBackKeyDown()) {
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    if (keyCode == KeyEvent.KEYCODE_FOCUS) {
        if (isVisibleBlackScreen()) {
            return true;
        }
        if (isDialogShown()) {
            return true;
        }
        if (isCapturing()) {
            return true;
        }
        if (event.getRepeatCount() == 0) {
            if (isOpenedSettingDialog()) {
                closeSettingDialog();
            }
            if (autoFocus()) {
                mKeyFocusPressed = true;
                setViewsVisibility(0);
                requestToRemoveSystemUi();
                startCountDownTimer();
            }
        }
        return super.onKeyDown(keyCode, event);
    }

    if (keyCode != KeyEvent.KEYCODE_CAMERA) {
        if (keyCode == KeyEvent.KEYCODE_VOLUME_UP || keyCode == KeyEvent.KEYCODE_VOLUME_DOWN) {
            String useVolumeKey = mSettings.getUseVolumeKey();
            if ("ZOOM".equals(useVolumeKey)) {
                startCountDownTimer();
                if (!isDialogShown() && !isCapturing() && !isOpenedSettingDialog()) {
                    startRotatableToast(getString(R.string.cam_strings_panorama_zoom_not_suported_txt),
                            RotatableToast.TOAST_DURATION_LONG, false);
                }
                return true;
            }
            if ("VOLUME".equals(useVolumeKey)) {
                startCountDownTimer();
                return super.onKeyDown(keyCode, event);
            }
            if (mKeyFocusPressed) {
                return true;
            }
            // HW_CAMERA_KEY: 落入下方與實體相機鍵共用的快門邏輯
        } else {
            return super.onKeyDown(keyCode, event);
        }
    }

    if (isVisibleBlackScreen()) {
        return true;
    }
    if (isDialogShown()) {
        return true;
    }
    if (mGuiCapturePressed) {
        return true;
    }
    if (event.getRepeatCount() > 0) {
        return true;
    }
    mKeyFocusPressed = false;
    if (!isCapturing() && keyCode != KeyEvent.KEYCODE_CAMERA) {
        if (isOpenedSettingDialog()) {
            closeSettingDialog();
        }
        if (autoFocus()) {
            setViewsVisibility(4);
            requestToRemoveSystemUi();
        }
    }
    startCountDownTimer();
    onClickShutter(null);
    return true;
}

@Override
public boolean onKeyUp(int keyCode, KeyEvent event) {
    if (keyCode == KeyEvent.KEYCODE_BACK) {
        if (isCapturing()) {
            if (isEngineRunning()) {
                onClickShutter(null);
            }
            return true;
        }
        if (mMorphoCamera != null && !mMorphoCamera.canExitState()) {
            mMorphoCamera.cancelState();
            mMorphoCamera.startState();
            return true;
        }
        if (isOpenedSettingSubDialog()) {
            closeSettingSubDialog();
        } else if (isOpenedSettingDialog()) {
            closeSettingDialog();
            checkRemainingMemory(false);
        }
        return super.onKeyUp(keyCode, event);
    }

    if (keyCode == KeyEvent.KEYCODE_FOCUS) {
        if (mKeyFocusPressed) {
            mKeyFocusPressed = false;
            if (!isDialogShown()) {
                setViewsVisibility(0);
                requestToDimSystemUi();
            }
            updateViews();
            unlockFocus();
        }
    }

    return super.onKeyUp(keyCode, event);
}

@Override
protected void onNewIntent(Intent intent) {
    super.onNewIntent(intent);
}

@Override
public void onOpened() {
    mCamera2ImageQualitySettings[0].entries = mMorphoCamera.getAvailableColorCorrectionMode();
    mCamera2ImageQualitySettings[0].entryValues = mMorphoCamera.getAvailableColorCorrectionModeValues();
    mCamera2ImageQualitySettings[0].defaultValues = mMorphoCamera.getColorCorrectionModeDefaultValues();

    mCamera2ImageQualitySettings[1].entries = mMorphoCamera.getAvailableEdgeMode();
    mCamera2ImageQualitySettings[1].entryValues = mMorphoCamera.getAvailableEdgeModeValues();
    mCamera2ImageQualitySettings[1].defaultValues = mMorphoCamera.getEdgeModeDefaultValues();

    mCamera2ImageQualitySettings[2].entries = mMorphoCamera.getAvailableNoiseReductionMode();
    mCamera2ImageQualitySettings[2].entryValues = mMorphoCamera.getAvailableNoiseReductionModeValues();
    mCamera2ImageQualitySettings[2].defaultValues = mMorphoCamera.getNoiseReductionModeDefaultValues();

    mCamera2ImageQualitySettings[3].entries = mMorphoCamera.getAvailableShadingMode();
    mCamera2ImageQualitySettings[3].entryValues = mMorphoCamera.getAvailableShadingModeValues();
    mCamera2ImageQualitySettings[3].defaultValues = mMorphoCamera.getShadingModeDefaultValues();

    mCamera2ImageQualitySettings[4].entries = mMorphoCamera.getAvailableTonemapMode();
    mCamera2ImageQualitySettings[4].entryValues = mMorphoCamera.getAvailableTonemapModeValues();
    mCamera2ImageQualitySettings[4].defaultValues = mMorphoCamera.getTonemapModeDefaultValues();

    mInternalSettings.updateCamera2ImageQualitySettings(getApplicationContext(), mCamera2ImageQualitySettings);

    initInternalSettingsViews();
}

@Override
protected void onPause() {
    LogFilter.d("Camera2App", "onPause 92417");
    mActive = false;

    synchronized (mSyncImageTask) {
        if (mGetLatestImageTask != null) {
            mGetLatestImageTask.cancel(false);
            mGetLatestImageTask = null;
        }
    }

    if (mAlertOkDialog != null && mAlertOkDialog.isShowing()) {
        mAlertOkDialog.dismiss();
        mAlertOkDialog = null;
        mResumeAlertOkDialog = true;
    }

    if (mAlertSettingDialog != null && mAlertSettingDialog.isShowing()) {
        mAlertSettingDialog.dismiss();
        mAlertSettingDialog = null;
        mResumeAlertSettingDialog = true;
    }

    if (isOpenedSettingDialog()) {
        closeSettingDialog(false);
    }

    if (isDialogShown()) {
        dismissDialog(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SHUTDOWN);
        dismissDialog(false, RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SUSPEND, false);
        mDialog = null;
    }

    setViewsVisibility(4);
    setButtonsEnabled(false);

    mCountDownTimer.cancel();
    stopCaptureTimer();
    mCameraCheckTimer.cancel();

    if (mBroadcastReceiver != null) {
        unregisterReceiver(mBroadcastReceiver);
        mBroadcastReceiver = null;
    }

    mThermalAlertReceiver.unbindThermalService();

    if (mPreviewFrame != null) {
        mPreviewFrame.setVisibility(View.INVISIBLE);
        mCurPreviewFrame.setVisibility(View.INVISIBLE);
        mPreviewArrow.setVisibility(View.INVISIBLE);
    }

    mSaveDirId = -1;
    mSaveFileId = -1;

    abortCamera();

    mLocationManager.removeUpdates();

    releaseImageBitmap();

    saveLocalCache();
    clearLocalCache();

    unregisterGravitySensorListener();
    mSensorManager.unregisterListener(mSensorFusion);

    mUseCamera1Tmp = mUseCamera1;
    mCameraIdTmp = mInternalSettings.camera_id;

    stopGpsSearchTimer();

    if (mStartTrackFlag) {
        setRequestedOrientation(1);
    } else {
        setRequestedOrientation(-1);
    }

    InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
    if (infoIconsFragment != null) {
        infoIconsFragment.hideTemperatureIcon();
    }

    FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
    if (footerButtonsFragment != null) {
        footerButtonsFragment.clearThumbnail();
    }

    mScreenCounter = 3;
    showBlackScreen();
    getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);

    if (mSoundPool != null) {
        mSoundPool.release();
    }

    if (mRotatableToast != null) {
        mRotatableToast.invisibleRotatableToast();
    }

    mKeyFocusPressed = false;
    mGuiCapturePressed = false;
    mShutdownView = false;

    super.onPause();

    if (mTemperatureHigh) {
        finish();
    }
}

@Override
public boolean onPictureTaken(CaptureImage image) {
    if (mInternalSettings.save_input_images == 1) {
        mInternalSettings.encodeFrame(image.image());
    }

    runOnUiThread(mTakePictureVisibleRunnable);

    double gain = 0.0;
    boolean tvAnalysisEnabled = false;
    if (mInternalSettings.tv() && !mInternalSettings.isTvLock()) {
        if (mPanoramaState.isEnableTvAnalysis()) {
            tvAnalysisEnabled = true;
            gain = MorphoPanoramaGP2.getGain(image.image());
        }
    }

    if (!mPanoramaState.onSaveImage(image)) {
        mPanoramaState = new PanoramaState();
        mMorphoCamera.cancelState();
    }

    if (isDialogShown()) {
        onClickShutter(null);
    }

    if (tvAnalysisEnabled) {
        MorphoCamera morphoCamera = (MorphoCamera) mMorphoCamera;
        morphoCamera.calculateNewRequest(gain);
        if (!morphoCamera.startTakePictureNewRequest(mInternalSettings.getCaptureMode())) {
            onErrorCapture();
            return false;
        }
        mPanoramaState.notifyTvAnalyzed();
    }

    switch (mInternalSettings.getCaptureMode()) {
        case 1:
        case 2:
            mPanoramaState.repeatTakePicture();
            break;
        case 3:
            if (mMorphoCamera.burstRemaining() > 1) {
                mMorphoCamera.setBurstRemaining(mMorphoCamera.burstRemaining() - 1);
            } else {
                mPanoramaState.repeatTakePicture();
            }
            break;
        default:
            break;
    }
    return true;
}

@Override
public void onPreviewImage(byte[] data) {
    if (mPreviewFrame != null) {
        mPreviewFrame.setVisibility(View.INVISIBLE);
        mCurPreviewFrame.setVisibility(View.INVISIBLE);
        mPreviewArrow.setVisibility(View.INVISIBLE);
    }

    if (PREVIEW_SPREAD_BOTH_SIDES && mPreviewImageView != null) {
        mPreviewImageView.setTranslationX(-999999.0f);
    }

    if (isEngineRunning()) {
        return;
    }

    if (mMiniPreviewImageView != null) {
        Camera.CameraInfo cameraInfo = MorphoCamera1.getCameraInfo(mInternalSettings.camera_id);
        int displayRotation = getDisplayRotation();
        int rotation = (cameraInfo.orientation + displayRotation + 360) % 360;

        if (mMiniPreviewBitmapForCamera1 == null
                || mMiniPreviewBitmapForCamera1.getWidth() != (mMiniPreviewImageView.getWidth() & ~1)
                || mMiniPreviewBitmapForCamera1.getHeight() != (mMiniPreviewImageView.getHeight() & ~1)) {
            mMiniPreviewBitmapForCamera1 = Bitmap.createBitmap(
                    mMiniPreviewImageView.getWidth() & ~1,
                    mMiniPreviewImageView.getHeight() & ~1,
                    Bitmap.Config.ARGB_8888);
        }

        CameraInfo captureCameraInfo = mMorphoCamera.cameraInfo();
        int captureWidth = captureCameraInfo.getCaptureWidth();
        int captureHeight = captureCameraInfo.getCaptureHeight();
        int ret;
        if ("YUV420_PLANAR".equals(mImageFormat)) {
            ret = MorphoPanoramaGP2.yuv2Bitmap8888(data, captureWidth, captureHeight, mMiniPreviewBitmapForCamera1, rotation);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.yuv2Bitmap8888 error ret:0x%08X", ret));
            }
        } else {
            ret = MorphoPanoramaGP2.yvu2Bitmap8888(data, captureWidth, captureHeight, mMiniPreviewBitmapForCamera1, rotation);
            if (ret != 0) {
                LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.yvu2Bitmap8888 error ret:0x%08X", ret));
            }
        }

        if (mIsFrontCamera) {
            Matrix flip = new Matrix();
            flip.preScale(-1.0f, 1.0f);
            Bitmap flipped = Bitmap.createBitmap(mMiniPreviewBitmapForCamera1, 0, 0,
                    mMiniPreviewBitmapForCamera1.getWidth(), mMiniPreviewBitmapForCamera1.getHeight(), flip, true);
            mMiniPreviewImageView.setImageBitmap(flipped);
        } else {
            mMiniPreviewImageView.setImageBitmap(mMiniPreviewBitmapForCamera1);
        }
    }

    if (isVisibleBlackScreen()) {
        hideBlackScreen();
    }
}

@Override
public boolean onPreviewImageAvailable() {
    return true;
}

@Override
public void onPreviewStart() {
    if (!mStartTrackFlag) {
        return;
    }
    if (mTemperatureHigh) {
        return;
    }
    onPreviewStartSub();
    if (mOrientationEventListener != null) {
        mOrientationEventListener.enable();
    }
    if (mSensorFusion != null) {
        mSensorFusion.clearStockData();
    }
}

@Override
public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
    reconstructLocalCache();

    if (grantResults.length > 0) {
        if (requestCode == REQUEST_CAMERA) {
            if (Util.checkPermissionsResult(grantResults)) {
                changeTrackingFlag(true);
            } else {
                showSettingDialog(requestCode);
            }
        } else if (requestCode == REQUEST_STORAGE) {
            if (Util.checkPermissionsResult(grantResults)) {
                changeTrackingFlag(true);
            } else {
                showSettingDialog(requestCode);
            }
        } else if (requestCode == REQUEST_CAMERA_STORAGE) {
            if (Util.checkPermissionsResult(grantResults)) {
                changeTrackingFlag(true);
            } else {
                showSettingDialog(requestCode);
            }
        } else if (requestCode == REQUEST_LOCATION) {
            if (Util.checkPermissionsResult(grantResults)) {
                changeTrackingFlag(true);
            } else {
                showSettingDialog(requestCode);
            }
            SharedPreferences.Editor locationEditor = getSharedPreferences(PREF_KEY, 0).edit();
            locationEditor.putBoolean(PREF_KEY_FIRST_TIME_LOCATION, true);
            locationEditor.apply();
        }
        SharedPreferences.Editor editor = getSharedPreferences(PREF_KEY, 0).edit();
        editor.putBoolean(PREF_KEY_FIRST_LAUNCH, true);
        editor.apply();
    } else {
        changeTrackingFlag(true);
    }
}

@Override
protected void onResume() {
    LogFilter.d("Camera2App", "onResume");
    super.onResume();
    mActive = true;

    if (mTemperatureHigh) {
        return;
    }

    getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
    setRequestedOrientation(1);

    startCountDownTimer();

    if (!mStartTrackFlag) {
        if (mResumeAlertSettingDialog) {
            if (Util.checkPermissionGrant(PERMISSIONS_CAMERA_STORAGE, this)) {
                showSettingDialog(REQUEST_LOCATION);
            } else {
                showSettingDialog(REQUEST_CAMERA_STORAGE);
            }
        }
        if (mResumeAlertOkDialog) {
            showOkDialog(REQUEST_LOCATION);
        }
    }

    showBlackScreen();
    setViewsVisibility(4);
    setMiniPreviewArrowsVisibility(false);

    registerGravitySensorListener();

    if (mInternalSettings.sensor_mode != -1) {
        mSensorFusionMode = mInternalSettings.sensor_mode;
        mSensorFusion.setMode(mSensorFusionMode);
    }

    if (mGyroscope != null && mInternalSettings.sensor_mode != -1) {
        mSensorManager.registerListener(mSensorFusion, mGyroscope, SensorManager.SENSOR_DELAY_FASTEST);
    }

    if (mAccelerometer != null && mInternalSettings.sensor_mode == 2) {
        mSensorManager.registerListener(mSensorFusion, mAccelerometer, SensorManager.SENSOR_DELAY_FASTEST);
    }

    if (mRotationVector != null && mInternalSettings.sensor_mode == 1) {
        mSensorManager.registerListener(mSensorFusion, mRotationVector, SensorManager.SENSOR_DELAY_FASTEST);
    }

    // TODO(合併階段): new Camera2App$7(this) 匿名 BroadcastReceiver，由 anonymous-classes fragment 合併
    mBroadcastReceiver = null;

    IntentFilter intentFilter = new IntentFilter();
    intentFilter.addAction(Intent.ACTION_MEDIA_MOUNTED);
    intentFilter.addAction(Intent.ACTION_MEDIA_UNMOUNTED);
    intentFilter.addDataScheme("file");
    registerReceiver(mBroadcastReceiver, intentFilter);

    mThermalAlertReceiver.bindThermalService();

    mResumeSequence = true;

    if (isCameraDisabled(this)) {
        mCameraCheckTimer.cancel();
        startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAMERA_SECURITY);
        return;
    }

    Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
    Camera.getCameraInfo(mInternalSettings.camera_id, cameraInfo);
    mCanDisableShutterSound = cameraInfo.canDisableShutterSound;

    if (!mCanDisableShutterSound) {
        AudioManager audioManager = (AudioManager) getSystemService(AUDIO_SERVICE);
        // TODO(合併階段): new Camera2App$8(this, audioManager) 匿名 AudioManager.OnAudioFocusChangeListener，由 anonymous-classes fragment 合併
        audioManager.requestAudioFocus(null, AudioManager.STREAM_MUSIC, AudioManager.AUDIOFOCUS_GAIN);
    }

    showPermissionOrStartCamera();
}

@Override
public void onSelected(SettingListBase list, int index) {
    if (mSettingList.equals(list)) {
        boolean useVolumeKeyVisible = mSettingSubListUseVolumeKey.getView().getVisibility() == View.VISIBLE;
        boolean saveDestinationVisible = mSettingSubListSaveDestination.getView().getVisibility() == View.VISIBLE;
        if (!useVolumeKeyVisible && !saveDestinationVisible) {
            switch (index) {
                case SettingList.LIST_INDEX_SAVE_LOCATION:
                    mSettingList.setChecked(SettingList.LIST_INDEX_SAVE_LOCATION, !mSettings.isSaveLocation());
                    break;
                case SettingList.LIST_INDEX_USE_VOLUME_KEY:
                    translateSettingSubList(mSettingSubListUseVolumeKey.getView());
                    mSettingSubListUseVolumeKey.open();
                    mSettingList.setActive(false);
                    break;
                case SettingList.LIST_INDEX_CAMERA_SOUND:
                    mSettingList.setChecked(SettingList.LIST_INDEX_CAMERA_SOUND, !mSettings.isCameraSound());
                    if (mSettings.isCameraSound() && mSoundPool != null) {
                        mSoundPool.play(mShutterSoundId, 1.0f, 1.0f, 0, 0, 1.0f);
                    }
                    break;
                case SettingList.LIST_INDEX_SAVE_DESTINATION:
                    translateSettingSubList(mSettingSubListSaveDestination.getView());
                    mSettingSubListSaveDestination.open();
                    mSettingList.setActive(false);
                    break;
                case SettingList.LIST_INDEX_LICENSE:
                    startDialog(EnumDialogType.DIALOG_TYPE_LICENSE);
                    break;
                default:
                    break;
            }
        } else {
            closeSettingDialog();
            checkRemainingMemory(false);
        }
    } else if (mSettingSubListUseVolumeKey.equals(list)) {
        String useVolumeKey;
        int stringRes = mSettingUseVolumeKeyList[index];
        if (stringRes == R.string.cam_strings_panorama_volumekey_volume_txt) {
            useVolumeKey = "VOLUME";
        } else if (stringRes == R.string.cam_strings_panorama_volumekey_zoom_txt) {
            useVolumeKey = "ZOOM";
        } else {
            useVolumeKey = "HW_CAMERA_KEY";
        }
        mSettings.setUseVolumeKey(useVolumeKey);
        closeSettingSubDialog();
        mSettingList.setSummary(SettingList.LIST_INDEX_USE_VOLUME_KEY, mSettingUseVolumeKeyList[index]);
    } else if (mSettingSubListSaveDestination.equals(list)) {
        boolean isInternal = mSettingSaveDestinationList[index]
                == R.string.cam_strings_panorama_save_destination_ims_txt;
        updateSaveDestination(isInternal);
        checkRemainingMemory(false, false);
        closeSettingSubDialog();
        int summaryRes = mSettings.isSaveInternalStorage()
                ? R.string.cam_strings_panorama_save_destination_ims_txt
                : R.string.cam_strings_panorama_save_destination_sd_txt;
        mSettingList.setSummary(SettingList.LIST_INDEX_SAVE_DESTINATION, summaryRes);
    }
}

@Override
public void onSensorChanged(SensorEvent event) {
    if (mIsSensorAverage) {
        mGravities[0] += event.values[0];
        mGravities[1] += event.values[1];
        mGravities[2] += event.values[2];
        mSensorCnt++;
    } else {
        mGravities[0] = event.values[0];
        mGravities[1] = event.values[1];
        mGravities[2] = event.values[2];
        mSensorCnt = 1;
    }
}

@Override
public void onStart() {
    LogFilter.d("Camera2App", "onStart");
    super.onStart();
    requestToDimSystemUi();
    mOrientationEventListener = new ExtendedOrientationEventListener(this, this);
    mOrientationEventListener.enable();
    initializeThermalAlert();
    mScreenCounter = 2;
    mInternalSettings.loadValues();
}

@Override
protected void onStop() {
    LogFilter.d("Camera2App", "onStop");
    mOrientationEventListener.disable();
    mOrientationEventListener = null;
    finalizeThermalAlert();
    mSettings.save();
    mInternalSettings.saveValues();
    if (isDialogShown()) {
        mDialog.dismiss(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SHUTDOWN);
    }
    ErrorCaseHandler.setStatus(0);
    mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
    mOverlayDialogNum = 0;
    mDialog = null;
    mTemperatureHigh = false;
    super.onStop();
}

@Override
public void onTakePictureCancel() {
    if (mInternalSettings.save_input_images == 1) {
        mInternalSettings.finalizeEncoder();
    }
    mGuiCapturePressed = false;
    finishEngine();
    setAttachExit();
    mPanoramaState = new PanoramaState();
    if (mOrientationEventListener != null) {
        mOrientationEventListener.enable();
    }
}

@Override
public boolean onTakePictureFinish() {
    if (mDirectionFunction.enabled()) {
        mDirectionFunction.requestQuit();
        return true;
    }
    return false;
}

@Override
public void onTakePictureFinish2NextState(int resultCode) {
    if (mInternalSettings.save_input_images == 1) {
        mInternalSettings.finalizeEncoder();
    }
    mGuiCapturePressed = false;

    if (resultCode == 0) {
        if (mPanoramaState.hasImage()) {
            playSound(mStopSoundId);
            SavePictureState savePictureState = new SavePictureState(this);
            mMorphoCamera.setDefaultCameraState();
            mPanoramaState = new PanoramaState();
            // TODO(合併階段): new Camera2App$13(this) 匿名 Runnable，由 anonymous-classes fragment 合併
            runOnUiThread(null);
            new SaveAsyncTask(savePictureState).execute();
            return;
        }
        mPanoramaState = new PanoramaState();
    } else if (resultCode == -2 || resultCode == -1) {
        // TODO(合併階段): new Camera2App$14(this) 匿名 Runnable，由 anonymous-classes fragment 合併
        runOnUiThread(null);
    }

    finishEngine();
    setAttachExit();
    mMorphoCamera.startState();
}

@Override
public void onTakePicturePreprocess() {
    Camera.CameraInfo cameraInfo = MorphoCamera1.getCameraInfo(mInternalSettings.camera_id);
    int displayRotation = getDisplayRotation();
    int orientation = cameraInfo.orientation;
    if (mIsFrontCamera && mCurOrientation == cameraInfo.orientation) {
        mInitParam.output_rotation = 0;
    } else {
        mInitParam.output_rotation = (orientation + displayRotation + mCurOrientation + 360) % 360;
    }
}

@Override
public void onTakePictureStart(PanoramaState.IPanoramaStateEventListener listener) {
    // TODO(合併階段): new Camera2App$12(this) 匿名 Runnable，由 anonymous-classes fragment 合併
    runOnUiThread(null);
    mInternalSettings.updateViewsForTakePictureStart();
    mSensorSensitivityAverageManager.init();
    playSound(mShutterSoundId);
    mPanoramaState = new PanoramaInit(this);
    mPanoramaState.setPanoramaStateEventListener(listener);
    initAttachQueue();
    startCaptureTimer();
}

@Override
public void onTemperatureAlreadyHigh() {
    mTemperatureHigh = true;
    shutdownViews();
    startRotatableToast(getString(R.string.cam_strings_panorama_error_high_temp_info_txt),
            RotatableToast.TOAST_DURATION_LONG, true);
}

@Override
public void onTemperatureReachedHigh() {
    if (mActive && !mTemperatureHigh) {
        mTemperatureHigh = true;
        shutdownViews();
        abortCamera();
        startDialog(EnumDialogType.DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN);
    }
}

@Override
public void onTemperatureReachingHigh() {
    if (!mActive) {
        return;
    }
    InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
    if (infoIconsFragment != null) {
        infoIconsFragment.showTemperatureIcon();
    }
    if (mStartTrackFlag && mSettings.isShowDialogThermal()) {
        if (isCapturing()) {
            if (isEngineRunning()) {
                onClickShutter(null);
            }
            setViewsVisibility(0);
            updateViewsForPreview();
        }
        startDialog(EnumDialogType.DIALOG_TYPE_ALERT_THERMAL_WARNING);
    }
}

@TargetApi(23)
public void requestPermissionForCamera() {
    if (!Util.checkPermissionGrant(PERMISSION_CAMERA, this)
            && !Util.checkPermissionGrant(PERMISSIONS_STORAGE, this)) {
        requestPermissions(PERMISSIONS_CAMERA_STORAGE, REQUEST_CAMERA_STORAGE);
    } else if (!Util.checkPermissionGrant(PERMISSION_CAMERA, this)) {
        requestPermissions(PERMISSION_CAMERA, REQUEST_CAMERA);
    } else if (!Util.checkPermissionGrant(PERMISSIONS_STORAGE, this)) {
        requestPermissions(PERMISSIONS_STORAGE, REQUEST_STORAGE);
    } else if (!Util.checkPermissionGrant(PERMISSIONS_LOCATION, this)) {
        requestPermissions(PERMISSIONS_LOCATION, REQUEST_LOCATION);
    }
}

public void requestSdCardGranted() {
    Intent intent = new Intent(this, RequestPermissionSdCardActivity.class);
    intent.setData(mSettings.getSdCardGrantedUri());
    startActivityForResult(intent, REQUEST_SD_CARD_PERMISSION);
}

@Override
public void requestUiRunnable(Runnable runnable) {
    runOnUiThread(runnable);
}

@Override
public void setGravitySensorListener(boolean enable) {
    if (enable) {
        registerGravitySensorListener();
    } else {
        unregisterGravitySensorListener();
    }
}

@Override
public void setNullDirectionFunction() {
    CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
    mDirectionFunction = new DirectionFunction(
            cameraInfo.getCaptureWidth(), cameraInfo.getCaptureHeight(), 1, 1, 1, 0);
}

public void setSdCardGranted(Uri uri) {
    mSettings.setSdCardGranted(uri);
}

@Override
public void updateCameraState(CameraState state) {
    mMorphoCamera.updateCameraState(state);
}

@Override
public void updateTvValue() {
    mInternalSettings.updateTvValue();
}
