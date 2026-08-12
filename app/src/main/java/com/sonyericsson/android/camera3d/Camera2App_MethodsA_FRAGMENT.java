/*
 * STAGING FILE - 暫存檔案，非最終產物。
 *
 * 本檔案包含 Camera2App 的 52 個方法本體（batchA），依 /home/h/tmp/SemcCameraUI/.tmp/camera2app_methods_batchA.txt
 * 所列順序，逐一由 Camera2App.smali 手動反編譯而來。合併階段會將以下方法本體搬移進
 * Camera2App.java 類別主體中。
 *
 * 合併時需要的 import（Camera2App.java 目前已匯入的項目不重複列出）：
 *   android.content.Intent
 *   android.database.Cursor
 *   android.graphics.RectF
 *   android.media.ExifInterface
 *   android.provider.MediaStore
 *   android.support.v4.provider.DocumentFile
 *   android.text.format.DateFormat
 *   android.util.DisplayMetrics
 *   android.view.ViewStub
 *   android.widget.LinearLayout
 *   android.widget.ProgressBar
 *   java.io.File
 *   java.io.FileNotFoundException
 *   java.io.FileOutputStream
 *   java.io.IOException
 *   java.util.Locale
 *   com.sonyericsson.android.camera3d.camera_states.AutoFocusState
 *   com.sonyericsson.android.camera3d.camera_states.Camera1AutoFocusState
 *   com.sonyericsson.android.camera3d.camera_states.CameraState
 *   com.sonyericsson.android.camera3d.utils.LogFilter
 *   com.sonyericsson.android.camera3d.utils.io.StorageMonitor
 *
 * 下列型別與 Camera2App 同套件（com.sonyericsson.android.camera3d），合併後不需 import：
 *   CameraInfo, CameraConstants, PerformanceCounter, MorphoPanoramaGP2,
 *   MorphoPanoramaGP2Application, InternalSettings, InfoIconsFragment,
 *   FooterButtonsFragment, HeaderButtonsFragment, PanoramaGP2LocationManager
 *
 * 下列型別為 Camera2App 自身的內部類別，合併後直接以簡單名稱存取，不需 import：
 *   Settings, ContentInfo, EnumDialogType, EnumResultCreateEngine
 *
 * 匿名內部類別佔位：本檔案中 new Camera2App$9(this) / Camera2App$10(this) / Camera2App$11(this) /
 * Camera2App$26(this) / Camera2App$27(this) / Camera2App$29(this) 等呼叫，皆為對應的匿名類別
 * (FileFilter / FilenameFilter / TimerTask / IPanoramaGP2LocationListener / Runnable)
 * 之佔位符號，其本體由 Camera2App_AnonymousClasses_FRAGMENT.java 另行手刻，合併階段須依
 * EnclosingMethod 標註，將本檔案中對應呼叫點替換為該檔案中真正的 `new XXX() { ... }` 內嵌寫法。
 */

// ========== abortCamera ==========
private void abortCamera() {
    if (mMorphoCamera != null) {
        mMorphoCamera.stopState();
        mMorphoCamera.cameraInfo().abortCaptures();
        if (isEngineRunning() && !isPanoramaSaving() && mDirectionFunction.enabled()) {
            LogFilter.d("Camera2App", "panorama is capturing.");
            playSound(mStopSoundId);
            mPanoramaState.abort();
            setAttachExit();
        } else if (isPanoramaSaving()) {
            LogFilter.d("Camera2App", "panorama is saving.");
            mSavingBackground = true;
            if (!mDirectionFunction.enabled()) {
                return;
            }
        } else {
            LogFilter.d("Camera2App", "panorama is idling.");
            mMorphoCamera.cancelState();
        }
        mMorphoCamera.setDefaultCameraState();
        mMorphoCamera.pause();
        mMorphoCamera.exit();
    }
}

// ========== addAttachQueue ==========
private void addAttachQueue(CaptureImage image) {
    mAttachImageQueue.offer(image);
    while (mAttachImageQueue.size() > 1) {
        CaptureImage polled = (CaptureImage) mAttachImageQueue.poll();
        if (polled != null) {
            polled.close();
        }
    }
}

// ========== addLocalCache ==========
private void addLocalCache(ContentInfo info) {
    if (mLocalCacheBackup != null) {
        mLocalCacheBackup.addFirst(info);
        if (mLocalCacheBackup.size() > MAX_LOCAL_CACHE_NUM) {
            mLocalCacheBackup.removeLast();
        }
    }
    mLocalCache.addFirst(info);
    if (mLocalCache.size() > MAX_LOCAL_CACHE_NUM) {
        mLocalCache.removeLast();
    }
}

// ========== autoFocus ==========
private boolean autoFocus() {
    if (mActive && !mMorphoCamera.finishState() && checkRemainingMemory(false, false)) {
        CameraState state;
        if (mUseCamera1) {
            state = new Camera1AutoFocusState(mMorphoCamera.cameraState(), false);
        } else {
            state = new AutoFocusState(false);
        }
        mMorphoCamera.updateCameraState(state);
        state.onStart();
        mAutoFocusCircle.setImageResource(R.drawable.cam_auto_focus_circle_focusing_icn);
        mAutoFocusCircle.setVisibility(View.VISIBLE);
        mIsAutoFocusProcessing = true;
        return true;
    }
    return false;
}

// ========== checkLocationService ==========
private boolean checkLocationService() {
    if (!mStartTrackFlag) {
        return true;
    }
    if (mLocationManager.isValidLocationService()) {
        mLocationManager.requestLocation();
        InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
        if (infoIconsFragment != null) {
            infoIconsFragment.startGpsSearch();
        }
        if (!isActiveGpsSearchTimer()) {
            if (mGpsSearchTimerTask == null) {
                mGpsSearchTimerTask = new Camera2App$26(this);
            }
            mGpsSearchTimer = new Timer();
            mGpsSearchTimer.scheduleAtFixedRate(mGpsSearchTimerTask, 500L, 500L);
        }
        mLocationManager.updateLocation(new Camera2App$27(this));
        return true;
    }
    InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
    if (infoIconsFragment != null) {
        infoIconsFragment.stopGpsSearch();
    }
    startDialog(EnumDialogType.DIALOG_TYPE_SELECT_VALIDATE_LOCATION);
    return false;
}

// ========== checkRemainingMemory(Z) ==========
private boolean checkRemainingMemory(boolean p1) {
    return checkRemainingMemory(p1, true);
}

// ========== checkRemainingMemory(ZZ) ==========
private boolean checkRemainingMemory(boolean p1, boolean p2) {
    long internal = StorageMonitor.getAvailableInternalStorageSpace();
    long external = StorageMonitor.getAvailableExternalStorageSpace(this);
    boolean hasExternal = external >= 0;
    boolean internalOk = internal >= REMAINING_MEMORY_SIZE_MIN;
    boolean externalOk = external >= REMAINING_MEMORY_SIZE_MIN;
    boolean internalEnabled = !externalOk || internalOk;
    setEnabledSaveDestination(true, internalEnabled);
    setEnabledSaveDestination(false, externalOk);

    long remaining;
    boolean destExternal;
    boolean success;
    if (isSaveDestinationExternal()) {
        mSettings.setSdcardInserted(hasExternal);
        if (hasExternal) {
            remaining = external;
            destExternal = true;
            success = true;
        } else {
            if (p1 || p2) {
                setSaveDestination(true);
            }
            if (!p1 && p2) {
                startDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
                return false;
            }
            if (p1) {
                setOverlayDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
                success = false;
            } else {
                success = true;
            }
            remaining = internal;
            destExternal = false;
        }
    } else {
        if (p1) {
            mSettings.isSdcardInserted();
            if (!hasExternal) {
                mSettings.setSdcardInserted(false);
            }
        }
        remaining = internal;
        destExternal = false;
        success = true;
    }

    LogFilter.d("Camera2App", String.format(Locale.US,
            "checkRemainingMemory Internal=%d External=%d Destination storage is %s.",
            internal, external, destExternal ? "external" : "internal"));

    if (remaining < 0) {
        if (p2) {
            if (destExternal) {
                startDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
            } else {
                startDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL);
            }
        } else if (p1) {
            if (destExternal) {
                setOverlayDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
            } else {
                setOverlayDialog(EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL);
            }
        }
        return false;
    }

    InfoIconsFragment infoIconsFragment = getInfoIconsFragment();
    if (infoIconsFragment != null) {
        if (remaining < REMAINING_MEMORY_SIZE_RECOMMEND) {
            infoIconsFragment.showMemoryIcon();
        } else {
            infoIconsFragment.hideMemoryIcon();
        }
    }

    if (remaining < REMAINING_MEMORY_SIZE_MIN) {
        if (p2) {
            if (destExternal) {
                startDialog(EnumDialogType.DIALOG_TYPE_MEMORY_FULL_EXTERNAL);
            } else {
                startDialog(EnumDialogType.DIALOG_TYPE_MEMORY_FULL_INTERNAL);
            }
        } else if (p1) {
            if (destExternal) {
                setOverlayDialog(EnumDialogType.DIALOG_TYPE_MEMORY_FULL_EXTERNAL);
            } else {
                setOverlayDialog(EnumDialogType.DIALOG_TYPE_MEMORY_FULL_INTERNAL);
            }
        }
        return false;
    }

    return success;
}

// ========== clearLocalCache ==========
private void clearLocalCache() {
    if (mLocalCache != null) {
        mLocalCache.clear();
    }
}

// ========== clearLocalCacheBackup ==========
private void clearLocalCacheBackup() {
    if (mLocalCacheBackup != null) {
        mLocalCacheBackup.clear();
        mLocalCacheBackup = null;
    }
}

// ========== closeSettingDialog() ==========
private void closeSettingDialog() {
    closeSettingDialog(true);
}

// ========== closeSettingDialog(Z) ==========
private void closeSettingDialog(boolean animate) {
    mSettingList.close(animate);
    mSettingSubListUseVolumeKey.close(false);
    mSettingSubListSaveDestination.close(false);
    getHeaderButtonsFragment().notifySettingDialogClosed();
    setMiniPreviewVisibility(true);
    mPreviewLine1.setVisibility(View.VISIBLE);
    mPreviewLine2.setVisibility(View.VISIBLE);
    showInfoIcons();
    requestToDimSystemUi();
}

// ========== closeSettingSubDialog ==========
private void closeSettingSubDialog() {
    mSettingSubListUseVolumeKey.close();
    mSettingSubListSaveDestination.close();
    mSettingList.setActive(true);
}

// ========== configureTransform ==========
private void configureTransform() {
    if (mTextureView == null) {
        return;
    }
    CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
    int rotation = getWindowManager().getDefaultDisplay().getRotation();
    Matrix matrix = new Matrix();
    RectF viewRect = new RectF(0, 0, mTextureView.getWidth(), mTextureView.getHeight());
    RectF bufferRect = new RectF(0, 0, cameraInfo.getCaptureHeight(), cameraInfo.getCaptureWidth());
    float centerX = viewRect.centerX();
    float centerY = viewRect.centerY();
    if (rotation == 1 || rotation == 3) {
        bufferRect.offset(centerX - bufferRect.centerX(), centerY - bufferRect.centerY());
        matrix.setRectToRect(viewRect, bufferRect, Matrix.ScaleToFit.FILL);
        float scale = Math.max(
                (float) mTextureView.getHeight() / (float) cameraInfo.getCaptureHeight(),
                (float) mTextureView.getWidth() / (float) cameraInfo.getCaptureWidth());
        matrix.postScale(scale, scale, centerX, centerY);
        matrix.postRotate((rotation - 2) * 90, centerX, centerY);
    } else if (rotation == 2) {
        matrix.postRotate(180, centerX, centerY);
    }
    mTextureView.setTransform(matrix);

    View miniFrame = findViewById(R.id.mini_preview_frame);
    RectF miniViewRect = new RectF(0, 0, miniFrame.getWidth(), miniFrame.getHeight());
    float miniCenterX = miniViewRect.centerX();
    float miniCenterY = miniViewRect.centerY();
    if (rotation == 1 || rotation == 3) {
        bufferRect.offset(miniCenterX - bufferRect.centerX(), miniCenterY - bufferRect.centerY());
        matrix.setRectToRect(miniViewRect, bufferRect, Matrix.ScaleToFit.FILL);
        float scale = Math.max(
                (float) miniFrame.getHeight() / (float) cameraInfo.getCaptureHeight(),
                (float) miniFrame.getWidth() / (float) cameraInfo.getCaptureWidth());
        matrix.postScale(scale, scale, miniCenterX, miniCenterY);
        matrix.postRotate((rotation - 2) * 90, miniCenterX, miniCenterY);
    } else if (rotation == 2) {
        matrix.postRotate(180, miniCenterX, miniCenterY);
    }
    mMiniPreviewMatrix = new Matrix(matrix);
    if (mMiniPreviewImageView != null) {
        mMiniPreviewImageView.setImageMatrix(mMiniPreviewMatrix);
    }
}

// ========== createContentinfo ==========
private ContentInfo createContentinfo(Cursor cursor) {
    long id = cursor.getLong(cursor.getColumnIndex("_id"));
    String location = cursor.getString(cursor.getColumnIndex("_data"));
    ContentInfo info = new ContentInfo();
    info.mId = id;
    info.mImageFileLocation = location;
    return info;
}

// ========== createDefaultIntentView ==========
private Intent createDefaultIntentView(String mimeType) {
    Intent intent = new Intent();
    intent.addCategory("android.intent.category.DEFAULT");
    intent.setDataAndType(mThumbnailUri, mimeType);
    return intent;
}

// ========== createEngine ==========
private EnumResultCreateEngine createEngine() {
    if (mMorphoPanoramaGP2 != null) {
        return EnumResultCreateEngine.RESULT_ALREADY_CREATED;
    }
    mMorphoPanoramaGP2 = new MorphoPanoramaGP2();
    if ("YUV420_PLANAR".equals(mImageFormat)) {
        mInitParam.input_format = mImageFormat;
        mInitParam.output_format = "YUV420_SEMIPLANAR";
    } else {
        mInitParam.input_format = mImageFormat;
        mInitParam.output_format = mImageFormat;
    }
    if (mInternalSettings.aov_x != 0) {
        mViewAngleH = (float) mInternalSettings.aov_x;
    }
    if (mInternalSettings.aov_y != 0) {
        mViewAngleV = (float) mInternalSettings.aov_y;
    }
    CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
    int aspectIndex = getAspectTableIndex((float) cameraInfo.getCaptureWidth(), (float) cameraInfo.getCaptureHeight());
    float[] ratios = new float[2];
    getRatios(mSensorAspectIndex, aspectIndex, ratios);
    LogFilter.i("Camera2App", "createEngine mViewAngleH=" + mViewAngleH + " mViewAngleV=" + mViewAngleV
            + " ratiox=" + ratios[0] + " ratioy=" + ratios[1]);
    mInitParam.aovx = Math.atan(Math.tan(mViewAngleH * 0.5 * Math.PI / 180.0) * ratios[0]) * 2.0 * 180.0 / Math.PI;
    mInitParam.aovy = Math.atan(Math.tan(mViewAngleV * 0.5 * Math.PI / 180.0) * ratios[1]) * 2.0 * 180.0 / Math.PI;
    LogFilter.i("Camera2App", "createEngine aovx=" + mInitParam.aovx + " aovy=" + mInitParam.aovy);
    int rootViewWidth = getLiveViewWidth();
    double x = (double) (mInitParam.input_height * rootViewWidth) / (double) mMiniPreviewImageView.getWidth();
    LogFilter.i("Camera2App", "createEngine root_view width=" + rootViewWidth);
    LogFilter.i("Camera2App", "createEngine mMiniPreviewImageView width=" + mMiniPreviewImageView.getWidth()
            + " height=" + mMiniPreviewImageView.getHeight());
    mInitParam.goal_angle = x / mInitParam.input_height * mInitParam.aovy;
    LogFilter.i("Camera2App", "createEngine goal_angle=" + mInitParam.goal_angle);
    if (initializeEngine(mMorphoPanoramaGP2, mInitParam)) {
        mMorphoPanoramaGP2.setAttachEnabled(mInternalSettings.save_input_images == 0);
        return EnumResultCreateEngine.RESULT_NEWLY_CREATED;
    }
    mMorphoPanoramaGP2 = null;
    return EnumResultCreateEngine.RESULT_ERROR;
}

// ========== createName ==========
private static String createName(long time) {
    return DateFormat.format("yyyy-MM-dd_kk-mm-ss", time).toString();
}

// ========== createNewFilePath ==========
private String createNewFilePath() {
    if (Build.VERSION.SDK_INT >= 28 && isSaveDestinationExternal()) {
        return createNewSDFilePath();
    }
    File dir = new File(mFolderPath);
    if (dir.exists()) {
        if (mSaveDirId < 0) {
            mSaveDirId = DIR_ID_MIN;
            dir.listFiles(new Camera2App$9(this));
        }
    } else {
        mSaveDirId = DIR_ID_MIN;
        mSaveFileId = FILE_ID_MIN;
    }
    String dirPath = String.format(Locale.US, "%s%s%d%s", mFolderPath, File.separator, mSaveDirId, PREFIX_DIR);
    File dirFile = new File(dirPath);
    if (!dirFile.exists() && !dirFile.mkdirs()) {
        return null;
    }
    if (mSaveFileId < 0) {
        dirFile.listFiles(new Camera2App$10(this));
        if (mSaveFileId < 0) {
            mSaveFileId = FILE_ID_MIN;
        } else {
            mSaveFileId = mSaveFileId + 1;
        }
    } else {
        mSaveFileId = mSaveFileId + 1;
    }
    if (mSaveFileId > FILE_ID_MAX) {
        mSaveDirId = mSaveDirId + 1;
        mSaveFileId = FILE_ID_MIN;
        dirPath = String.format(Locale.US, "%s%s%d%s", mFolderPath, File.separator, mSaveDirId, PREFIX_DIR);
        dirFile = new File(dirPath);
        if (!dirFile.exists() && !dirFile.mkdirs()) {
            return null;
        }
    }
    String filePath = String.format(Locale.US, "%s%s%s%04d.JPG", mFolderPath, File.separator, PREFIX_IMAGE, mSaveFileId);
    mSaveFileId = mSaveFileId + 1;
    return filePath;
}

// ========== createNewSDFilePath ==========
private String createNewSDFilePath() {
    DocumentFile root = DocumentFile.fromTreeUri(this, mSettings.getSdCardGrantedUri());
    DocumentFile dcim;
    if (root.getName().matches("DCIM")) {
        dcim = root;
    } else {
        DocumentFile found = root.findFile("DCIM");
        if (found != null) {
            dcim = found;
        } else {
            DocumentFile created = root.createDirectory("DCIM");
            if (created == null) {
                return null;
            }
            dcim = created;
        }
    }

    if (dcim.exists()) {
        if (mSaveDirId < 0) {
            mSaveDirId = DIR_ID_MIN;
            DocumentFile[] children = dcim.listFiles();
            for (int i = 0; i < children.length; i++) {
                DocumentFile child = children[i];
                if (!child.isDirectory()) {
                    continue;
                }
                String name = child.getName();
                if (!name.endsWith(PREFIX_DIR)) {
                    continue;
                }
                String numStr = name.substring(0, name.lastIndexOf(PREFIX_DIR));
                try {
                    Integer val = Integer.valueOf(numStr);
                    if (val.intValue() > mSaveDirId && DIR_ID_MAX >= val.intValue()) {
                        mSaveDirId = val.intValue();
                    }
                } catch (NumberFormatException e) {
                }
            }
        }
    } else {
        mSaveDirId = DIR_ID_MIN;
        mSaveFileId = FILE_ID_MIN;
    }

    String dirName = String.format(Locale.US, "%d%s", mSaveDirId, PREFIX_DIR);
    DocumentFile dirDoc = dcim.findFile(dirName);
    if (dirDoc == null) {
        dirDoc = dcim.createDirectory(dirName);
        if (dirDoc == null) {
            return null;
        }
    }

    if (mSaveFileId < 0) {
        File pathFile = new File(mFolderPath + File.separator + dirName);
        pathFile.list(new Camera2App$11(this));
        if (mSaveFileId < 0) {
            mSaveFileId = FILE_ID_MIN;
        } else {
            mSaveFileId = mSaveFileId + 1;
        }
    } else {
        mSaveFileId = mSaveFileId + 1;
    }

    if (mSaveFileId > FILE_ID_MAX) {
        mSaveDirId = mSaveDirId + 1;
        mSaveFileId = FILE_ID_MIN;
        dirName = String.format(Locale.US, "%d%s", mSaveDirId, PREFIX_DIR);
        dirDoc = dcim.findFile(dirName);
        if (dirDoc == null) {
            dirDoc = dcim.createDirectory(dirName);
            if (dirDoc == null) {
                return null;
            }
        }
    }

    String filePath = String.format(Locale.US, "%s%s%s%s%s%04d.JPG",
            mFolderPath, File.separator, dirName, File.separator, PREFIX_IMAGE, mSaveFileId);
    mSaveFileId = mSaveFileId + 1;
    return filePath;
}

// ========== d_save_raw ==========
public static void d_save_raw(byte[] data, String dirPath, String name) {
    PerformanceCounter counter = PerformanceCounter.newInstance(false);
    try {
        counter.start();
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(String.format(Locale.US, "%s/%s.yuv", dirPath, name));
            out.write(data);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } finally {
            if (out != null) {
                out.close();
                counter.stop();
                counter.putLog("Camera2App", "InputSave");
            }
        }
    } catch (IOException e) {
        e.printStackTrace();
    }
}

// ========== dismissDialog(EnumDismissFactor) ==========
private void dismissDialog(RotatableDialogFragment.EnumDismissFactor factor) {
    if (mLicenseDialog != null) {
        mLicenseDialog.close();
        mLicenseDialog = null;
    }
    if (mDialog != null) {
        mDialog.dismiss(factor);
    }
}

// ========== dismissDialog(Z, EnumDismissFactor, Z) ==========
private void dismissDialog(boolean positive, RotatableDialogFragment.EnumDismissFactor factor, boolean fromListener) {
    if (factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OVERLAY) {
        return;
    }
    setMiniPreviewVisibility(true);
    mPreviewLine1.setVisibility(View.VISIBLE);
    mPreviewLine2.setVisibility(View.VISIBLE);
    setButtonsEnabled(true);
    startCountDownTimer();
    requestToDimSystemUi();

    EnumDialogType dialogType = mDialogType;
    mDialogType = EnumDialogType.DIALOG_TYPE_NONE;
    mDialog = null;
    mLicenseDialog = null;

    switch (dialogType) {
        case DIALOG_TYPE_SELECT_SAVE_DST:
            if (factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER) {
                mSettings.setSdcardInserted(true);
            }
            if (positive) {
                setSaveDestination(false);
            }
            break;
        case DIALOG_TYPE_ALERT_THERMAL_WARNING:
            if (factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER && fromListener) {
                mSettings.setShowDialogThermal(false);
            }
            break;
        case DIALOG_TYPE_SELECT_CHANGE_LOCATION:
            if (factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER && fromListener) {
                mSettings.setShowDialogLocation(false);
            }
            if (positive) {
                if (!mLocationManager.isValidLocationService()) {
                    mOverlayDialogNum = 0;
                }
                mSettingList.setChecked(1, true);
            }
            break;
        case DIALOG_TYPE_SELECT_VALIDATE_LOCATION:
            if (positive) {
                startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), REQUEST_SYSTEM_LOCATION_PERMISSION);
                return;
            }
            if (factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_EVENT_LISTENER
                    || factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_BACK_KEY) {
                mSettingList.setChecked(1, false);
            }
            break;
        case DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION:
        case DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE:
            if (positive) {
                requestSdCardGranted();
            } else {
                setSaveDestination(true);
            }
            break;
        default:
            break;
    }

    if (factor == RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_SUSPEND) {
        mOverlayDialogNum = 0;
        return;
    }
    if (mOverlayDialogNum > 0) {
        mOverlayDialogNum--;
        EnumDialogType next = mOverlayDialogType[mOverlayDialogNum];
        mOverlayDialogType[mOverlayDialogNum] = EnumDialogType.DIALOG_TYPE_NONE;
        if (next != EnumDialogType.DIALOG_TYPE_NONE) {
            startDialog(next);
        }
    }
}

// ========== excludeOverlayDialog ==========
private void excludeOverlayDialog(EnumDialogType type) {
    int i = 0;
    while (i < mOverlayDialogNum) {
        if (mOverlayDialogType[i] == type) {
            for (int j = i + 1; j < mOverlayDialogNum; j++) {
                mOverlayDialogType[i] = mOverlayDialogType[j];
                i++;
            }
            mOverlayDialogNum--;
            return;
        }
        i++;
    }
}

// ========== finalizeThermalAlert ==========
private void finalizeThermalAlert() {
    if (mThermalAlertReceiver != null) {
        unregisterReceiver(mThermalAlertReceiver);
        mThermalAlertReceiver = null;
    }
}

// ========== finishEngine ==========
private void finishEngine() {
    LogFilter.d("Camera2App", "finishEngine");
    stopCaptureTimer();
    synchronized (CameraConstants.EngineSynchronizedObject) {
        mEngineEnding = false;
        if (mMorphoPanoramaGP2 == null) {
            return;
        }
        int ret = mMorphoPanoramaGP2.finish();
        if (ret != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US, "MorphoPanoramaGP2.finish error ret:0x%08X", ret));
        }
        float fps = mMorphoPanoramaGP2.getAttachFps();
        float ave = mMorphoPanoramaGP2.getAttachAve();
        float std = mMorphoPanoramaGP2.getAttachStandardDeviation();
        mMorphoPanoramaGP2 = null;
        LogFilter.d("Camera2App", String.format(Locale.US, "attach %.02f fps (ave:%.02f, std:%.02f)", fps, ave, std));
    }
}

// ========== getAspectTableIndex ==========
private static int getAspectTableIndex(float width, float height) {
    float ratio = height / width;
    int i = 0;
    while (i < ASPECT_TABLE.length) {
        float tableRatio = (float) ASPECT_TABLE[i][1] / (float) ASPECT_TABLE[i][0];
        if (Math.abs(ratio - tableRatio) < 0.1) {
            return i;
        }
        i++;
    }
    return 0;
}

// ========== getBaseAspect ==========
private int getBaseAspect() {
    CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
    int physical = getAspectTableIndex(cameraInfo.getPhysicalWidth(), cameraInfo.getPhysicalHeight());
    int active = getAspectTableIndex((float) cameraInfo.getActiveArrayWidth(), (float) cameraInfo.getActiveArrayHeight());
    return (physical != active) ? active : physical;
}

// ========== getDisplayRotation ==========
private int getDisplayRotation() {
    int rotation = getWindowManager().getDefaultDisplay().getRotation();
    switch (rotation) {
        case 1:
            return 90;
        case 2:
            return 180;
        case 3:
            return 270;
        case 0:
        default:
            return 0;
    }
}

// ========== getFooterButtonsFragment ==========
private FooterButtonsFragment getFooterButtonsFragment() {
    return (FooterButtonsFragment) getSupportFragmentManager().findFragmentById(R.id.footer_buttons);
}

// ========== getGCD ==========
private static int getGCD(int a, int b) {
    if (a > b) {
        int t = a;
        a = b;
        b = t;
    }
    while (a != 0) {
        int r = b % a;
        b = a;
        a = r;
    }
    return b;
}

// ========== getHeaderButtonsFragment ==========
private HeaderButtonsFragment getHeaderButtonsFragment() {
    return (HeaderButtonsFragment) getSupportFragmentManager().findFragmentById(R.id.header_buttons);
}

// ========== getInfoIconsFragment ==========
private InfoIconsFragment getInfoIconsFragment() {
    return (InfoIconsFragment) getSupportFragmentManager().findFragmentById(R.id.info_icons);
}

// ========== getLCM ==========
private static int getLCM(int a, int b) {
    int product = a * b;
    return product / getGCD(a, b);
}

// ========== getLatestImage ==========
private void getLatestImage() {
    LogFilter.v("Camera2App", "getLatestImage() IN");
    Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    String[] projection = {"_id", "_data"};
    if (mSavePanoramaPath != null) {
        LogFilter.v("Camera2App", "getLatestImage() mSavePanoramaPath:" + mSavePanoramaPath);
        String selection = "_data LIKE '%" + mSavePanoramaPath + "%'";
        mSavePanoramaPath = null;
        Cursor cursor = null;
        try {
            cursor = getContentResolver().query(uri, projection, selection, null, null);
            if (cursor != null && cursor.moveToFirst()) {
                ContentInfo info = createContentinfo(cursor);
                addLocalCache(info);
                mImageId = info.mId;
                mImageFileLocation = info.mImageFileLocation;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    } else {
        if (!mLocalCache.isEmpty()) {
            ContentInfo info = (ContentInfo) mLocalCache.getFirst();
            mImageId = info.mId;
            mImageFileLocation = info.mImageFileLocation;
        }
    }
    LogFilter.v("Camera2App", "getLatestImage() IN, mImageId = " + mImageId + " mImageFileLocation = " + mImageFileLocation);
}

// ========== getLiveViewHeight ==========
private int getLiveViewHeight() {
    if (isDisplay18_9()) {
        return realPixelSize.y - getSettingButtonHeight() - getNavigationBarHeight();
    } else if (isDisplay21_9()) {
        if (isResolution16_9()) {
            return realPixelSize.x * 16 / 9;
        } else {
            return realPixelSize.x * 4 / 3;
        }
    } else {
        return realPixelSize.y;
    }
}

// ========== getLiveViewWidth ==========
private int getLiveViewWidth() {
    if (isDisplay18_9()) {
        return (getLiveViewHeight() / 16) * 9;
    }
    return realPixelSize.x;
}

// ========== getMobilePhonePixels ==========
private void getMobilePhonePixels() {
    getWindowManager().getDefaultDisplay().getRealSize(realPixelSize);
    if (realPixelSize.x > realPixelSize.y) {
        int x = realPixelSize.x;
        realPixelSize.x = realPixelSize.y;
        realPixelSize.y = x;
    }
    LogFilter.i("Camera2App", "portrait orientation as base, realPixelSize size : " + realPixelSize.x + " x " + realPixelSize.y);
}

// ========== getNavigationBarHeight ==========
private int getNavigationBarHeight() {
    int resId = getResources().getIdentifier("navigation_bar_height", "dimen", "android");
    if (resId > 0) {
        return getResources().getDimensionPixelSize(resId);
    }
    return getResources().getDimensionPixelSize(R.dimen.navigationbar_heght);
}

// ========== getRatios ==========
private static void getRatios(int idx0, int idx1, float[] out) {
    if (idx0 == idx1) {
        out[0] = 1.0f;
        out[1] = 1.0f;
        return;
    }
    float ratio0 = (float) ASPECT_TABLE[idx0][1] / (float) ASPECT_TABLE[idx0][0];
    float ratio1 = (float) ASPECT_TABLE[idx1][1] / (float) ASPECT_TABLE[idx1][0];
    int lcm = getLCM(ASPECT_TABLE[idx1][0], ASPECT_TABLE[idx0][0]);
    int mult0 = lcm / ASPECT_TABLE[idx0][0];
    int mult1 = lcm / ASPECT_TABLE[idx1][0];
    if (ratio1 >= ratio0) {
        out[0] = (float) (ASPECT_TABLE[idx0][1] * mult0) / (float) (ASPECT_TABLE[idx1][1] * mult1);
        out[1] = 1.0f;
    } else {
        out[0] = 1.0f;
        out[1] = (float) (ASPECT_TABLE[idx1][1] * mult1) / (float) (ASPECT_TABLE[idx0][1] * mult0);
    }
}

// ========== getSaveDestination ==========
private boolean getSaveDestination() {
    return mSettings.isSaveInternalStorage();
}

// ========== getSaveDestinationRoot() ==========
private String getSaveDestinationRoot() throws IOException {
    boolean internal = getSaveDestination();
    String root = getSaveDestinationRoot(internal);
    if (root == null && internal) {
        throw new IOException();
    }
    return root;
}

// ========== getSaveDestinationRoot(Z) ==========
private String getSaveDestinationRoot(boolean internal) {
    String path = internal ? StorageMonitor.getInternalStorageRootPath() : StorageMonitor.getExternalStorageRootPath(this);
    if (path != null) {
        path = path + File.separator + STORAGE_PATH_PREFIX;
    }
    return path;
}

// ========== getSavingProgressBar ==========
private ProgressBar getSavingProgressBar() {
    if (!mIsInflateSavingProgress) {
        mIsInflateSavingProgress = true;
        ((ViewStub) findViewById(R.id.stubSavingProgressBar)).inflate();
    }
    return (ProgressBar) findViewById(R.id.SavingProgressBar);
}

// ========== getSettingButtonHeight ==========
private int getSettingButtonHeight() {
    return getResources().getDimensionPixelSize(R.dimen.header_icon_width);
}

// ========== getSettingValue ==========
private void getSettingValue() {
    mInternalSettings.getSettingValue((MorphoPanoramaGP2Application) getApplication());
}

// ========== getThumbnailRotation ==========
private int getThumbnailRotation(String path) {
    if (path == null) {
        return 0;
    }
    try {
        ExifInterface exif = new ExifInterface(path);
        int orientation = exif.getAttributeInt("Orientation", 0);
        if (orientation == 6) {
            return 90;
        } else if (orientation == 3) {
            return 180;
        } else if (orientation == 8) {
            return 270;
        }
        return 0;
    } catch (IOException e) {
        e.printStackTrace();
        return -1;
    }
}

// ========== getViewPixelSize ==========
private int getViewPixelSize(int dimenResId) {
    int px = getResources().getDimensionPixelSize(dimenResId);
    int densityDpi = getResources().getDisplayMetrics().densityDpi;
    return px * DisplayMetrics.DENSITY_DEVICE_STABLE / densityDpi;
}

// ========== hideBlackScreen ==========
private void hideBlackScreen() {
    mCameraCheckTimer.cancel();
    findViewById(R.id.blackScreen).setVisibility(View.GONE);
}

// ========== hideInfoIcons ==========
private void hideInfoIcons() {
    ((LinearLayout) findViewById(R.id.info_icon_container)).setVisibility(View.GONE);
}

// ========== initAttachQueue ==========
private void initAttachQueue() {
    while (mAttachImageQueue.size() > 0) {
        CaptureImage image = (CaptureImage) mAttachImageQueue.poll();
        if (image != null) {
            image.close();
        }
    }
}

// ========== initInternalSettingsViews ==========
private void initInternalSettingsViews() {
    initInternalSettingsViewsSync();
}

// ========== initInternalSettingsViewsAsync ==========
private void initInternalSettingsViewsAsync() {
    runOnUiThread(new Camera2App$29(this));
}
