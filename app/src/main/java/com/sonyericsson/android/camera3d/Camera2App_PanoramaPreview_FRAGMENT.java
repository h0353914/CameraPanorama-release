// ============================================================================================
// STAGING FILE - NOT PART OF THE BUILD.
//
// This file contains the hand-ported Java translation of the "PanoramaPreview" cluster of
// smali inner classes of com.sonyericsson.android.camera3d.Camera2App:
//   Camera2App$PanoramaPreview
//   Camera2App$PanoramaPreview$DiffManager
//   Camera2App$PanoramaPreview$UiUpdateRunnable
//   Camera2App$PanoramaPreview$PreviewAttach
//   Camera2App$PanoramaPreview$PreviewAttach$PostAttachRunnable
//   Camera2App$PanoramaPreview$PreviewAttach$1  (anonymous Runnable, inlined below)
//
// NOTE: Camera2App$PanoramaPreview$PositionDetector is handled separately by another agent.
// It is only referenced here by name/signature (constructor PositionDetector(int, int, int),
// and instance methods detect(double,double), isEnableTvAnalysis(), notifyTvAnalyzed(),
// getFrameRect(), getPreviewCenteringMarginLeft(), getPreviewCenteringMarginTop()).
//
// This is a temporary holding area; the "// ===== ClassName =====" block below must be moved
// into its correct nested position inside Camera2App.java during the merge step (PanoramaPreview
// goes directly inside Camera2App; DiffManager/UiUpdateRunnable/PreviewAttach go inside
// PanoramaPreview; PostAttachRunnable goes inside PreviewAttach). Once merged, delete this file.
//
// All classes below are written as genuine non-static Java inner classes (this matches the
// this$0/this$1/this$2 synthetic fields observed in the smali), so they reference the outer
// Camera2App's fields/methods (e.g. mMorphoPanoramaGP2, isEngineRunning()) and, where
// applicable, the outer PanoramaPreview's/PreviewAttach's own fields/methods directly, without
// any explicit outer-instance qualifier. Constructors have had the compiler-synthesized leading
// outer-instance parameter removed, since it is implicit in real Java source for non-static
// inner classes.
//
// FULLY-QUALIFIED TYPES REFERENCED (the merge step will need imports for the non-same-package,
// non-java.lang ones; types in package com.sonyericsson.android.camera3d itself, and its R
// class, need no import since Camera2App.java already lives in that package):
//
//   android.graphics.Bitmap  (Bitmap.Config.ARGB_8888 via same import)
//   android.graphics.Canvas
//   android.graphics.Matrix
//   android.graphics.Paint
//   android.graphics.Point
//   android.graphics.PorterDuff  (PorterDuff.Mode.SRC via same import)
//   android.graphics.PorterDuffXfermode
//   android.graphics.RectF
//   android.util.Size
//   android.view.View
//   android.view.animation.AccelerateInterpolator
//   android.view.animation.AlphaAnimation
//   android.view.animation.Animation
//   android.view.animation.AnimationSet
//   android.view.animation.TranslateAnimation
//   android.widget.ImageView
//   android.widget.RelativeLayout
//   android.widget.TextView
//   java.util.Locale
//   com.sonyericsson.android.camera3d.base.AttachRunnable
//   com.sonyericsson.android.camera3d.base.DirectionFunction
//   com.sonyericsson.android.camera3d.base.MorphoCameraBase
//   com.sonyericsson.android.camera3d.base.PanoramaState
//   com.sonyericsson.android.camera3d.utils.LogFilter
//
//   (same package as Camera2App, no import needed, listed for completeness)
//   com.sonyericsson.android.camera3d.CameraConstants
//   com.sonyericsson.android.camera3d.CaptureImage
//   com.sonyericsson.android.camera3d.InternalSettings
//   com.sonyericsson.android.camera3d.MorphoPanoramaGP2 (+ nested InitParam)
//   com.sonyericsson.android.camera3d.PerformanceCounter
//   com.sonyericsson.android.camera3d.SaveAsyncTask (+ nested ISaveAsyncTaskEventListener)
//   com.sonyericsson.android.camera3d.R
// ============================================================================================


// ===== PanoramaPreview =====
// .super Lcom/sonyericsson/android/camera3d/base/PanoramaState;  accessFlags=0x2 (private, non-static inner class)
/**
 * 全景拍攝：預覽階段（已建立 MorphoPanoramaGP2 引擎後，持續 attach 預覽影格、偵測方向與位置）。
 */
private class PanoramaPreview extends PanoramaState {

    // 註：此欄位在整個 PanoramaPreview/DiffManager/UiUpdateRunnable/PreviewAttach/
    // PostAttachRunnable 群集與 PositionDetector 中都找不到任何讀取／寫入，
    // class 中也沒有 <clinit>，故無法從位元碼還原其原始數值；比照 JVM 對未賦值
    // static final 欄位的預設值保留為 0（判斷依據，詳見交付說明）。
    private static final int PREVIEW_SKIP_FRAME_NUM = 0;

    private final PositionDetector detector;
    private PreviewAttach mAttachRunnable;
    private final float mDrawPreviewFitScale;
    private final int mPreviewHeight;
    private final int mPreviewWidth;
    private int preview_skip_count;
    private final UiUpdateRunnable uiUpdateRunnable;

    public PanoramaPreview() {
        this(false);
    }

    public PanoramaPreview(boolean abort) {
        preview_skip_count = 0;
        uiUpdateRunnable = new UiUpdateRunnable();
        mAttachRunnable = null;
        if (abort) {
            abort();
        }

        DirectionFunction directionFunction = mDirectionFunction;
        int scale = directionFunction.getScale();
        Size previewSize = directionFunction.getPreviewSize();
        LogFilter.d("Camera2App", String.format(Locale.US, "previewSize %dx%d, scale %d",
                previewSize.getWidth(), previewSize.getHeight(), scale));

        int direction = directionFunction.getDirection();
        if (direction == DirectionFunction.DIRECTION_DOWN || direction == DirectionFunction.DIRECTION_UP) {
            float ratio = (float) mMiniPreviewImageView.getHeight() / Math.round(previewSize.getWidth() * 1.0f);
            mPreviewWidth = mMiniPreviewImageView.getHeight();
            mPreviewHeight = Math.round(previewSize.getHeight() * ratio);
        } else {
            float ratio = (float) mMiniPreviewImageView.getHeight() / Math.round(previewSize.getHeight() * 1.0f);
            mPreviewWidth = Math.round(previewSize.getWidth() * ratio);
            mPreviewHeight = mMiniPreviewImageView.getHeight();
        }

        mPreviewBitmap = Bitmap.createBitmap(mPreviewWidth, mPreviewHeight, Bitmap.Config.ARGB_8888);
        int setPreviewRet = mMorphoPanoramaGP2.setPreviewImage(mPreviewWidth, mPreviewHeight);
        if (setPreviewRet != 0) {
            LogFilter.e("Camera2App", String.format(Locale.US,
                    "MorphoSensorFusion.setPreviewImage error ret:0x%08X", setPreviewRet));
        }

        mDrawPreviewFitScale = 1.0f;

        Matrix rotateMatrix = new Matrix();
        rotateMatrix.setRotate(360 - mCurOrientation);
        rotateMatrix.postScale(mDrawPreviewFitScale, mDrawPreviewFitScale);
        mPreviewFitBitmap = Bitmap.createBitmap(mPreviewBitmap, 0, 0,
                mPreviewBitmap.getWidth(), mPreviewBitmap.getHeight(), rotateMatrix, true);

        mPreviewFitBitmapCanvas = new Canvas(mPreviewFitBitmap);

        Paint fitPaint = new Paint();
        fitPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        mPreviewFitBitmapPaint = fitPaint;

        Matrix fitMatrix = new Matrix();
        mPreviewFitMatrix = fitMatrix;
        int curOrientation = mCurOrientation;
        if (curOrientation == 90) {
            fitMatrix.setRotate(360 - curOrientation);
            fitMatrix.postTranslate(0.0f, mPreviewBitmap.getWidth());
        } else if (curOrientation == 270) {
            fitMatrix.setRotate(360 - curOrientation);
            fitMatrix.postTranslate(mPreviewBitmap.getHeight(), 0.0f);
        } else {
            fitMatrix.setRotate(curOrientation, mPreviewBitmap.getWidth() / 2.0f, mPreviewBitmap.getHeight() / 2.0f);
        }
        fitMatrix.postScale(mDrawPreviewFitScale, mDrawPreviewFitScale);

        detector = new PositionDetector(direction, mMaxWidth, mMaxHeight);

        if (PREVIEW_SPREAD_BOTH_SIDES) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(400L);
            mMiniPreviewImageView.startAnimation(alphaAnimation);
        } else {
            AnimationSet animationSet = new AnimationSet(true);
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            float toXValue = 0.0f;
            float toYValue = 0.0f;
            int outputRotation = mInitParam.output_rotation;
            if (outputRotation == 90 || outputRotation == 270) {
                switch (direction) {
                    case DirectionFunction.DIRECTION_LEFT:
                        toXValue = 0.45f;
                        break;
                    case DirectionFunction.DIRECTION_RIGHT:
                        toXValue = -0.45f;
                        break;
                    case DirectionFunction.DIRECTION_UP:
                        toYValue = 0.45f;
                        break;
                    case DirectionFunction.DIRECTION_DOWN:
                        toYValue = -0.45f;
                        break;
                    default:
                        break;
                }
            } else {
                switch (direction) {
                    case DirectionFunction.DIRECTION_LEFT:
                        toYValue = 0.45f;
                        break;
                    case DirectionFunction.DIRECTION_RIGHT:
                        toYValue = -0.45f;
                        break;
                    case DirectionFunction.DIRECTION_UP:
                        toXValue = -0.45f;
                        break;
                    case DirectionFunction.DIRECTION_DOWN:
                        toXValue = 0.45f;
                        break;
                    default:
                        break;
                }
            }
            TranslateAnimation translateAnimation = new TranslateAnimation(
                    Animation.RELATIVE_TO_PARENT, 0.0f, Animation.RELATIVE_TO_PARENT, toXValue,
                    Animation.RELATIVE_TO_PARENT, 0.0f, Animation.RELATIVE_TO_PARENT, toYValue);
            animationSet.setDuration(400L);
            animationSet.addAnimation(alphaAnimation);
            animationSet.addAnimation(translateAnimation);
            animationSet.setInterpolator(new AccelerateInterpolator());
            mMiniPreviewImageView.startAnimation(animationSet);
        }

        if (mAttachRunnable == null) {
            mAttachRunnable = new PreviewAttach();
            mExecutor.submit(mAttachRunnable);
        }
    }

    private void attachEnd(int resultCode) {
        initAttachQueue();
        listener.requestEnd(this, resultCode);
    }

    private void createPreviewImage(PerformanceCounter pc) {
        synchronized (PreviewImageSynchronizedObject) {
            pc.start();
            int ret = mMorphoPanoramaGP2.updatePreviewImage(mPreviewBitmap);
            pc.stop();
            pc.putLog("Camera2App", "mMorphoPanoramaGP2.updatePreviewImage");
            if (ret != 0) {
                LogFilter.e("Camera2App", "mMorphoPanoramaGP2.updatePreviewImage error ret:" + ret);
                return;
            }
            if (mPreviewFitBitmap != null) {
                mPreviewFitBitmapCanvas.drawBitmap(mPreviewBitmap, mPreviewFitMatrix, mPreviewFitBitmapPaint);
            }
        }
    }

    @Override
    public boolean hasImage() {
        return true;
    }

    @Override
    public boolean isEnableTvAnalysis() {
        return detector.isEnableTvAnalysis();
    }

    @Override
    public void notifyTvAnalyzed() {
        detector.notifyTvAnalyzed();
    }

    @Override
    public boolean onSaveImage(CaptureImage image) {
        if (!isEngineRunning()) {
            LogFilter.e("Camera2App", "PanoramaPreview.onSaveImage mMorphoPanoramaGP2 is null!!");
            image.close();
            return false;
        }
        addAttachQueue(image);
        if (mAttachRunnable == null) {
            mAttachRunnable = new PreviewAttach();
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

    // ===== DiffManager =====
    // .super Ljava/lang/Object;  accessFlags=0x2 (private, non-static inner class of PanoramaPreview)
    private class DiffManager {

        private static final int NUM = 5;

        private int add_num;
        private double ave;
        private int index;
        private final double[] pos = new double[NUM];

        public DiffManager() {
            clear();
        }

        private void calc() {
            double sum = 0.0;
            for (int i = 0; i < add_num; i++) {
                sum += pos[i];
            }
            ave = sum / add_num;
        }

        public void add(double value) {
            pos[index] = value;
            index++;
            if (index >= NUM) {
                index = 0;
            }
            if (add_num < NUM) {
                add_num++;
            }
            calc();
        }

        public void clear() {
            for (int i = 0; i < NUM; i++) {
                pos[i] = 0.0;
            }
            index = 0;
            add_num = 0;
        }

        public double getDiff() {
            return ave;
        }
    }

    // ===== UiUpdateRunnable =====
    // .super Ljava/lang/Object;  .implements Ljava/lang/Runnable;
    // accessFlags=0x2 (private, non-static inner class of PanoramaPreview)
    private class UiUpdateRunnable implements Runnable {

        private int mDetectResult;

        private UiUpdateRunnable() {
        }

        @Override
        public void run() {
            if (mTemperatureHigh) {
                return;
            }

            // mDetectResult==2 -> "偵測到晃動過快" 提示；其餘所有數值（含界外值）都對應
            // 「請依方向移動」提示，原始 smali 中 pswitch_0 與 pswitch_2 兩個分支輸出相同字串。
            String message;
            if (mDetectResult == 2) {
                message = getResources().getString(R.string.cam_strings_panorama_guide_too_fast_txt);
            } else {
                message = getResources().getString(R.string.cam_strings_panorama_guide_direction_txt);
            }

            RectF frameRect = detector.getFrameRect();
            int warningWidth = mWarningTextView.getWidth();
            int warningHeight = mWarningTextView.getHeight();
            mWarningTextView.setText(message);
            if (isEngineRunning() && warningWidth > 0 && warningHeight > 0) {
                mWarningTextView.setVisibility(View.VISIBLE);
            } else {
                mWarningTextView.setVisibility(View.INVISIBLE);
            }

            if (mCurPreviewFrame.getVisibility() != View.VISIBLE && frameRect.width() > 0.0f) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(
                        Math.round(frameRect.width()), Math.round(frameRect.height()));
                mCurPreviewFrame.setLayoutParams(layoutParams);
                mCurPreviewFrame.setVisibility(View.VISIBLE);
                mPreviewArrow.setVisibility(View.VISIBLE);
                setMiniPreviewAndArrowsVisibility(false, false);
            }

            float left = frameRect.left;
            float top = frameRect.top;
            if (PREVIEW_SPREAD_BOTH_SIDES) {
                left += detector.getPreviewCenteringMarginLeft();
                top += detector.getPreviewCenteringMarginTop();
                if (mPreviewImageView != null && mPreviewImageView.getWidth() > 0) {
                    mPreviewImageView.setTranslationX(detector.getPreviewCenteringMarginLeft());
                    mPreviewImageView.setTranslationY(detector.getPreviewCenteringMarginTop());
                }
            }

            boolean isRtl = getResources().getConfiguration().getLayoutDirection() == View.LAYOUT_DIRECTION_RTL;
            if (isRtl) {
                Point displaySize = new Point();
                getWindowManager().getDefaultDisplay().getSize(displaySize);
                left = left - displaySize.x + frameRect.width();
            }
            mCurPreviewFrame.setTranslationX(left);
            mCurPreviewFrame.setTranslationY(top);

            if (mMorphoPanoramaGP2 == null) {
                return;
            }

            switch (mArrowDir) {
                case 0:
                    if (isRtl) {
                        left -= frameRect.width();
                    } else {
                        left -= mPreviewArrow.getWidth();
                    }
                    top += (frameRect.height() - mPreviewArrow.getHeight()) / 2.0f;
                    break;
                case 1:
                    if (isRtl) {
                        left += mPreviewArrow.getWidth();
                    } else {
                        left += frameRect.width();
                    }
                    top += (frameRect.height() - mPreviewArrow.getHeight()) / 2.0f;
                    break;
                case 2:
                    left += (frameRect.width() - mPreviewArrow.getWidth()) / 2.0f;
                    top -= mPreviewArrow.getHeight();
                    break;
                case 3:
                    left += (frameRect.width() - mPreviewArrow.getWidth()) / 2.0f;
                    top += frameRect.height();
                    break;
                default:
                    break;
            }
            mPreviewArrow.setTranslationX(left);
            mPreviewArrow.setTranslationY(top);
        }

        public void setDetectResult(int detectResult) {
            mDetectResult = detectResult;
        }
    }

    // ===== PreviewAttach =====
    // .super Lcom/sonyericsson/android/camera3d/base/AttachRunnable;
    // accessFlags=0x2 (private, non-static inner class of PanoramaPreview)
    private class PreviewAttach extends AttachRunnable {

        private boolean mIsAttachEnd;
        private int mResultCode;
        private final PerformanceCounter pc;
        private final PostAttachRunnable postAttachRunnable;

        public PreviewAttach() {
            mIsAttachEnd = false;
            postAttachRunnable = new PostAttachRunnable();
            pc = PerformanceCounter.newInstance(false);
        }

        private boolean attach(double[] pos) {
            setSensorFusionValue();
            pc.start();
            int ret = mMorphoPanoramaGP2.attach(byteBuffer[0], byteBuffer[1], byteBuffer[2],
                    rowStride[0], rowStride[1], rowStride[2],
                    pixelStride[0], pixelStride[1], pixelStride[2], pos);
            pc.stop();
            pc.putLog("Camera2App", "mMorphoPanoramaGP2.attach");
            if (ret != 0) {
                LogFilter.e("Camera2App", "mMorphoPanoramaGP2.attach error ret:" + ret);
                return false;
            }
            return true;
        }

        private void checkAttachEnd(double[] pos) {
            int detectResult = detector.detect(pos[0], pos[1]);
            if (detectResult == 1 || detectResult == -1 || detectResult == -2) {
                mResultCode = 0;
                mIsAttachEnd = true;
            }
            uiUpdateRunnable.setDetectResult(detectResult);
            runOnUiThread(uiUpdateRunnable);
            if (mIsAttachEnd) {
                return;
            }
            if (mDirectionFunction.isImageComplete()) {
                mResultCode = 0;
                mIsAttachEnd = true;
            }
        }

        @Override
        public void run() {
            double[] pos = new double[2];
            CaptureImage image = null;

            if (mInternalSettings.ui_control_mode == 2) {
                while (true) {
                    try {
                        image = (CaptureImage) mAttachImageQueue.take();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        mResultCode = -1;
                        break;
                    }
                    if (image == sAttachExit) {
                        break;
                    }
                    setImage(image);

                    boolean attachOk;
                    synchronized (CameraConstants.CameraSynchronizedObject) {
                        synchronized (CameraConstants.EngineSynchronizedObject) {
                            if (!isEngineRunning() || mEngineEnding) {
                                LogFilter.d("Camera2App", "attach thread exit. (engine is stop.)");
                                closeSrc();
                                return;
                            }
                            attachOk = attach(pos);
                        }
                        closeSrc();
                        if (!attachOk) {
                            LogFilter.e("Camera2App", "PreviewAttach.run() attach error.");
                            mResultCode = -1;
                            break;
                        }
                        if (preview_skip_count <= 0) {
                            createPreviewImage(pc);
                            preview_skip_count = 0;
                        } else {
                            preview_skip_count--;
                        }
                        checkAttachEnd(pos);
                    }
                    if (mIsAttachEnd) {
                        break;
                    }
                    runOnUiThread(postAttachRunnable);
                    try {
                        Thread.sleep(SLEEP_MILLISEC, SLEEP_NANOSEC);
                    } catch (InterruptedException e) {
                        // 原始碼在此吞掉例外（不設定 mResultCode、不中斷迴圈），僅繼續下一輪。
                    }
                }
            } else {
                while (true) {
                    try {
                        image = (CaptureImage) mAttachImageQueue.take();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        mResultCode = -1;
                        break;
                    }
                    if (image == sAttachExit) {
                        break;
                    }
                    setImage(image);

                    boolean attachOk;
                    synchronized (CameraConstants.EngineSynchronizedObject) {
                        if (!isEngineRunning() || mEngineEnding) {
                            LogFilter.d("Camera2App", "attach thread exit. (engine is stop.)");
                            closeSrc();
                            return;
                        }
                        attachOk = attach(pos);
                    }
                    closeSrc();
                    if (!attachOk) {
                        LogFilter.e("Camera2App", "PreviewAttach.run() attach error.");
                        mResultCode = -1;
                        break;
                    }
                    if (preview_skip_count <= 0) {
                        createPreviewImage(pc);
                        preview_skip_count = 0;
                    } else {
                        preview_skip_count--;
                    }
                    checkAttachEnd(pos);
                    if (mIsAttachEnd) {
                        break;
                    }
                    runOnUiThread(postAttachRunnable);
                }
            }

            if (mAbort) {
                LogFilter.d("Camera2App", "attach thread exit. (abort)");
                onAttachEnd();
                new SaveAsyncTask(new SavePictureState(false)).execute();
                return;
            }

            if (image == sAttachExit) {
                LogFilter.d("Camera2App", "attach thread exit. (request exit)");
                return;
            }

            final int resultCode = mResultCode;
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    attachEnd(resultCode);
                }
            });
            LogFilter.d("Camera2App", "attach thread exit.");
        }

        // ===== PostAttachRunnable =====
        // .super Ljava/lang/Object;  .implements Ljava/lang/Runnable;
        // accessFlags=0x2 (private, non-static inner class of PreviewAttach)
        private class PostAttachRunnable implements Runnable {

            private PostAttachRunnable() {
            }

            @Override
            public void run() {
                if (mInternalSettings.ui_control_mode == 2) {
                    synchronized (CameraConstants.CameraSynchronizedObject) {
                        synchronized (PreviewImageSynchronizedObject) {
                            if (mPreviewBitmap == null) {
                                setAttachExit();
                                return;
                            }
                            if (mPreviewFitBitmap != null) {
                                mPreviewImageView.setImageBitmap(mPreviewFitBitmap);
                            } else {
                                mPreviewImageView.setImageBitmap(mPreviewBitmap);
                            }
                        }
                    }
                    return;
                }

                synchronized (PreviewImageSynchronizedObject) {
                    if (mPreviewBitmap == null) {
                        setAttachExit();
                        return;
                    }
                    if (mPreviewFitBitmap != null) {
                        mPreviewImageView.setImageBitmap(mPreviewFitBitmap);
                    } else {
                        mPreviewImageView.setImageBitmap(mPreviewBitmap);
                    }
                }
            }
        }
    }
}
