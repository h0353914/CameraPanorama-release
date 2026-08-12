/*
 * STAGING FILE - 暫存檔案，非最終產物。
 *
 * 本檔案包含 Camera2App$1 ~ Camera2App$31（以及巢狀的 Camera2App$26$1）共 32 個匿名/合成內部類別，
 * 由對應的 smali 檔案逐一手動反編譯而來。每個區塊會在合併階段被搬移到 Camera2App.java 中對應的
 * 呼叫點（依 EnclosingMethod 標註所指出的外層方法），以 `new XXX() { ... }` 的形式內嵌建立。
 *
 * 所有 access$NNN(...) 合成橋接方法已還原為對 Camera2App 私有欄位/方法的直接存取
 * （因為在最終合併後，這些內部類別會是 Camera2App 的內部類別，可直接存取外層 private 成員，
 * 不再需要合成橋接方法）。已核對 /home/h/tmp/SemcCameraUI/.tmp/camera2app_field_reference.txt
 * 與 camera2app_method_reference.txt，確認所有欄位/方法名稱、型別均與原始 smali 100% 一致。
 *
 * 合併時需要的 import（完整類別名稱）。com.sonyericsson.android.camera3d 套件下與 Camera2App 同套件的
 * 兄弟類別（CameraInfo、FooterButtonsFragment、HeaderButtonsFragment、InfoIconsFragment、MorphoCamera1、
 * PanoramaGP2LocationListener、SettingList 等）在合併進 Camera2App.java 後屬同套件，不需 import；
 * 僅列出確實需要 import 的部分：
 *   android.content.BroadcastReceiver
 *   android.content.Context
 *   android.content.Intent
 *   android.graphics.Rect
 *   android.graphics.SurfaceTexture
 *   android.graphics.drawable.Drawable
 *   android.location.Location
 *   android.media.AudioManager
 *   android.net.Uri
 *   android.util.DisplayMetrics
 *   android.view.MotionEvent
 *   android.view.ScaleGestureDetector
 *   android.view.SurfaceHolder
 *   android.view.TextureView
 *   android.view.View
 *   android.widget.FrameLayout
 *   android.widget.ImageView
 *   android.widget.LinearLayout
 *   android.widget.RelativeLayout
 *   java.io.File
 *   java.io.FileFilter
 *   java.io.FilenameFilter
 *   java.util.Locale
 *   java.util.TimerTask
 *   com.sonyericsson.android.camera3d.dialog.RotatableDialogFragment
 *   com.sonyericsson.android.camera3d.utils.LogFilter
 *   （Camera2App$EnumDialogType 為 Camera2App 的內部型別，合併後直接以 EnumDialogType 存取，不需 import）
 */

// ===== Camera2App$1 (implements android.view.TextureView.SurfaceTextureListener; 無 EnclosingMethod 標註，
//        只有 EnclosingClass — 為 Camera2App 建構子 <init>() 中欄位初始化式，指派給 mSurfaceTextureListener
//        欄位；已以 smali 中緊接在 new-instance 之後的 iput-object 目標欄位確認) =====
new TextureView.SurfaceTextureListener() {
    @Override
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int width, int height) {
        LogFilter.i("Camera2App", "onSurfaceTextureAvailable size : " + width + " x " + height);
        if (!Camera2App.this.mStartTrackFlag) {
            return;
        }
        if (!Camera2App.this.mActive) {
            return;
        }
        int liveViewHeight = Camera2App.this.getLiveViewHeight();
        int liveViewWidth = Camera2App.this.getLiveViewWidth();
        RelativeLayout.LayoutParams textureParams = new RelativeLayout.LayoutParams(liveViewWidth, liveViewHeight);
        LogFilter.i("Camera2App", "display size : " + liveViewWidth + " x " + liveViewHeight);
        textureParams.addRule(Camera2App.this.isPreviewCentering() ? 0xd : 0xa, -1);
        Camera2App.this.mTextureView.setLayoutParams(textureParams);

        RelativeLayout.LayoutParams autoFocusParams = (RelativeLayout.LayoutParams) Camera2App.this.mAutoFocusCircle.getLayoutParams();
        if (Camera2App.this.isPreviewCentering()) {
            autoFocusParams.addRule(0xd, -1);
        } else {
            Drawable drawable = Camera2App.this.getDrawable(0x7f07006d);
            int drawableHeight = drawable != null ? drawable.getMinimumHeight() : 0;
            autoFocusParams.topMargin += (liveViewHeight - drawableHeight) / 2;
            autoFocusParams.addRule(0xe, -1);
        }
        Camera2App.this.mAutoFocusCircle.setLayoutParams(autoFocusParams);

        int bottomMargin = (int) (Camera2App.this.realPixelSize.y * 0.3);
        int settingViewWidth = Camera2App.this.findViewById(0x7f08003f).getLayoutParams().width;
        int settingDimen = Camera2App.this.getResources().getDimensionPixelSize(
                Camera2App.this.isDisplay18_9() ? 0x7f06005a : 0x7f060059);
        bottomMargin -= (settingViewWidth + settingDimen);

        boolean isResolution16_9 = Camera2App.this.isResolution16_9();

        View view785 = Camera2App.this.findViewById(0x7f080085);
        RelativeLayout.LayoutParams params785 = (RelativeLayout.LayoutParams) view785.getLayoutParams();
        params785.height = Camera2App.this.getResources().getDimensionPixelSize(isResolution16_9 ? 0x7f060082 : 0x7f060083);
        params785.bottomMargin = bottomMargin;
        view785.setLayoutParams(params785);

        RelativeLayout.LayoutParams line1Params = (RelativeLayout.LayoutParams) Camera2App.this.mPreviewLine1.getLayoutParams();
        line1Params.width = liveViewWidth;
        line1Params.bottomMargin = bottomMargin;
        line1Params.addRule(0xe, -1);
        Camera2App.this.mPreviewLine1.setLayoutParams(line1Params);

        RelativeLayout.LayoutParams line2Params = (RelativeLayout.LayoutParams) Camera2App.this.mPreviewLine2.getLayoutParams();
        line2Params.bottomMargin = Camera2App.this.getResources().getDimensionPixelSize(isResolution16_9 ? 0x7f060082 : 0x7f060083);
        line2Params.width = liveViewWidth;
        line2Params.addRule(0xe, -1);
        Camera2App.this.mPreviewLine2.setLayoutParams(line2Params);

        RelativeLayout.LayoutParams miniImageParams = (RelativeLayout.LayoutParams) Camera2App.this.mMiniPreviewImageView.getLayoutParams();
        miniImageParams.height = Camera2App.this.getResources().getDimensionPixelSize(isResolution16_9 ? 0x7f060084 : 0x7f060085);
        miniImageParams.bottomMargin = bottomMargin;
        Camera2App.this.mMiniPreviewImageView.setLayoutParams(miniImageParams);

        RelativeLayout.LayoutParams miniFrameParams = (RelativeLayout.LayoutParams) Camera2App.this.mMiniPreviewFrame.getLayoutParams();
        miniFrameParams.height = Camera2App.this.getResources().getDimensionPixelSize(isResolution16_9 ? 0x7f060084 : 0x7f060085);
        miniFrameParams.bottomMargin = bottomMargin;
        Camera2App.this.mMiniPreviewFrame.setLayoutParams(miniFrameParams);

        View view2b = Camera2App.this.findViewById(0x7f08002b);
        RelativeLayout.LayoutParams params2b = (RelativeLayout.LayoutParams) view2b.getLayoutParams();
        int half = Camera2App.this.getResources().getDimensionPixelSize(isResolution16_9 ? 0x7f060084 : 0x7f060085) / 2;
        params2b.bottomMargin = half;
        params2b.bottomMargin -= Camera2App.this.getResources().getDimensionPixelSize(0x7f06004e) / 2;
        view2b.setLayoutParams(params2b);

        View viewCa = Camera2App.this.findViewById(0x7f0800ca);
        RelativeLayout.LayoutParams paramsCa = (RelativeLayout.LayoutParams) viewCa.getLayoutParams();
        paramsCa.bottomMargin = bottomMargin;
        viewCa.setLayoutParams(paramsCa);

        Camera2App.this.mMiniPreviewImageView.setVisibility(View.VISIBLE);
        Camera2App.this.mMiniPreviewTextureView = null;
        Camera2App.this.textureViewPrepared();
    }

    @Override
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return true;
    }

    @Override
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int width, int height) {
        LogFilter.i("Camera2App", "onSurfaceTextureSizeChanged size : " + width + " x " + height);
    }

    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
};

// ===== Camera2App$2 (implements android.view.TextureView.SurfaceTextureListener; 無 EnclosingMethod，
//        為 <init>() 欄位初始化式，指派給 mMiniPreviewSurfaceTextureListener 欄位) =====
new TextureView.SurfaceTextureListener() {
    @Override
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int width, int height) {
        if (Camera2App.this.mTextureView.isAvailable()) {
            Camera2App.this.textureViewPrepared();
        }
    }

    @Override
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        Camera2App.this.mMiniPreviewTextureView = null;
        return false;
    }

    @Override
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int width, int height) {
    }

    @Override
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
};

// ===== Camera2App$3 (implements android.view.SurfaceHolder.Callback; 無 EnclosingMethod，
//        為 <init>() 欄位初始化式，指派給 mSurfaceListener 欄位) =====
new SurfaceHolder.Callback() {
    @Override
    public void surfaceCreated(SurfaceHolder holder) {
        MorphoCamera1 camera1 = (MorphoCamera1) Camera2App.this.mMorphoCamera;
        if (!camera1.openCamera(holder)) {
            Camera2App.this.setViewsVisibility(4);
            Camera2App.this.startDialog(Camera2App.EnumDialogType.DIALOG_TYPE_ERROR_CAMERA);
            return;
        }
        Camera2App.this.mViewAngleH = camera1.viewAngleH;
        Camera2App.this.mViewAngleV = camera1.viewAngleV;
        CameraInfo cameraInfo = camera1.cameraInfo();
        Camera2App.this.mInternalSettings.initializeUI(cameraInfo);
        Camera2App.this.makeEngineParam();
    }

    @Override
    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        int rotation = Camera2App.this.getDisplayRotation();
        ((MorphoCamera1) Camera2App.this.mMorphoCamera).startPreview(rotation);
    }

    @Override
    public void surfaceDestroyed(SurfaceHolder holder) {
    }
};

// ===== Camera2App$4 (implements android.view.View.OnTouchListener, enclosing method: onCreate(Bundle)) =====
new View.OnTouchListener() {
    @Override
    public boolean onTouch(View v, MotionEvent event) {
        Camera2App.this.startCountDownTimer();
        return false;
    }
};

// ===== Camera2App$5 (implements android.view.ScaleGestureDetector.OnScaleGestureListener, enclosing method: onCreate(Bundle)) =====
new ScaleGestureDetector.OnScaleGestureListener() {
    @Override
    public boolean onScale(ScaleGestureDetector detector) {
        return false;
    }

    @Override
    public boolean onScaleBegin(ScaleGestureDetector detector) {
        return false;
    }

    @Override
    public void onScaleEnd(ScaleGestureDetector detector) {
    }
};

// ===== Camera2App$6 (implements com.sonyericsson.android.camera3d.HeaderButtonsFragment.OnSettingDialogStateChangedListener,
//        enclosing method: onCreate(Bundle)) =====
new HeaderButtonsFragment.OnSettingDialogStateChangedListener() {
    @Override
    public boolean openSettingDialog() {
        return Camera2App.this.openSettingDialog();
    }

    @Override
    public void closeSettingDialog() {
        Camera2App.this.closeSettingDialog();
        Camera2App.this.checkRemainingMemory(false);
    }

    @Override
    public boolean isOpened() {
        return Camera2App.this.isOpenedSettingDialog();
    }
};

// ===== Camera2App$7 (extends android.content.BroadcastReceiver, enclosing method: onResume()) =====
new BroadcastReceiver() {
    @Override
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        Uri data = intent.getData();
        if (data == null) {
            return;
        }
        if (action.matches("android.intent.action.MEDIA_MOUNTED")) {
            LogFilter.d("Camera2App", "SD card is inserted:" + data.getPath());
            Camera2App.this.checkRemainingMemory(!Camera2App.this.isCapturing());
            return;
        }
        if (!action.matches("android.intent.action.MEDIA_UNMOUNTED")) {
            return;
        }
        LogFilter.d("Camera2App", "SD card is ejected:" + data.getPath());
        if (Camera2App.this.isDialogShown()
                && Camera2App.this.mDialogType == Camera2App.EnumDialogType.DIALOG_TYPE_SELECT_SAVE_DST) {
            Camera2App.this.mDialog.dismiss(RotatableDialogFragment.EnumDismissFactor.DISMISS_FACTOR_OTHER);
        } else {
            Camera2App.this.excludeOverlayDialog(Camera2App.EnumDialogType.DIALOG_TYPE_SELECT_SAVE_DST);
        }
        if (Camera2App.this.isSaveDestinationExternal()) {
            if (Camera2App.this.isCapturing() && Camera2App.this.mMorphoCamera != null) {
                Camera2App.this.mMorphoCamera.cancelState();
                Camera2App.this.mMorphoCamera.startState();
            }
            Camera2App.this.setSaveDestination(true);
            Camera2App.this.startDialog(Camera2App.EnumDialogType.DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL);
        }
        Camera2App.this.setEnabledSaveDestination(false, false);
        Camera2App.this.mSettings.setSdcardInserted(false);
        Camera2App.this.setThumbnail();
    }
};

// ===== Camera2App$8 (implements android.media.AudioManager.OnAudioFocusChangeListener, enclosing method: onResume())
//        擷取 onResume() 內的區域變數 val$audioManager（型別 AudioManager，於合併後對應原方法中宣告的
//        AudioManager 區域變數，暫命名為 audioManager，需與實際變數名一致） =====
new AudioManager.OnAudioFocusChangeListener() {
    @Override
    public void onAudioFocusChange(int focusChange) {
        audioManager.abandonAudioFocus(this);
    }
};

// ===== Camera2App$9 (implements java.io.FileFilter, enclosing method: createNewFilePath()) =====
new FileFilter() {
    @Override
    public boolean accept(File file) {
        if (!file.isDirectory()) {
            return false;
        }
        String name = file.getName();
        if (!name.endsWith("ANDRO")) {
            return false;
        }
        int idx = name.lastIndexOf("ANDRO");
        String prefix = name.substring(0, idx);
        try {
            int dirId = Integer.valueOf(prefix).intValue();
            if (dirId > Camera2App.this.mSaveDirId && dirId <= 0x3e7) {
                Camera2App.this.mSaveDirId = dirId;
                return true;
            }
            return false;
        } catch (NumberFormatException e) {
            return false;
        }
    }
};

// ===== Camera2App$10 (implements java.io.FileFilter, enclosing method: createNewFilePath()) =====
new FileFilter() {
    @Override
    public boolean accept(File file) {
        if (!file.isFile()) {
            return false;
        }
        String name = file.getName();
        String prefix;
        boolean isJpg;
        if (name.startsWith("DSC_")) {
            prefix = "DSC_";
            isJpg = true;
        } else if (name.startsWith("MOV_")) {
            prefix = "MOV_";
            isJpg = false;
        } else {
            return false;
        }
        int dotIndex = name.lastIndexOf(".");
        if (dotIndex < 0) {
            return false;
        }
        String ext = name.substring(dotIndex + 1);
        if (isJpg) {
            if (!ext.toUpperCase(Locale.US).matches("JPG")) {
                return false;
            }
        } else {
            if (!ext.toUpperCase(Locale.US).matches("MP4")) {
                return false;
            }
        }
        String numStr = name.substring(prefix.length(), dotIndex);
        try {
            int id = Integer.valueOf(numStr).intValue();
            if (id > Camera2App.this.mSaveFileId && id <= 0x270f) {
                Camera2App.this.mSaveFileId = id;
                return true;
            }
            return false;
        } catch (NumberFormatException e) {
            return false;
        }
    }
};

// ===== Camera2App$11 (implements java.io.FilenameFilter, enclosing method: createNewSDFilePath()) =====
new FilenameFilter() {
    @Override
    public boolean accept(File dir, String name) {
        try {
            if (name.length() != 12) {
                return false;
            }
            String prefix;
            boolean isJpg;
            if (name.startsWith("DSC_")) {
                prefix = "DSC_";
                isJpg = true;
            } else if (name.startsWith("MOV_")) {
                prefix = "MOV_";
                isJpg = false;
            } else {
                return false;
            }
            int dotIndex = name.lastIndexOf(".");
            if (dotIndex < 0) {
                return false;
            }
            String ext = name.substring(dotIndex + 1);
            if (isJpg) {
                if (!ext.toUpperCase(Locale.US).matches("JPG")) {
                    return false;
                }
            } else {
                if (!ext.toUpperCase(Locale.US).matches("MP4")) {
                    return false;
                }
            }
            // 原始 smali：以 subSequence(prefix.length(), dotIndex) 取得 CharSequence 後 check-cast 為 String
            String numStr = (String) name.subSequence(prefix.length(), dotIndex);
            int id = Integer.parseInt(numStr);
            int saveFileId = Camera2App.this.mSaveFileId;
            // 注意：原始暫存器在 "startsWith(DSC_)" 判斷成立時被重新賦值為 1(TRUE)，
            // 因此這裡實際比較的是 "id < 1"，並非常見的長度上限 12（該暫存器已被覆寫，非筆誤）。
            if (id < saveFileId) {
                return false;
            }
            if (id < 1) {
                return false;
            }
            if (id > 0x270f) {
                return false;
            }
            Camera2App.this.mSaveFileId = id;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
};

// ===== Camera2App$12 (implements java.lang.Runnable,
//        enclosing method: onTakePictureStart(PanoramaState.IPanoramaStateEventListener)) =====
new Runnable() {
    @Override
    public void run() {
        Camera2App.this.setViewsVisibility(0);
        Camera2App.this.updateViewsForCapture();
        if (!Camera2App.this.isDialogShown()) {
            Camera2App.this.getFooterButtonsFragment().setPauseIcon();
        }
    }
};

// ===== Camera2App$13 (implements java.lang.Runnable, enclosing method: onTakePictureFinish2NextState(int)) =====
new Runnable() {
    @Override
    public void run() {
        Camera2App.this.showSavingProgressBar();
    }
};

// ===== Camera2App$14 (implements java.lang.Runnable, enclosing method: onTakePictureFinish2NextState(int)) =====
new Runnable() {
    @Override
    public void run() {
        Camera2App.this.startDialog(Camera2App.EnumDialogType.DIALOG_TYPE_ERROR_SAVE);
    }
};

// ===== Camera2App$15 (implements java.lang.Runnable; 無 EnclosingMethod，為 <init>() 欄位初始化式，
//        指派給 mHideBlackScreenRunnable 欄位) =====
new Runnable() {
    @Override
    public void run() {
        if (!Camera2App.this.mActive) {
            return;
        }
        Camera2App.this.hideBlackScreen();
    }
};

// ===== Camera2App$16 (implements java.lang.Runnable; 無 EnclosingMethod，為 <init>() 欄位初始化式，
//        指派給 mPreviewFrameRunnable 欄位) =====
new Runnable() {
    @Override
    public void run() {
        if (!Camera2App.this.mActive) {
            return;
        }
        if (Camera2App.this.mPreviewFrame != null) {
            Camera2App.this.mPreviewFrame.setVisibility(View.GONE);
            Camera2App.this.mCurPreviewFrame.setVisibility(View.GONE);
            Camera2App.this.mPreviewArrow.setVisibility(View.GONE);
        }
        if (Camera2App.this.mMiniPreviewImageView != null) {
            Camera2App.this.mMiniPreviewImageView.setImageBitmap(
                    Camera2App.this.mTextureView.getBitmap(
                            Camera2App.this.mMiniPreviewImageView.getWidth(),
                            Camera2App.this.mMiniPreviewImageView.getHeight()));
        }
    }
};

// ===== Camera2App$17 (implements java.lang.Runnable; 無 EnclosingMethod，為 <init>() 欄位初始化式，
//        指派給 mTakePictureVisibleRunnable 欄位) =====
new Runnable() {
    @Override
    public void run() {
        if (Camera2App.this.mPreviewFrame != null) {
            Camera2App.this.mPreviewFrame.setVisibility(View.VISIBLE);
        }
    }
};

// ===== Camera2App$18 (implements java.lang.Runnable, enclosing method: onError()) =====
new Runnable() {
    @Override
    public void run() {
        Camera2App.this.hideBlackScreen();
        Camera2App.this.setViewsVisibility(4);
        Camera2App.this.startDialog(Camera2App.EnumDialogType.DIALOG_TYPE_ERROR_CAMERA);
    }
};

// ===== Camera2App$19 (implements java.lang.Runnable, enclosing method: onErrorCapture()) =====
new Runnable() {
    @Override
    public void run() {
        Camera2App.this.hideBlackScreen();
        if (!Camera2App.this.isDialogShown()) {
            Camera2App.this.startDialog(Camera2App.EnumDialogType.DIALOG_TYPE_ERROR_CAPTURE);
        }
    }
};

// ===== Camera2App$20 (implements java.lang.Runnable, enclosing method: onErrorCamera()) =====
new Runnable() {
    @Override
    public void run() {
        Camera2App.this.hideBlackScreen();
        Camera2App.this.shutdownViews();
        Camera2App.this.startDialog(Camera2App.EnumDialogType.DIALOG_TYPE_ERROR_CAMERA_LAUNCH);
    }
};

// ===== Camera2App$21 (implements android.view.View.OnTouchListener, enclosing method: startCamera()) =====
new View.OnTouchListener() {
    @Override
    public boolean onTouch(View v, MotionEvent event) {
        if (Camera2App.this.isOpenedSettingDialog()) {
            Camera2App.this.closeSettingDialog();
            Camera2App.this.checkRemainingMemory(false);
        }
        return Camera2App.this.mScaleGestureDetector.onTouchEvent(event);
    }
};

// ===== Camera2App$22 (implements android.view.View.OnTouchListener, enclosing method: startCamera())
//        內容與 Camera2App$21 完全相同（原始 apk 中即為兩個獨立但邏輯相同的匿名類別，分別掛在不同 View 上，
//        依原始行為各自保留） =====
new View.OnTouchListener() {
    @Override
    public boolean onTouch(View v, MotionEvent event) {
        if (Camera2App.this.isOpenedSettingDialog()) {
            Camera2App.this.closeSettingDialog();
            Camera2App.this.checkRemainingMemory(false);
        }
        return Camera2App.this.mScaleGestureDetector.onTouchEvent(event);
    }
};

// ===== Camera2App$23 (implements java.lang.Runnable, enclosing method: initializeLayoutObjects())
//        擷取 initializeLayoutObjects() 內的區域變數 val$layoutFooter（型別 LinearLayout，暫命名為
//        layoutFooter，需與實際變數名一致） =====
new Runnable() {
    @Override
    public void run() {
        RelativeLayout.LayoutParams footerParams = (RelativeLayout.LayoutParams) layoutFooter.getLayoutParams();
        footerParams.bottomMargin = Camera2App.this.getResources().getDimensionPixelSize(
                Camera2App.this.isDisplay18_9() ? 0x7f06005a : 0x7f060059);
        if (Camera2App.this.isDisplay18_9()) {
            int heightAvail = Camera2App.this.realPixelSize.y
                    - Camera2App.this.getSettingButtonHeight()
                    - Camera2App.this.getNavigationBarHeight();
            int previewHeight169 = (heightAvail / 16) * 9;
            int horizontalMargin = Camera2App.this.realPixelSize.x - previewHeight169;
            if (horizontalMargin % 2 != 0) {
                horizontalMargin += 1;
            }
            DisplayMetrics metrics = Camera2App.this.getResources().getDisplayMetrics();
            int densityDpi = metrics.densityDpi;
            int densityDeviceStable = DisplayMetrics.DENSITY_DEVICE_STABLE;
            float marginBaseDp = Camera2App.this.getResources().getDimension(0x7f06005c);
            float scale = (float) densityDpi / (float) densityDeviceStable;
            float scaledMargin = marginBaseDp / scale;
            int half = horizontalMargin / 2;
            int margin = (int) (scaledMargin + (float) half + 0.5f);
            footerParams.leftMargin = margin;
            footerParams.rightMargin = margin;
            layoutFooter.setLayoutParams(footerParams);

            LogFilter.i("Camera2App", "leftMargin = "
                    + ((RelativeLayout.LayoutParams) layoutFooter.getLayoutParams()).leftMargin);
            LogFilter.i("Camera2App", "rightMargin = "
                    + ((RelativeLayout.LayoutParams) layoutFooter.getLayoutParams()).rightMargin);

            LinearLayout headerLayout = (LinearLayout) Camera2App.this.findViewById(0x7f08006a);
            RelativeLayout.LayoutParams headerParams = (RelativeLayout.LayoutParams) headerLayout.getLayoutParams();
            headerParams.leftMargin = margin;
            headerParams.rightMargin = margin;
            headerLayout.setLayoutParams(headerParams);
        }
    }
};

// ===== Camera2App$24 (implements android.view.View.OnTouchListener, enclosing method: initializeLayoutObjects()) =====
new View.OnTouchListener() {
    @Override
    public boolean onTouch(View v, MotionEvent event) {
        int action = event.getAction();
        if (action == MotionEvent.ACTION_DOWN) {
            if (Camera2App.this.isCapturing()) {
                return false;
            }
            if (Camera2App.this.isOpenedSettingDialog()) {
                Camera2App.this.closeSettingDialog();
                if (!Camera2App.this.checkRemainingMemory(false)) {
                    return false;
                }
            }
            if (Camera2App.this.autoFocus()) {
                Camera2App.this.mGuiCapturePressed = true;
                Camera2App.this.setViewsVisibility(4);
                Camera2App.this.requestToRemoveSystemUi();
                Camera2App.this.getFooterButtonsFragment().setShutterIcon();
                Camera2App.this.startCountDownTimer();
            }
        } else if (action == MotionEvent.ACTION_UP) {
            if (Camera2App.this.mGuiCapturePressed) {
                Camera2App.this.mGuiCapturePressed = false;
                Camera2App.this.requestToDimSystemUi();
                Camera2App.this.onClickShutter(v);
            }
        } else if (action == MotionEvent.ACTION_MOVE) {
            Rect rect = new Rect();
            v.getDrawingRect(rect);
            if (!rect.contains((int) event.getX(), (int) event.getY()) && Camera2App.this.mGuiCapturePressed) {
                Camera2App.this.mGuiCapturePressed = false;
                Camera2App.this.setViewsVisibility(0);
                Camera2App.this.requestToDimSystemUi();
                Camera2App.this.updateViews();
                Camera2App.this.unlockFocus();
            }
        } else if (action == MotionEvent.ACTION_CANCEL) {
            if (Camera2App.this.mGuiCapturePressed) {
                Camera2App.this.mGuiCapturePressed = false;
                Camera2App.this.setViewsVisibility(0);
                Camera2App.this.requestToDimSystemUi();
                Camera2App.this.updateViews();
                Camera2App.this.unlockFocus();
            }
        }
        return false;
    }
};

// ===== Camera2App$25 (implements android.view.View.OnTouchListener, enclosing method: initializeLayoutObjects()) =====
new View.OnTouchListener() {
    @Override
    public boolean onTouch(View v, MotionEvent event) {
        int action = event.getAction();
        if (action == MotionEvent.ACTION_DOWN) {
            if (!Camera2App.this.isCapturing()) {
                return false;
            }
            Camera2App.this.mGuiCapturePressed = true;
        } else if (action == MotionEvent.ACTION_UP) {
            if (Camera2App.this.mGuiCapturePressed) {
                Camera2App.this.mGuiCapturePressed = false;
                Camera2App.this.onClickShutter(v);
            }
        } else if (action == MotionEvent.ACTION_MOVE) {
            Rect rect = new Rect();
            v.getDrawingRect(rect);
            if (!rect.contains((int) event.getX(), (int) event.getY()) && Camera2App.this.mGuiCapturePressed) {
                Camera2App.this.mGuiCapturePressed = false;
            }
        } else if (action == MotionEvent.ACTION_CANCEL) {
            if (Camera2App.this.mGuiCapturePressed) {
                Camera2App.this.mGuiCapturePressed = false;
            }
        }
        return false;
    }
};

// ===== Camera2App$26 (extends java.util.TimerTask, enclosing method: checkLocationService())
//        run() 內建立巢狀匿名類別 Camera2App$26$1（見下方 Camera2App$26$1 區塊），
//        並透過 Camera2App.this.runOnUiThread(...) 執行之。 =====
new TimerTask() {
    @Override
    public void run() {
        Camera2App.this.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                InfoIconsFragment infoIconsFragment = Camera2App.this.getInfoIconsFragment();
                if (Camera2App.this.isActiveGpsSearchTimer() && infoIconsFragment != null) {
                    infoIconsFragment.updateGpsSearch(false);
                }
            }
        });
    }
};

// ===== Camera2App$26$1 (implements java.lang.Runnable, enclosing method: Camera2App$26.run())
//        巢狀於 Camera2App$26 內部；於 Java 中直接寫成上方 Camera2App$26 區塊裡 runOnUiThread(...) 的
//        匿名 Runnable 參數即可（Java 的巢狀匿名類別可直接存取最外層 Camera2App.this，不需像 smali 那樣
//        透過 this$1 -> this$0 兩層轉接）。以下為其獨立方法體對照，供合併時核對邏輯：
//
//        InfoIconsFragment infoIconsFragment = Camera2App.this.getInfoIconsFragment();
//        if (Camera2App.this.isActiveGpsSearchTimer() && infoIconsFragment != null) {
//            infoIconsFragment.updateGpsSearch(false);
//        }
// =====

// ===== Camera2App$27 (implements com.sonyericsson.android.camera3d.PanoramaGP2LocationListener.IPanoramaGP2LocationListener,
//        enclosing method: checkLocationService()) =====
new PanoramaGP2LocationListener.IPanoramaGP2LocationListener() {
    @Override
    public void onLocationChanged(Location location) {
        if (location != null) {
            Camera2App.this.stopGpsSearchTimer();
        }
        InfoIconsFragment infoIconsFragment = Camera2App.this.getInfoIconsFragment();
        if (infoIconsFragment != null) {
            infoIconsFragment.updateGpsSearch(location != null);
        }
    }

    @Override
    public void onProviderDisabled() {
        Camera2App.this.stopGpsSearchTimer();
        Camera2App.this.mSettingList.setChecked(1, false);
    }
};

// ===== Camera2App$28 (implements java.lang.Runnable, enclosing method: showPanoramaGuideDirection()) =====
new Runnable() {
    @Override
    public void run() {
        if (Camera2App.this.isCapturing()) {
            Camera2App.this.showPanoramaGuideDirection();
        }
    }
};

// ===== Camera2App$29 (implements java.lang.Runnable, enclosing method: initInternalSettingsViewsAsync()) =====
new Runnable() {
    @Override
    public void run() {
        Camera2App.this.initInternalSettingsViewsSync();
    }
};

// ===== Camera2App$30 (implements java.lang.Runnable, enclosing method: onPreviewStartSubAsync()) =====
new Runnable() {
    @Override
    public void run() {
        if (Camera2App.this.mActive) {
            Camera2App.this.onPreviewStartSubSync();
        }
    }
};

// ===== Camera2App$31 (合成類別，非匿名內部類別；.class 標頭為 "synthetic Lcom/sonyericsson/android/camera3d/Camera2App$31;"，
//        accessFlags = 0x1008 = ACC_STATIC | ACC_SYNTHETIC，這是 javac 為 Camera2App 內對
//        RotatableDialogFragment$EnumDismissFactor、Camera2App$EnumDialogType、Camera2App$EnumResultCreateEngine
//        三個 enum 所做的 switch-on-enum 語句自動產生的「$SwitchMap」輔助類別。它不是由 `new` 建立的匿名類別，
//        沒有可實例化的介面/父類別可對應；在最終合併後，javac 會在編譯含有對這三個 enum 做 switch 的方法時
//        自動重新產生等價的合成類別，因此「不需要」手動搬移這個類別本身──只要 Camera2App.java 中相關方法
//        仍以一般 switch(enumValue) { case XXX: ... } 寫法呈現（而不要用連續 if-else 展開），編譯器就會自動
//        補回本檔案的效果。以下列出其靜態陣列與初始化內容，僅供合併時核對 switch 對應關係是否一致：
//
//        static final int[] $SwitchMap$...$RotatableDialogFragment$EnumDismissFactor
//            [DISMISS_FACTOR_EVENT_LISTENER.ordinal()] = 1
//            [DISMISS_FACTOR_BACK_KEY.ordinal()]       = 2
//            （其餘 enum 常數若不在 switch 中出現則陣列保留預設值 0，對應 NoSuchFieldError 被吞掉的情形）
//
//        static final int[] $SwitchMap$...$Camera2App$EnumDialogType
//            [DIALOG_TYPE_ALERT_THERMAL_SHUTDOWN.ordinal()]        = 1
//            [DIALOG_TYPE_ERROR_CAMERA_SECURITY.ordinal()]         = 2
//            [DIALOG_TYPE_MEMORY_FULL_INTERNAL.ordinal()]          = 3
//            [DIALOG_TYPE_MEMORY_FULL_EXTERNAL.ordinal()]          = 4
//            [DIALOG_TYPE_ERROR_SAVE.ordinal()]                    = 5
//            [DIALOG_TYPE_ERROR_CAPTURE.ordinal()]                 = 6
//            [DIALOG_TYPE_ERROR_LAUNCH.ordinal()]                  = 7
//            [DIALOG_TYPE_ERROR_CAMERA.ordinal()]                  = 8
//            [DIALOG_TYPE_ERROR_CAMERA_LAUNCH.ordinal()]           = 9
//            [DIALOG_TYPE_SELECT_SAVE_DST.ordinal()]               = 10
//            [DIALOG_TYPE_ERROR_NOT_AVAILABLE_EXTERNAL.ordinal()]  = 11
//            [DIALOG_TYPE_ERROR_NOT_AVAILABLE_INTERNAL.ordinal()]  = 12
//            [DIALOG_TYPE_ERROR_NOT_GRANTED_EXTERNAL.ordinal()]    = 13
//            [DIALOG_TYPE_ALERT_THERMAL_WARNING.ordinal()]         = 14
//            [DIALOG_TYPE_SELECT_CHANGE_LOCATION.ordinal()]        = 15
//            [DIALOG_TYPE_SELECT_VALIDATE_LOCATION.ordinal()]      = 16
//            [DIALOG_TYPE_LICENSE.ordinal()]                       = 17
//            [DIALOG_TYPE_REQUEST_SD_CARD_PERMISSION.ordinal()]    = 18
//            [DIALOG_TYPE_SD_CARD_PERMISSION_UNAVAILABLE.ordinal()]= 19
//            [DIALOG_TYPE_NONE.ordinal()]                          = 20
//
//        static final int[] $SwitchMap$...$Camera2App$EnumResultCreateEngine
//            [RESULT_NEWLY_CREATED.ordinal()]   = 1
//            [RESULT_ALREADY_CREATED.ordinal()] = 2
// =====
