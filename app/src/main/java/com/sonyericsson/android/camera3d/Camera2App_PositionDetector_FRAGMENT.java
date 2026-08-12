// ============================================================================
// STAGING FRAGMENT — not a standalone compilable file.
// Source of truth: App_smali/CameraPanorama/smali/com/sonyericsson/android/camera3d/
//                  Camera2App$PanoramaPreview$PositionDetector.smali  (4418 lines)
//
// Target location after merge: nested inside
//   com.sonyericsson.android.camera3d.Camera2App.PanoramaPreview.PositionDetector
// PositionDetector is a genuine (non-static) inner class of PanoramaPreview,
// which is itself a genuine (non-static) inner class of Camera2App (both smali
// InnerClass accessFlags == 0x2, i.e. no ACC_STATIC). Because of that, this
// fragment intentionally has NO explicit outer-instance field / constructor
// parameter (the smali synthetic `this$1` field and the constructor's leading
// `Camera2App$PanoramaPreview` parameter are compiler-generated and are
// dropped here in favor of normal Java implicit-outer-class access).
//
// Fully-qualified types referenced by this fragment (import these at merge time):
//   android.graphics.Bitmap
//   android.graphics.Rect
//   android.graphics.RectF
//   android.widget.FrameLayout
//   java.util.Locale
//   com.sonyericsson.android.camera3d.utils.LogFilter
//   com.sonyericsson.android.camera3d.MorphoPanoramaGP2.InitParam   (via outer mInitParam field, not declared directly here)
//   com.sonyericsson.android.camera3d.InternalSettings              (via outer mInternalSettings field, not declared directly here)
//   com.sonyericsson.android.camera3d.CameraConstants                (CameraSynchronizedObject / EngineSynchronizedObject, same package)
//
// Outer-instance members this class reads/writes (implicitly, no qualification):
//   From Camera2App (two levels up):
//     mInitParam (MorphoPanoramaGP2.InitParam)  - smali access$4400
//     mCameraOrientation (int)                  - smali access$9000
//     mIsFrontCamera (boolean)                  - smali access$9200
//     mInternalSettings (InternalSettings)      - smali access$2200
//     mPreviewBitmap (Bitmap)                   - smali access$10700
//     mPreviewFrame (FrameLayout)               - smali access$11700
//     PREVIEW_SPREAD_BOTH_SIDES (static boolean)- smali access$11600
//   From Camera2App.PanoramaPreview (one level up):
//     mPreviewWidth (int)                       - smali access$11800
//     mPreviewHeight (int)                      - smali access$11900
//   Sibling inner class instantiated:
//     Camera2App.PanoramaPreview.DiffManager (constructed with implicit outer,
//     matches smali `new DiffManager(this$1)`)
// ============================================================================

/**
 * 依方向（水平／垂直）追蹤全景預覽的目前位置與峰值,判斷使用者是否已經平移
 * 足夠距離可拍下一張、是否停滯（idle）、是否反向平移、是否移動過快/過慢,
 * 並計算取景框（frame_rect）與置中邊界（centering margin）。
 */
private class PositionDetector {

    // ---- static fields (exact smali values) ----
    private static final int CENTERING_MARGIN_DEFAULT = -0x1869f;
    public static final int COMPLETED = 1;
    public static final int ERROR_IDLE = -1;
    public static final int ERROR_REVERSE = -2;
    private static final int IDLE_THRES_RATIO = 2;
    private static final long IDLE_TIME = 0xb2d05e00L; // 3,000,000,000 ns = 3 秒
    public static final int OK = 0;
    private static final int REVERSE_THRES_RATIO = 1;
    private static final long REVERSE_TIME = 0xbebc200L; // 200,000,000 ns = 0.2 秒
    private static final int SPEED_CHECK_CONTINUOUSLY_TIMES = 5;
    private static final int SPEED_CHECK_IGNORE_TIMES = 15;
    private static final int SPEED_CHECK_MODE = 1;
    private static final int SPEED_CHECK_MODE_AVERAGE = 1;
    private static final int SPEED_CHECK_MODE_CONTINUOUSLY = 0;
    private static final double TOO_FAST_THRES_RATIO = 0.8;
    private static final double TOO_SLOW_THRES_RATIO = 0.1;
    private static final double TV_ANALYSIS_THRES_RATIO = 0.2;
    public static final int WARNING_TOO_FAST = 2;
    public static final int WARNING_TOO_SLOW = 3;

    // ---- instance fields (exact smali names/types/modifiers) ----
    private double base_x;
    private double base_y;
    private int centering_margin_left;
    private int centering_margin_top;
    private long count;
    private volatile double cur_x;
    private volatile double cur_y;
    private final int direction;
    private final RectF frame_rect;
    private RectF idle_rect;
    private long idle_start_time;
    private double idle_thres;
    private final DiffManager mDiffManager;
    private final int output_height;
    private final int output_width;
    private double peak;
    private boolean pre_is_reverse;
    private double prev_x;
    private double prev_y;
    private Rect preview_rect;
    private boolean reset_idle_timer;
    private long reverse_start_time;
    private double reverse_thres;
    private double reverse_thres2;
    private int too_fast_count;
    private double too_fast_thres;
    private int too_slow_count;
    private double too_slow_thres;
    private final double tv_analysis_thres;
    private volatile double tv_analyzed_pos;

    /**
     * @param direction     移動主軸：0/1 為水平（X 軸相反），2/3 為垂直（Y 軸相反）
     * @param output_width  輸出全景畫布寬度
     * @param output_height 輸出全景畫布高度
     */
    PositionDetector(int direction, int output_width, int output_height) {
        this.idle_rect = null;
        this.frame_rect = new RectF();
        this.mDiffManager = new DiffManager();
        this.preview_rect = null;
        this.count = 0L;
        this.direction = direction;
        this.output_width = output_width;
        this.output_height = output_height;
        this.reset_idle_timer = true;
        this.pre_is_reverse = false;
        this.too_fast_count = 0;
        this.too_slow_count = 0;
        this.prev_y = 0.0;
        this.prev_x = 0.0;
        this.cur_y = 0.0;
        this.cur_x = 0.0;
        this.centering_margin_top = CENTERING_MARGIN_DEFAULT;
        this.centering_margin_left = CENTERING_MARGIN_DEFAULT;

        double tvAnalysisThres;
        switch (direction) {
            case 0: {
                int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                this.peak = (rot == 90 || rot == 180) ? (double) output_width : 0.0;
                float ow = (float) output_width;
                this.reverse_thres = (double) (0.01f * ow);
                this.reverse_thres2 = (double) (0.7f * ow);
                this.idle_thres = (double) (ow * 0.02f);
                double dow = (double) output_width;
                this.too_slow_thres = 0.001 * dow;
                this.too_fast_thres = 0.008 * dow;
                tvAnalysisThres = dow * 0.002;
                break;
            }
            case 1: {
                int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                this.peak = (rot == 90 || rot == 180) ? 0.0 : (double) output_width;
                float ow = (float) output_width;
                this.reverse_thres = (double) (0.01f * ow);
                this.reverse_thres2 = (double) (0.7f * ow);
                this.idle_thres = (double) (ow * 0.02f);
                double dow = (double) output_width;
                this.too_slow_thres = 0.001 * dow;
                this.too_fast_thres = 0.008 * dow;
                tvAnalysisThres = dow * 0.002;
                break;
            }
            case 2: {
                int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                this.peak = (rot == 90 || rot == 180) ? (double) output_height : 0.0;
                float oh = (float) output_height;
                this.reverse_thres = (double) (0.01f * oh);
                this.reverse_thres2 = (double) (0.7f * oh);
                this.idle_thres = (double) (oh * 0.02f);
                double doh = (double) output_height;
                this.too_slow_thres = 0.001 * doh;
                this.too_fast_thres = 0.008 * doh;
                tvAnalysisThres = doh * 0.002;
                break;
            }
            case 3: {
                int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                this.peak = (rot == 90 || rot == 180) ? 0.0 : (double) output_height;
                float oh = (float) output_height;
                this.reverse_thres = (double) (0.01f * oh);
                this.reverse_thres2 = (double) (0.7f * oh);
                this.idle_thres = (double) (oh * 0.02f);
                double doh = (double) output_height;
                this.too_slow_thres = 0.001 * doh;
                this.too_fast_thres = 0.008 * doh;
                tvAnalysisThres = doh * 0.002;
                break;
            }
            default:
                // 原始 smali 對非 0~3 的 direction 直接跳過整個 switch,
                // peak/reverse_thres/... 維持預設值 0.0,tv_analysis_thres 也是 0.0。
                tvAnalysisThres = 0.0;
                break;
        }
        this.tv_analysis_thres = tvAnalysisThres;
        this.tv_analyzed_pos = this.peak;
    }

    /**
     * 依過去 {@link #SPEED_CHECK_IGNORE_TIMES} 次之後的平均差值,判斷是否太快/太慢。
     */
    private int checkSpeed() {
        double diff = (direction == 2 || direction == 3) ? (cur_y - prev_y) : (cur_x - prev_x);
        diff = Math.abs(diff);
        mDiffManager.add(diff);

        int result = 0;
        if (count > SPEED_CHECK_IGNORE_TIMES) {
            double avg = mDiffManager.getDiff();
            if (avg < too_slow_thres) {
                result = WARNING_TOO_SLOW;
            } else {
                double avg2 = mDiffManager.getDiff();
                if (avg2 > too_fast_thres) {
                    result = WARNING_TOO_FAST;
                }
            }
        }
        // 註: too_slow_count / too_fast_count 在整支程式中從未被遞增,永遠為 0,
        // 故以下重置屬於死碼(SPEED_CHECK_MODE_CONTINUOUSLY 殘留邏輯),但依原始
        // smali 行為原封不動保留,避免日後被誤判為多餘而刪除。
        if (too_slow_count > 0) {
            too_slow_count = 0;
        }
        if (too_fast_count > 0) {
            too_fast_count = 0;
        }
        return result;
    }

    /**
     * 判斷目前位置是否已達到（依相機旋轉角度而定的）完成門檻。
     */
    private boolean isComplete() {
        double cur;
        int size;
        int half;
        if (direction == 2 || direction == 3) {
            cur = cur_y;
            size = output_height;
            half = mPreviewHeight / 2;
        } else {
            cur = cur_x;
            size = output_width;
            half = mPreviewWidth / 2;
        }

        int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
        boolean useMaxCheck = (direction == 1 || direction == 3)
                ? (rot == 90 || rot == 180)
                : (rot == 0 || rot == 270);

        if (useMaxCheck) {
            int max = size - half;
            boolean result = cur > (double) max;
            if (result) {
                // 註: 原始 smali 這裡記錄的 "max=%d" 實際印出的是 size(輸出總尺寸),
                // 並非真正用來比較的 max(=size-half)。這是原始程式既有的行為/筆誤,保留不修正。
                LogFilter.d("Camera2App", String.format(Locale.US,
                        "isComplete cur=%f max=%d half_size=%d", cur, size, half));
            }
            return result;
        } else {
            boolean result = cur < (double) half;
            if (result) {
                LogFilter.d("Camera2App", String.format(Locale.US,
                        "isComplete cur=%f half_size=%d", cur, half));
            }
            return result;
        }
    }

    /**
     * 判斷目前是否處於停滯狀態：位置維持在一個以 idle_thres 為邊長的方框內超過 IDLE_TIME。
     */
    private boolean isIdle() {
        long now = System.nanoTime();
        if (reset_idle_timer) {
            reset_idle_timer = false;
            idle_start_time = now;
        }
        if (idle_rect == null) {
            double half = idle_thres / 2.0;
            idle_rect = new RectF(
                    (float) (cur_x - half),
                    (float) (cur_y - half),
                    (float) (cur_x + half),
                    (float) (cur_y + half));
        }
        if (now - idle_start_time > IDLE_TIME) {
            return true;
        }
        boolean contains = idle_rect.contains((float) cur_x, (float) cur_y);
        if (!contains) {
            reset_idle_timer = true;
            idle_rect = null;
        }
        return false;
    }

    /**
     * 判斷是否偵測到使用者反向平移（含防彈跳計時：需持續超過 REVERSE_TIME 才視為確認反向）。
     */
    private boolean isReverse() {
        double cur;
        double prev;
        int size;
        double crossBase;
        double crossCur;
        if (direction == 2 || direction == 3) {
            cur = cur_y;
            prev = prev_y;
            size = output_height;
            crossBase = base_x;
            crossCur = cur_x;
        } else {
            cur = cur_x;
            prev = prev_x;
            size = output_width;
            crossBase = base_y;
            crossCur = cur_y;
        }

        // 若垂直於主軸方向的偏移超過該軸的基準值,直接視為反向。
        if (Math.abs(crossBase - crossCur) > crossBase) {
            return true;
        }

        int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
        boolean notSpecialAngle = (direction == 1 || direction == 3)
                ? !(rot == 90 || rot == 180)
                : !(rot == 0 || rot == 270);

        boolean trendingReverse;
        if (notSpecialAngle) {
            double diff = prev - cur;
            if (diff > reverse_thres2) {
                return true;
            }
            if (cur < peak) {
                peak = cur;
            }
            if (cur <= (double) size) {
                double diff2 = cur - peak;
                trendingReverse = diff2 > reverse_thres;
            } else {
                trendingReverse = true;
            }
        } else {
            double diff = cur - prev;
            if (diff > reverse_thres2) {
                return true;
            }
            if (cur > peak) {
                peak = cur;
            }
            if (cur < 0.0) {
                trendingReverse = true;
            } else {
                double diff2 = peak - cur;
                trendingReverse = diff2 > reverse_thres;
            }
        }

        long now = System.nanoTime();
        if (trendingReverse) {
            int half = (direction == 2 || direction == 3) ? (mPreviewHeight / 2) : (mPreviewWidth / 2);
            // 註: 原始 smali 依 direction==1/3 與其餘 direction 分成兩條完全相同的計算分支,
            // 此處合併為一,行為完全一致。
            if (notSpecialAngle) {
                if (cur > (double) (size + half)) {
                    return true;
                }
            } else {
                if (cur < (double) (-half)) {
                    return true;
                }
            }

            if (pre_is_reverse) {
                if (now - reverse_start_time > REVERSE_TIME) {
                    return true;
                }
            } else {
                reverse_start_time = now;
            }
        }

        pre_is_reverse = trendingReverse;
        return false;
    }

    /**
     * 依相機輸出旋轉角度（0/90/180/270）、前後鏡頭、平移方向,將目前位置換算到預覽座標系,
     * 更新 frame_rect(取景框),並在啟用 PREVIEW_SPREAD_BOTH_SIDES 時同步更新置中邊界。
     *
     * 註: smali 原始碼中大量出現形如 "X * 0.0f / 2.0f" 及 "Y * 1.0f" 的浮點運算,
     * 這些倍率暫存器（v9=0.0f、v6=1.0f）在本方法整個執行期間從未被重新賦值成其他值
     * （已逐行核對確認）,因此「乘以 0」項恆為 0、「乘以 1」項恆為原值,以下逐一省略這些
     * 恆等於 0 或恆等於原值的死碼項,數值結果與原始 smali 逐位元相同。
     */
    private boolean updateFrame() {
        if (mPreviewBitmap == null) {
            return true;
        }

        if (preview_rect == null) {
            preview_rect = new Rect();
            mPreviewFrame.getGlobalVisibleRect(preview_rect);
            if (preview_rect.width() <= 0) {
                preview_rect = null;
                return true;
            }
        }
        if (preview_rect.width() == preview_rect.height()) {
            return false;
        }

        int pLeft = preview_rect.left;
        int pTop = preview_rect.top;

        float mapX;
        float mapY;
        float halfX;
        float halfY;

        if (mInitParam.output_rotation == 0 || mInitParam.output_rotation == 180) {
            // ================= Branch Y: output_rotation == 0 or 180 =================
            boolean flag2;
            if (mIsFrontCamera) {
                int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                flag2 = (rot == 90 || rot == 270);
            } else {
                int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                flag2 = (rot == 270);
            }

            if (direction == 2 || direction == 3) {
                // ---- Y, direction 2/3 ----
                float hFlavor;
                float wFlavor;
                if (flag2) {
                    hFlavor = (float) output_height - (float) cur_y;
                    wFlavor = (float) cur_x - ((float) (output_width - mInitParam.input_width)) / 2.0f;
                } else {
                    hFlavor = (float) cur_y;
                    wFlavor = (float) output_width - (float) cur_x;
                }
                float ratio = output_width / (float) mInitParam.input_width;
                if (Math.abs(output_width / 2.0f - ratio * wFlavor) <= 0f) {
                    wFlavor = mInitParam.input_width / 2.0f;
                }

                float scale = preview_rect.width() / (float) output_height;
                float extentForW = (mInitParam.input_height / 2.0f) * scale; // -> halfX
                float extentForH = preview_rect.height() / 2.0f;             // -> halfY
                hFlavor *= scale;
                wFlavor *= scale;

                if (PREVIEW_SPREAD_BOTH_SIDES) {
                    double scaleD = (double) scale;
                    double halfInputHeightD = (double) ((float) mInitParam.input_height / 2.0f);
                    int margin;
                    if (direction == 2) {
                        margin = flag2
                                ? (int) Math.round(((peak - halfInputHeightD) * scaleD) / 2.0)
                                : (int) Math.round((((double) output_height - (peak + halfInputHeightD)) * scaleD) / 2.0);
                        if (margin < 0) {
                            margin = 0;
                        }
                    } else { // direction == 3
                        margin = flag2
                                ? -(int) Math.round((((double) output_height - (peak + halfInputHeightD)) * scaleD) / 2.0)
                                : -(int) Math.round(((peak - halfInputHeightD) * scaleD) / 2.0);
                        if (margin > 0) {
                            margin = 0;
                        }
                    }
                    centering_margin_left = margin;
                    centering_margin_top = margin;
                }

                // 註: 此旋轉分支(rotation 0/180)的原始 smali 在收尾時將
                // hFlavor/wFlavor 對調寫回最終的 mapX/mapY(而非直接對應),
                // 已逐行核對確認、非誤植,予以保留。
                mapX = hFlavor;
                mapY = wFlavor;
                halfX = extentForW;
                halfY = extentForH;
            } else {
                // ---- Y, direction 0/1 ----
                float hFlavor;
                float wFlavor;
                if (flag2) {
                    hFlavor = (float) output_height - (float) cur_y
                            - ((float) (output_height - mInitParam.input_height)) / 2.0f;
                    wFlavor = (float) cur_x;
                } else {
                    hFlavor = (float) cur_y;
                    wFlavor = (float) output_width - (float) cur_x;
                }
                float ratio = output_height / (float) mInitParam.input_height;
                if (Math.abs(output_height / 2.0f - ratio * hFlavor) <= 0f) {
                    hFlavor = mInitParam.input_height / 2.0f;
                }

                float scale = preview_rect.height() / (float) output_width;
                float extentForH = (mInitParam.input_width / 2.0f) * scale; // -> halfY
                float extentForW = preview_rect.width() / 2.0f;             // -> halfX
                hFlavor *= scale;
                wFlavor *= scale;

                if (PREVIEW_SPREAD_BOTH_SIDES) {
                    double scaleD = (double) scale;
                    double halfInputWidthD = (double) ((float) mInitParam.input_width / 2.0f);
                    int margin;
                    if (direction == 1) {
                        margin = flag2
                                ? (int) Math.round((((double) output_width - (peak + halfInputWidthD)) * scaleD) / 2.0)
                                : (int) Math.round(((peak - halfInputWidthD) * scaleD) / 2.0);
                        if (margin < 0) {
                            margin = 0;
                        }
                    } else { // direction == 0
                        margin = flag2
                                ? -(int) Math.round(((peak - halfInputWidthD) * scaleD) / 2.0)
                                : -(int) Math.round((((double) output_width - (peak + halfInputWidthD)) * scaleD) / 2.0);
                        if (margin > 0) {
                            margin = 0;
                        }
                    }
                    centering_margin_top = margin;
                    centering_margin_left = margin;
                }

                mapX = hFlavor;
                mapY = wFlavor;
                halfX = extentForW;
                halfY = extentForH;
            }
        } else {
            // ================= Branch X: output_rotation == 90 or 270 (or other) =================
            boolean flag5;
            if (mIsFrontCamera) {
                int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                flag5 = (rot == 180 || rot == 0);
            } else {
                int rot = (mInitParam.output_rotation + mCameraOrientation) % 360;
                flag5 = (rot == 180);
            }

            if (direction == 2 || direction == 3) {
                // ---- X, direction 2/3 ----
                if (flag5) {
                    mapX = (float) cur_x - ((float) (output_width - mInitParam.input_height)) / 2.0f;
                    mapY = (float) cur_y;
                } else {
                    mapX = (float) output_width - (float) cur_x;
                    mapY = (float) output_height - (float) cur_y;
                }
                float ratio = output_width / (float) mInitParam.input_height;
                if (Math.abs(output_width / 2.0f - ratio * mapX) <= 0f) {
                    mapX = mInitParam.input_height / 2.0f;
                }

                float scale = preview_rect.height() / (float) output_height;
                halfX = preview_rect.width() / 2.0f;
                halfY = (mInitParam.input_width / 2.0f) * scale;
                mapX *= scale;
                mapY *= scale;

                if (PREVIEW_SPREAD_BOTH_SIDES) {
                    double scaleD = (double) scale;
                    double halfInputWidthD = (double) ((float) mInitParam.input_width / 2.0f);
                    int margin;
                    if (direction == 2) {
                        margin = flag5
                                ? -(int) Math.round(((peak - halfInputWidthD) * scaleD) / 2.0)
                                : -(int) Math.round((((double) output_height - (peak + halfInputWidthD)) * scaleD) / 2.0);
                        if (margin > 0) {
                            margin = 0;
                        }
                    } else { // direction == 3
                        margin = flag5
                                ? (int) Math.round((((double) output_height - (peak + halfInputWidthD)) * scaleD) / 2.0)
                                : (int) Math.round(((peak - halfInputWidthD) * scaleD) / 2.0);
                        if (margin < 0) {
                            margin = 0;
                        }
                    }
                    centering_margin_top = margin;
                    centering_margin_left = margin;
                }
            } else {
                // ---- X, direction 0/1 ----
                if (flag5) {
                    mapX = (float) cur_x;
                    mapY = (float) cur_y - ((float) (output_height - mInitParam.input_width)) / 2.0f;
                } else {
                    mapX = (float) output_width - (float) cur_x;
                    mapY = (float) output_height - (float) cur_y;
                }
                float ratio = output_height / (float) mInitParam.input_width;
                if (Math.abs(output_height / 2.0f - ratio * mapY) <= 0f) {
                    mapY = mInitParam.input_width / 2.0f;
                }

                float scale = preview_rect.width() / (float) output_width;
                halfX = (mInitParam.input_height / 2.0f) * scale;
                halfY = preview_rect.height() / 2.0f;
                mapX *= scale;
                mapY *= scale;

                if (PREVIEW_SPREAD_BOTH_SIDES) {
                    double scaleD = (double) scale;
                    double halfInputHeightD = (double) ((float) mInitParam.input_height / 2.0f);
                    int margin;
                    if (direction == 0) {
                        margin = flag5
                                ? -(int) Math.round(((peak - halfInputHeightD) * scaleD) / 2.0)
                                : -(int) Math.round((((double) output_width - (peak + halfInputHeightD)) * scaleD) / 2.0);
                        if (margin > 0) {
                            margin = 0;
                        }
                    } else { // direction == 1
                        margin = flag5
                                ? (int) Math.round((((double) output_width - (peak + halfInputHeightD)) * scaleD) / 2.0)
                                : (int) Math.round(((peak - halfInputHeightD) * scaleD) / 2.0);
                        if (margin < 0) {
                            margin = 0;
                        }
                    }
                    centering_margin_left = margin;
                    centering_margin_top = margin;
                }
            }
        }

        float left = (float) pLeft + mapX - halfX;
        float top = (float) pTop + mapY - halfY;
        float right = (float) pLeft + mapX + halfX;
        float bottom = (float) pTop + mapY + halfY;
        frame_rect.set(left, top, right, bottom);
        return true;
    }

    /**
     * 以新的 sensor 位置更新內部狀態,並回傳偵測結果：
     * {@link #COMPLETED}、{@link #ERROR_REVERSE}、{@link #ERROR_IDLE}、
     * {@link #OK}、{@link #WARNING_TOO_FAST}、{@link #WARNING_TOO_SLOW} 之一。
     */
    public int detect(double x, double y) {
        count++;

        if (cur_x == 0.0 && prev_x == 0.0) {
            base_x = x;
            prev_x = x;
            cur_x = x;
        } else {
            prev_x = cur_x;
            cur_x = x;
        }

        if (cur_y == 0.0 && prev_y == 0.0) {
            base_y = y;
            prev_y = y;
            cur_y = y;
        } else {
            prev_y = cur_y;
            cur_y = y;
        }

        if (isReverse()) {
            return ERROR_REVERSE;
        }
        if (isComplete()) {
            return COMPLETED;
        }
        if (isIdle()) {
            return ERROR_IDLE;
        }
        int speed = checkSpeed();
        if (!updateFrame()) {
            return ERROR_REVERSE;
        }
        return speed;
    }

    public RectF getFrameRect() {
        return frame_rect;
    }

    public int getPreviewCenteringMarginLeft() {
        return centering_margin_left;
    }

    public int getPreviewCenteringMarginTop() {
        return centering_margin_top;
    }

    public boolean isEnableTvAnalysis() {
        int mode = mInternalSettings.ui_control_mode;
        if (mode == 1) {
            double cur = (direction == 2 || direction == 3) ? cur_y : cur_x;
            return Math.abs(cur - tv_analyzed_pos) > tv_analysis_thres;
        } else if (mode == 2) {
            synchronized (CameraConstants.CameraSynchronizedObject) {
                double cur = (direction == 2 || direction == 3) ? cur_y : cur_x;
                return Math.abs(cur - tv_analyzed_pos) > tv_analysis_thres;
            }
        } else {
            synchronized (CameraConstants.EngineSynchronizedObject) {
                double cur = (direction == 2 || direction == 3) ? cur_y : cur_x;
                return Math.abs(cur - tv_analyzed_pos) > tv_analysis_thres;
            }
        }
    }

    public void notifyTvAnalyzed() {
        tv_analyzed_pos = (direction == 2 || direction == 3) ? cur_y : cur_x;
    }
}
