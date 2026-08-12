package com.sonyericsson.android.camera3d.setting;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.location.LocationManager;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceFragment;
import android.util.Size;

import com.sonyericsson.android.camera3d.Camera2ImageQualitySettings;
import com.sonyericsson.android.camera3d.MorphoPanoramaGP2;
import com.sonyericsson.android.camera3d.MorphoPanoramaGP2Application;
import com.sonyericsson.android.camera3d.R;

import java.util.ArrayList;
import java.util.Locale;

@SuppressLint("Registered")
public class SettingActivity extends PreferenceActivity {
    public static final String INTENT_KEY_AOV = "INTENT_KEY_AOV";
    public static final String INTENT_KEY_CAMERA = "INTENT_KEY_CAMERA";
    public static final String INTENT_KEY_CAMERA2_IMAGE_QUALITY_SETTINGS = "INTENT_KEY_CAMERA2_IMAGE_QUALITY_SETTINGS";
    public static final String INTENT_KEY_SENSOR_ASPECT = "INTENT_KEY_SENSOR_ASPECT";

    public static class SettingFragment extends PreferenceFragment
            implements SharedPreferences.OnSharedPreferenceChangeListener {
        private double[] mAovs;
        private String[] mCamera;
        private Camera2ImageQualitySettings[] mCamera2ImageQualitySettings;
        private Size[] mCameraSize;
        private String mSensorAspect;
        private boolean mUseCamera1;

        private void automaticallyChanged() {
            NoiseReductionParamPreference nrStrength = (NoiseReductionParamPreference) findPreference(
                    getResources().getString(R.string.KEY_NR_STRENGTH));

            CheckBoxPreference nrAuto = (CheckBoxPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_NR_AUTO));
            boolean checked = nrAuto.isChecked();

            if (checked) {
                nrStrength.setSummary(getResources().getString(R.string.panoramagp2_BTN_LBL_AUTO));
            } else {
                nrStrength.setSummary();
            }

            nrStrength.setEnabled(!checked);
        }

        private void cameraChanged() {
            exitSetting(R.string.panoramagp2_EXIT_SETTING);
        }

        private void captureModeChanged() {
            ListPreference captureMode = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_CAPTURE_MODE));
            int mode = Integer.parseInt(captureMode.getValue());

            ListPreference colorCorrectionMode = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_COLOR_CORRECTION_MODE));
            colorCorrectionMode.setValue(mCamera2ImageQualitySettings[0].getDefaultValue(mode));

            ListPreference edgeMode = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_EDGE_MODE));
            edgeMode.setValue(mCamera2ImageQualitySettings[1].getDefaultValue(mode));

            ListPreference noiseReductionMode = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_NOISE_REDUCTION_MODE));
            noiseReductionMode.setValue(mCamera2ImageQualitySettings[2].getDefaultValue(mode));

            ListPreference shadingMode = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_SHADING_MODE));
            shadingMode.setValue(mCamera2ImageQualitySettings[3].getDefaultValue(mode));

            ListPreference tonemapMode = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_TONEMAP_MODE));
            tonemapMode.setValue(mCamera2ImageQualitySettings[4].getDefaultValue(mode));
        }

        private void checkGpsSetting() {
            CheckBoxPreference gps = (CheckBoxPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_GPS));
            if (!gps.isChecked()) {
                return;
            }

            LocationManager locationManager = (LocationManager) getActivity().getSystemService("location");
            if (locationManager.isProviderEnabled("gps")) {
                return;
            }
            if (locationManager.isProviderEnabled("network")) {
                return;
            }

            Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
            startActivity(intent);
        }

        private void checkSaveInputImages() {
            ListPreference saveInputImages = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_SAVE_INPUT_IMAGES));

            Preference inputMovieFps = findPreference(getResources().getString(R.string.KEY_INPUT_MOVIE_FPS));

            boolean enabled = saveInputImages.getValue().equals("1");
            inputMovieFps.setEnabled(enabled);
        }

        private void exitSetting(int messageResId) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setCancelable(false);
            builder.setMessage(getResources().getString(messageResId));
            builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    getActivity().finish();
                }
            });
            builder.show();
        }

        private void initializeImageQualitySettingsList(int titleResId, int index) {
            if (mCamera2ImageQualitySettings[index].isAvailable()) {
                ListPreference pref = (ListPreference) findPreference(getResources().getString(titleResId));
                pref.setEntries(mCamera2ImageQualitySettings[index].entries);
                pref.setEntryValues(mCamera2ImageQualitySettings[index].entryValues);
            }
        }

        private void setAntiBandingSummary() {
            ListPreference pref = (ListPreference) findPreference(getResources().getString(R.string.KEY_ANTI_BANDING));
            pref.setSummary(pref.getEntry());
        }

        private void setAovGainSummary() {
            DoublePreference pref = (DoublePreference) findPreference(getResources().getString(R.string.KEY_AOV_GAIN));
            pref.setSummary();
        }

        private void setAovxSummary() {
            AovxPreference pref = (AovxPreference) findPreference(getResources().getString(R.string.KEY_AOVX));
            pref.setDefValue(String.valueOf(mAovs[0]));
            pref.setSummary();
            pref.setTitle(getResources().getString(R.string.setting_AOVX) + "(" + mSensorAspect + " Sensor)");
        }

        private void setAovySummary() {
            AovyPreference pref = (AovyPreference) findPreference(getResources().getString(R.string.KEY_AOVY));
            pref.setDefValue(String.valueOf(mAovs[1]));
            pref.setSummary();
            pref.setTitle(getResources().getString(R.string.setting_AOVY) + "(" + mSensorAspect + " Sensor)");
        }

        private void setCalcseamPixnumSummary() {
            CalcseamPixnumPreference pref = (CalcseamPixnumPreference) findPreference(
                    getResources().getString(R.string.KEY_CALCSEAM_PIXNUM));
            pref.setSummary();
        }

        private void setCameraSizeSummary(ListPreference pref) {
            int index = Integer.parseInt(pref.getValue());
            String summary = String.format(Locale.US, "%dx%d",
                    mCameraSize[index].getWidth(), mCameraSize[index].getHeight());
            pref.setSummary(summary);
        }

        private void setCameraSummary() {
            ListPreference pref = (ListPreference) findPreference(getResources().getString(R.string.KEY_CAMERA_ID));
            pref.setSummary(pref.getEntry());
        }

        private void setCaptureModeSummary() {
            ListPreference pref = (ListPreference) findPreference(getResources().getString(R.string.KEY_CAPTURE_MODE));
            pref.setSummary(pref.getEntry());
        }

        private void setColorCorrectionModeSummary() {
            ListPreference pref = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_COLOR_CORRECTION_MODE));
            pref.setSummary(pref.getEntry());
            pref.setEnabled(mCamera2ImageQualitySettings[0].isAvailable());
        }

        private void setDistortionK1Summary() {
            DoublePreference pref = (DoublePreference) findPreference(getResources().getString(R.string.KEY_DISTORTION_K1));
            pref.setSummary();
        }

        private void setDistortionK2Summary() {
            DoublePreference pref = (DoublePreference) findPreference(getResources().getString(R.string.KEY_DISTORTION_K2));
            pref.setSummary();
        }

        private void setDistortionK3Summary() {
            DoublePreference pref = (DoublePreference) findPreference(getResources().getString(R.string.KEY_DISTORTION_K3));
            pref.setSummary();
        }

        private void setDistortionK4Summary() {
            DoublePreference pref = (DoublePreference) findPreference(getResources().getString(R.string.KEY_DISTORTION_K4));
            pref.setSummary();
        }

        private void setDrawThresholdSummary() {
            DoublePreference pref = (DoublePreference) findPreference(getResources().getString(R.string.KEY_DRAW_THRESHOLD));
            pref.setSummary();
        }

        private void setEdgeModeSummary() {
            ListPreference pref = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_EDGE_MODE));
            pref.setSummary(pref.getEntry());
            pref.setEnabled(mCamera2ImageQualitySettings[1].isAvailable());
        }

        private void setFocusModeSummary() {
            ListPreference pref = (ListPreference) findPreference(getResources().getString(R.string.KEY_FOCUS_MODE));
            pref.setSummary(pref.getEntry());
        }

        private void setInputMovieFpsSummary() {
            DoublePreference pref = (DoublePreference) findPreference(getResources().getString(R.string.KEY_INPUT_MOVIE_FPS));
            pref.setSummary();
        }

        private void setMotionDetectionModeSummary() {
            ListPreference pref = (ListPreference) findPreference(getResources().getString(R.string.KEY_MOTION_DETECTION_MODE));
            pref.setSummary(pref.getEntry());
        }

        private void setNoiseReductionModeSummary() {
            ListPreference pref = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_NOISE_REDUCTION_MODE));
            pref.setSummary(pref.getEntry());
            pref.setEnabled(mCamera2ImageQualitySettings[2].isAvailable());
        }

        private void setNoiseReductionParam() {
            NoiseReductionParamPreference pref = (NoiseReductionParamPreference) findPreference(
                    getResources().getString(R.string.KEY_NR_STRENGTH));
            pref.setSummary();
        }

        private void setProjectionModeSummary() {
            ListPreference pref = (ListPreference) findPreference(getResources().getString(R.string.KEY_PROJECTION_MODE));
            pref.setSummary(pref.getEntry());
        }

        private void setRotationRatioSummary() {
            DoublePreference pref = (DoublePreference) findPreference(getResources().getString(R.string.KEY_ROTATION_RATIO));
            pref.setSummary();
        }

        private void setSaveInputImagesSummary() {
            ListPreference pref = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_SAVE_INPUT_IMAGES));
            pref.setSummary(pref.getEntry());
        }

        private void setSeamsearchRatioSummary() {
            DoublePreference pref = (DoublePreference) findPreference(getResources().getString(R.string.KEY_SEAMSEARCH_RATIO));
            pref.setSummary();
        }

        private void setSensorModeSummary() {
            ListPreference pref = (ListPreference) findPreference(getResources().getString(R.string.KEY_SENSOR_MODE));
            pref.setSummary(pref.getEntry());
        }

        private void setShadingModeSummary() {
            ListPreference pref = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_SHADING_MODE));
            pref.setSummary(pref.getEntry());
            pref.setEnabled(mCamera2ImageQualitySettings[3].isAvailable());
        }

        private void setShrinkRatioSummary() {
            ShrinkRatioPreference pref = (ShrinkRatioPreference) findPreference(getResources().getString(R.string.KEY_SHRINK_RATIO));
            pref.setSummary();
        }

        private void setTonemapModeSummary() {
            ListPreference pref = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_TONEMAP_MODE));
            pref.setSummary(pref.getEntry());
            pref.setEnabled(mCamera2ImageQualitySettings[4].isAvailable());
        }

        private void setUiControlModeSummary() {
            ListPreference pref = (ListPreference) findPreference(getResources().getString(R.string.KEY_UI_CONTROL_MODE));
            pref.setSummary(pref.getEntry());
        }

        private void setUnsharpStrength() {
            UnsharpStrengthPreference pref = (UnsharpStrengthPreference) findPreference(
                    getResources().getString(R.string.KEY_UNSHARP_STRENGTH));
            pref.setSummary();
        }

        private void setZrotationCoeffSummary() {
            DoublePreference pref = (DoublePreference) findPreference(getResources().getString(R.string.KEY_ZROTATION_COEFF));
            pref.setSummary();
        }

        private void updateCaptureModeEnabled() {
            ListPreference pref = (ListPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_CAPTURE_MODE));
            pref.setEnabled(!mUseCamera1);
        }

        private void useCamera2Changed() {
            exitSetting(R.string.panoramagp2_EXIT_SETTING);
        }

        @Override
        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            addPreferencesFromResource(R.xml.setting);

            Activity activity = getActivity();
            Application application = activity.getApplication();
            MorphoPanoramaGP2Application app = (MorphoPanoramaGP2Application) application;
            mCameraSize = app.getSupportedPictureSizes();

            Intent intent = activity.getIntent();
            mAovs = intent.getDoubleArrayExtra(SettingActivity.INTENT_KEY_AOV);
            mSensorAspect = intent.getStringExtra(SettingActivity.INTENT_KEY_SENSOR_ASPECT);
            mCamera2ImageQualitySettings = (Camera2ImageQualitySettings[]) intent.getSerializableExtra(
                    SettingActivity.INTENT_KEY_CAMERA2_IMAGE_QUALITY_SETTINGS);
            mCamera = intent.getStringArrayExtra(SettingActivity.INTENT_KEY_CAMERA);

            CheckBoxPreference useCamera2Pref = (CheckBoxPreference) getPreferenceScreen().findPreference(
                    getResources().getString(R.string.KEY_USE_CAMERA2));
            mUseCamera1 = !useCamera2Pref.isChecked();

            ListPreference cameraSizePref = (ListPreference) findPreference(
                    getResources().getString(R.string.KEY_CAPTURE_SIZE));

            ArrayList<String> entries = new ArrayList<>();
            ArrayList<String> entryValues = new ArrayList<>();
            int index = 0;
            for (Size size : mCameraSize) {
                entries.add(String.format(Locale.US, "%dx%d", size.getWidth(), size.getHeight()));
                entryValues.add(Integer.toString(index));
                index++;
            }
            cameraSizePref.setEntries(entries.toArray(new CharSequence[entries.size()]));
            cameraSizePref.setEntryValues(entryValues.toArray(new CharSequence[entryValues.size()]));

            initializeImageQualitySettingsList(R.string.KEY_COLOR_CORRECTION_MODE, 0);
            initializeImageQualitySettingsList(R.string.KEY_EDGE_MODE, 1);
            initializeImageQualitySettingsList(R.string.KEY_NOISE_REDUCTION_MODE, 2);
            initializeImageQualitySettingsList(R.string.KEY_SHADING_MODE, 3);
            initializeImageQualitySettingsList(R.string.KEY_TONEMAP_MODE, 4);

            ListPreference cameraIdPref = (ListPreference) findPreference(getResources().getString(R.string.KEY_CAMERA_ID));
            String[] cameraIdEntryValues = new String[mCamera.length];
            for (int i = 0; i < cameraIdEntryValues.length; i++) {
                cameraIdEntryValues[i] = String.valueOf(i);
            }
            cameraIdPref.setEntries(mCamera);
            cameraIdPref.setEntryValues(cameraIdEntryValues);

            setCameraSizeSummary(cameraSizePref);
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

            Preference aboutPref = findPreference(getResources().getString(R.string.KEY_ABOUT));
            String versionSummary = getResources().getString(R.string.panoramagp2_ABOUT_MESSAGE) + MorphoPanoramaGP2.getVersion();
            aboutPref.setSummary(versionSummary);
        }

        @Override
        public void onPause() {
            super.onPause();
            getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
        }

        @Override
        public void onResume() {
            super.onResume();
            getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
        }

        @Override
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
            Resources res = getResources();
            if (key.equals(res.getString(R.string.KEY_CAPTURE_SIZE))) {
                ListPreference pref = (ListPreference) getPreferenceScreen().findPreference(
                        res.getString(R.string.KEY_CAPTURE_SIZE));
                setCameraSizeSummary(pref);
            } else if (key.equals(res.getString(R.string.KEY_ANTI_BANDING))) {
                setAntiBandingSummary();
            } else if (key.equals(res.getString(R.string.KEY_CAPTURE_MODE))) {
                setCaptureModeSummary();
                captureModeChanged();
            } else if (key.equals(res.getString(R.string.KEY_AOVX))) {
                setAovxSummary();
            } else if (key.equals(res.getString(R.string.KEY_AOVY))) {
                setAovySummary();
            } else if (key.equals(res.getString(R.string.KEY_CALCSEAM_PIXNUM))) {
                setCalcseamPixnumSummary();
            } else if (key.equals(res.getString(R.string.KEY_SHRINK_RATIO))) {
                setShrinkRatioSummary();
            } else if (key.equals(res.getString(R.string.KEY_GPS))) {
                checkGpsSetting();
            } else if (key.equals(res.getString(R.string.KEY_SEAMSEARCH_RATIO))) {
                setSeamsearchRatioSummary();
            } else if (key.equals(res.getString(R.string.KEY_ZROTATION_COEFF))) {
                setZrotationCoeffSummary();
            } else if (key.equals(res.getString(R.string.KEY_DRAW_THRESHOLD))) {
                setDrawThresholdSummary();
            } else if (key.equals(res.getString(R.string.KEY_SENSOR_MODE))) {
                setSensorModeSummary();
            } else if (key.equals(res.getString(R.string.KEY_UNSHARP_STRENGTH))) {
                setUnsharpStrength();
            } else if (key.equals(res.getString(R.string.KEY_INPUT_MOVIE_FPS))) {
                setInputMovieFpsSummary();
            } else if (key.equals(res.getString(R.string.KEY_SAVE_INPUT_IMAGES))) {
                setSaveInputImagesSummary();
                checkSaveInputImages();
            } else if (key.equals(res.getString(R.string.KEY_COLOR_CORRECTION_MODE))) {
                setColorCorrectionModeSummary();
            } else if (key.equals(res.getString(R.string.KEY_EDGE_MODE))) {
                setEdgeModeSummary();
            } else if (key.equals(res.getString(R.string.KEY_NOISE_REDUCTION_MODE))) {
                setNoiseReductionModeSummary();
            } else if (key.equals(res.getString(R.string.KEY_SHADING_MODE))) {
                setShadingModeSummary();
            } else if (key.equals(res.getString(R.string.KEY_TONEMAP_MODE))) {
                setTonemapModeSummary();
            } else if (key.equals(res.getString(R.string.KEY_AOV_GAIN))) {
                setAovGainSummary();
            } else if (key.equals(res.getString(R.string.KEY_DISTORTION_K1))) {
                setDistortionK1Summary();
            } else if (key.equals(res.getString(R.string.KEY_DISTORTION_K2))) {
                setDistortionK2Summary();
            } else if (key.equals(res.getString(R.string.KEY_DISTORTION_K3))) {
                setDistortionK3Summary();
            } else if (key.equals(res.getString(R.string.KEY_DISTORTION_K4))) {
                setDistortionK4Summary();
            } else if (key.equals(res.getString(R.string.KEY_ROTATION_RATIO))) {
                setRotationRatioSummary();
            } else if (key.equals(res.getString(R.string.KEY_UI_CONTROL_MODE))) {
                setUiControlModeSummary();
            } else if (key.equals(res.getString(R.string.KEY_FOCUS_MODE))) {
                setFocusModeSummary();
            } else if (key.equals(res.getString(R.string.KEY_PROJECTION_MODE))) {
                setProjectionModeSummary();
            } else if (key.equals(res.getString(R.string.KEY_MOTION_DETECTION_MODE))) {
                setMotionDetectionModeSummary();
            } else if (key.equals(res.getString(R.string.KEY_USE_CAMERA2))) {
                useCamera2Changed();
            } else if (key.equals(res.getString(R.string.KEY_CAMERA_ID))) {
                cameraChanged();
            } else if (key.equals(res.getString(R.string.KEY_NR_AUTO))) {
                automaticallyChanged();
            } else if (key.equals(res.getString(R.string.KEY_NR_STRENGTH))) {
                setNoiseReductionParam();
            }
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        FragmentTransaction transaction = getFragmentManager().beginTransaction();
        Fragment fragment = new SettingFragment();
        transaction.replace(android.R.id.content, fragment);
        transaction.commit();
    }
}
