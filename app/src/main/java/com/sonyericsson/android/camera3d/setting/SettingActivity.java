package com.sonyericsson.android.camera3d.setting;

import android.R;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.location.LocationManager;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceFragment;
import android.util.Size;
import com.sonyericsson.android.camera3d.Camera2ImageQualitySettings;
import com.sonyericsson.android.camera3d.MorphoPanoramaGP2;
import com.sonyericsson.android.camera3d.MorphoPanoramaGP2Application;
import java.util.ArrayList;
import java.util.Locale;

public class SettingActivity extends PreferenceActivity {
    public static final String INTENT_KEY_AOV = "INTENT_KEY_AOV";
    public static final String INTENT_KEY_CAMERA = "INTENT_KEY_CAMERA";
    public static final String INTENT_KEY_CAMERA2_IMAGE_QUALITY_SETTINGS = "INTENT_KEY_CAMERA2_IMAGE_QUALITY_SETTINGS";
    public static final String INTENT_KEY_SENSOR_ASPECT = "INTENT_KEY_SENSOR_ASPECT";

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getFragmentManager().beginTransaction().replace(R.id.content, new SettingFragment()).commit();
    }

    public static class SettingFragment extends PreferenceFragment implements SharedPreferences.OnSharedPreferenceChangeListener {
        private double[] mAovs;
        private String[] mCamera;
        private Camera2ImageQualitySettings[] mCamera2ImageQualitySettings;
        private Size[] mCameraSize;
        private String mSensorAspect;
        private boolean mUseCamera1;

        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            addPreferencesFromResource(com.sonyericsson.android.camera3d.R.xml.setting);
            this.mCameraSize = ((MorphoPanoramaGP2Application) getActivity().getApplication()).getSupportedPictureSizes();
            Intent intent = getActivity().getIntent();
            this.mAovs = intent.getDoubleArrayExtra(SettingActivity.INTENT_KEY_AOV);
            this.mSensorAspect = intent.getStringExtra(SettingActivity.INTENT_KEY_SENSOR_ASPECT);
            this.mCamera2ImageQualitySettings = (Camera2ImageQualitySettings[]) intent.getSerializableExtra(SettingActivity.INTENT_KEY_CAMERA2_IMAGE_QUALITY_SETTINGS);
            this.mCamera = intent.getStringArrayExtra(SettingActivity.INTENT_KEY_CAMERA);
            this.mUseCamera1 = !((CheckBoxPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_USE_CAMERA2))).isChecked();
            ListPreference listPreference = (ListPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_CAPTURE_SIZE));
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            for (Size size : this.mCameraSize) {
                arrayList.add(String.format(Locale.US, "%dx%d", Integer.valueOf(size.getWidth()), Integer.valueOf(size.getHeight())));
                arrayList2.add(Integer.toString(i));
                i++;
            }
            listPreference.setEntries((CharSequence[]) arrayList.toArray(new CharSequence[arrayList.size()]));
            listPreference.setEntryValues((CharSequence[]) arrayList2.toArray(new CharSequence[arrayList2.size()]));
            initializeImageQualitySettingsList(com.sonyericsson.android.camera3d.R.string.KEY_COLOR_CORRECTION_MODE, 0);
            initializeImageQualitySettingsList(com.sonyericsson.android.camera3d.R.string.KEY_EDGE_MODE, 1);
            initializeImageQualitySettingsList(com.sonyericsson.android.camera3d.R.string.KEY_NOISE_REDUCTION_MODE, 2);
            initializeImageQualitySettingsList(com.sonyericsson.android.camera3d.R.string.KEY_SHADING_MODE, 3);
            initializeImageQualitySettingsList(com.sonyericsson.android.camera3d.R.string.KEY_TONEMAP_MODE, 4);
            ListPreference listPreference2 = (ListPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_CAMERA_ID));
            int length = this.mCamera.length;
            String[] strArr = new String[length];
            for (int i2 = 0; i2 < length; i2++) {
                strArr[i2] = String.valueOf(i2);
            }
            listPreference2.setEntries(this.mCamera);
            listPreference2.setEntryValues(strArr);
            setCameraSizeSummary(listPreference);
            setAntiBandingSummary();
            setCaptureModeSummary();
            setShrinkRatioSummary();
            setCalcseamPixnumSummary();
            setAovxSummary();
            setAovySummary();
            setSeamsearchRatioSummary();
            setZrotationCoeffSummary();
            setDrawThresholdSummary();
            setSensorModeSummary();
            setUnsharpStrength();
            setSaveInputImagesSummary();
            setInputMovieFpsSummary();
            checkSaveInputImages();
            updateCaptureModeEnabled();
            setColorCorrectionModeSummary();
            setEdgeModeSummary();
            setNoiseReductionModeSummary();
            setShadingModeSummary();
            setTonemapModeSummary();
            setAovGainSummary();
            setDistortionK1Summary();
            setDistortionK2Summary();
            setDistortionK3Summary();
            setDistortionK4Summary();
            setRotationRatioSummary();
            setUiControlModeSummary();
            setFocusModeSummary();
            setProjectionModeSummary();
            setMotionDetectionModeSummary();
            setCameraSummary();
            automaticallyChanged();
            findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_ABOUT)).setSummary(getResources().getString(com.sonyericsson.android.camera3d.R.string.panoramagp2_ABOUT_MESSAGE) + MorphoPanoramaGP2.getVersion());
        }

        @Override // android.app.Fragment
        public void onResume() {
            super.onResume();
            getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
        }

        @Override // android.app.Fragment
        public void onPause() {
            super.onPause();
            getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_CAPTURE_SIZE))) {
                setCameraSizeSummary((ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_CAPTURE_SIZE)));
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_ANTI_BANDING))) {
                setAntiBandingSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_CAPTURE_MODE))) {
                setCaptureModeSummary();
                captureModeChanged();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_AOVX))) {
                setAovxSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_AOVY))) {
                setAovySummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_CALCSEAM_PIXNUM))) {
                setCalcseamPixnumSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_SHRINK_RATIO))) {
                setShrinkRatioSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_GPS))) {
                checkGpsSetting();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_SEAMSEARCH_RATIO))) {
                setSeamsearchRatioSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_ZROTATION_COEFF))) {
                setZrotationCoeffSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_DRAW_THRESHOLD))) {
                setDrawThresholdSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_SENSOR_MODE))) {
                setSensorModeSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_UNSHARP_STRENGTH))) {
                setUnsharpStrength();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_INPUT_MOVIE_FPS))) {
                setInputMovieFpsSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_SAVE_INPUT_IMAGES))) {
                setSaveInputImagesSummary();
                checkSaveInputImages();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_COLOR_CORRECTION_MODE))) {
                setColorCorrectionModeSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_EDGE_MODE))) {
                setEdgeModeSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_NOISE_REDUCTION_MODE))) {
                setNoiseReductionModeSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_SHADING_MODE))) {
                setShadingModeSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_TONEMAP_MODE))) {
                setTonemapModeSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_AOV_GAIN))) {
                setAovGainSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_DISTORTION_K1))) {
                setDistortionK1Summary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_DISTORTION_K2))) {
                setDistortionK2Summary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_DISTORTION_K3))) {
                setDistortionK3Summary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_DISTORTION_K4))) {
                setDistortionK4Summary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_ROTATION_RATIO))) {
                setRotationRatioSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_UI_CONTROL_MODE))) {
                setUiControlModeSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_FOCUS_MODE))) {
                setFocusModeSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_PROJECTION_MODE))) {
                setProjectionModeSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_MOTION_DETECTION_MODE))) {
                setMotionDetectionModeSummary();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_USE_CAMERA2))) {
                useCamera2Changed();
                return;
            }
            if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_CAMERA_ID))) {
                cameraChanged();
            } else if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_NR_AUTO))) {
                automaticallyChanged();
            } else if (str.equals(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_NR_STRENGTH))) {
                setNoiseReductionParam();
            }
        }

        private void setCameraSizeSummary(ListPreference listPreference) {
            int i = Integer.parseInt(listPreference.getValue());
            listPreference.setSummary(String.format(Locale.US, "%dx%d", Integer.valueOf(this.mCameraSize[i].getWidth()), Integer.valueOf(this.mCameraSize[i].getHeight())));
        }

        private void setAntiBandingSummary() {
            ListPreference listPreference = (ListPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_ANTI_BANDING));
            listPreference.setSummary(listPreference.getEntry());
        }

        private void setCaptureModeSummary() {
            ListPreference listPreference = (ListPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_CAPTURE_MODE));
            listPreference.setSummary(listPreference.getEntry());
        }

        private void setAovxSummary() {
            AovxPreference aovxPreference = (AovxPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_AOVX));
            aovxPreference.setDefValue(String.valueOf(this.mAovs[0]));
            aovxPreference.setSummary();
            aovxPreference.setTitle(getResources().getString(com.sonyericsson.android.camera3d.R.string.setting_AOVX) + "(" + this.mSensorAspect + " Sensor)");
        }

        private void setAovySummary() {
            AovyPreference aovyPreference = (AovyPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_AOVY));
            aovyPreference.setDefValue(String.valueOf(this.mAovs[1]));
            aovyPreference.setSummary();
            aovyPreference.setTitle(getResources().getString(com.sonyericsson.android.camera3d.R.string.setting_AOVY) + "(" + this.mSensorAspect + " Sensor)");
        }

        private void setCalcseamPixnumSummary() {
            ((CalcseamPixnumPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_CALCSEAM_PIXNUM))).setSummary();
        }

        private void setShrinkRatioSummary() {
            ((ShrinkRatioPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_SHRINK_RATIO))).setSummary();
        }

        private void setSeamsearchRatioSummary() {
            ((DoublePreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_SEAMSEARCH_RATIO))).setSummary();
        }

        private void setZrotationCoeffSummary() {
            ((DoublePreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_ZROTATION_COEFF))).setSummary();
        }

        private void setDrawThresholdSummary() {
            ((DoublePreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_DRAW_THRESHOLD))).setSummary();
        }

        private void setSensorModeSummary() {
            ListPreference listPreference = (ListPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_SENSOR_MODE));
            listPreference.setSummary(listPreference.getEntry());
        }

        private void setUnsharpStrength() {
            ((UnsharpStrengthPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_UNSHARP_STRENGTH))).setSummary();
        }

        private void checkGpsSetting() {
            if (((CheckBoxPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_GPS))).isChecked()) {
                LocationManager locationManager = (LocationManager) getActivity().getSystemService("location");
                if (locationManager.isProviderEnabled("gps") || locationManager.isProviderEnabled("network")) {
                    return;
                }
                startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
            }
        }

        private void setSaveInputImagesSummary() {
            ListPreference listPreference = (ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_SAVE_INPUT_IMAGES));
            listPreference.setSummary(listPreference.getEntry());
        }

        private void setInputMovieFpsSummary() {
            ((DoublePreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_INPUT_MOVIE_FPS))).setSummary();
        }

        private void checkSaveInputImages() {
            findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_INPUT_MOVIE_FPS)).setEnabled(((ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_SAVE_INPUT_IMAGES))).getValue().equals("1"));
        }

        private void updateCaptureModeEnabled() {
            ((ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_CAPTURE_MODE))).setEnabled(!this.mUseCamera1);
        }

        private void setColorCorrectionModeSummary() {
            ListPreference listPreference = (ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_COLOR_CORRECTION_MODE));
            listPreference.setSummary(listPreference.getEntry());
            listPreference.setEnabled(this.mCamera2ImageQualitySettings[0].isAvailable());
        }

        private void setEdgeModeSummary() {
            ListPreference listPreference = (ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_EDGE_MODE));
            listPreference.setSummary(listPreference.getEntry());
            listPreference.setEnabled(this.mCamera2ImageQualitySettings[1].isAvailable());
        }

        private void setNoiseReductionModeSummary() {
            ListPreference listPreference = (ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_NOISE_REDUCTION_MODE));
            listPreference.setSummary(listPreference.getEntry());
            listPreference.setEnabled(this.mCamera2ImageQualitySettings[2].isAvailable());
        }

        private void setShadingModeSummary() {
            ListPreference listPreference = (ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_SHADING_MODE));
            listPreference.setSummary(listPreference.getEntry());
            listPreference.setEnabled(this.mCamera2ImageQualitySettings[3].isAvailable());
        }

        private void setTonemapModeSummary() {
            ListPreference listPreference = (ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_TONEMAP_MODE));
            listPreference.setSummary(listPreference.getEntry());
            listPreference.setEnabled(this.mCamera2ImageQualitySettings[4].isAvailable());
        }

        private void setAovGainSummary() {
            ((DoublePreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_AOV_GAIN))).setSummary();
        }

        private void setDistortionK1Summary() {
            ((DoublePreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_DISTORTION_K1))).setSummary();
        }

        private void setDistortionK2Summary() {
            ((DoublePreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_DISTORTION_K2))).setSummary();
        }

        private void setDistortionK3Summary() {
            ((DoublePreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_DISTORTION_K3))).setSummary();
        }

        private void setDistortionK4Summary() {
            ((DoublePreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_DISTORTION_K4))).setSummary();
        }

        private void setRotationRatioSummary() {
            ((DoublePreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_ROTATION_RATIO))).setSummary();
        }

        private void setUiControlModeSummary() {
            ListPreference listPreference = (ListPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_UI_CONTROL_MODE));
            listPreference.setSummary(listPreference.getEntry());
        }

        private void setFocusModeSummary() {
            ListPreference listPreference = (ListPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_FOCUS_MODE));
            listPreference.setSummary(listPreference.getEntry());
        }

        private void setProjectionModeSummary() {
            ListPreference listPreference = (ListPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_PROJECTION_MODE));
            listPreference.setSummary(listPreference.getEntry());
        }

        private void setMotionDetectionModeSummary() {
            ListPreference listPreference = (ListPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_MOTION_DETECTION_MODE));
            listPreference.setSummary(listPreference.getEntry());
        }

        private void automaticallyChanged() {
            NoiseReductionParamPreference noiseReductionParamPreference = (NoiseReductionParamPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_NR_STRENGTH));
            boolean zIsChecked = ((CheckBoxPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_NR_AUTO))).isChecked();
            if (zIsChecked) {
                noiseReductionParamPreference.setSummary(getResources().getString(com.sonyericsson.android.camera3d.R.string.panoramagp2_BTN_LBL_AUTO));
            } else {
                noiseReductionParamPreference.setSummary();
            }
            noiseReductionParamPreference.setEnabled(!zIsChecked);
        }

        private void setNoiseReductionParam() {
            ((NoiseReductionParamPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_NR_STRENGTH))).setSummary();
        }

        private void captureModeChanged() {
            int i = Integer.parseInt(((ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_CAPTURE_MODE))).getValue());
            ((ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_COLOR_CORRECTION_MODE))).setValue(this.mCamera2ImageQualitySettings[0].getDefaultValue(i));
            ((ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_EDGE_MODE))).setValue(this.mCamera2ImageQualitySettings[1].getDefaultValue(i));
            ((ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_NOISE_REDUCTION_MODE))).setValue(this.mCamera2ImageQualitySettings[2].getDefaultValue(i));
            ((ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_SHADING_MODE))).setValue(this.mCamera2ImageQualitySettings[3].getDefaultValue(i));
            ((ListPreference) getPreferenceScreen().findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_TONEMAP_MODE))).setValue(this.mCamera2ImageQualitySettings[4].getDefaultValue(i));
        }

        private void initializeImageQualitySettingsList(int i, int i2) {
            if (this.mCamera2ImageQualitySettings[i2].isAvailable()) {
                ListPreference listPreference = (ListPreference) findPreference(getResources().getString(i));
                listPreference.setEntries(this.mCamera2ImageQualitySettings[i2].entries);
                listPreference.setEntryValues(this.mCamera2ImageQualitySettings[i2].entryValues);
            }
        }

        private void useCamera2Changed() {
            exitSetting(com.sonyericsson.android.camera3d.R.string.panoramagp2_EXIT_SETTING);
        }

        private void setCameraSummary() {
            ListPreference listPreference = (ListPreference) findPreference(getResources().getString(com.sonyericsson.android.camera3d.R.string.KEY_CAMERA_ID));
            listPreference.setSummary(listPreference.getEntry());
        }

        private void cameraChanged() {
            exitSetting(com.sonyericsson.android.camera3d.R.string.panoramagp2_EXIT_SETTING);
        }

        private void exitSetting(int i) {
            new AlertDialog.Builder(getActivity()).setCancelable(false).setMessage(getResources().getString(i)).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.sonyericsson.android.camera3d.setting.SettingActivity.SettingFragment.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    SettingFragment.this.getActivity().finish();
                }
            }).show();
        }
    }
}
