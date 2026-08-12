package com.sonyericsson.android.camera3d;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Range;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.TextView;

import com.sonyericsson.android.camera3d.utils.LogFilter;

import java.util.ArrayList;
import java.util.Locale;

public class Camera2ParamsFragment extends Fragment {
    public interface ICamera2ParamsFragmentEvent {
        void onParamChanged();
    }

    private static class LocalValues {
        public int sensorSensitivity;
        public long exposureTime;

        private LocalValues() {
            sensorSensitivity = 0;
            exposureTime = 0L;
        }
    }

    private static class SaveValues {
        public int aec;
        public boolean auto;
        public float fps;
        public int fpsUpper;
        public int iso;
        public int shutterSpeed;
        public boolean tv;

        public SaveValues() {
            auto = true;
            tv = false;
            // 與 ISO 表一致，取表尾往前第 6 筆作為預設快門速度
            shutterSpeed = SHUTTER_SPEED_TABLE[SHUTTER_SPEED_TABLE.length - 6];
            iso = ISO_VALUE_TABLE[1];
            fps = 24.0f;
            fpsUpper = 24;
            aec = -1;
        }
    }

    public static final int AUTO = 0;
    private static final FpsParam[] FPS_PARAM_TABLE;
    private static final int[] ISO_VALUE_TABLE;
    private static final String KEY_AEC = "key_aec";
    private static final String KEY_AUTO = "key_auto";
    private static final String KEY_FPS = "key_fps";
    private static final String KEY_FPS_UPPER = "key_fps_upper";
    private static final String KEY_ISO = "key_iso";
    private static final String KEY_SHUTTER_SPEED = "key_shutter_speed";
    private static final String KEY_TV = "key_tv";
    private static final String LOG_TAG = "Camera2App";
    public static final int MANUAL = 2;
    private static final Long ONE_SECONDS_IN_NANOSECONDS;
    private static final int[] SHUTTER_SPEED_TABLE;
    public static final int TV = 1;

    static {
        SHUTTER_SPEED_TABLE = new int[]{2000, 1000, 500, 250, 120, 100, 60, 50, 30, 25};
        ONE_SECONDS_IN_NANOSECONDS = Long.valueOf(1000000000L);
        ISO_VALUE_TABLE = new int[]{50, 100, 150, 200, 250, 300, 350, 400, 450, 500, 600, 700, 800, 1000, 1600};
        FPS_PARAM_TABLE = new FpsParam[]{
                new FpsParam(3.0f, Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue() / 3L)),
                new FpsParam(15.0f, Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue() / 15L)),
                new FpsParam(23.98f, Long.valueOf(41708333L)),
                new FpsParam(24.0f, Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue() / 24L)),
                new FpsParam(29.97f, Long.valueOf(33366666L)),
                new FpsParam(30.0f, Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue() / 30L)),
                new FpsParam(50.0f, Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue() / 50L)),
                new FpsParam(59.94f, Long.valueOf(16683333L)),
                new FpsParam(60.0f, Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue() / 60L)),
        };
    }

    private SeekBar mAecSeekBar;
    private int mAecStepDenominator;
    private int mAecStepNumerator;
    private final ArrayList<Integer> mAecValues;
    private final ArrayList<FpsParam> mAutoModeFpsParams;
    private SeekBar mAutoModeFpsSeekBar;
    private RadioButton mAutoRadio;
    private ICamera2ParamsFragmentEvent mEventHandler;
    private final ArrayList<FpsParam> mFpsParams;
    private SeekBar mFpsSeekBar;
    private final SeekBar.OnSeekBarChangeListener mFpsSeekBarChangeListener;
    private final ArrayList<Integer> mISOValues;
    private SeekBar mIsoSeekBar;
    private RadioButton mManualRadio;
    private final RadioGroup.OnCheckedChangeListener mModeRadioChangeListener;
    private RadioGroup mModeRadioGroup;
    private int mSelectedMode;
    private SaveValues mSettingFileValues;
    private final LocalValues mSettingLocalValues;
    private final ArrayList<Integer> mShutterSpeed;
    private SeekBar mSsSeekBar;
    private RadioButton mTvRadio;

    public Camera2ParamsFragment() {
        mShutterSpeed = new ArrayList<>();
        mISOValues = new ArrayList<>();
        mAutoModeFpsParams = new ArrayList<>();
        mFpsParams = new ArrayList<>();
        mAecValues = new ArrayList<>();
        mAecStepNumerator = 1;
        mAecStepDenominator = 1;
        mSettingFileValues = new SaveValues();
        mSettingLocalValues = new LocalValues();
        mEventHandler = new ICamera2ParamsFragmentEvent() {
            @Override
            public void onParamChanged() {
            }
        };
        mFpsSeekBarChangeListener = new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                if (seekBar == mFpsSeekBar) {
                    onFpsProgressChanged(mFpsSeekBar, progress, mFpsParams);
                } else if (seekBar == mAutoModeFpsSeekBar) {
                    onFpsProgressChanged(mAutoModeFpsSeekBar, progress, mAutoModeFpsParams);
                }
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
                mEventHandler.onParamChanged();
            }
        };
        mModeRadioChangeListener = new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup group, int checkedId) {
                View rootView = group.getRootView();
                if (auto()) {
                    mIsoSeekBar.setEnabled(false);
                    rootView.findViewById(R.id.iso_value_text_view).setEnabled(false);
                    mSsSeekBar.setEnabled(false);
                    rootView.findViewById(R.id.shutter_speed_text_view).setEnabled(false);
                    mAutoModeFpsSeekBar.setEnabled(true);
                    rootView.findViewById(R.id.fps_text_view).setEnabled(true);
                    mFpsSeekBar.setVisibility(View.GONE);
                    mAutoModeFpsSeekBar.setVisibility(View.VISIBLE);
                    onFpsProgressChanged(mAutoModeFpsSeekBar, -1, mAutoModeFpsParams);
                    mAecSeekBar.setEnabled(true);
                    if (mSettingFileValues.aec >= 0) {
                        mAecSeekBar.setProgress(mSettingFileValues.aec);
                    }
                    rootView.findViewById(R.id.ae_compensation_value_text_view).setEnabled(true);
                    mEventHandler.onParamChanged();
                    mSelectedMode = AUTO;
                    return;
                }
                if (tv()) {
                    mIsoSeekBar.setEnabled(false);
                    rootView.findViewById(R.id.iso_value_text_view).setEnabled(false);
                    mSsSeekBar.setEnabled(true);
                    rootView.findViewById(R.id.shutter_speed_text_view).setEnabled(true);
                    mFpsSeekBar.setEnabled(true);
                    rootView.findViewById(R.id.fps_text_view).setEnabled(true);
                    mAutoModeFpsSeekBar.setVisibility(View.GONE);
                    mFpsSeekBar.setVisibility(View.VISIBLE);
                    onFpsProgressChanged(mFpsSeekBar, -1, mFpsParams);
                    mAecSeekBar.setEnabled(true);
                    if (mSettingFileValues.aec >= 0) {
                        mAecSeekBar.setProgress(mSettingFileValues.aec);
                    }
                    rootView.findViewById(R.id.ae_compensation_value_text_view).setEnabled(true);
                    mEventHandler.onParamChanged();
                    mSelectedMode = TV;
                    return;
                }
                if (manual()) {
                    mIsoSeekBar.setEnabled(true);
                    rootView.findViewById(R.id.iso_value_text_view).setEnabled(true);
                    mSsSeekBar.setEnabled(true);
                    rootView.findViewById(R.id.shutter_speed_text_view).setEnabled(true);
                    mFpsSeekBar.setEnabled(true);
                    rootView.findViewById(R.id.fps_text_view).setEnabled(true);
                    mAutoModeFpsSeekBar.setVisibility(View.GONE);
                    mFpsSeekBar.setVisibility(View.VISIBLE);
                    onFpsProgressChanged(mFpsSeekBar, -1, mFpsParams);
                    int index = mAecValues.indexOf(Integer.valueOf(0));
                    mAecSeekBar.setProgress(index);
                    mAecSeekBar.setEnabled(false);
                    rootView.findViewById(R.id.ae_compensation_value_text_view).setEnabled(false);
                    mEventHandler.onParamChanged();
                    mSelectedMode = MANUAL;
                    return;
                }
                LogFilter.v(LOG_TAG, "mode radio buttons all off. (onCheckedChanged)");
            }
        };
    }

    private boolean disabledSave() {
        return mShutterSpeed.isEmpty() || mISOValues.isEmpty() || mFpsParams.isEmpty();
    }

    private void initAeCompensationSeekBar(CameraInfo cameraInfo) {
        mAecValues.clear();
        mAecStepNumerator = cameraInfo.getAeCompensationNumerator();
        mAecStepDenominator = cameraInfo.getAeCompensationDenominator();
        for (int i = -1; cameraInfo.getAeCompensationMin() <= i; i--) {
            mAecValues.add(0, Integer.valueOf(i));
        }
        mAecValues.add(Integer.valueOf(0));
        for (int i = 1; i <= cameraInfo.getAeCompensationMax(); i++) {
            mAecValues.add(Integer.valueOf(i));
        }
        int aecIndex;
        if (mSettingFileValues.aec == -1) {
            aecIndex = 0;
            for (int i = 0; i < mAecValues.size(); i++) {
                LogFilter.v(LOG_TAG, "using AE Compensation value=" + mAecValues.get(i));
                if (((Integer) mAecValues.get(i)).intValue() == 0) {
                    aecIndex = i;
                }
            }
            mSettingFileValues.aec = aecIndex;
        } else {
            aecIndex = mSettingFileValues.aec;
        }
        if (mAecValues.size() <= 0) {
            mAecStepNumerator = 1;
            mAecStepDenominator = 1;
            return;
        }
        mAecSeekBar.setMax(mAecValues.size() - 1);
        mAecSeekBar.setProgress(aecIndex);
    }

    private void initFpsSeekBar(CameraInfo cameraInfo) {
        ArrayList<Range<Integer>> targetFpsRanges = cameraInfo.getTargetFpsRanges();
        ArrayList<Integer> uppers = new ArrayList<>();
        for (Range<Integer> range : targetFpsRanges) {
            if (range.getLower().equals(range.getUpper())) {
                continue;
            }
            Integer upper = range.getUpper();
            if (!uppers.contains(upper)) {
                uppers.add(upper);
            }
        }

        mAutoModeFpsParams.clear();
        for (Integer upper : uppers) {
            mAutoModeFpsParams.add(new FpsParam((float) upper.intValue(),
                    Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue() / upper.intValue())));
        }
        if (mAutoModeFpsParams.size() <= 0) {
            mAutoModeFpsSeekBar.setMax(0);
        } else {
            mAutoModeFpsSeekBar.setMax(mAutoModeFpsParams.size() - 1);
        }
        int autoModeIndex = mAutoModeFpsParams.size() - 1;
        for (int i = mAutoModeFpsParams.size() - 1; i >= 0; i--) {
            FpsParam param = (FpsParam) mAutoModeFpsParams.get(i);
            if ((int) param.Fps == mSettingFileValues.fpsUpper) {
                autoModeIndex = i;
                break;
            }
        }
        if (autoModeIndex >= 0) {
            mAutoModeFpsSeekBar.setProgress(autoModeIndex);
        }

        mFpsParams.clear();
        for (FpsParam param : FPS_PARAM_TABLE) {
            if (cameraInfo.containsFrameDuration(param.FrameDuration)) {
                mFpsParams.add(param);
            }
        }
        if (mFpsParams.size() <= 0) {
            mFpsSeekBar.setMax(0);
        } else {
            mFpsSeekBar.setMax(mFpsParams.size() - 1);
        }
        int fpsIndex = 0;
        for (int i = 0; i < mFpsParams.size(); i++) {
            if (((FpsParam) mFpsParams.get(i)).Fps == mSettingFileValues.fps) {
                fpsIndex = i;
                break;
            }
        }
        mFpsSeekBar.setProgress(fpsIndex);
    }

    private void initIsoSeekBar(CameraInfo cameraInfo) {
        mISOValues.clear();
        int isoIndex = 0;
        for (int i = 0; i < ISO_VALUE_TABLE.length; i++) {
            int value = ISO_VALUE_TABLE[i];
            if (cameraInfo.containsSensitivity(Integer.valueOf(value))) {
                mISOValues.add(Integer.valueOf(value));
                if (value == mSettingFileValues.iso) {
                    isoIndex = mISOValues.size() - 1;
                }
            }
        }
        if (mISOValues.size() <= 0) {
            return;
        }
        mIsoSeekBar.setMax(mISOValues.size() - 1);
        mIsoSeekBar.setProgress(isoIndex);
    }

    private void initShutterSpeedSeekBar(CameraInfo cameraInfo) {
        mShutterSpeed.clear();
        int ssIndex = 0;
        for (int i = 0; i < SHUTTER_SPEED_TABLE.length; i++) {
            int value = SHUTTER_SPEED_TABLE[i];
            long exposureTime = ONE_SECONDS_IN_NANOSECONDS.longValue() / value;
            if (cameraInfo.containsExposureTime(Long.valueOf(exposureTime))) {
                mShutterSpeed.add(Integer.valueOf(value));
                if (value == mSettingFileValues.shutterSpeed) {
                    ssIndex = mShutterSpeed.size() - 1;
                }
            }
        }
        if (mShutterSpeed.size() <= 0) {
            return;
        }
        mSsSeekBar.setMax(mShutterSpeed.size() - 1);
        mSsSeekBar.setProgress(ssIndex);
    }

    private boolean manual() {
        return mManualRadio.isChecked();
    }

    private void onFpsProgressChanged(SeekBar seekBar, int progress, ArrayList<FpsParam> fpsParams) {
        if (fpsParams.size() <= 0) {
            return;
        }
        TextView textView = (TextView) seekBar.getRootView().findViewById(R.id.fps_text_view);
        if (progress < 0) {
            textView.setText(((FpsParam) fpsParams.get(seekBar.getProgress())).getFpsString());
        } else {
            textView.setText(((FpsParam) fpsParams.get(progress)).getFpsString());
        }
    }

    public boolean auto() {
        return mAutoRadio.isChecked();
    }

    public int evSteps() {
        return ((Integer) mAecValues.get(mAecSeekBar.getProgress())).intValue();
    }

    public double evValue() {
        return (double) (evSteps() * mAecStepNumerator) / mAecStepDenominator;
    }

    public Long exposureTime() {
        if (tv()) {
            return Long.valueOf(mSettingLocalValues.exposureTime);
        }
        return Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue() / shutterSpeed());
    }

    public Long exposureTimeMax() {
        return Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue()
                / ((Integer) mShutterSpeed.get(mSsSeekBar.getMax())).intValue());
    }

    public float fps() {
        if (auto()) {
            return ((FpsParam) mAutoModeFpsParams.get(mAutoModeFpsSeekBar.getProgress())).Fps;
        }
        return ((FpsParam) mFpsParams.get(mFpsSeekBar.getProgress())).Fps;
    }

    public Long frameDuration() {
        if (auto()) {
            return ((FpsParam) mAutoModeFpsParams.get(mAutoModeFpsSeekBar.getProgress())).FrameDuration;
        }
        return ((FpsParam) mFpsParams.get(mFpsSeekBar.getProgress())).FrameDuration;
    }

    public int getSelectedMode() {
        return mSelectedMode;
    }

    public void initializeUI(CameraInfo cameraInfo) {
        initAeCompensationSeekBar(cameraInfo);
        initIsoSeekBar(cameraInfo);
        initShutterSpeedSeekBar(cameraInfo);
        initFpsSeekBar(cameraInfo);
        mAutoRadio.setChecked(mSettingFileValues.auto);
        mTvRadio.setChecked(mSettingFileValues.tv);
        mManualRadio.setChecked(!(mSettingFileValues.auto || mSettingFileValues.tv));
        if (mAutoRadio.isChecked()) {
            mSelectedMode = AUTO;
        } else if (mTvRadio.isChecked()) {
            mSelectedMode = TV;
        } else {
            mSelectedMode = MANUAL;
        }
        mModeRadioChangeListener.onCheckedChanged(mModeRadioGroup, 0);
    }

    public void loadValues(SharedPreferences sharedPreferences) {
        mSettingFileValues.auto = sharedPreferences.getBoolean(KEY_AUTO, mSettingFileValues.auto);
        mSettingFileValues.tv = sharedPreferences.getBoolean(KEY_TV, mSettingFileValues.tv);
        if (!sharedPreferences.getBoolean(getString(R.string.KEY_USE_CAMERA2), true)) {
            mSettingFileValues.auto = true;
            mSettingFileValues.tv = false;
        }
        mSettingFileValues.shutterSpeed = sharedPreferences.getInt(KEY_SHUTTER_SPEED, mSettingFileValues.shutterSpeed);
        mSettingFileValues.iso = sharedPreferences.getInt(KEY_ISO, mSettingFileValues.iso);
        mSettingFileValues.fps = sharedPreferences.getFloat(KEY_FPS, mSettingFileValues.fps);
        mSettingFileValues.fpsUpper = sharedPreferences.getInt(KEY_FPS_UPPER, mSettingFileValues.fpsUpper);
        mSettingFileValues.aec = sharedPreferences.getInt(KEY_AEC, mSettingFileValues.aec);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LogFilter.i(LOG_TAG, "Camera2ParamsFragment.onCreate");
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        LogFilter.i(LOG_TAG, "Camera2ParamsFragment.onCreateView");
        final View view = inflater.inflate(R.layout.camera2_params_fragment, container);

        mAecSeekBar = (SeekBar) view.findViewById(R.id.ae_compensation_seek_bar);
        mAecSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                if (mAecValues.size() <= 0) {
                    return;
                }
                TextView textView = (TextView) view.findViewById(R.id.ae_compensation_value_text_view);
                double ev = evValue();
                if (ev == 0.0d) {
                    textView.setText(String.format(Locale.US, "%dEV", Integer.valueOf(0)));
                } else if (0.0d < ev) {
                    textView.setText(String.format(Locale.US, "+%.2fEV", Double.valueOf(ev)));
                } else {
                    textView.setText(String.format(Locale.US, "%.2fEV", Double.valueOf(ev)));
                }
                if (!manual()) {
                    mSettingFileValues.aec = progress;
                }
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
                mEventHandler.onParamChanged();
            }
        });

        mIsoSeekBar = (SeekBar) view.findViewById(R.id.iso_seek_bar);
        mIsoSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                if (mISOValues.size() <= 0) {
                    return;
                }
                TextView textView = (TextView) view.findViewById(R.id.iso_value_text_view);
                textView.setText(String.format(Locale.US, "%d", mISOValues.get(progress)));
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
                mEventHandler.onParamChanged();
            }
        });

        mSsSeekBar = (SeekBar) view.findViewById(R.id.shutter_speed_seek_bar);
        mSsSeekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                if (mShutterSpeed.size() <= 0) {
                    return;
                }
                TextView textView = (TextView) view.findViewById(R.id.shutter_speed_text_view);
                textView.setText(String.format(Locale.US, "1/%d", mShutterSpeed.get(progress)));
            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
                mEventHandler.onParamChanged();
            }
        });

        mFpsSeekBar = (SeekBar) view.findViewById(R.id.fps_seek_bar);
        mFpsSeekBar.setOnSeekBarChangeListener(mFpsSeekBarChangeListener);

        mAutoModeFpsSeekBar = (SeekBar) view.findViewById(R.id.auto_fps_seek_bar);
        mAutoModeFpsSeekBar.setOnSeekBarChangeListener(mFpsSeekBarChangeListener);

        mAutoRadio = (RadioButton) view.findViewById(R.id.camera2_auto_radio);
        mTvRadio = (RadioButton) view.findViewById(R.id.camera2_tv_radio);
        mManualRadio = (RadioButton) view.findViewById(R.id.camera2_manual_radio);
        mModeRadioGroup = (RadioGroup) view.findViewById(R.id.camera2_mode_group);
        mModeRadioGroup.setOnCheckedChangeListener(mModeRadioChangeListener);

        return view;
    }

    public void resetValues(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.remove(KEY_AUTO);
        editor.remove(KEY_TV);
        editor.remove(KEY_SHUTTER_SPEED);
        editor.remove(KEY_ISO);
        editor.remove(KEY_FPS);
        editor.remove(KEY_FPS_UPPER);
        editor.remove(KEY_AEC);
        editor.apply();
        mSettingFileValues = new SaveValues();
        loadValues(sharedPreferences);
    }

    public void saveValues(SharedPreferences sharedPreferences) {
        if (disabledSave()) {
            return;
        }
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putBoolean(KEY_AUTO, auto());
        editor.putBoolean(KEY_TV, tv());
        editor.putInt(KEY_SHUTTER_SPEED, shutterSpeed());
        editor.putInt(KEY_ISO, sensorSensitivity());
        editor.putFloat(KEY_FPS, ((FpsParam) mFpsParams.get(mFpsSeekBar.getProgress())).Fps);
        editor.putInt(KEY_FPS_UPPER, (int) ((FpsParam) mAutoModeFpsParams.get(mAutoModeFpsSeekBar.getProgress())).Fps);
        editor.putInt(KEY_AEC, mSettingFileValues.aec);
        editor.apply();
    }

    public int sensorSensitivity() {
        if (tv()) {
            return mSettingLocalValues.sensorSensitivity;
        }
        return ((Integer) mISOValues.get(mIsoSeekBar.getProgress())).intValue();
    }

    public void setAuto() {
        mAutoRadio.setChecked(true);
    }

    public void setEnabled(boolean enabled) {
        mAutoRadio.setEnabled(enabled);
        mTvRadio.setEnabled(enabled);
        mManualRadio.setEnabled(enabled);
        View view = getView();
        if (view == null) {
            return;
        }
        if (enabled) {
            mModeRadioGroup.setEnabled(false);
            if (auto()) {
                mIsoSeekBar.setEnabled(false);
                view.findViewById(R.id.iso_value_text_view).setEnabled(false);
                mSsSeekBar.setEnabled(false);
                view.findViewById(R.id.shutter_speed_text_view).setEnabled(false);
                mAutoModeFpsSeekBar.setEnabled(true);
                view.findViewById(R.id.fps_text_view).setEnabled(true);
                mAecSeekBar.setEnabled(true);
                view.findViewById(R.id.ae_compensation_value_text_view).setEnabled(true);
                return;
            }
            if (tv()) {
                mIsoSeekBar.setEnabled(false);
                view.findViewById(R.id.iso_value_text_view).setEnabled(false);
                mSsSeekBar.setEnabled(true);
                view.findViewById(R.id.shutter_speed_text_view).setEnabled(true);
                mFpsSeekBar.setEnabled(true);
                view.findViewById(R.id.fps_text_view).setEnabled(true);
                mAecSeekBar.setEnabled(true);
                view.findViewById(R.id.ae_compensation_value_text_view).setEnabled(true);
                return;
            }
            if (manual()) {
                mIsoSeekBar.setEnabled(true);
                view.findViewById(R.id.iso_value_text_view).setEnabled(true);
                mSsSeekBar.setEnabled(true);
                view.findViewById(R.id.shutter_speed_text_view).setEnabled(true);
                mFpsSeekBar.setEnabled(true);
                view.findViewById(R.id.fps_text_view).setEnabled(true);
                mAecSeekBar.setEnabled(false);
                view.findViewById(R.id.ae_compensation_value_text_view).setEnabled(false);
                return;
            }
            LogFilter.v(LOG_TAG, "mode radio buttons all off. (setEnabled)");
            return;
        }
        mIsoSeekBar.setEnabled(false);
        view.findViewById(R.id.iso_value_text_view).setEnabled(false);
        mSsSeekBar.setEnabled(false);
        view.findViewById(R.id.shutter_speed_text_view).setEnabled(false);
        // 原始版本停用時只關閉 mAutoModeFpsSeekBar，未處理 mFpsSeekBar，維持原樣
        mAutoModeFpsSeekBar.setEnabled(false);
        view.findViewById(R.id.fps_text_view).setEnabled(false);
        mAecSeekBar.setEnabled(false);
        view.findViewById(R.id.ae_compensation_value_text_view).setEnabled(false);
    }

    public void setEventHandler(ICamera2ParamsFragmentEvent eventHandler) {
        mEventHandler = eventHandler;
    }

    public void setExposureTime(long exposureTime) {
        mSettingLocalValues.exposureTime = exposureTime;
    }

    public void setManual() {
        mManualRadio.setChecked(true);
    }

    public void setSensorSensitivity(int sensorSensitivity) {
        mSettingLocalValues.sensorSensitivity = sensorSensitivity;
    }

    public void setTv() {
        mTvRadio.setChecked(true);
    }

    public int shutterSpeed() {
        return ((Integer) mShutterSpeed.get(mSsSeekBar.getProgress())).intValue();
    }

    public long shutterSpeedInNanoSeconds() {
        return ONE_SECONDS_IN_NANOSECONDS.longValue() / shutterSpeed();
    }

    public boolean tv() {
        return mTvRadio.isChecked();
    }
}
