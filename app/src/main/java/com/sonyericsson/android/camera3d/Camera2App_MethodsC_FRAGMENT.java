// ============================================================================
// STAGING FRAGMENT — 待合併進 Camera2App.java 的方法本體 (batch C, 52 個方法)
// 本檔案不可獨立編譯，僅供合併時複製貼上使用（直接參照外部 Camera2App 欄位/方法，
// 不使用 this. 前綴以外的限定）。方法排列順序與
// /home/h/tmp/SemcCameraUI/.tmp/camera2app_methods_batchC.txt 一致。
//
// 合併時所需的 fully-qualified imports（Camera2App.java 目前已匯入的項目不重複列出）：
//   android.annotation.TargetApi
//   android.content.SharedPreferences
//   android.content.pm.PackageManager
//   android.content.pm.PermissionGroupInfo
//   android.content.res.Configuration
//   android.content.res.Resources
//   android.graphics.Rect
//   android.os.AsyncTask
//   android.util.DisplayMetrics
//   android.util.Size
//   android.view.Gravity
//   android.view.MotionEvent
//   android.view.ViewStub
//   android.widget.LinearLayout
//   android.widget.RelativeLayout
//   java.io.IOException
//   java.util.ArrayList
//   java.util.List
//   java.util.Locale
//   com.sonyericsson.android.camera3d.utils.LogFilter
//   com.sonyericsson.android.camera3d.utils.io.StorageMonitor
//   com.sonyericsson.android.camera3d.camera_states.Camera1UnlockFocusState
//   com.sonyericsson.android.camera3d.camera_states.UnlockFocusState
//   com.sonyericsson.android.camera3d.camera_states.CameraState
//   com.sonyericsson.android.camera3d.core.MorphoSensorFusion
//
// 以下為同套件（com.sonyericsson.android.camera3d）類別，不需 import，僅供合併時核對：
//   Util, ErrorCaseHandler, MorphoCamera1, MorphoCamera, MorphoPanoramaGP2,
//   MorphoPanoramaGP2Application, SensorFusion, CameraInfo, SettingList, SettingSubList,
//   TextureViewEx, InternalSettings, R, HeaderButtonsFragment, FooterButtonsFragment,
//   InfoIconsFragment, ExtendedOrientationEventListener(inner), EnumDialogType(inner),
//   GetLatestImageTask(inner), Settings(inner class, Camera2App$Settings)
// ============================================================================


private void setMiniPreviewAndArrowsVisibility(boolean showMiniPreview, boolean showArrows) {
    setMiniPreviewVisibility(showMiniPreview);
    setMiniPreviewArrowsVisibility(showArrows);
}

private void setMiniPreviewArrowsVisibility(boolean visible) {
    View arrowLeft = findViewById(R.id.arrow_left);
    arrowLeft.setVisibility((visible && mIsMiniPreviewArrowsVisible[0]) ? View.VISIBLE : View.INVISIBLE);

    View arrowRight = findViewById(R.id.arrow_right);
    arrowRight.setVisibility((visible && mIsMiniPreviewArrowsVisible[1]) ? View.VISIBLE : View.INVISIBLE);

    View arrowUp = findViewById(R.id.arrow_up);
    arrowUp.setVisibility((visible && mIsMiniPreviewArrowsVisible[2]) ? View.VISIBLE : View.INVISIBLE);

    View arrowDown = findViewById(R.id.arrow_down);
    arrowDown.setVisibility((visible && mIsMiniPreviewArrowsVisible[3]) ? View.VISIBLE : View.INVISIBLE);
}

private void setMiniPreviewVisibility(boolean visible) {
    int visibility = visible ? View.VISIBLE : View.INVISIBLE;
    mMiniPreviewImageView.setVisibility(visibility);
    if (visibility == View.INVISIBLE) {
        mMiniPreviewImageView.setImageDrawable(null);
    }
    mMiniPreviewFrame.setVisibility(visibility);
}

private void setOverlayDialog(EnumDialogType type) {
    for (int i = 0; i < mOverlayDialogNum; i++) {
        if (mOverlayDialogType[i] == type) {
            return;
        }
    }
    mOverlayDialogType[mOverlayDialogNum] = type;
    mOverlayDialogNum = (mOverlayDialogNum + 1) % 3;
}

private void setPreviewSize() {
    int[][] table = {{0x500, 0x2d0}};

    // 原始位元碼會取得 DisplayMetrics 但之後完全未使用其內容，保留此行為（可能是原版殘留的無效程式碼）。
    DisplayMetrics displayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);

    MorphoPanoramaGP2Application application = (MorphoPanoramaGP2Application) getApplication();
    Size[] supportedSizes = application.getSupportedPictureSizes();
    Size selected = supportedSizes[mInternalSettings.capture_size_index];
    for (int i = 0; i < supportedSizes.length; i++) {
        Size size = supportedSizes[i];
        if (size.getWidth() == table[0][0] && size.getHeight() == table[0][1]) {
            selected = size;
            break;
        }
    }
    application.setPreviewSize(selected);
}

private void setSaveDestination(boolean internal) {
    if (mSettingSubListSaveDestination != null) {
        int resId = internal
                ? R.string.cam_strings_panorama_save_destination_ims_txt
                : R.string.cam_strings_panorama_save_destination_sd_txt;
        mSettingSubListSaveDestination.setSelectedResourceId(resId);
    }
}

private void setSensorFusionValue() {
    if (mMorphoPanoramaGP2 == null || mSensorFusion == null || mInternalSettings.sensor_mode == -1) {
        return;
    }

    int ret = mSensorFusion.getSensorMatrix(mGyroMatrix, mRVMatrix, mACMatrix, null);
    if (ret != 0) {
        LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.getSensorMatrix error ret:0x%08X", ret));
    }

    ArrayList stockData = mSensorFusion.getStockData();

    if (mInternalSettings.sensor_mode == 1) {
        long attachCount = mMorphoPanoramaGP2.getAttachCount();
        ArrayList gyroList = (ArrayList) stockData.get(0);
        if (gyroList.size() > 0 && attachCount > 0L) {
            MorphoSensorFusion.SensorData[] gyroArray =
                    (MorphoSensorFusion.SensorData[]) gyroList.toArray(new MorphoSensorFusion.SensorData[gyroList.size()]);
            int gyroRet = mMorphoPanoramaGP2.setGyroscopeData(gyroArray);
            if (gyroRet != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setGyroscopeData error ret:0x%08X", gyroRet));
            }
        }
    } else if (mInternalSettings.sensor_mode == 4) {
        ArrayList rvList = (ArrayList) stockData.get(3);
        int size = rvList.size();
        if (size > 0) {
            MorphoSensorFusion.SensorData data = (MorphoSensorFusion.SensorData) rvList.get(size - 1);
            int rvRet = mMorphoPanoramaGP2.setRotationVector(data.mValues);
            if (rvRet != 0) {
                LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setRotationVector error ret:0x%08X", rvRet));
            }
        }
    }

    mSensorFusion.clearStockData();
}

private void setSupportedCaptureSize() {
    int[] previewSizes = mMorphoCamera.getSupportedPreviewSizes();
    MorphoPanoramaGP2Application application = (MorphoPanoramaGP2Application) getApplication();
    application.setSupportedPictureSizes(previewSizes);
}

private void setThumbnail() {
    LogFilter.v(LOG_TAG, "setThumbnail() IN");
    FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
    if (footerButtonsFragment == null) {
        return;
    }
    if (mGetLatestImageTask != null) {
        if (mGetLatestImageTask.getStatus() == AsyncTask.Status.RUNNING) {
            LogFilter.v(LOG_TAG, "setThumbnail() cancel");
            mGetLatestImageTask.cancel(true);
        }
        mGetLatestImageTask = null;
    }
    mGetLatestImageTask = new GetLatestImageTask();
    mGetLatestImageTask.execute(new Integer[0]);
}

private void setViewsVisibility(int visibility) {
    if (mShutdownView && visibility == View.VISIBLE) {
        return;
    }

    if (visibility == View.VISIBLE || !isDialogShown()) {
        HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
        if (headerButtonsFragment != null) {
            headerButtonsFragment.setViewsVisibility(visibility);
        }
        FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
        if (footerButtonsFragment != null) {
            footerButtonsFragment.setViewsVisibility(visibility);
        }
        InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
        if (infoIconsFragment != null) {
            infoIconsFragment.setViewsVisibility(visibility);
            if (visibility == View.VISIBLE) {
                showInfoIcons();
            } else {
                hideInfoIcons();
            }
        }
    }

    if (visibility == View.VISIBLE) {
        if (LIMIT_DIRECTION) {
            if (getResources().getConfiguration().orientation == Configuration.ORIENTATION_PORTRAIT) {
                mIsMiniPreviewArrowsVisible[0] = true;
                mIsMiniPreviewArrowsVisible[1] = true;
                mIsMiniPreviewArrowsVisible[2] = false;
                mIsMiniPreviewArrowsVisible[3] = false;
            } else {
                mIsMiniPreviewArrowsVisible[0] = false;
                mIsMiniPreviewArrowsVisible[1] = false;
                mIsMiniPreviewArrowsVisible[2] = true;
                mIsMiniPreviewArrowsVisible[3] = true;
            }
        } else {
            mIsMiniPreviewArrowsVisible[0] = true;
            mIsMiniPreviewArrowsVisible[1] = true;
            mIsMiniPreviewArrowsVisible[2] = true;
            mIsMiniPreviewArrowsVisible[3] = true;
        }
        mAutoFocusCircle.setVisibility(View.INVISIBLE);
    } else {
        mIsMiniPreviewArrowsVisible[0] = false;
        mIsMiniPreviewArrowsVisible[1] = false;
        mIsMiniPreviewArrowsVisible[2] = false;
        mIsMiniPreviewArrowsVisible[3] = false;
        findViewById(R.id.panoramagp2_preview_background).setBackground(null);
    }

    if (mDialog != null) {
        return;
    }
    setMiniPreviewVisibility(visibility == View.VISIBLE);
    mPreviewLine1.setVisibility(visibility);
    mPreviewLine2.setVisibility(visibility);
}

private void setupUiAndCommonSettings() {
    if (mCreateSequence) {
        mCreateSequence = false;
        mSettings.load();
        try {
            mFolderPath = getSaveDestinationRoot();
        } catch (IOException e) {
            e.printStackTrace();
            finish();
        }
    }

    boolean resumeSequence = mResumeSequence;
    boolean permissionSequence = mPermissionSequence;
    mResumeSequence = false;
    mPermissionSequence = false;

    if (resumeSequence) {
        boolean sdMounted;
        if (!StorageMonitor.isExternalStorageMounted(this)) {
            LogFilter.d(LOG_TAG, "SD card is not mounted.");
            sdMounted = false;
        } else {
            LogFilter.d(LOG_TAG, "SD card is mounted.");
            sdMounted = true;
        }

        boolean sdCardPermissionMissing = sdMounted && isSaveDestinationExternal()
                && !isSdCardGranted(mSettings.getSdCardGrantedUri());
        if (sdCardPermissionMissing) {
            mSettings.setSaveInternalStorage(true);
        }

        boolean insufficientMemory = !checkRemainingMemory(true, false);

        boolean locationDialogShown;
        if (!mSettings.isSaveLocation()) {
            mLocationManager.clearLocation();
            if (mSettings.isShowDialogLocation()) {
                startDialog(EnumDialogType.DIALOG_TYPE_SELECT_CHANGE_LOCATION);
                locationDialogShown = true;
            } else {
                locationDialogShown = false;
            }
        } else {
            locationDialogShown = !checkLocationService();
        }

        if (!locationDialogShown && insufficientMemory) {
            mOverlayDialogNum -= 1;
            mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
            EnumDialogType overlaid = mOverlayDialogType[mOverlayDialogNum];
            mOverlayDialogType[mOverlayDialogNum] = EnumDialogType.DIALOG_TYPE_NONE;
            if (overlaid != EnumDialogType.DIALOG_TYPE_NONE) {
                startDialog(overlaid);
            }
        }
        if (sdCardPermissionMissing) {
            startDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_GRANTED_EXTERNAL);
        }

        String volumeKey = mSettings.getUseVolumeKey();
        int volumeKeySummaryRes;
        switch (volumeKey) {
            case VALUE_VOLUME_KEY_ZOOM:
                volumeKeySummaryRes = R.string.cam_strings_panorama_volumekey_zoom_txt;
                break;
            case VALUE_VOLUME_KEY_VOLUME:
                volumeKeySummaryRes = R.string.cam_strings_panorama_volumekey_volume_txt;
                break;
            default:
                volumeKeySummaryRes = R.string.cam_strings_panorama_volumekey_shutter_txt;
                break;
        }
        mSettingSubListUseVolumeKey.setSelectedResourceId(volumeKeySummaryRes);
        mSettingSubListSaveDestination.setSelectedResourceId(
                mSettings.isSaveInternalStorage()
                        ? R.string.cam_strings_panorama_save_destination_ims_txt
                        : R.string.cam_strings_panorama_save_destination_sd_txt);
        mSettingList.setSummary(2, volumeKeySummaryRes);
        mSettingList.setSummary(4,
                mSettings.isSaveInternalStorage()
                        ? R.string.cam_strings_panorama_save_destination_ims_txt
                        : R.string.cam_strings_panorama_save_destination_sd_txt);
        mSettingList.setChecked(1, mSettings.isSaveLocation());
        mSettingList.setChecked(3, mSettings.isCameraSound());
    }

    if (resumeSequence) {
        mSettingList.setItemVisibility(3, mCanDisableShutterSound);
        mSettingList.setItemVisibility(4,
                Util.checkPermissionGrant(new String[]{"android.permission.WRITE_MEDIA_STORAGE"}, this));
        mSettingList.setItemVisibility(5, !Util.isSystemApp(this));
    }

    if (resumeSequence || permissionSequence) {
        if (mStartTrackFlag) {
            setViewsVisibility(View.VISIBLE);
            updateViews();
        }
        if (mUseCamera1) {
            mMiniPreviewImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            mMiniPreviewImageView.setScaleType(ImageView.ScaleType.MATRIX);
        }
        mMiniPreviewImageView.setImageMatrix(mMiniPreviewMatrix);
        configureTransform();
    }
}

private void showBlackScreen() {
    findViewById(R.id.blackScreen).setVisibility(View.VISIBLE);
}

private void showInfoIcons() {
    ((LinearLayout) findViewById(R.id.info_icon_container)).setVisibility(View.VISIBLE);
}

@TargetApi(23)
private void showOkDialog(int requestCode) {
    mResumeAlertOkDialog = false;
    Bundle args = new Bundle();
    PackageManager packageManager = getPackageManager();

    PermissionGroupInfo storageGroup = null;
    PermissionGroupInfo cameraGroup = null;
    PermissionGroupInfo locationGroup = null;
    try {
        storageGroup = packageManager.getPermissionGroupInfo("android.permission-group.STORAGE", PackageManager.GET_META_DATA);
        cameraGroup = packageManager.getPermissionGroupInfo("android.permission-group.CAMERA", PackageManager.GET_META_DATA);
        locationGroup = packageManager.getPermissionGroupInfo("android.permission-group.LOCATION", PackageManager.GET_META_DATA);
    } catch (PackageManager.NameNotFoundException e) {
        LogFilter.w(LOG_TAG, "Package name cannot be found", e);
    }

    if (!isFirstLaunch() || isFirstTimeLocation()) {
        mAlertOkDialog = new AlertOkDialog();

        if (requestCode == REQUEST_LOCATION) {
            if (checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0
                    || checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0) {
                if (locationGroup != null) {
                    args.putString("okBodyCaption1", String.valueOf(locationGroup.loadLabel(packageManager)));
                    args.putString("okBodyText1", getString(R.string.cam_strings_panorama_runtime_permission_rationale_location_txt));
                }
            }
        } else {
            if (checkSelfPermission("android.permission.CAMERA") != 0 && cameraGroup != null) {
                args.putString("okBodyCaption1", String.valueOf(cameraGroup.loadLabel(packageManager)));
                args.putString("okBodyText1", getString(R.string.cam_strings_panorama_runtime_permission_rationale_camera_txt));
            }
            if (checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0 && storageGroup != null) {
                args.putString("okBodyCaption2", String.valueOf(storageGroup.loadLabel(packageManager)));
                args.putString("okBodyText2", getString(R.string.cam_strings_panorama_runtime_permission_rationale_storage_txt));
            }
        }

        int orientation;
        if (mCurViewDegree == -1 || mCurViewDegree == 0 || mCurViewDegree == 180) {
            orientation = 1;
        } else {
            orientation = 2;
        }
        args.putInt("DIALOG_ORIENTATION", orientation);

        mAlertOkDialog.setArguments(args);
        mAlertOkDialog.show(getSupportFragmentManager(), "Alert ok Dialog Fragment");
    }
}

private void showOkOrSettingDialog(String[] permissions, int requestCode) {
    List notGranted = Util.getPermissionNotGranted(permissions, this);
    if (Util.determineDialogType(notGranted, this)) {
        showOkDialog(requestCode);
    } else {
        showSettingDialog(requestCode);
    }
}

private void showPanoramaGuideDirection() {
    if (mWarningTextView == null) {
        return;
    }
    mWarningTextView.setText(R.string.cam_strings_panorama_guide_direction_txt);
    if (mWarningTextView.getWidth() == 0) {
        mHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                if (isCapturing()) {
                    showPanoramaGuideDirection();
                }
            }
        }, 50L);
        return;
    }

    int degree = mCurViewDegree < 0 ? 0 : mCurViewDegree;
    mWarningTextView.setRotation((float) degree);
    if (degree == 0 || degree == 180) {
        mWarningTextView.setGravity(Gravity.CENTER);
        mWarningTextView.setTranslationY(0f);
    } else {
        mWarningTextView.setGravity(Gravity.END);
        mWarningTextView.setTranslationY((float) (-mWarningTextView.getWidth()) / 2.0f);
    }
    mWarningTextView.setVisibility(View.VISIBLE);
}

@TargetApi(23)
private void showPermissionOrStartCamera() {
    if (Util.isMarshmallow()) {
        if (Util.checkPermissionGrant(PERMISSIONS_CAMERA_STORAGE, this)) {
            try {
                startCamera();
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
                onErrorCamera();
                return;
            }
            prepareSound();
        } else if (mStartTrackFlag) {
            requestPermissions(PERMISSIONS_CAMERA_STORAGE, REQUEST_CAMERA_STORAGE);
            changeTrackingFlag(false);
        }
    } else {
        try {
            startCamera();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            onErrorCamera();
            return;
        }
        prepareSound();
    }
}

@TargetApi(23)
private void showPermissionOrValidateLocation() {
    if (Util.isMarshmallow()) {
        if (Util.checkPermissionGrant(PERMISSIONS_LOCATION, this)) {
            checkLocationService();
        } else if (mStartTrackFlag) {
            shutdownViews();
            if (mMorphoCamera != null) {
                mMorphoCamera.stopState();
                mMorphoCamera.cameraInfo().abortCaptures();
                mMorphoCamera.cancelState();
                mMorphoCamera.setDefaultCameraState();
                mMorphoCamera.pause();
            }
            if (isFirstTimeLocation()) {
                requestPermissions(PERMISSIONS_LOCATION, REQUEST_LOCATION);
            } else {
                showOkOrSettingDialog(PERMISSIONS_LOCATION, REQUEST_LOCATION);
            }
            changeTrackingFlag(false);
        }
    } else {
        checkLocationService();
    }
}

private void showSavingProgressBar() {
    LogFilter.d(LOG_TAG, "showSavingProgressBar");
    FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
    if (footerButtonsFragment != null) {
        footerButtonsFragment.clearThumbnail();
    }
    setViewsVisibility(View.INVISIBLE);
    mWarningTextView.setVisibility(View.INVISIBLE);
    mPreviewFrame.setVisibility(View.INVISIBLE);
    mCurPreviewFrame.setVisibility(View.INVISIBLE);
    mPreviewArrow.setVisibility(View.INVISIBLE);
    setMiniPreviewAndArrowsVisibility(false, false);
    getSavingProgressBar().setVisibility(View.VISIBLE);
}

@TargetApi(23)
private void showSettingDialog(int requestCode) {
    mResumeAlertSettingDialog = false;
    Bundle args = new Bundle();
    PackageManager packageManager = getPackageManager();

    PermissionGroupInfo storageGroup = null;
    PermissionGroupInfo cameraGroup = null;
    PermissionGroupInfo locationGroup = null;
    try {
        storageGroup = packageManager.getPermissionGroupInfo("android.permission-group.STORAGE", PackageManager.GET_META_DATA);
        cameraGroup = packageManager.getPermissionGroupInfo("android.permission-group.CAMERA", PackageManager.GET_META_DATA);
        locationGroup = packageManager.getPermissionGroupInfo("android.permission-group.LOCATION", PackageManager.GET_META_DATA);
    } catch (PackageManager.NameNotFoundException e) {
        LogFilter.w(LOG_TAG, "Package name cannot be found", e);
    }

    mAlertSettingDialog = new AlertSettingDialog();

    if (requestCode == REQUEST_LOCATION) {
        boolean bothGranted = checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0
                && checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
        if (!bothGranted) {
            if (locationGroup != null) {
                args.putString("settingBodyCaption1", String.valueOf(locationGroup.loadLabel(packageManager)));
                args.putString("settingBodyText1", getString(R.string.cam_strings_panorama_runtime_permission_rationale_location_txt));
            }
            mAlertSettingDialog.setCancelWithFinish(false);
            mAlertSettingDialog.setCancelWithStartCamera(true);
        }
    } else {
        if (checkSelfPermission("android.permission.CAMERA") != 0 && cameraGroup != null) {
            args.putString("settingBodyCaption1", String.valueOf(cameraGroup.loadLabel(packageManager)));
            args.putString("settingBodyText1", getString(R.string.cam_strings_panorama_runtime_permission_rationale_camera_txt));
        }
        if (checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0 && storageGroup != null) {
            args.putString("settingBodyCaption2", String.valueOf(storageGroup.loadLabel(packageManager)));
            args.putString("settingBodyText2", getString(R.string.cam_strings_panorama_runtime_permission_rationale_storage_txt));
        }
        mAlertSettingDialog.setCancelWithFinish(true);
        mAlertSettingDialog.setCancelWithStartCamera(false);
    }

    int orientation;
    if (mCurViewDegree == -1 || mCurViewDegree == 0 || mCurViewDegree == 180) {
        orientation = 1;
    } else {
        orientation = 2;
    }
    args.putInt("DIALOG_ORIENTATION", orientation);

    mAlertSettingDialog.setArguments(args);
    mAlertSettingDialog.show(getSupportFragmentManager(), "Alert Setting Dialog Fragment");
}

private void shutdownViews() {
    mShutdownView = true;
    if (isOpenedSettingDialog()) {
        closeSettingDialog(false);
    }
    setViewsVisibility(View.INVISIBLE);
    setMiniPreviewAndArrowsVisibility(false, false);
    ((RelativeLayout) findViewById(R.id.root_view)).setBackgroundColor(0xFF000000);
    mView.setOnTouchListener(null);
    mTextureView.setVisibility(View.INVISIBLE);
    mTextureView.setOnTouchListener(null);
    if (mSurfaceView != null) {
        mSurfaceView.setVisibility(View.INVISIBLE);
        mSurfaceView.setOnTouchListener(null);
    }
    mSettingList.getView().setVisibility(View.INVISIBLE);
    mSettingSubListUseVolumeKey.getView().setVisibility(View.INVISIBLE);
    mSettingSubListSaveDestination.getView().setVisibility(View.INVISIBLE);
    if (mDialog != null) {
        mDialog.dismiss(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SHUTDOWN);
    }
    if (mPreviewFrame != null) {
        mPreviewFrame.setVisibility(View.INVISIBLE);
        mCurPreviewFrame.setVisibility(View.INVISIBLE);
        mPreviewArrow.setVisibility(View.INVISIBLE);
        mWarningTextView.setVisibility(View.INVISIBLE);
    }
    showBlackScreen();
}

private void startCamera() throws IllegalArgumentException {
    if (mTemperatureHigh) {
        return;
    }
    if (!mStartTrackFlag) {
        return;
    }

    setButtonsEnabled(true);

    mUseCamera1 = mInternalSettings.isUseCamera1(getApplication());
    mInternalSettings.settingCaptureMode(getApplication());

    if (mMorphoCamera == null
            || mUseCamera1Tmp != mUseCamera1
            || mCameraIdTmp != mInternalSettings.camera_id) {
        mAovs = null;
        mInternalSettings.removePreviewSize(getApplication());
        mInternalSettings.resetValues();
    }

    if (mUseCamera1) {
        mMorphoCamera = new MorphoCamera1(this, mInternalSettings.camera_id);
    } else {
        mMorphoCamera = new MorphoCamera(this, this, mInternalSettings.camera_id, mInternalSettings.getCaptureMode());
    }

    mIsFrontCamera = mMorphoCamera.isFrontCamera(mInternalSettings.camera_id);
    setNullDirectionFunction();
    mMorphoCamera.setMorphoPanoramaGP2Interface(this);

    if (mUseCamera1) {
        if (mSurfaceView == null) {
            ((ViewStub) findViewById(R.id.stub_camera1_surface_view)).inflate();
            mSurfaceView = (SurfaceView) findViewById(R.id.camera1_surface_view);
        }
        mTextureView.setVisibility(View.GONE);
        mSurfaceView.setVisibility(View.VISIBLE);
        SurfaceHolder holder = mSurfaceView.getHolder();
        holder.removeCallback(mSurfaceListener);
        holder.addCallback(mSurfaceListener);
        mTextureView.setOnTouchListener(null);
        mSurfaceView.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (isOpenedSettingDialog()) {
                    closeSettingDialog();
                    checkRemainingMemory(false);
                }
                return mScaleGestureDetector.onTouchEvent(event);
            }
        });
    } else {
        mTextureView.setVisibility(View.VISIBLE);
        mTextureView.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (isOpenedSettingDialog()) {
                    closeSettingDialog();
                    checkRemainingMemory(false);
                }
                return mScaleGestureDetector.onTouchEvent(event);
            }
        });
        if (mSurfaceView != null) {
            mSurfaceView.setVisibility(View.GONE);
            mSurfaceView.setOnTouchListener(null);
        }
    }

    if (mOrientationEventListener == null) {
        mOrientationEventListener = new ExtendedOrientationEventListener(this);
    }
    mOrientationEventListener.enable();
    updatedOrientation(getDisplayRotation());
    setSupportedCaptureSize();
    getSettingValue();
    setPreviewSize();

    MorphoPanoramaGP2Application application = (MorphoPanoramaGP2Application) getApplication();
    Size[] supportedSizes = application.getSupportedPictureSizes();
    Size captureSize = supportedSizes[mInternalSettings.capture_size_index];
    mMorphoCamera.resume(captureSize, application.getPreviewSize());

    if (mTextureView.isAvailable()) {
        textureViewPrepared();
    } else {
        mTextureView.setSurfaceTextureListener(mSurfaceTextureListener);
    }
}

private void startCaptureTimer() {
    mCaptureTimer.start();
}

private void startCountDownTimer() {
    if (!mTemperatureHigh) {
        mCountDownTimer.start();
    }
}

private void startDialog(EnumDialogType type) {
    if (!mStartTrackFlag) {
        return;
    }
    if (!mActive && type != EnumDialogType.DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE) {
        return;
    }
    if (mDialogType == type) {
        return;
    }

    if (mDialogType != EnumDialogType.DIALOG_TYPE_NONE && mOverlayDialogNum < 3) {
        switch (mDialogType) {
            case DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN:
            case DIALOG_TYPE_ERROR_CAMERA_SECURITY:
                return;
            default:
                if (type != EnumDialogType.DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN) {
                    setOverlayDialog(mDialogType);
                    if (isDialogShown()) {
                        dismissDialog(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OVERLAY);
                    }
                }
                break;
        }
    }

    Bundle args = new Bundle();
    int orientation;
    if (mCurViewDegree == -1 || mCurViewDegree == 0 || mCurViewDegree == 180) {
        orientation = 1;
    } else {
        orientation = 2;
    }
    args.putInt("DIALOG_ORIENTATION", orientation);

    switch (type) {
        case DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN:
            ErrorCaseHandler.setStatus(2);
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_dialog_high_temp_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_high_temp_shutting_down_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            break;
        case DIALOG_TYPE_ERROR_CAMERA_SECURITY:
            ErrorCaseHandler.setStatus(3);
            mDialog = new RotatableDialogFragment();
            args.putBoolean("USE_NATIVE_LAYOUT", true);
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_use_of_camera_not_authorized_txt));
            break;
        case DIALOG_TYPE_MEMORY_FULL_INTERNAL:
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_memory_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_memory_ims_full_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            break;
        case DIALOG_TYPE_MEMORY_FULL_EXTERNAL:
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_memory_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_memory_full_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            break;
        case DIALOG_TYPE_ERROR_SAVE:
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_memory_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_store_fail_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            break;
        case DIALOG_TYPE_ERROR_CAPTURE:
        case DIALOG_TYPE_ERROR_LAUNCH:
            ErrorCaseHandler.setStatus(6);
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_fatal_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            break;
        case DIALOG_TYPE_ERROR_CAMERA:
            ErrorCaseHandler.setStatus(3);
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_device_not_available_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            break;
        case DIALOG_TYPE_ERROR_CAMERA_LAUNCH:
            ErrorCaseHandler.setStatus(3);
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_launch_app_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            break;
        case DIALOG_TYPE_SELECT_SAVE_DST:
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_save_destination_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_change_storage_to_sd_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_change_txt));
            args.putString("NEGATIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_cancel_txt));
            break;
        case DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL:
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_memory_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_memory_unavailable_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            break;
        case DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL:
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_memory_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_memory_ims_unavailable_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            break;
        case DIALOG_TYPE_ERROR_NOT_GRANTED_EXTERNAL:
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_dialog_high_temp_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_sd_permission_info_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            break;
        case DIALOG_TYPE_ALERT_THERMAL_WARNING:
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_dialog_high_temp_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_error_high_temp_info_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            args.putString("CHECKBOX_MESSAGE", getString(R.string.cam_strings_panorama_do_not_show_again_txt));
            break;
        case DIALOG_TYPE_SELECT_CHANGE_LOCATION:
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_remember_geotag_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_remember_geotag_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_yes_txt));
            args.putString("NEGATIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_no_txt));
            args.putString("CHECKBOX_MESSAGE", getString(R.string.cam_strings_panorama_do_not_show_again_txt));
            break;
        case DIALOG_TYPE_SELECT_VALIDATE_LOCATION:
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_advanced_setting_geo_tag_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_advanced_setting_geo_tag_both_off_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            args.putString("NEGATIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_cancel_txt));
            break;
        case DIALOG_TYPE_LICENSE:
            mLicenseDialog = new LicenseDialog();
            break;
        case DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION:
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_dialog_high_temp_title_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_sd_permission_info_2_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            args.putString("NEGATIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_cancel_txt));
            break;
        case DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE:
            mDialog = new RotatableDialogFragment();
            args.putString("DIALOG_TITLE", getString(R.string.cam_strings_panorama_error_memory_unavailable_txt));
            args.putString("DIALOG_MESSAGE", getString(R.string.cam_strings_panorama_sd_permission_info_3_txt));
            args.putString("POSITIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_ok_txt));
            args.putString("NEGATIVE_BUTTON_LABEL", getString(R.string.cam_strings_panorama_cancel_txt));
            break;
        default:
            return;
    }

    mDialogType = type;

    if (isOpenedSettingDialog()) {
        closeSettingDialog();
        checkRemainingMemory(true, false);
    }
    setButtonsEnabled(false);
    setMiniPreviewVisibility(false);
    mPreviewLine1.setVisibility(View.INVISIBLE);
    mPreviewLine2.setVisibility(View.INVISIBLE);
    requestToRecoverSystemUi();

    if (mLicenseDialog != null) {
        mLicenseDialog.setArguments(args);
        mLicenseDialog.show(getSupportFragmentManager(), "License Dialog Fragment");
    } else {
        mDialog.setArguments(args);
        mDialog.show(getSupportFragmentManager(), "Dialog Fragment");
    }
}

private void startRotatableToast(String message, int arg2, boolean arg3) {
    if (mRotatableToast != null && !mRotatableToast.getRotatableToast()) {
        mRotatableToast.setRotatableToastMessage(message);
        mRotatableToast.startRotatableToast(arg2, arg3, mCurViewDegree);
    }
}

private void stopCaptureTimer() {
    mCaptureTimer.cancel();
}

private void stopGpsSearchTimer() {
    if (isActiveGpsSearchTimer()) {
        mGpsSearchTimer.cancel();
        mGpsSearchTimer.purge();
        mGpsSearchTimer = null;
        mGpsSearchTimerTask = null;
    }
}

private void textureViewPrepared() {
    try {
        openCamera();
    } catch (IllegalArgumentException e) {
        e.printStackTrace();
        onErrorCamera();
        return;
    }
    makeEngineParam();
}

private void translateSettingSubList(View view) {
    Configuration configuration = getResources().getConfiguration();
    Rect rect = mSettingList.getGlobalRectOfSelectedItem();
    int padding = getResources().getDimensionPixelSize(R.dimen.setting_dialog_container_padding);

    float translationX;
    float translationY;
    if (mSettingList.getOrientation() != 0) {
        int x = rect.left + padding - view.getWidth()
                - getResources().getDimensionPixelSize(R.dimen.setting_dialog_sub_list_top_margin);
        translationX = (float) x;
        if (configuration.getLayoutDirection() == 1) {
            translationY = (float) rect.top;
        } else {
            translationY = (float) (rect.top + (rect.height() - view.getHeight()));
        }
    } else {
        float x;
        if (configuration.getLayoutDirection() == 1) {
            x = (float) (rect.left - (rect.right - view.getWidth() + padding * 2));
        } else {
            x = (float) (rect.left - padding + (rect.right - view.getWidth() - padding * 2));
        }
        int y = rect.bottom - padding
                + getResources().getDimensionPixelSize(R.dimen.setting_dialog_sub_list_top_margin);
        translationY = (float) y;
        translationX = x;
    }

    view.getGlobalVisibleRect(rect);
    if (mSettingList.getOrientation() == 1 && (float) rect.left + translationX < 0f) {
        translationX = (float) -rect.left;
    }
    if ((float) rect.top + translationY < 0f) {
        // 原始版本此處誤將 top 的修正值寫入 translationX（並非寫入 translationY），為原版既有行為，保留不修正。
        translationX = (float) -rect.top;
    }
    view.setTranslationX(translationX);
    view.setTranslationY(translationY);
}

private void unlockFocus() {
    if (mMorphoCamera != null) {
        CameraState state;
        if (mUseCamera1) {
            state = new Camera1UnlockFocusState(mMorphoCamera.cameraState());
        } else {
            state = new UnlockFocusState();
        }
        mMorphoCamera.updateCameraState(state);
        mMorphoCamera.startState();
    }
}

private void unregisterGravitySensorListener() {
    if (mInternalSettings.use_gravity_sensor && mSensorManager != null) {
        mSensorManager.unregisterListener(this);
    }
}

private void updateSaveDestination(boolean internal) throws IOException {
    if (!internal) {
        Uri uri = mSettings.getSdCardGrantedUri();
        if (!isSdCardGranted(uri)) {
            startDialog(EnumDialogType.DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION);
            return;
        }
    }
    mSettings.setSaveInternalStorage(internal);
    mFolderPath = getSaveDestinationRoot(internal);
}

private void updateViews() {
    FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
    if (footerButtonsFragment != null) {
        footerButtonsFragment.updateViews();
        setThumbnail();
    }
}

private void updateViewsForCapture() {
    if (mPreviewFrame == null) {
        ((ViewStub) findViewById(R.id.stub_frame_panorama_preview)).inflate();
        ((ViewStub) findViewById(R.id.stub_preview_frame)).inflate();
        ((ViewStub) findViewById(R.id.stub_preview_arrow)).inflate();
        ((ViewStub) findViewById(R.id.stub_guide_text)).inflate();

        mPreviewFrame = (FrameLayout) findViewById(R.id.FramePanoramaPreview);
        mPreviewImageView = (ImageView) findViewById(R.id.ImagePanoramaPreview);
        mCurPreviewFrame = findViewById(R.id.panoramagp2_preview_frame);
        mPreviewArrow = (ImageView) findViewById(R.id.panoramagp2_preview_arrow);
        mWarningTextView = (TextView) findViewById(R.id.warning);
    }

    if (isDialogShown()) {
        return;
    }

    HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
    if (headerButtonsFragment != null) {
        headerButtonsFragment.setViewsVisibility(View.INVISIBLE);
    }
    FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
    if (footerButtonsFragment != null) {
        footerButtonsFragment.hideThumbnail();
        footerButtonsFragment.hideModeSelector();
    }

    boolean is16_9 = isResolution16_9();
    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) mPreviewImageView.getLayoutParams();
    Resources resources = getResources();
    int heightRes = is16_9 ? R.dimen.preview_height_16_9 : R.dimen.preview_height_4_3;
    layoutParams.height = resources.getDimensionPixelSize(heightRes);
    mPreviewImageView.setLayoutParams(layoutParams);

    setMiniPreviewAndArrowsVisibility(true, true);
    showPanoramaGuideDirection();
    hideInfoIcons();
    requestToRemoveSystemUi();
}

private void updateViewsForPreview() {
    if (mShutdownView) {
        return;
    }
    HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
    if (headerButtonsFragment != null) {
        headerButtonsFragment.setViewsVisibility(View.VISIBLE);
    }
    FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
    if (footerButtonsFragment != null) {
        footerButtonsFragment.showModeSelector();
        footerButtonsFragment.setShutterIcon();
    }
    setThumbnail();
    showInfoIcons();
    requestToDimSystemUi();
    if (mWarningTextView != null) {
        mWarningTextView.setVisibility(View.INVISIBLE);
    }
    setMiniPreviewAndArrowsVisibility(true, false);
}

private void updatedOrientation(int rotation) {
    int deviceOrientation = rotation + getDisplayRotation();
    boolean shouldUpdate;
    if (mCurOrientation == -1) {
        shouldUpdate = true;
    } else {
        int snappedCur = (mCurOrientation + 45) / 90 * 90 % 360;
        int snappedNew = (deviceOrientation + 45) / 90 * 90 % 360;
        if (snappedCur == snappedNew) {
            shouldUpdate = false;
        } else {
            shouldUpdate = Math.abs(deviceOrientation - snappedCur) > 60;
        }
    }
    if (shouldUpdate) {
        mCurOrientation = (deviceOrientation + 45) / 90 * 90 % 360;
    }
}

private void writeViewAngle(int cameraId, float angleH, float angleV) {
    SharedPreferences.Editor editor = getSharedPreferences(PREF_KEY, MODE_PRIVATE).edit();
    editor.putInt(PREF_KEY_VIEW_ANGLE_CAMERA_ID, cameraId);
    editor.putFloat(PREF_KEY_VIEW_ANGLE_H, angleH);
    editor.putFloat(PREF_KEY_VIEW_ANGLE_V, angleV);
    editor.apply();
}

public void changeTrackingFlag(boolean flag) {
    mStartTrackFlag = flag;
}

public int getAntiBanding() {
    return mInternalSettings.getAntiBanding();
}

public int getColorCorrectionMode() {
    return mInternalSettings.color_correction_mode;
}

public int getEdgeMode() {
    return mInternalSettings.edge_mode;
}

public int getNoiseReductionMode() {
    return mInternalSettings.noise_reduction_mode;
}

public Uri getSdCardGrantedUri() {
    return mSettings.getSdCardGrantedUri();
}

public int getShadingMode() {
    return mInternalSettings.shading_mode;
}

public int getTonemapMode() {
    return mInternalSettings.tonemap_mode;
}

public boolean isAutoAELock() {
    return mInternalSettings.auto_ae_lock;
}

public boolean isAutoEdgeNR() {
    return mInternalSettings.nr_auto;
}

public boolean isAutoWBLock() {
    return mInternalSettings.auto_wb_lock;
}

public boolean isDisplay18_9() {
    float ratio = (float) realPixelSize.y / (float) realPixelSize.x;
    return Math.abs(ratio - 2.0f) < 0.01f;
}

public boolean isDisplay21_9() {
    float ratio = (float) realPixelSize.y / (float) realPixelSize.x;
    return Math.abs(ratio - Float.intBitsToFloat(0x40155555)) < 0.01f;
}

public boolean isEngineRunning() {
    boolean panoramaSaving = isPanoramaSaving();
    return mMorphoPanoramaGP2 != null || panoramaSaving;
}
