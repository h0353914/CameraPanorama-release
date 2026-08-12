// ============================================================================================
// STAGING FILE - NOT PART OF THE BUILD.
//
// This file contains hand-ported Java translations of 16 smali inner classes of
// com.sonyericsson.android.camera3d.Camera2App. It is a temporary holding area; each
// "// ===== ClassName =====" block below must be moved into its correct nested position
// inside Camera2App.java during the merge step. Once merged, delete this file.
//
// All classes below are written as if they are already nested inside Camera2App, so they
// reference Camera2App's own fields/methods (e.g. mActive, isEngineRunning()) directly,
// without an explicit outer-instance qualifier. Constructors have had the compiler-synthesized
// leading "Camera2App" parameter removed (all of these classes except CaptureResult and
// ContentInfo are genuine non-static inner classes, so the outer instance is implicit in Java).
//
// FULLY-QUALIFIED TYPES REFERENCED (the merge step will need imports for the non-same-package,
// non-java.lang ones; types in package com.sonyericsson.android.camera3d itself, and its R
// class, need no import since Camera2App.java already lives in that package):
//
//   android.os.CountDownTimer
//   android.view.OrientationEventListener
//   android.os.AsyncTask
//   android.content.Context
//   android.view.View
//   android.view.MotionEvent
//   android.widget.TextView
//   android.widget.ImageView
//   android.widget.ProgressBar
//   android.graphics.Bitmap
//   android.graphics.Rect
//   android.net.Uri
//   android.content.ContentResolver
//   android.content.SharedPreferences
//   android.content.res.Resources
//   android.preference.PreferenceManager
//   android.provider.MediaStore
//   android.hardware.camera2.TotalCaptureResult
//   android.location.Location
//   java.io.File
//   java.nio.ByteBuffer
//   java.util.Locale
//   com.sonyericsson.android.camera3d.utils.LogFilter
//   com.sonyericsson.android.camera3d.utils.NativeMemoryAllocator
//   com.sonyericsson.android.camera3d.camera_states.CameraState
//   com.sonyericsson.android.camera3d.camera_states.PreviewState
//   com.sonyericsson.android.camera3d.camera_states.UnlockFocusState
//   com.sonyericsson.android.camera3d.camera_states.Camera1PreviewState
//   com.sonyericsson.android.camera3d.camera_states.Camera1UnlockFocusState
//   com.sonyericsson.android.camera3d.base.DirectionFunction
//   com.sonyericsson.android.camera3d.base.MorphoCameraBase
//   com.sonyericsson.android.camera3d.dialog.RotatableDialogFragment  (+ nested EnumDismissFactor)
//   com.sonyericsson.android.camera3d.dialog.AlertOkDialog
//   com.sonyericsson.android.camera3d.dialog.AlertSettingDialog
//
//   (same package as Camera2App, no import needed, listed for completeness)
//   com.sonyericsson.android.camera3d.SaveAsyncTask (+ nested ISaveAsyncTaskEventListener)
//   com.sonyericsson.android.camera3d.HeaderButtonsFragment
//   com.sonyericsson.android.camera3d.FooterButtonsFragment
//   com.sonyericsson.android.camera3d.InfoIconsFragment
//   com.sonyericsson.android.camera3d.RotatableToast
//   com.sonyericsson.android.camera3d.SettingList
//   com.sonyericsson.android.camera3d.SettingSubList
//   com.sonyericsson.android.camera3d.Util
//   com.sonyericsson.android.camera3d.CameraConstants
//   com.sonyericsson.android.camera3d.CameraInfo
//   com.sonyericsson.android.camera3d.InternalSettings
//   com.sonyericsson.android.camera3d.MorphoPanoramaGP2 (+ nested InitParam)
//   com.sonyericsson.android.camera3d.PanoramaGP2LocationManager
//   com.sonyericsson.android.camera3d.R
// ============================================================================================


// ===== CameraCheckTimer =====
// .super Landroid/os/CountDownTimer;  accessFlags=0x2 (private, non-static inner class)
private class CameraCheckTimer extends CountDownTimer {

    public CameraCheckTimer(long millisInFuture, long countDownInterval) {
        super(millisInFuture, countDownInterval);
    }

    @Override
    public void onFinish() {
        LogFilter.e("Camera2App", "CameraCheckTimer is timeout.");
        onErrorCamera();
    }

    @Override
    public void onTick(long millisUntilFinished) {
    }
}


// ===== CaptureResult =====
// .super Ljava/lang/Object;  accessFlags=0xa (private static, NO outer instance - no this$0 field)
private static class CaptureResult {
    private double mExposureTime;
    private int mIsoValue;

    CaptureResult(double exposureTime, int isoValue) {
        mExposureTime = exposureTime;
        mIsoValue = isoValue;
    }

    public double getExposureTime() {
        return mExposureTime;
    }

    public void setExposureTime(double exposureTime) {
        mExposureTime = exposureTime;
    }

    public int getIsoValue() {
        return mIsoValue;
    }

    public void setIsoValue(int isoValue) {
        mIsoValue = isoValue;
    }

    public void sets(double exposureTime, int isoValue) {
        setExposureTime(exposureTime);
        setIsoValue(isoValue);
    }
}


// ===== CaptureTimer =====
// .super Landroid/os/CountDownTimer;  accessFlags=0x2 (private, non-static inner class)
private class CaptureTimer extends CountDownTimer {

    public CaptureTimer(long millisInFuture, long countDownInterval) {
        super(millisInFuture, countDownInterval);
    }

    @Override
    public void onFinish() {
        onClickShutter(null);
    }

    @Override
    public void onTick(long millisUntilFinished) {
    }
}


// ===== ContentInfo =====
// .super Ljava/lang/Object;  accessFlags=0xa (private static, NO outer instance - no this$0 field)
private static class ContentInfo {
    public long mId;
    public String mImageFileLocation;

    private ContentInfo() {
    }
}


// ===== EnumDialogType =====
// .super Ljava/lang/Enum;  accessFlags=0x401a (private enum)
private enum EnumDialogType {
    DIALOG_TYPE_NONE,
    DIALOG_TYPE_SELECT_SAVE_DST,
    DIALOG_TYPE_SELECT_CHANGE_LOCATION,
    DIALOG_TYPE_SELECT_VALIDATE_LOCATION,
    DIALOG_TYPE_ALERT_THERMAL_WARNING,
    DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN,
    DIALOG_TYPE_MEMORY_FULL_INTERNAL,
    DIALOG_TYPE_MEMORY_FULL_EXTERNAL,
    DIALOG_TYPE_ERROR_CAPTURE,
    DIALOG_TYPE_ERROR_SAVE,
    DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL,
    DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL,
    DIALOG_TYPE_ERROR_NOT_GRANTED_EXTERNAL,
    DIALOG_TYPE_ERROR_LAUNCH,
    DIALOG_TYPE_ERROR_CAMERA,
    DIALOG_TYPE_ERROR_CAMERA_SECURITY,
    DIALOG_TYPE_ERROR_CAMERA_LAUNCH,
    DIALOG_TYPE_LICENSE,
    DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION,
    DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE
}


// ===== EnumResultCreateEngine =====
// .super Ljava/lang/Enum;  accessFlags=0x401a (private enum)
private enum EnumResultCreateEngine {
    RESULT_NEWLY_CREATED,
    RESULT_ALREADY_CREATED,
    RESULT_ERROR
}


// ===== ExtendedOrientationEventListener =====
// .super Landroid/view/OrientationEventListener;  accessFlags=0x2 (private, non-static inner class)
private class ExtendedOrientationEventListener extends OrientationEventListener {

    public ExtendedOrientationEventListener(Context context) {
        super(context);
    }

    private void setViewsRotation(int rotation) {
        HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
        if (headerButtonsFragment != null) {
            headerButtonsFragment.rotateView(rotation);
        }
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.rotateView(rotation);
        }
        InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
        if (infoIconsFragment != null) {
            infoIconsFragment.rotateView(rotation);
        }
        if (mWarningTextView != null) {
            mWarningTextView.setRotation((float) rotation);
            if (rotation == 0 || rotation == 180) {
                mWarningTextView.setGravity(0x11);
                mWarningTextView.setTranslationY(0f);
            } else {
                mWarningTextView.setGravity(0x800005);
                mWarningTextView.setTranslationY((float) (-mWarningTextView.getWidth()) / 2f);
            }
        }
        if (isDialogShown()) {
            if (mDialogType == EnumDialogType.DIALOG_TYPE_LICENSE) {
                dismissDialog(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OTHER);
                mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
                startDialog(EnumDialogType.DIALOG_TYPE_LICENSE);
            } else {
                mDialog.setRotation((float) rotation);
            }
        }
        if (Util.isMarshmallow()) {
            if (mAlertOkDialog != null && mAlertOkDialog.isShowing()) {
                mAlertOkDialog.dismiss();
                showOkDialog(3);
            }
            if (mAlertSettingDialog != null && mAlertSettingDialog.isShowing()) {
                mAlertSettingDialog.dismiss();
                if (Util.checkPermissionGrant(PERMISSIONS_CAMERA_STORAGE, Camera2App.this)) {
                    showSettingDialog(3);
                } else {
                    showSettingDialog(0);
                }
            }
        }
        if (mRotatableToast.getRotatableToast()) {
            mRotatableToast.toggleRotatableToastVisibility(rotation);
        }
        if (rotation == 0 || rotation == 180) {
            mSettingList.setOrientation(0);
            mSettingSubListUseVolumeKey.setOrientation(0);
            mSettingSubListSaveDestination.setOrientation(0);
        } else {
            mSettingList.setOrientation(1);
            mSettingSubListUseVolumeKey.setOrientation(1);
            mSettingSubListSaveDestination.setOrientation(1);
        }
        if (mSettingSubListUseVolumeKey.getView().getVisibility() == View.VISIBLE) {
            translateSettingSubList(mSettingSubListUseVolumeKey.getView());
        }
        if (mSettingSubListSaveDestination.getView().getVisibility() == View.VISIBLE) {
            translateSettingSubList(mSettingSubListSaveDestination.getView());
        }
    }

    @Override
    public void onOrientationChanged(int orientation) {
        if (orientation == -1) {
            return;
        }
        updatedOrientation(orientation);
        int normalized = (orientation + getDisplayRotation()) % 360;
        if (normalized < 30 || normalized > 330) {
            if (mCurViewDegree != 0) {
                mCurViewDegree = 0;
                setViewsRotation(0);
                if (mMorphoCamera != null && isEngineRunning() && !isPanoramaSaving()) {
                    onClickShutter(null);
                }
            }
        } else if (normalized >= 60 && normalized < 300) {
            if (mCurViewDegree != 90) {
                mCurViewDegree = 90;
                setViewsRotation(90);
                if (mMorphoCamera != null && isEngineRunning() && !isPanoramaSaving()) {
                    onClickShutter(null);
                }
            }
        }
    }
}


// ===== GetLatestImageTask =====
// .super Landroid/os/AsyncTask;  Signature: AsyncTask<Integer, Integer, Integer>
// accessFlags=0x2 (private, non-static inner class)
private class GetLatestImageTask extends AsyncTask<Integer, Integer, Integer> {

    private GetLatestImageTask() {
    }

    @Override
    protected Integer doInBackground(Integer... params) {
        synchronized (mSyncImageTask) {
            if (isCancelled()) {
                return null;
            }
            getLatestImage();
            if (!mLocalCache.isEmpty()) {
                mThumbnailBitmap = MediaStore.Images.Thumbnails.getThumbnail(
                        getContentResolver(), mImageId, MediaStore.Images.Thumbnails.MINI_KIND, null);
                mThumbnailFilePath = mImageFileLocation;
                mThumbnailUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI.buildUpon()
                        .appendPath(String.valueOf(mImageId))
                        .build();
            }
        }
        return Integer.valueOf(0);
    }

    @Override
    protected void onPostExecute(Integer result) {
        mGetLatestImageTask = null;
        if (result == null) {
            return;
        }
        if (!mActive) {
            return;
        }
        if (mShutdownView) {
            return;
        }
        if (isCapturing()) {
            return;
        }
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment == null) {
            return;
        }
        if (mLocalCache.isEmpty()) {
            footerButtonsFragment.clearThumbnail();
        } else {
            footerButtonsFragment.setThumbnailBitmap(mThumbnailBitmap, false);
            int rotation = mCurViewDegree;
            if (rotation < 0) {
                rotation = 0;
            }
            footerButtonsFragment.rotateView(rotation);
        }
    }

    @Override
    protected void onPreExecute() {
        if (mActive && !mShutdownView && !isCapturing()) {
            FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
            if (footerButtonsFragment != null) {
                footerButtonsFragment.showThumbnail();
            }
        }
    }
}


// ===== ModeSelectorButtonClickListener =====
// .super Ljava/lang/Object;  .implements Landroid/view/View$OnClickListener;
// accessFlags=0x2 (private, non-static inner class)
private class ModeSelectorButtonClickListener implements View.OnClickListener {

    private ModeSelectorButtonClickListener() {
    }

    @Override
    public void onClick(View v) {
        modeFinish();
    }
}


// ===== ModeSelectorButtonTouchListener =====
// .super Ljava/lang/Object;  .implements Landroid/view/View$OnTouchListener;
// accessFlags=0x2 (private, non-static inner class)
private class ModeSelectorButtonTouchListener implements View.OnTouchListener {

    private ModeSelectorButtonTouchListener() {
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        ImageView modeSelectorButton = getFooterButtonsFragment().getModeSelectorButton();
        modeSelectorButton.onTouchEvent(event);
        if (modeSelectorButton.isPressed()) {
            // 原始行為：直接把 resource id 當作顏色值傳入 setColorFilter(int)，並未透過
            // getResources().getColor() 解析，予以完整保留
            modeSelectorButton.setColorFilter(R.color.pressedColorFilter);
        } else {
            modeSelectorButton.clearColorFilter();
        }
        return true;
    }
}


// ===== MyCountDownTimer =====
// .super Landroid/os/CountDownTimer;  accessFlags=0x2 (private, non-static inner class)
private class MyCountDownTimer extends CountDownTimer {

    public MyCountDownTimer(long millisInFuture, long countDownInterval) {
        super(millisInFuture, countDownInterval);
    }

    @Override
    public void onFinish() {
        setResult(2);
        finish();
    }

    @Override
    public void onTick(long millisUntilFinished) {
    }
}


// ===== SavePictureState =====
// .super Lcom/sonyericsson/android/camera3d/camera_states/CameraState;
// .implements Lcom/sonyericsson/android/camera3d/SaveAsyncTask$ISaveAsyncTaskEventListener;
// accessFlags=0x2 (private, non-static inner class)
private class SavePictureState extends CameraState implements SaveAsyncTask.ISaveAsyncTaskEventListener {

    private String imageFormat;
    private boolean mIsUpdateUi = true;

    public SavePictureState() {
    }

    public SavePictureState(boolean isUpdateUi) {
        this.mIsUpdateUi = isUpdateUi;
    }

    private void showSaveErrorDialog() {
        if (mIsUpdateUi) {
            startDialog(EnumDialogType.DIALOG_TYPE_ERROR_SAVE);
        }
    }

    @Override
    public boolean onFinish() {
        return true;
    }

    @Override
    public void onSaveFinish(boolean result) {
        LogFilter.d("Camera2App", "onSaveFinish result=" + result);

        if (mInternalSettings.save_input_images != 0) {
            mInternalSettings.saveSettings(mInputFolderPath, imageFormat, mMorphoCamera.cameraInfo(),
                    mMaxWidth, mMaxHeight, mDirectionFunction.getScale(), mAngle,
                    mDirectionFunction.getDirection(), mAttachNumDirectionUndecided);
        }

        if (mInternalSettings.save_input_images != 0) {
            mInternalSettings.putParamFile(mInputFolderPath, mMorphoCamera.cameraInfo(), imageFormat);
        }

        if (mIsUpdateUi) {
            getSavingProgressBar().setVisibility(View.GONE);
            if (mActive && !mSavingBackground && !mTemperatureHigh) {
                setViewsVisibility(0);
                if (result) {
                    if (mIsNotifySave2Internal) {
                        startRotatableToast(getResources().getString(
                                R.string.cam_strings_panorama_sd_permission_data_storage_info_txt),
                                0xdac, false);
                    }
                } else {
                    mSavePanoramaPath = null;
                    showSaveErrorDialog();
                }

                CameraState nextState;
                if (mUseCamera1) {
                    if (CameraConstants.AutoFocusType == 0) {
                        nextState = new Camera1PreviewState(mMorphoCamera.cameraState());
                    } else {
                        nextState = new Camera1UnlockFocusState(mMorphoCamera.cameraState());
                    }
                } else {
                    if (CameraConstants.AutoFocusType == 0) {
                        nextState = new PreviewState();
                    } else {
                        nextState = new UnlockFocusState();
                    }
                }
                mMorphoCamera.updateCameraState(nextState);
                mMorphoCamera.startState();

                FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
                if (footerButtonsFragment != null) {
                    footerButtonsFragment.clearThumbnail();
                }
                updateViews();
            }
        } else {
            if (!result) {
                mSavePanoramaPath = null;
            }
            setThumbnail();
        }

        mIsNotifySave2Internal = false;
        if (isEngineRunning()) {
            finishEngine();
        }
        mSavingBackground = false;
        if (mActive && !mTemperatureHigh) {
            checkRemainingMemory(false);
        }
    }

    @Override
    public boolean requestSaveProcess() {
        if (mMorphoPanoramaGP2 == null) {
            LogFilter.e("Camera2App", "mMorphoPanoramaGP2 is null");
            return false;
        }

        Rect clippingRect = new Rect();
        int clippingRet = mMorphoPanoramaGP2.getClippingRect(clippingRect);
        if (clippingRet != 0) {
            LogFilter.e("Camera2App", "mMorphoPanoramaGP2.getClippingRect error ret:" + clippingRet);
            return false;
        }

        LogFilter.i("Camera2App", String.format(Locale.US, "ClippingRect(Save) (%d,%d)-(%d,%d) %dx%d",
                clippingRect.left, clippingRect.top, clippingRect.right, clippingRect.bottom,
                clippingRect.width(), clippingRect.height()));

        int width = clippingRect.width();
        int height = clippingRect.height();
        byte[] outputBytes = new byte[width * height * 3 / 2];

        int outputRet = mMorphoPanoramaGP2.getOutputImage(outputBytes, clippingRect);
        if (outputRet != 0) {
            LogFilter.e("Camera2App", "mMorphoPanoramaGP2.getOutputImage error ret:" + outputRet);
            return false;
        }

        imageFormat = mInitParam.output_format;

        finishEngine();

        ByteBuffer byteBuffer = NativeMemoryAllocator.allocateBuffer(outputBytes.length);
        byteBuffer.put(outputBytes);
        byteBuffer.clear();

        Location location = null;
        if (mSettings.isSaveLocation()) {
            location = mLocationManager.getLocation();
        }

        String newFilePath = createNewFilePath();
        boolean saveResult;
        if (newFilePath != null) {
            String fileName = newFilePath.substring(newFilePath.lastIndexOf(File.separator) + 1);
            saveResult = saveImage(getContentResolver(), newFilePath, fileName, fileName,
                    byteBuffer, width, height, location);
            mSavePanoramaPath = newFilePath;
        } else {
            saveResult = false;
        }

        NativeMemoryAllocator.freeBuffer(byteBuffer);

        if (!saveResult) {
            LogFilter.e("Camera2App", "FileWriteErr");
            return false;
        }
        return true;
    }
}


// ===== SensorSensitivityAverageManager =====
// .super Ljava/lang/Object;  accessFlags=0x2 (private, non-static inner class)
private class SensorSensitivityAverageManager {
    private int num;
    private int sum;

    private SensorSensitivityAverageManager() {
    }

    public void add(int value) {
        sum += value;
        num += 1;
    }

    public int get() {
        if (num == 0) {
            return 0;
        }
        return Math.round((float) (sum / num));
    }

    public void init() {
        num = 0;
        sum = 0;
    }
}


// ===== Settings =====
// .super Ljava/lang/Object;  accessFlags=0x2 (private, non-static inner class)
private class Settings {
    private boolean camera_sound;
    private boolean loaded;
    private boolean not_show_dialog_location;
    private boolean not_show_dialog_thermal;
    private boolean save_internal_storage;
    private boolean save_location;
    private String sd_card_grant_uri;
    private boolean sdcard_inserted;
    private String use_volume_key;

    public Settings() {
        loaded = false;
        save_location = false;
        use_volume_key = "HW_CAMERA_KEY";
        camera_sound = true;
        save_internal_storage = true;
        sdcard_inserted = false;
        sd_card_grant_uri = null;
        not_show_dialog_location = false;
        not_show_dialog_thermal = false;
    }

    public Uri getSdCardGrantedUri() {
        if (sd_card_grant_uri == null) {
            return null;
        }
        return Uri.parse(sd_card_grant_uri);
    }

    public String getUseVolumeKey() {
        return use_volume_key;
    }

    public boolean isCameraSound() {
        return camera_sound;
    }

    public boolean isSaveInternalStorage() {
        return save_internal_storage;
    }

    public boolean isSaveLocation() {
        return save_location;
    }

    public boolean isSdcardInserted() {
        return sdcard_inserted;
    }

    public boolean isShowDialogLocation() {
        return !not_show_dialog_location;
    }

    public boolean isShowDialogThermal() {
        return !not_show_dialog_thermal;
    }

    public void load() {
        loaded = true;
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
        Resources res = getResources();

        sdcard_inserted = prefs.getBoolean(res.getString(R.string.setting_key_sdcard_inserted), false);
        not_show_dialog_thermal = prefs.getBoolean(res.getString(R.string.setting_key_dialog_thermal), false);
        save_location = prefs.getBoolean(res.getString(R.string.setting_key_save_location), false);
        use_volume_key = prefs.getString(res.getString(R.string.setting_key_use_volume_key), "HW_CAMERA_KEY");
        camera_sound = prefs.getBoolean(res.getString(R.string.setting_key_camera_sound), true);
        save_internal_storage = prefs.getBoolean(res.getString(R.string.setting_key_save_internal_storage), true);
        sd_card_grant_uri = prefs.getString(res.getString(R.string.setting_key_sd_card_grant_uri), null);
        not_show_dialog_location = prefs.getBoolean(res.getString(R.string.setting_key_dialog_location), false);
    }

    public void save() {
        if (!loaded) {
            return;
        }
        SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(
                getApplicationContext()).edit();
        Resources res = getResources();

        editor.putBoolean(res.getString(R.string.setting_key_sdcard_inserted), sdcard_inserted);
        editor.putBoolean(res.getString(R.string.setting_key_dialog_thermal), not_show_dialog_thermal);
        editor.putBoolean(res.getString(R.string.setting_key_save_location), save_location);
        editor.putString(res.getString(R.string.setting_key_use_volume_key), use_volume_key);
        editor.putBoolean(res.getString(R.string.setting_key_camera_sound), camera_sound);
        editor.putBoolean(res.getString(R.string.setting_key_save_internal_storage), save_internal_storage);
        editor.putString(res.getString(R.string.setting_key_sd_card_grant_uri), sd_card_grant_uri);
        editor.putBoolean(res.getString(R.string.setting_key_dialog_location), not_show_dialog_location);

        editor.apply();
    }

    public void setCameraSound(boolean cameraSound) {
        camera_sound = cameraSound;
    }

    public void setSaveInternalStorage(boolean saveInternalStorage) {
        save_internal_storage = saveInternalStorage;
    }

    public void setSaveLocation(boolean saveLocation) {
        save_location = saveLocation;
        save();
    }

    public void setSdCardGranted(Uri uri) {
        if (uri != null) {
            sd_card_grant_uri = uri.toString();
            LogFilter.d("Camera2App", "grantedUri:" + sd_card_grant_uri);
        }
    }

    public void setSdcardInserted(boolean sdcardInserted) {
        sdcard_inserted = sdcardInserted;
    }

    public void setShowDialogLocation(boolean showDialogLocation) {
        not_show_dialog_location = !showDialogLocation;
    }

    public void setShowDialogThermal(boolean showDialogThermal) {
        not_show_dialog_thermal = !showDialogThermal;
    }

    public void setUseVolumeKey(String useVolumeKey) {
        use_volume_key = useVolumeKey;
    }
}


// ===== ShotSettings =====
// .super Ljava/lang/Object;  accessFlags=0x2 (private, non-static inner class)
private class ShotSettings {
    public int noiseReductionStrength;

    private ShotSettings() {
    }
}


// ===== UpdateCameraInfoViewRunnable =====
// .super Ljava/lang/Object;  .implements Ljava/lang/Runnable;
// accessFlags=0x2 (private, non-static inner class)
private class UpdateCameraInfoViewRunnable implements Runnable {
    private TotalCaptureResult mTotalCaptureResult;

    private UpdateCameraInfoViewRunnable() {
    }

    @Override
    public void run() {
        if (!mActive) {
            return;
        }
        Long exposureTime = (Long) mTotalCaptureResult.get(TotalCaptureResult.SENSOR_EXPOSURE_TIME);
        Integer sensitivity = (Integer) mTotalCaptureResult.get(TotalCaptureResult.SENSOR_SENSITIVITY);
        if (exposureTime != null && sensitivity != null) {
            if (mLatestCaptureResult == null) {
                mLatestCaptureResult = new CaptureResult((double) exposureTime.longValue(), sensitivity.intValue());
            } else {
                mLatestCaptureResult.sets((double) exposureTime.longValue(), sensitivity.intValue());
            }
            mInternalSettings.updateCameraInfoView(exposureTime.longValue(), sensitivity.intValue());
            if (isEngineRunning() && isAutoEdgeNR()) {
                mSensorSensitivityAverageManager.add(sensitivity.intValue());
            }
        }
    }

    public void setTotalCaptureResult(TotalCaptureResult totalCaptureResult) {
        mTotalCaptureResult = totalCaptureResult;
    }
}
