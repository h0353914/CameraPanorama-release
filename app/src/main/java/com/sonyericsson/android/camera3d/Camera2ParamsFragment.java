package com.sonyericsson.android.camera3d;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Range;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import java.util.ArrayList;
import java.util.Locale;

public class Camera2ParamsFragment extends Fragment {
    public static final int AUTO = 0;
    private static final FpsParam[] FPS_PARAM_TABLE;
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
    public static final int TV = 1;
    private SeekBar mAecSeekBar;
    private SeekBar mAutoModeFpsSeekBar;
    private RadioButton mAutoRadio;
    private SeekBar mFpsSeekBar;
    private SeekBar mIsoSeekBar;
    private RadioButton mManualRadio;
    private RadioGroup mModeRadioGroup;
    private int mSelectedMode;
    private SeekBar mSsSeekBar;
    private RadioButton mTvRadio;
    private static final int[] SHUTTER_SPEED_TABLE = {RotatableToast.TOAST_DURATION_SHORT, 1000, 500, 250, 120, 100, 60, 50, 30, 25};
    private static final int[] ISO_VALUE_TABLE = {50, 100, 150, 200, 250, 300, 350, 400, 450, 500, CameraConstants.BURST_SHOT_NUM, 700, CameraConstants.MAX_ISO_VALUE, 1000, 1600};
    private final ArrayList<Integer> mShutterSpeed = new ArrayList<>();
    private final ArrayList<Integer> mISOValues = new ArrayList<>();
    private final ArrayList<FpsParam> mAutoModeFpsParams = new ArrayList<>();
    private final ArrayList<FpsParam> mFpsParams = new ArrayList<>();
    private final ArrayList<Integer> mAecValues = new ArrayList<>();
    private int mAecStepNumerator = 1;
    private int mAecStepDenominator = 1;
    private SaveValues mSettingFileValues = new SaveValues();
    private final LocalValues mSettingLocalValues = new LocalValues();
    private ICamera2ParamsFragmentEvent mEventHandler = new ICamera2ParamsFragmentEvent() { // from class: com.sonyericsson.android.camera3d.Camera2ParamsFragment.1
        @Override // com.sonyericsson.android.camera3d.Camera2ParamsFragment.ICamera2ParamsFragmentEvent
        public void onParamChanged() {
        }
    };
    private final SeekBar.OnSeekBarChangeListener mFpsSeekBarChangeListener = new SeekBar.OnSeekBarChangeListener() { // from class: com.sonyericsson.android.camera3d.Camera2ParamsFragment.5
        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (seekBar != Camera2ParamsFragment.this.mFpsSeekBar) {
                if (seekBar == Camera2ParamsFragment.this.mAutoModeFpsSeekBar) {
                    Camera2ParamsFragment camera2ParamsFragment = Camera2ParamsFragment.this;
                    camera2ParamsFragment.onFpsProgressChanged(seekBar, i, camera2ParamsFragment.mAutoModeFpsParams);
                    return;
                }
                return;
            }
            Camera2ParamsFragment camera2ParamsFragment2 = Camera2ParamsFragment.this;
            camera2ParamsFragment2.onFpsProgressChanged(seekBar, i, camera2ParamsFragment2.mFpsParams);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            Camera2ParamsFragment.this.mEventHandler.onParamChanged();
        }
    };
    private final RadioGroup.OnCheckedChangeListener mModeRadioChangeListener = new RadioGroup.OnCheckedChangeListener() { // from class: com.sonyericsson.android.camera3d.Camera2ParamsFragment.6
        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            View rootView = radioGroup.getRootView();
            if (Camera2ParamsFragment.this.auto()) {
                Camera2ParamsFragment.this.mIsoSeekBar.setEnabled(false);
                rootView.findViewById(R.id.iso_value_text_view).setEnabled(false);
                Camera2ParamsFragment.this.mSsSeekBar.setEnabled(false);
                rootView.findViewById(R.id.shutter_speed_text_view).setEnabled(false);
                Camera2ParamsFragment.this.mAutoModeFpsSeekBar.setEnabled(true);
                rootView.findViewById(R.id.fps_text_view).setEnabled(true);
                Camera2ParamsFragment.this.mFpsSeekBar.setVisibility(8);
                Camera2ParamsFragment.this.mAutoModeFpsSeekBar.setVisibility(0);
                Camera2ParamsFragment camera2ParamsFragment = Camera2ParamsFragment.this;
                camera2ParamsFragment.onFpsProgressChanged(camera2ParamsFragment.mAutoModeFpsSeekBar, -1, Camera2ParamsFragment.this.mAutoModeFpsParams);
                Camera2ParamsFragment.this.mAecSeekBar.setEnabled(true);
                if (Camera2ParamsFragment.this.mSettingFileValues.aec >= 0) {
                    Camera2ParamsFragment.this.mAecSeekBar.setProgress(Camera2ParamsFragment.this.mSettingFileValues.aec);
                }
                rootView.findViewById(R.id.ae_compensation_value_text_view).setEnabled(true);
                Camera2ParamsFragment.this.mEventHandler.onParamChanged();
                Camera2ParamsFragment.this.mSelectedMode = 0;
                return;
            }
            if (Camera2ParamsFragment.this.tv()) {
                Camera2ParamsFragment.this.mIsoSeekBar.setEnabled(false);
                rootView.findViewById(R.id.iso_value_text_view).setEnabled(false);
                Camera2ParamsFragment.this.mSsSeekBar.setEnabled(true);
                rootView.findViewById(R.id.shutter_speed_text_view).setEnabled(true);
                Camera2ParamsFragment.this.mFpsSeekBar.setEnabled(true);
                rootView.findViewById(R.id.fps_text_view).setEnabled(true);
                Camera2ParamsFragment.this.mAutoModeFpsSeekBar.setVisibility(8);
                Camera2ParamsFragment.this.mFpsSeekBar.setVisibility(0);
                Camera2ParamsFragment camera2ParamsFragment2 = Camera2ParamsFragment.this;
                camera2ParamsFragment2.onFpsProgressChanged(camera2ParamsFragment2.mFpsSeekBar, -1, Camera2ParamsFragment.this.mFpsParams);
                Camera2ParamsFragment.this.mAecSeekBar.setEnabled(true);
                if (Camera2ParamsFragment.this.mSettingFileValues.aec >= 0) {
                    Camera2ParamsFragment.this.mAecSeekBar.setProgress(Camera2ParamsFragment.this.mSettingFileValues.aec);
                }
                rootView.findViewById(R.id.ae_compensation_value_text_view).setEnabled(true);
                Camera2ParamsFragment.this.mEventHandler.onParamChanged();
                Camera2ParamsFragment.this.mSelectedMode = 1;
                return;
            }
            if (Camera2ParamsFragment.this.manual()) {
                Camera2ParamsFragment.this.mIsoSeekBar.setEnabled(true);
                rootView.findViewById(R.id.iso_value_text_view).setEnabled(true);
                Camera2ParamsFragment.this.mSsSeekBar.setEnabled(true);
                rootView.findViewById(R.id.shutter_speed_text_view).setEnabled(true);
                Camera2ParamsFragment.this.mFpsSeekBar.setEnabled(true);
                rootView.findViewById(R.id.fps_text_view).setEnabled(true);
                Camera2ParamsFragment.this.mAutoModeFpsSeekBar.setVisibility(8);
                Camera2ParamsFragment.this.mFpsSeekBar.setVisibility(0);
                Camera2ParamsFragment camera2ParamsFragment3 = Camera2ParamsFragment.this;
                camera2ParamsFragment3.onFpsProgressChanged(camera2ParamsFragment3.mFpsSeekBar, -1, Camera2ParamsFragment.this.mFpsParams);
                Camera2ParamsFragment.this.mAecSeekBar.setProgress(Camera2ParamsFragment.this.mAecValues.indexOf(0));
                Camera2ParamsFragment.this.mAecSeekBar.setEnabled(false);
                rootView.findViewById(R.id.ae_compensation_value_text_view).setEnabled(false);
                Camera2ParamsFragment.this.mEventHandler.onParamChanged();
                Camera2ParamsFragment.this.mSelectedMode = 2;
                return;
            }
            LogFilter.v(Camera2ParamsFragment.LOG_TAG, "mode radio buttons all off. (onCheckedChanged)");
        }
    };

    public interface ICamera2ParamsFragmentEvent {
        void onParamChanged();
    }

    private static class SaveValues {
        public boolean auto = true;
        public boolean tv = false;
        public int shutterSpeed = Camera2ParamsFragment.SHUTTER_SPEED_TABLE[Camera2ParamsFragment.SHUTTER_SPEED_TABLE.length - 6];
        public int iso = Camera2ParamsFragment.ISO_VALUE_TABLE[1];
        public float fps = 24.0f;
        public int fpsUpper = 24;
        public int aec = -1;
    }

    private static class LocalValues {
        public long exposureTime;
        public int sensorSensitivity;

        private LocalValues() {
            this.sensorSensitivity = 0;
            this.exposureTime = 0L;
        }
    }

    static {
        Long l = 1000000000L;
        ONE_SECONDS_IN_NANOSECONDS = l;
        FPS_PARAM_TABLE = new FpsParam[]{new FpsParam(3.0f, Long.valueOf(l.longValue() / 3)), new FpsParam(15.0f, Long.valueOf(l.longValue() / 15)), new FpsParam(23.98f, 41708333L), new FpsParam(24.0f, Long.valueOf(l.longValue() / 24)), new FpsParam(29.97f, 33366666L), new FpsParam(30.0f, Long.valueOf(l.longValue() / 30)), new FpsParam(50.0f, Long.valueOf(l.longValue() / 50)), new FpsParam(59.94f, 16683333L), new FpsParam(60.0f, Long.valueOf(l.longValue() / 60))};
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LogFilter.i(LOG_TAG, "Camera2ParamsFragment.onCreate");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        LogFilter.i(LOG_TAG, "Camera2ParamsFragment.onCreateView");
        final View viewInflate = layoutInflater.inflate(R.layout.camera2_params_fragment, viewGroup);
        SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.ae_compensation_seek_bar);
        this.mAecSeekBar = seekBar;
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.sonyericsson.android.camera3d.Camera2ParamsFragment.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                if (Camera2ParamsFragment.this.mAecValues.size() <= 0) {
                    return;
                }
                TextView textView = (TextView) viewInflate.findViewById(R.id.ae_compensation_value_text_view);
                double dEvValue = Camera2ParamsFragment.this.evValue();
                if (dEvValue == 0.0d) {
                    textView.setText(String.format(Locale.US, "%dEV", 0));
                } else if (0.0d < dEvValue) {
                    textView.setText(String.format(Locale.US, "+%.2fEV", Double.valueOf(dEvValue)));
                } else {
                    textView.setText(String.format(Locale.US, "%.2fEV", Double.valueOf(dEvValue)));
                }
                if (Camera2ParamsFragment.this.manual()) {
                    return;
                }
                Camera2ParamsFragment.this.mSettingFileValues.aec = i;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
                Camera2ParamsFragment.this.mEventHandler.onParamChanged();
            }
        });
        SeekBar seekBar2 = (SeekBar) viewInflate.findViewById(R.id.iso_seek_bar);
        this.mIsoSeekBar = seekBar2;
        seekBar2.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.sonyericsson.android.camera3d.Camera2ParamsFragment.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar3) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar3, int i, boolean z) {
                if (Camera2ParamsFragment.this.mISOValues.size() <= 0) {
                    return;
                }
                ((TextView) viewInflate.findViewById(R.id.iso_value_text_view)).setText(String.format(Locale.US, "%d", Camera2ParamsFragment.this.mISOValues.get(i)));
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar3) {
                Camera2ParamsFragment.this.mEventHandler.onParamChanged();
            }
        });
        SeekBar seekBar3 = (SeekBar) viewInflate.findViewById(R.id.shutter_speed_seek_bar);
        this.mSsSeekBar = seekBar3;
        seekBar3.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.sonyericsson.android.camera3d.Camera2ParamsFragment.4
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar4) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar4, int i, boolean z) {
                if (Camera2ParamsFragment.this.mShutterSpeed.size() <= 0) {
                    return;
                }
                ((TextView) viewInflate.findViewById(R.id.shutter_speed_text_view)).setText(String.format(Locale.US, "1/%d", Camera2ParamsFragment.this.mShutterSpeed.get(i)));
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar4) {
                Camera2ParamsFragment.this.mEventHandler.onParamChanged();
            }
        });
        SeekBar seekBar4 = (SeekBar) viewInflate.findViewById(R.id.fps_seek_bar);
        this.mFpsSeekBar = seekBar4;
        seekBar4.setOnSeekBarChangeListener(this.mFpsSeekBarChangeListener);
        SeekBar seekBar5 = (SeekBar) viewInflate.findViewById(R.id.auto_fps_seek_bar);
        this.mAutoModeFpsSeekBar = seekBar5;
        seekBar5.setOnSeekBarChangeListener(this.mFpsSeekBarChangeListener);
        this.mAutoRadio = (RadioButton) viewInflate.findViewById(R.id.camera2_auto_radio);
        this.mTvRadio = (RadioButton) viewInflate.findViewById(R.id.camera2_tv_radio);
        this.mManualRadio = (RadioButton) viewInflate.findViewById(R.id.camera2_manual_radio);
        RadioGroup radioGroup = (RadioGroup) viewInflate.findViewById(R.id.camera2_mode_group);
        this.mModeRadioGroup = radioGroup;
        radioGroup.setOnCheckedChangeListener(this.mModeRadioChangeListener);
        return viewInflate;
    }

    public void onFpsProgressChanged(SeekBar seekBar, int i, ArrayList<FpsParam> arrayList) {
        if (arrayList.size() <= 0) {
            return;
        }
        TextView textView = (TextView) seekBar.getRootView().findViewById(R.id.fps_text_view);
        if (i < 0) {
            textView.setText(arrayList.get(seekBar.getProgress()).getFpsString());
        } else {
            textView.setText(arrayList.get(i).getFpsString());
        }
    }

    public void setEventHandler(ICamera2ParamsFragmentEvent iCamera2ParamsFragmentEvent) {
        this.mEventHandler = iCamera2ParamsFragmentEvent;
    }

    public int sensorSensitivity() {
        if (tv()) {
            return this.mSettingLocalValues.sensorSensitivity;
        }
        return this.mISOValues.get(this.mIsoSeekBar.getProgress()).intValue();
    }

    public Long exposureTime() {
        if (tv()) {
            return Long.valueOf(this.mSettingLocalValues.exposureTime);
        }
        return Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue() / ((long) shutterSpeed()));
    }

    public Long exposureTimeMax() {
        return Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue() / ((long) this.mShutterSpeed.get(this.mSsSeekBar.getMax()).intValue()));
    }

    public int shutterSpeed() {
        return this.mShutterSpeed.get(this.mSsSeekBar.getProgress()).intValue();
    }

    public long shutterSpeedInNanoSeconds() {
        return ONE_SECONDS_IN_NANOSECONDS.longValue() / ((long) shutterSpeed());
    }

    public Long frameDuration() {
        if (auto()) {
            return this.mAutoModeFpsParams.get(this.mAutoModeFpsSeekBar.getProgress()).FrameDuration;
        }
        return this.mFpsParams.get(this.mFpsSeekBar.getProgress()).FrameDuration;
    }

    public float fps() {
        if (auto()) {
            return this.mAutoModeFpsParams.get(this.mAutoModeFpsSeekBar.getProgress()).Fps;
        }
        return this.mFpsParams.get(this.mFpsSeekBar.getProgress()).Fps;
    }

    public int evSteps() {
        return this.mAecValues.get(this.mAecSeekBar.getProgress()).intValue();
    }

    public double evValue() {
        return ((double) (evSteps() * this.mAecStepNumerator)) / ((double) this.mAecStepDenominator);
    }

    public boolean auto() {
        return this.mAutoRadio.isChecked();
    }

    public void setAuto() {
        this.mAutoRadio.setChecked(true);
    }

    public boolean tv() {
        return this.mTvRadio.isChecked();
    }

    public void setTv() {
        this.mTvRadio.setChecked(true);
    }

    public boolean manual() {
        return this.mManualRadio.isChecked();
    }

    public void setManual() {
        this.mManualRadio.setChecked(true);
    }

    public int getSelectedMode() {
        return this.mSelectedMode;
    }

    public void loadValues(SharedPreferences sharedPreferences) {
        SaveValues saveValues = this.mSettingFileValues;
        saveValues.auto = sharedPreferences.getBoolean(KEY_AUTO, saveValues.auto);
        SaveValues saveValues2 = this.mSettingFileValues;
        saveValues2.tv = sharedPreferences.getBoolean(KEY_TV, saveValues2.tv);
        if (!sharedPreferences.getBoolean(getString(R.string.KEY_USE_CAMERA2), true)) {
            this.mSettingFileValues.auto = true;
            this.mSettingFileValues.tv = false;
        }
        SaveValues saveValues3 = this.mSettingFileValues;
        saveValues3.shutterSpeed = sharedPreferences.getInt(KEY_SHUTTER_SPEED, saveValues3.shutterSpeed);
        SaveValues saveValues4 = this.mSettingFileValues;
        saveValues4.iso = sharedPreferences.getInt(KEY_ISO, saveValues4.iso);
        SaveValues saveValues5 = this.mSettingFileValues;
        saveValues5.fps = sharedPreferences.getFloat(KEY_FPS, saveValues5.fps);
        SaveValues saveValues6 = this.mSettingFileValues;
        saveValues6.fpsUpper = sharedPreferences.getInt(KEY_FPS_UPPER, saveValues6.fpsUpper);
        SaveValues saveValues7 = this.mSettingFileValues;
        saveValues7.aec = sharedPreferences.getInt(KEY_AEC, saveValues7.aec);
    }

    public void saveValues(SharedPreferences sharedPreferences) {
        if (disabledSave()) {
            return;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putBoolean(KEY_AUTO, auto());
        editorEdit.putBoolean(KEY_TV, tv());
        editorEdit.putInt(KEY_SHUTTER_SPEED, shutterSpeed());
        editorEdit.putInt(KEY_ISO, sensorSensitivity());
        editorEdit.putFloat(KEY_FPS, this.mFpsParams.get(this.mFpsSeekBar.getProgress()).Fps);
        editorEdit.putInt(KEY_FPS_UPPER, (int) this.mAutoModeFpsParams.get(this.mAutoModeFpsSeekBar.getProgress()).Fps);
        editorEdit.putInt(KEY_AEC, this.mSettingFileValues.aec);
        editorEdit.apply();
    }

    public void resetValues(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.remove(KEY_AUTO);
        editorEdit.remove(KEY_TV);
        editorEdit.remove(KEY_SHUTTER_SPEED);
        editorEdit.remove(KEY_ISO);
        editorEdit.remove(KEY_FPS);
        editorEdit.remove(KEY_FPS_UPPER);
        editorEdit.remove(KEY_AEC);
        editorEdit.apply();
        this.mSettingFileValues = new SaveValues();
        loadValues(sharedPreferences);
    }

    private boolean disabledSave() {
        return this.mShutterSpeed.isEmpty() || this.mISOValues.isEmpty() || this.mFpsParams.isEmpty();
    }

    public void initializeUI(CameraInfo cameraInfo) {
        initAeCompensationSeekBar(cameraInfo);
        initIsoSeekBar(cameraInfo);
        initShutterSpeedSeekBar(cameraInfo);
        initFpsSeekBar(cameraInfo);
        this.mAutoRadio.setChecked(this.mSettingFileValues.auto);
        this.mTvRadio.setChecked(this.mSettingFileValues.tv);
        this.mManualRadio.setChecked(!(this.mSettingFileValues.auto | this.mSettingFileValues.tv));
        if (this.mAutoRadio.isChecked()) {
            this.mSelectedMode = 0;
        } else if (this.mTvRadio.isChecked()) {
            this.mSelectedMode = 1;
        } else {
            this.mSelectedMode = 2;
        }
        this.mModeRadioChangeListener.onCheckedChanged(this.mModeRadioGroup, 0);
    }

    private void initAeCompensationSeekBar(CameraInfo cameraInfo) {
        int i;
        int i2;
        this.mAecValues.clear();
        this.mAecStepNumerator = cameraInfo.getAeCompensationNumerator();
        this.mAecStepDenominator = cameraInfo.getAeCompensationDenominator();
        int i3 = -1;
        while (true) {
            if (cameraInfo.getAeCompensationMin() > i3) {
                break;
            }
            this.mAecValues.add(0, Integer.valueOf(i3));
            i3--;
        }
        this.mAecValues.add(0);
        for (int i4 = 1; i4 <= cameraInfo.getAeCompensationMax(); i4++) {
            this.mAecValues.add(Integer.valueOf(i4));
        }
        if (this.mSettingFileValues.aec == -1) {
            i2 = 0;
            for (i = 0; i < this.mAecValues.size(); i++) {
                LogFilter.v(LOG_TAG, "using AE Compensation value=" + this.mAecValues.get(i));
                if (this.mAecValues.get(i).intValue() == 0) {
                    i2 = i;
                }
            }
            this.mSettingFileValues.aec = i2;
        } else {
            i2 = this.mSettingFileValues.aec;
        }
        if (this.mAecValues.size() <= 0) {
            this.mAecStepNumerator = 1;
            this.mAecStepDenominator = 1;
        } else {
            this.mAecSeekBar.setMax(this.mAecValues.size() - 1);
            this.mAecSeekBar.setProgress(i2);
        }
    }

    private void initIsoSeekBar(CameraInfo cameraInfo) {
        this.mISOValues.clear();
        int size = 0;
        for (int i : ISO_VALUE_TABLE) {
            if (cameraInfo.containsSensitivity(Integer.valueOf(i))) {
                this.mISOValues.add(Integer.valueOf(i));
                if (i == this.mSettingFileValues.iso) {
                    size = this.mISOValues.size() - 1;
                }
            }
        }
        if (this.mISOValues.size() <= 0) {
            return;
        }
        this.mIsoSeekBar.setMax(this.mISOValues.size() - 1);
        this.mIsoSeekBar.setProgress(size);
    }

    private void initShutterSpeedSeekBar(CameraInfo cameraInfo) {
        this.mShutterSpeed.clear();
        int size = 0;
        for (int i : SHUTTER_SPEED_TABLE) {
            if (cameraInfo.containsExposureTime(Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue() / ((long) i)))) {
                this.mShutterSpeed.add(Integer.valueOf(i));
                if (i == this.mSettingFileValues.shutterSpeed) {
                    size = this.mShutterSpeed.size() - 1;
                }
            }
        }
        if (this.mShutterSpeed.size() <= 0) {
            return;
        }
        this.mSsSeekBar.setMax(this.mShutterSpeed.size() - 1);
        this.mSsSeekBar.setProgress(size);
    }

    private void initFpsSeekBar(CameraInfo cameraInfo) {
        ArrayList<Range<Integer>> targetFpsRanges = cameraInfo.getTargetFpsRanges();
        ArrayList<Integer> arrayList = new ArrayList();
        for (Range<Integer> range : targetFpsRanges) {
            if (!((Integer) range.getLower()).equals(range.getUpper()) && !arrayList.contains(range.getUpper())) {
                arrayList.add((Integer) range.getUpper());
            }
        }
        this.mAutoModeFpsParams.clear();
        for (Integer num : arrayList) {
            this.mAutoModeFpsParams.add(new FpsParam(num.intValue(), Long.valueOf(ONE_SECONDS_IN_NANOSECONDS.longValue() / ((long) num.intValue()))));
        }
        int i = 0;
        if (this.mAutoModeFpsParams.size() <= 0) {
            this.mAutoModeFpsSeekBar.setMax(0);
        } else {
            this.mAutoModeFpsSeekBar.setMax(this.mAutoModeFpsParams.size() - 1);
        }
        int size = this.mAutoModeFpsParams.size() - 1;
        for (int i2 = size; i2 >= 0; i2--) {
            if (((int) this.mAutoModeFpsParams.get(i2).Fps) == this.mSettingFileValues.fpsUpper) {
                size = i2;
                break;
            }
        }
        if (size >= 0) {
            this.mAutoModeFpsSeekBar.setProgress(size);
        }
        this.mFpsParams.clear();
        for (FpsParam fpsParam : FPS_PARAM_TABLE) {
            if (cameraInfo.containsFrameDuration(fpsParam.FrameDuration)) {
                this.mFpsParams.add(fpsParam);
            }
        }
        if (this.mFpsParams.size() <= 0) {
            this.mFpsSeekBar.setMax(0);
        } else {
            this.mFpsSeekBar.setMax(this.mFpsParams.size() - 1);
        }
        for (int i3 = 0; i3 < this.mFpsParams.size(); i3++) {
            if (this.mFpsParams.get(i3).Fps == this.mSettingFileValues.fps) {
                i = i3;
                break;
            }
        }
        this.mFpsSeekBar.setProgress(i);
    }

    public void setSensorSensitivity(int i) {
        this.mSettingLocalValues.sensorSensitivity = i;
    }

    public void setExposureTime(long j) {
        this.mSettingLocalValues.exposureTime = j;
    }

    public void setEnabled(boolean z) {
        this.mAutoRadio.setEnabled(z);
        this.mTvRadio.setEnabled(z);
        this.mManualRadio.setEnabled(z);
        View view = getView();
        if (view == null) {
            return;
        }
        if (z) {
            this.mModeRadioGroup.setEnabled(false);
            if (auto()) {
                this.mIsoSeekBar.setEnabled(false);
                view.findViewById(R.id.iso_value_text_view).setEnabled(false);
                this.mSsSeekBar.setEnabled(false);
                view.findViewById(R.id.shutter_speed_text_view).setEnabled(false);
                this.mAutoModeFpsSeekBar.setEnabled(true);
                view.findViewById(R.id.fps_text_view).setEnabled(true);
                this.mAecSeekBar.setEnabled(true);
                view.findViewById(R.id.ae_compensation_value_text_view).setEnabled(true);
                return;
            }
            if (tv()) {
                this.mIsoSeekBar.setEnabled(false);
                view.findViewById(R.id.iso_value_text_view).setEnabled(false);
                this.mSsSeekBar.setEnabled(true);
                view.findViewById(R.id.shutter_speed_text_view).setEnabled(true);
                this.mFpsSeekBar.setEnabled(true);
                view.findViewById(R.id.fps_text_view).setEnabled(true);
                this.mAecSeekBar.setEnabled(true);
                view.findViewById(R.id.ae_compensation_value_text_view).setEnabled(true);
                return;
            }
            if (manual()) {
                this.mIsoSeekBar.setEnabled(true);
                view.findViewById(R.id.iso_value_text_view).setEnabled(true);
                this.mSsSeekBar.setEnabled(true);
                view.findViewById(R.id.shutter_speed_text_view).setEnabled(true);
                this.mFpsSeekBar.setEnabled(true);
                view.findViewById(R.id.fps_text_view).setEnabled(true);
                this.mAecSeekBar.setEnabled(false);
                view.findViewById(R.id.ae_compensation_value_text_view).setEnabled(false);
                return;
            }
            LogFilter.v(LOG_TAG, "mode radio buttons all off. (setEnabled)");
            return;
        }
        this.mIsoSeekBar.setEnabled(false);
        view.findViewById(R.id.iso_value_text_view).setEnabled(false);
        this.mSsSeekBar.setEnabled(false);
        view.findViewById(R.id.shutter_speed_text_view).setEnabled(false);
        this.mAutoModeFpsSeekBar.setEnabled(false);
        view.findViewById(R.id.fps_text_view).setEnabled(false);
        this.mAecSeekBar.setEnabled(false);
        view.findViewById(R.id.ae_compensation_value_text_view).setEnabled(false);
    }
}
