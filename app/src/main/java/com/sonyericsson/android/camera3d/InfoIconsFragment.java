package com.sonyericsson.android.camera3d;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

public class InfoIconsFragment extends Fragment {
    private static final int GPS_ACQUIRING_ICON_NUM = 3;
    private static final int[] IDS_GPS_ACQUIRING_ICON = {
            R.drawable.cam_acquiring_gps_1_icn,
            R.drawable.cam_acquiring_gps_2_icn,
            R.drawable.cam_acquiring_gps_3_icn,
    };

    private ImageView mGpsIcon;
    private ImageView mMemoryIcon;
    private ImageView mTemperatureIcon;
    private int mUpdateCount;

    public void hideMemoryIcon() {
        mMemoryIcon.setEnabled(false);
        mMemoryIcon.setImageDrawable(null);
        mMemoryIcon.setVisibility(View.GONE);
    }

    public void hideTemperatureIcon() {
        mTemperatureIcon.setEnabled(false);
        mTemperatureIcon.setImageDrawable(null);
        mTemperatureIcon.setVisibility(View.GONE);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.info_icons_fragment, container);

        mGpsIcon = (ImageView) view.findViewById(R.id.gps_icon);
        mGpsIcon.setEnabled(false);

        mMemoryIcon = (ImageView) view.findViewById(R.id.memory_icon);
        mMemoryIcon.setEnabled(false);

        mTemperatureIcon = (ImageView) view.findViewById(R.id.temperature_icon);
        mTemperatureIcon.setEnabled(false);

        return view;
    }

    public void rotateView(int angle) {
        mGpsIcon.setRotation(angle);
        mMemoryIcon.setRotation(angle);
        mTemperatureIcon.setRotation(angle);
    }

    public void setViewsVisibility(int visibility) {
        if (mGpsIcon.isEnabled()) {
            mGpsIcon.setVisibility(visibility);
        }
        if (mMemoryIcon.isEnabled()) {
            mMemoryIcon.setVisibility(visibility);
        }
        if (mTemperatureIcon.isEnabled()) {
            mTemperatureIcon.setVisibility(visibility);
        }
    }

    public void showMemoryIcon() {
        mMemoryIcon.setEnabled(true);
        mMemoryIcon.setImageResource(R.drawable.cam_notice_lack_memory_icn);
        mMemoryIcon.setVisibility(View.VISIBLE);
    }

    public void showTemperatureIcon() {
        mTemperatureIcon.setEnabled(true);
        mTemperatureIcon.setImageResource(R.drawable.cam_high_temperature_icn);
        mTemperatureIcon.setVisibility(View.VISIBLE);
    }

    public void startGpsSearch() {
        mUpdateCount = 0;
        mGpsIcon.setImageResource(IDS_GPS_ACQUIRING_ICON[mUpdateCount]);
        mGpsIcon.setEnabled(true);
        mGpsIcon.setVisibility(View.VISIBLE);
    }

    public void stopGpsSearch() {
        mGpsIcon.setVisibility(View.GONE);
        mGpsIcon.setImageDrawable(null);
        mGpsIcon.setEnabled(false);
    }

    public void updateGpsSearch(boolean acquired) {
        mUpdateCount = (mUpdateCount + 1) % 3;
        if (acquired) {
            mGpsIcon.setImageResource(R.drawable.cam_acquired_gps_icn);
        } else {
            mGpsIcon.setImageResource(IDS_GPS_ACQUIRING_ICON[mUpdateCount]);
        }
    }
}
