// ============================================================================
// STAGING FRAGMENT — 待合併進 Camera2App.java 的方法本體 (Batch B, 52 個方法)
// 本檔案不可獨立編譯，僅供合併時複製貼上使用（隱式參照外部 Camera2App 欄位/方法，
// 不使用 this. 前綴，除非用於消歧義）。方法排列順序與
// /home/h/tmp/SemcCameraUI/.tmp/camera2app_methods_batchB.txt 一致。
//
// 匿名內部類別 (Camera2App$23、Camera2App$24、Camera2App$25、Camera2App$30) 尚未在別處手刻，
// 本檔案直接以其 smali 合成名稱呼叫建構子（與 Camera2App.java 現有欄位 TODO 註解慣例一致），
// 合併時請以「anonymous-classes fragment」提供的實際匿名類別內容替換。
//
// 合併時所需的 fully-qualified imports（不含 Camera2App.java 已有的 import）：
//   android.app.ActivityManager
//   android.app.admin.DevicePolicyManager
//   android.content.ContentResolver
//   android.content.ContentValues
//   android.content.Context
//   android.content.IntentFilter
//   android.content.SharedPreferences
//   android.database.Cursor
//   android.hardware.Camera
//   android.location.Location
//   android.media.AudioAttributes
//   android.media.ExifInterface
//   android.os.ParcelFileDescriptor
//   android.provider.MediaStore
//   android.support.v4.provider.DocumentFile
//   android.telephony.TelephonyManager
//   android.text.format.DateFormat
//   android.util.Size
//   android.util.SizeF
//   android.widget.LinearLayout
//   android.widget.ProgressBar
//   android.widget.RelativeLayout
//   java.io.File
//   java.io.FileNotFoundException
//   java.io.IOException
//   java.nio.ByteBuffer
//   java.util.Iterator
//   java.util.List
//   java.util.Locale
//   com.sonyericsson.android.camera3d.camera_states.AutoFocusState
//   com.sonyericsson.android.camera3d.camera_states.Camera1PreviewState
//   com.sonyericsson.android.camera3d.camera_states.CameraState
//   com.sonyericsson.android.camera3d.camera_states.TakePictureState
//   com.sonyericsson.android.camera3d.camera_states.UnlockFocusState
//   com.sonyericsson.android.camera3d.core.JpegIO
//   com.sonyericsson.android.camera3d.utils.LogFilter
//
// 同套件 (com.sonyericsson.android.camera3d) 內的 MorphoCamera / MorphoCamera1 / CameraInfo /
// InternalSettings / MorphoPanoramaGP2 / RotatableToast / SettingList / SettingSubList /
// AccessibilityEventFilter / TextureViewEx / ThermalAlertReceiver 等類別不需 import。
// ============================================================================


// ---- 1 ----
private void initInternalSettingsViewsSync() {
    mInternalSettings.initViews(mMorphoCamera, mHandler, ALWAYS_AUTO_MODE_AFTER_STARTUP);
}

// ---- 2 ----
private static boolean initializeEngine(MorphoPanoramaGP2 engine, MorphoPanoramaGP2.InitParam initParam) {
    int ret = engine.initialize(initParam);
    if (ret != 0) {
        LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.initialize error ret:0x%08X", ret));
        return false;
    }
    return true;
}

// ---- 3 ----
private void initializeLayoutObjects() {
    mTextureView = (TextureViewEx) findViewById(R.id.texture_view);
    mPreviewLine1 = findViewById(R.id.panoramagp2_preview_line1);
    mPreviewLine2 = findViewById(R.id.panoramagp2_preview_line2);
    mAutoFocusCircle = (ImageView) findViewById(R.id.panoramagp2_af_circle);
    mMiniPreviewImageView = (ImageView) findViewById(R.id.mini_preview);
    mMiniPreviewFrame = findViewById(R.id.mini_preview_frame);

    for (int i = 0; i < mIsMiniPreviewArrowsVisible.length; i++) {
        mIsMiniPreviewArrowsVisible[i] = true;
    }

    mSettingList = new SettingList(this, this, this);
    mSettingSubListUseVolumeKey = new SettingSubList(this, mSettingUseVolumeKeyList, this);
    mSettingSubListSaveDestination = new SettingSubList(this, mSettingSaveDestinationList, this);

    for (int i = 0; i < mSettingSaveDestinationList.length; i++) {
        if (mSettingSaveDestinationList[i] == R.string.cam_strings_panorama_save_destination_sd_txt) {
            mIndexSettingSaveDestinationSD = i;
        } else if (mSettingSaveDestinationList[i] == R.string.cam_strings_panorama_save_destination_ims_txt) {
            mIndexSettingSaveDestinationInternal = i;
        }
    }

    mSettingList.addSubList(mSettingSubListUseVolumeKey);
    mSettingList.addSubList(mSettingSubListSaveDestination);

    RelativeLayout rootView = (RelativeLayout) findViewById(R.id.root_view);
    rootView.setBackgroundColor(0xFF000000);

    View modeSelectorContainer = findViewById(R.id.modeselector_container);

    View settingListView0 = mSettingList.getView(0);
    rootView.addView(settingListView0, rootView.indexOfChild(modeSelectorContainer) - 1);

    View useVolumeKeyView0 = mSettingSubListUseVolumeKey.getView(0);
    rootView.addView(useVolumeKeyView0, rootView.indexOfChild(mSettingList.getView(0)) + 1);

    View saveDestinationView0 = mSettingSubListSaveDestination.getView(0);
    rootView.addView(saveDestinationView0, rootView.indexOfChild(mSettingList.getView(0)) + 1);

    View settingListView1 = mSettingList.getView(1);
    rootView.addView(settingListView1, rootView.indexOfChild(findViewById(R.id.modeselector_container)) - 1);

    View useVolumeKeyView1 = mSettingSubListUseVolumeKey.getView(1);
    rootView.addView(useVolumeKeyView1, rootView.indexOfChild(mSettingList.getView(1)) + 1);

    View saveDestinationView1 = mSettingSubListSaveDestination.getView(1);
    rootView.addView(saveDestinationView1, rootView.indexOfChild(mSettingList.getView(1)) + 1);

    rootView.setAccessibilityDelegate(new AccessibilityEventFilter());

    LinearLayout layoutFooter = (LinearLayout) findViewById(R.id.footer_icon_container);
    // 原始位元碼取得 LayoutParams 後未使用即被覆蓋，保留此呼叫以維持行為一致（含潛在 ClassCastException）。
    RelativeLayout.LayoutParams unusedFooterLayoutParams = (RelativeLayout.LayoutParams) layoutFooter.getLayoutParams();
    layoutFooter.post(new Camera2App$23(this, layoutFooter));

    FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
    footerButtonsFragment.setShutterIcon();
    footerButtonsFragment.setTakePictureButtonOnTouchListener(new Camera2App$24(this));
    footerButtonsFragment.setStopPictureButtonOnTouchListener(new Camera2App$25(this));

    ImageView modeSelectorButton = footerButtonsFragment.getModeSelectorButton();
    modeSelectorButton.setOnClickListener(new ModeSelectorButtonClickListener());
    modeSelectorButton.setOnTouchListener(new ModeSelectorButtonTouchListener());

    mRotatableToast = new RotatableToast(this);
    rootView.addView(mRotatableToast);

    if (isDisplay18_9()) {
        int height = realPixelSize.y - getSettingButtonHeight() - getNavigationBarHeight();
        int barHeight = (height / 16) * 9;

        View dummyLeftView = findViewById(R.id.dummyLeftView);
        View dummyRightView = findViewById(R.id.dummyRightView);
        dummyLeftView.setVisibility(View.VISIBLE);
        dummyRightView.setVisibility(View.VISIBLE);

        int halfWidth = (realPixelSize.x - barHeight) / 2;

        RelativeLayout.LayoutParams leftParams = (RelativeLayout.LayoutParams) dummyLeftView.getLayoutParams();
        int leftWidth = (halfWidth % 2 != 0) ? halfWidth + 1 : halfWidth;
        leftParams.width = leftWidth;
        leftParams.addRule(RelativeLayout.ALIGN_PARENT_START, RelativeLayout.TRUE);
        dummyLeftView.setLayoutParams(leftParams);
        int finalLeftWidth = leftParams.width;

        RelativeLayout.LayoutParams rightParams = (RelativeLayout.LayoutParams) dummyRightView.getLayoutParams();
        rightParams.width = halfWidth;
        rightParams.addRule(RelativeLayout.ALIGN_PARENT_END, RelativeLayout.TRUE);
        dummyRightView.setLayoutParams(rightParams);

        LinearLayout headerIconContainer = (LinearLayout) findViewById(R.id.header_icon_container);
        headerIconContainer.setPadding(finalLeftWidth, 0, 0, 0);
    }
}

// ---- 4 ----
private void initializeMiniPreviewTextureView() {
    mMiniPreviewTextureView = new TextureView(this);
    mMiniPreviewTextureView.setSurfaceTextureListener(mMiniPreviewSurfaceTextureListener);
    mMiniPreviewTextureView.setLayoutParams(mMiniPreviewImageView.getLayoutParams());

    RelativeLayout rootView = (RelativeLayout) findViewById(R.id.root_view);
    int index = rootView.indexOfChild(mMiniPreviewImageView) - 1;
    rootView.addView(mMiniPreviewTextureView, index);
}

// ---- 5 ----
private void initializeThermalAlert() {
    mThermalAlertReceiver = new ThermalAlertReceiver(this, this);

    IntentFilter filter = new IntentFilter();
    filter.addAction("com.sonyericsson.psm.action.CAMERA_HEATED_OVER_CRITICAL");
    filter.addAction("com.sonyericsson.psm.action.CAMERA_HEATED_CLOSE_TO_SHUTDOWN");
    registerReceiver(mThermalAlertReceiver, filter);
}

// ---- 6 ----
private boolean isActiveGpsSearchTimer() {
    return mGpsSearchTimer != null;
}

// ---- 7 ----
private boolean isCameraDisabled(Context context) {
    DevicePolicyManager devicePolicyManager = (DevicePolicyManager) context.getSystemService(Context.DEVICE_POLICY_SERVICE);
    return devicePolicyManager.getCameraDisabled(null);
}

// ---- 8 ----
private boolean isCapturing() {
    boolean capturing = isEngineRunning() || mKeyFocusPressed || mGuiCapturePressed;
    if (!capturing && mMorphoCamera != null) {
        CameraState state = mMorphoCamera.cameraState();
        if (mUseCamera1) {
            capturing = state != null && !(state instanceof Camera1PreviewState);
        } else if (state != null) {
            capturing = (state instanceof AutoFocusState) || (state instanceof UnlockFocusState)
                    || (state instanceof TakePictureState);
        }
    }
    return capturing;
}

// ---- 9 ----
private boolean isDialogShown() {
    if (mDialog != null && mDialog.isShowing()) {
        return true;
    }
    return mLicenseDialog != null && mLicenseDialog.isShowing();
}

// ---- 10 ----
private static boolean isDuringVoiceCall(Context context) {
    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
    int callState = telephonyManager.getCallState();
    return callState == 1 || callState == 2;
}

// ---- 11 ----
private boolean isFirstLaunch() {
    return !getSharedPreferences(PREF_KEY, 0).getBoolean(PREF_KEY_FIRST_LAUNCH, false);
}

// ---- 12 ----
private boolean isFirstTimeLocation() {
    return !getSharedPreferences(PREF_KEY, 0).getBoolean(PREF_KEY_FIRST_TIME_LOCATION, false);
}

// ---- 13 ----
private boolean isInLockTaskMode() {
    ActivityManager activityManager = (ActivityManager) getSystemService(Context.ACTIVITY_SERVICE);
    if (Build.VERSION.SDK_INT >= 23) {
        return activityManager.getLockTaskModeState() != 0;
    }
    if (Build.VERSION.SDK_INT >= 21) {
        return activityManager.isInLockTaskMode();
    }
    return false;
}

// ---- 14 ----
private boolean isMainThread() {
    if (mMainThreadName == null) {
        mMainThreadName = getMainLooper().getThread().getName();
    }
    // 注意：原始位元碼使用 String.matches()（正規表示式比對）而非 equals()，此為原版既有寫法，予以保留。
    return Thread.currentThread().getName().matches(mMainThreadName);
}

// ---- 15 ----
private boolean isOpenedSettingDialog() {
    return mSettingList != null && mSettingList.getView().getVisibility() == View.VISIBLE;
}

// ---- 16 ----
private boolean isOpenedSettingSubDialog() {
    if (mSettingSubListUseVolumeKey != null && mSettingSubListUseVolumeKey.isOpened()) {
        return true;
    }
    return mSettingSubListSaveDestination != null && mSettingSubListSaveDestination.isOpened();
}

// ---- 17 ----
private boolean isPanoramaSaving() {
    ProgressBar progressBar = (ProgressBar) findViewById(R.id.SavingProgressBar);
    return progressBar != null && progressBar.getVisibility() == View.VISIBLE;
}

// ---- 18 ----
private boolean isPreviewCentering() {
    return !isDisplay21_9();
}

// ---- 19 ----
private boolean isRemovedFromDataBase(ContentInfo contentInfo) {
    String[] projection = {"_id", "_data"};
    String selection = "_data LIKE '%" + contentInfo.mImageFileLocation + "%' AND " + "_id" + "=" + contentInfo.mId;

    Cursor cursor = null;
    try {
        cursor = getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, projection, selection, null, null);
        boolean notFound = (cursor == null) || !cursor.moveToFirst();
        if (!notFound) {
            return false;
        }
    } finally {
        if (cursor != null) {
            cursor.close();
        }
    }

    Bitmap thumbnail = MediaStore.Images.Thumbnails.getThumbnail(
            getContentResolver(), contentInfo.mId, MediaStore.Images.Thumbnails.MINI_KIND, null);
    return thumbnail == null;
}

// ---- 20 ----
private boolean isResolution16_9() {
    CameraInfo cameraInfo = mMorphoCamera.cameraInfo();
    float ratio = (float) cameraInfo.getCaptureWidth() / (float) cameraInfo.getCaptureHeight();
    return Math.abs(ratio - (16.0f / 9.0f)) < 0.01f;
}

// ---- 21 ----
private boolean isSaveDestinationExternal() {
    return !mSettings.isSaveInternalStorage();
}

// ---- 22 ----
private boolean isTablet() {
    return getResources().getBoolean(R.bool.is_tablet);
}

// ---- 23 ----
private boolean isVisibleBlackScreen() {
    return findViewById(R.id.blackScreen).getVisibility() == View.VISIBLE;
}

// ---- 24 ----
public static String latitudeValueToNorS(double latitude) {
    return latitude > 0.0 ? "N" : "S";
}

// ---- 25 ----
private void loadLocalCache() {
    if (mLocalCacheBackup != null) {
        mLocalCache.clear();
        mLocalCache = new LinkedList(mLocalCacheBackup);
    }
}

// ---- 26 ----
public static String locationValueToString(double value) {
    long ticks = (long) Math.rint(360000.0 * Math.abs(value));
    long degrees = ticks / 360000L;
    long minutes = (ticks / 6000L) % 60L;
    long secondsHundredths = ticks % 6000L;
    return String.format(Locale.US, "%d/1,%d/1,%d/100", degrees, minutes, secondsHundredths);
}

// ---- 27 ----
public static String longitudeValueToEorW(double longitude) {
    return longitude > 0.0 ? "E" : "W";
}

// ---- 28 ----
private void makeEngineParam() {
    CameraInfo cameraInfo = mMorphoCamera.cameraInfo();

    mInitParam.direction = LIMIT_DIRECTION ? 1 : 0;
    mInitParam.input_width = cameraInfo.getCaptureWidth();
    mInitParam.input_height = cameraInfo.getCaptureHeight();

    if (mUseCamera1) {
        Size maxPictureSize = ((MorphoCamera1) mMorphoCamera).getMaxPictureSize();
        mSensorAspectIndex = getAspectTableIndex((float) maxPictureSize.getWidth(), (float) maxPictureSize.getHeight());
    } else if (cameraInfo.getPhysicalWidth() == cameraInfo.getPhysicalHeight()) {
        SizeF sizeF = new SizeF(
                cameraInfo.getPhysicalWidth() * cameraInfo.getPixelArrayWidth() / 1000.0f,
                cameraInfo.getPhysicalHeight() * cameraInfo.getPixelArrayHeight() / 1000.0f);

        mViewAngleH = (float) (Math.toDegrees(Math.atan(sizeF.getWidth() / (cameraInfo.getFocalLength() * 2.0f))) * 2.0);
        mViewAngleV = (float) (Math.toDegrees(Math.atan(sizeF.getHeight() / (cameraInfo.getFocalLength() * 2.0f))) * 2.0);
        mSensorAspectIndex = getAspectTableIndex(sizeF.getWidth(), sizeF.getHeight());
    } else {
        mSensorAspectIndex = getBaseAspect();
    }

    if (mAovs == null) {
        mAovs = new double[2];
        mAovs[0] = mViewAngleH;
        mAovs[1] = mViewAngleV;
    }

    Camera.CameraInfo camInfo = MorphoCamera1.getCameraInfo(mInternalSettings.camera_id);

    if (mIsFrontCamera) {
        mCameraOrientation = ((camInfo.orientation - 180) + 360) % 360;
    } else {
        mCameraOrientation = camInfo.orientation;
    }

    int displayRotation = getDisplayRotation();
    mInitParam.output_rotation = (mCameraOrientation + (displayRotation + mCurOrientation) + 360) % 360;

    if (mSensorFusion != null) {
        int rotationParam;
        switch (camInfo.orientation) {
            case 90:
                rotationParam = 1;
                break;
            case 180:
                rotationParam = 2;
                break;
            case 270:
                rotationParam = 3;
                break;
            default:
                rotationParam = 0;
                break;
        }
        int ret = mSensorFusion.setRotation(rotationParam);
        if (ret != 0) {
            LogFilter.e(LOG_TAG, String.format(Locale.US, "SensorFusion.setRotation error ret:0x%08X", ret));
        }
    }
}

// ---- 29 ----
private void modeFinish() {
    if (isOpenedSettingDialog()) {
        closeSettingDialog();
    }

    getFooterButtonsFragment().getModeSelectorButton().clearColorFilter();

    if (isInLockTaskMode()) {
        if (mPinToast != null) {
            mPinToast.cancel();
        }
        mPinToast = Toast.makeText(getApplicationContext(), R.string.cam_strings_panorama_screen_pinned_txt, Toast.LENGTH_LONG);
        mPinToast.show();
    } else {
        finish();
    }
}

// ---- 30 ----
private void onPreviewCaptureCompleted() {
    boolean mainThread = isMainThread();
    if (mainThread && mPreviewFrame != null) {
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

    if (mScreenCounter > 0) {
        mScreenCounter--;
        if (isVisibleBlackScreen() && mScreenCounter == 0) {
            runOnUiThread(mHideBlackScreenRunnable);
        }
    }

    if (mainThread) {
        if (mMiniPreviewImageView != null) {
            Bitmap bitmap = mTextureView.getBitmap(mMiniPreviewImageView.getWidth(), mMiniPreviewImageView.getHeight());
            mMiniPreviewImageView.setImageBitmap(bitmap);
        }
    } else {
        runOnUiThread(mPreviewFrameRunnable);
    }
}

// ---- 31 ----
private void onPreviewStartSub() {
    if (isMainThread()) {
        onPreviewStartSubSync();
    } else {
        onPreviewStartSubAsync();
    }
}

// ---- 32 ----
private void onPreviewStartSubAsync() {
    runOnUiThread(new Camera2App$30(this));
}

// ---- 33 ----
private void onPreviewStartSubSync() {
    setupUiAndCommonSettings();

    findViewById(R.id.panoramagp2_preview_background).setBackground(null);

    if (!mKeyFocusPressed && !mGuiCapturePressed) {
        updateViewsForPreview();
        if (mDialog != null) {
            requestToRecoverSystemUi();
            setMiniPreviewVisibility(false);
        }
    }

    mInternalSettings.updateViewsForPreviewStart();
}

// ---- 34 ----
private void openCamera() throws IllegalArgumentException {
    if (isCameraDisabled(this)) {
        return;
    }
    if (mTemperatureHigh) {
        return;
    }

    MorphoCamera morphoCamera = (MorphoCamera) mMorphoCamera;
    CameraInfo cameraInfo = morphoCamera.cameraInfo();
    if (!cameraInfo.isCameraEnabled()) {
        return;
    }

    if (cameraInfo.getOpenState() == 1) {
        return;
    }
    if (cameraInfo.getOpenState() == 2) {
        return;
    }

    if (!readViewAngle()) {
        if (Build.MODEL.equals("G3121") || Build.MODEL.equals("G3221")) {
            mViewAngleH = Float.intBitsToFloat(0x4290890b);
            mViewAngleV = Float.intBitsToFloat(0x426620e1);
        } else if (Build.MODEL.equals("EVA-TL00")) {
            mViewAngleH = Float.intBitsToFloat(0x428207e1);
            mViewAngleV = Float.intBitsToFloat(0x424c3810);
        } else {
            Camera camera = MorphoCamera1.open(mInternalSettings.camera_id);
            if (camera != null) {
                Camera.Parameters parameters = camera.getParameters();
                mViewAngleH = parameters.getHorizontalViewAngle();
                mViewAngleV = parameters.getVerticalViewAngle();
                camera.release();
            } else {
                setViewsVisibility(4);
                startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAMERA);
                return;
            }
        }
        writeViewAngle(mInternalSettings.camera_id, mViewAngleH, mViewAngleV);
    }

    boolean opened = false;
    if (morphoCamera.prepareCamera(mTextureView, mMiniPreviewTextureView)) {
        mInternalSettings.initializeUI(cameraInfo);
        opened = morphoCamera.openCamera(true);
    }
    if (!opened) {
        setViewsVisibility(4);
        startDialog(EnumDialogType.DIALOG_TYPE_ERROR_CAMERA);
    }
}

// ---- 35 ----
private boolean openSettingDialog() {
    if (isCapturing() || isDialogShown()) {
        return false;
    }

    setMiniPreviewVisibility(false);
    mPreviewLine1.setVisibility(View.INVISIBLE);
    mPreviewLine2.setVisibility(View.INVISIBLE);
    mSettingList.open();
    hideInfoIcons();
    requestToRecoverSystemUi();
    return true;
}

// ---- 36 ----
private void playSound(int soundId) {
    if (mSoundPool != null && (!mCanDisableShutterSound || mSettings.isCameraSound())) {
        mSoundPool.play(soundId, 1.0f, 1.0f, 0, 0, 1.0f);
    }
}

// ---- 37 ----
private void prepareSound() {
    AudioAttributes audioAttributes;
    if (mCanDisableShutterSound) {
        audioAttributes = new AudioAttributes.Builder()
                .setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)
                .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)
                .build();
    } else {
        audioAttributes = new AudioAttributes.Builder()
                .setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)
                .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)
                .setFlags(AudioAttributes.FLAG_AUDIBILITY_ENFORCED)
                .build();
    }

    mSoundPool = new SoundPool.Builder()
            .setAudioAttributes(audioAttributes)
            .setMaxStreams(1)
            .build();

    if (mSoundPool != null) {
        try {
            mFocusedSoundId = mSoundPool.load(this, R.raw.af_success, 1);
            mShutterSoundId = mSoundPool.load(this, R.raw.start_rec, 1);
            mStopSoundId = mSoundPool.load(this, R.raw.stop_rec, 1);
        } catch (Exception e) {
            e.printStackTrace();
            mSoundPool.release();
            mSoundPool = null;
        }
    }
}

// ---- 38 ----
private boolean readViewAngle() {
    SharedPreferences preferences = getSharedPreferences(PREF_KEY, 0);
    int savedCameraId = preferences.getInt(PREF_KEY_VIEW_ANGLE_CAMERA_ID, -1);
    if (savedCameraId != mInternalSettings.camera_id) {
        return false;
    }

    float angleH = preferences.getFloat(PREF_KEY_VIEW_ANGLE_H, 0.0f);
    float angleV = preferences.getFloat(PREF_KEY_VIEW_ANGLE_V, 0.0f);
    if (angleH != 0.0f && angleV != 0.0f) {
        mViewAngleH = angleH;
        mViewAngleV = angleV;
        return true;
    }
    return false;
}

// ---- 39 ----
private void reconstructLocalCache() {
    loadLocalCache();
    clearLocalCacheBackup();
    removeInvalidLocalCache();
}

// ---- 40 ----
private void registerGravitySensorListener() {
    mIsSensorAverage = false;
    mSensorCnt = 0;
    mGravities = new float[3];

    if (mInternalSettings.use_gravity_sensor && mSensorManager != null) {
        List<Sensor> sensors = mSensorManager.getSensorList(Sensor.TYPE_GRAVITY);
        if (sensors.size() > 0) {
            Sensor sensor = (Sensor) sensors.get(0);
            mSensorManager.registerListener(this, sensor, SensorManager.SENSOR_DELAY_GAME);
        }
    }
}

// ---- 41 ----
private void releaseImageBitmap() {
    synchronized (PreviewImageSynchronizedObject) {
        if (!mTemperatureHigh && mPreviewImageView != null) {
            mPreviewImageView.setImageDrawable(null);
        }
        mPreviewBitmap = null;
        mPreviewFitBitmap = null;
    }
}

// ---- 42 ----
private void removeInvalidLocalCache() {
    Iterator it = mLocalCache.iterator();
    while (it.hasNext()) {
        ContentInfo contentInfo = (ContentInfo) it.next();
        File file = new File(contentInfo.mImageFileLocation);
        if (!file.exists()) {
            it.remove();
            continue;
        }
        if (isRemovedFromDataBase(contentInfo)) {
            it.remove();
        }
    }
}

// ---- 43 ----
private void requestToDimSystemUi() {
    View decorView = getWindow().getDecorView();
    if (decorView != null && !isTablet()) {
        decorView.setSystemUiVisibility(BASIC_SYSTEM_UI_FLAGS | 0x1);
        decorView.requestLayout();
    }
}

// ---- 44 ----
private void requestToRecoverSystemUi() {
    View decorView = getWindow().getDecorView();
    if (decorView != null && !isTablet()) {
        decorView.setSystemUiVisibility(BASIC_SYSTEM_UI_FLAGS);
        decorView.requestLayout();
    }
}

// ---- 45 ----
private void requestToRemoveSystemUi() {
    View decorView = getWindow().getDecorView();
    if (decorView != null && !isTablet()) {
        decorView.setSystemUiVisibility(BASIC_SYSTEM_UI_FLAGS);
        decorView.requestLayout();
    }
}

// ---- 46 ----
private boolean saveImage(ContentResolver resolver, String path, String title, String displayName,
        ByteBuffer buffer, int width, int height, Location location) {
    long fileSize = 0L;
    ParcelFileDescriptor pfd = null;
    int writeRet;

    if (Build.VERSION.SDK_INT >= 28 && isSaveDestinationExternal()) {
        String dirName = String.format(Locale.US, "%d%s", mSaveDirId, PREFIX_DIR);
        DocumentFile root = DocumentFile.fromTreeUri(this, mSettings.getSdCardGrantedUri());

        DocumentFile dcimDir;
        if (root.getName().matches("DCIM")) {
            dcimDir = root;
        } else {
            DocumentFile found = root.findFile("DCIM");
            if (found == null) {
                DocumentFile created = root.createDirectory("DCIM");
                if (created == null) {
                    return false;
                }
                dcimDir = created;
            } else {
                dcimDir = found;
            }
        }

        DocumentFile subDir = dcimDir.findFile(dirName);
        DocumentFile targetFile = subDir.createFile("image/jpeg", displayName);

        try {
            ParcelFileDescriptor fd = resolver.openFileDescriptor(targetFile.getUri(), "rw");
            if (fd != null) {
                writeRet = JpegIO.writeJPEG(buffer, width, height, fd.getFd(), mInitParam.output_format);
                try {
                    fd.close();
                    if (writeRet == 0) {
                        fd = resolver.openFileDescriptor(targetFile.getUri(), "rw");
                    }
                    fileSize = targetFile.length();
                    pfd = fd;
                } catch (FileNotFoundException e) {
                    throw e;
                } catch (IOException e) {
                    e.printStackTrace();
                    pfd = null;
                }
            } else {
                writeRet = -0x7ffffff8;
                pfd = null;
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            writeRet = -0x7ffffff0;
            pfd = null;
        } catch (IOException e) {
            e.printStackTrace();
            writeRet = 0;
            pfd = null;
        }
    } else {
        writeRet = JpegIO.writeJPEG(buffer, width, height, path, mInitParam.output_format);
        File savedFile = new File(path);
        fileSize = savedFile.length();
        pfd = null;
    }

    if (writeRet != 0) {
        LogFilter.e("PanoramaGP2", "writeJPEG ret = " + writeRet);
        return false;
    }

    long now = System.currentTimeMillis();

    ExifInterface exifInterface;
    if (pfd != null) {
        ExifInterface tmp;
        try {
            tmp = new ExifInterface(pfd.getFileDescriptor());
        } catch (IOException e) {
            e.printStackTrace();
            tmp = null;
        }
        exifInterface = tmp;
    } else {
        ExifInterface tmp;
        try {
            tmp = new ExifInterface(path);
        } catch (IOException e) {
            e.printStackTrace();
            tmp = null;
        }
        exifInterface = tmp;
    }

    if (exifInterface != null) {
        setInExif(exifInterface, location, mLatestCaptureResult);
    }

    if (pfd != null) {
        try {
            pfd.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    ContentValues values = new ContentValues(8);
    values.put("title", title);
    values.put("_display_name", displayName);
    values.put("datetaken", now);
    long nowSeconds = now / 1000;
    values.put("date_added", nowSeconds);
    values.put("date_modified", nowSeconds);
    values.put("mime_type", "image/jpeg");
    values.put("_data", path);
    values.put("_size", fileSize);

    resolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, values);
    return true;
}

// ---- 47 ----
private void saveLocalCache() {
    mLocalCacheBackup = new LinkedList(mLocalCache);
}

// ---- 48 ----
private void setAttachExit() {
    addAttachQueue(sAttachExit);
}

// ---- 49 ----
private void setButtonsEnabled(boolean enabled) {
    HeaderButtonsFragment headerButtonsFragment = getHeaderButtonsFragment();
    if (headerButtonsFragment != null) {
        headerButtonsFragment.setViewsEnabled(enabled);
    }

    FooterButtonsFragment footerButtonsFragment = getFooterButtonsFragment();
    if (footerButtonsFragment != null) {
        footerButtonsFragment.setViewsEnabled(enabled);
    }
}

// ---- 50 ----
private void setEnabledSaveDestination(boolean condition, boolean enabled) {
    if (mSettingSubListSaveDestination != null) {
        if (condition) {
            mSettingSubListSaveDestination.setItemEnabled(mIndexSettingSaveDestinationInternal, enabled);
        } else {
            mSettingSubListSaveDestination.setItemEnabled(mIndexSettingSaveDestinationSD, enabled);
        }
    }
}

// ---- 51 ----
private static void setInExif(ExifInterface exifInterface, Location location, CaptureResult captureResult) {
    String dateTime = DateFormat.format("yyyy:MM:dd kk:mm:ss", System.currentTimeMillis()).toString();
    exifInterface.setAttribute("DateTime", dateTime);
    exifInterface.setAttribute("DateTimeOriginal", dateTime);
    exifInterface.setAttribute("DateTimeDigitized", dateTime);
    exifInterface.setAttribute("Make", Build.MANUFACTURER);
    exifInterface.setAttribute("Model", Build.MODEL);

    if (location != null) {
        double latitude = location.getLatitude();
        double longitude = location.getLongitude();

        String latitudeString = locationValueToString(latitude);
        String latitudeRef = latitudeValueToNorS(latitude);
        String longitudeString = locationValueToString(longitude);
        String longitudeRef = longitudeValueToEorW(longitude);

        exifInterface.setAttribute("GPSLatitude", latitudeString);
        exifInterface.setAttribute("GPSLatitudeRef", latitudeRef);
        exifInterface.setAttribute("GPSLongitude", longitudeString);
        exifInterface.setAttribute("GPSLongitudeRef", longitudeRef);
    }

    if (captureResult != null) {
        double exposureTime = captureResult.getExposureTime() / 1000.0 / 1000.0 / 1000.0;
        int iso = captureResult.getIsoValue();
        exifInterface.setAttribute("ExposureTime", String.valueOf(exposureTime));

        if (Build.VERSION.SDK_INT >= 24) {
            exifInterface.setAttribute("ISOSpeedRatings", String.valueOf(iso));
        } else {
            // 原始位元碼此分支與上方分支邏輯完全相同，屬原版既有的冗餘寫法，予以保留。
            exifInterface.setAttribute("ISOSpeedRatings", String.valueOf(iso));
        }
    }

    try {
        exifInterface.saveAttributes();
    } catch (IOException e) {
        e.printStackTrace();
    }
}

// ---- 52 ----
private void setInitialRotationByGravity() {
    if (mInternalSettings.use_gravity_sensor && mMorphoPanoramaGP2 != null && mSensorCnt > 0) {
        float x = mGravities[0] / (float) mSensorCnt;
        float y = mGravities[1] / (float) mSensorCnt;
        float z = mGravities[2] / (float) mSensorCnt;

        LogFilter.d(LOG_TAG, String.format(Locale.US, "Gravity Sensor Value X=%f Y=%f Z=%f cnt=%d", x, y, z, mSensorCnt));

        int ret = mMorphoPanoramaGP2.setInitialRotationByGravity(x, y, z);
        if (ret != 0) {
            LogFilter.e(LOG_TAG, String.format(Locale.US, "MorphoPanoramaGP2.setInitialRotationByGravity error ret:0x%08X", ret));
        }
    }
}
