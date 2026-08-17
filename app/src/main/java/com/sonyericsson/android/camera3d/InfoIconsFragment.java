package com.sonyericsson.android.camera3d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;

public class InfoIconsFragment extends Fragment {
    private static final int GPS_ACQUIRING_ICON_NUM = 3;
    private static final int[] IDS_GPS_ACQUIRING_ICON = {R.drawable.cam_acquiring_gps_1_icn, R.drawable.cam_acquiring_gps_2_icn, R.drawable.cam_acquiring_gps_3_icn};
    private ImageView mGpsIcon;
    private ImageView mMemoryIcon;
    private ImageView mTemperatureIcon;
    private int mUpdateCount;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.info_icons_fragment, viewGroup);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.gps_icon);
        this.mGpsIcon = imageView;
        imageView.setEnabled(false);
        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.memory_icon);
        this.mMemoryIcon = imageView2;
        imageView2.setEnabled(false);
        ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.temperature_icon);
        this.mTemperatureIcon = imageView3;
        imageView3.setEnabled(false);
        viewInflate.setVisibility(4);
        return viewInflate;
    }

    public void startGpsSearch() {
        this.mUpdateCount = 0;
        this.mGpsIcon.setImageResource(IDS_GPS_ACQUIRING_ICON[0]);
        this.mGpsIcon.setEnabled(true);
        this.mGpsIcon.setVisibility(0);
    }

    public void updateGpsSearch(boolean z) {
        int i = (this.mUpdateCount + 1) % 3;
        this.mUpdateCount = i;
        this.mGpsIcon.setImageResource(z ? R.drawable.cam_acquired_gps_icn : IDS_GPS_ACQUIRING_ICON[i]);
    }

    public void stopGpsSearch() {
        this.mGpsIcon.setVisibility(8);
        this.mGpsIcon.setImageDrawable(null);
        this.mGpsIcon.setEnabled(false);
    }

    public void showMemoryIcon() {
        this.mMemoryIcon.setEnabled(true);
        this.mMemoryIcon.setImageResource(R.drawable.cam_notice_lack_memory_icn);
        this.mMemoryIcon.setVisibility(0);
    }

    public void hideMemoryIcon() {
        this.mMemoryIcon.setEnabled(false);
        this.mMemoryIcon.setImageDrawable(null);
        this.mMemoryIcon.setVisibility(8);
    }

    public void showTemperatureIcon() {
        this.mTemperatureIcon.setEnabled(true);
        this.mTemperatureIcon.setImageResource(R.drawable.cam_high_temperature_icn);
        this.mTemperatureIcon.setVisibility(0);
    }

    public void hideTemperatureIcon() {
        this.mTemperatureIcon.setEnabled(false);
        this.mTemperatureIcon.setImageDrawable(null);
        this.mTemperatureIcon.setVisibility(8);
    }

    public void rotateView(int i) {
        float f = i;
        this.mGpsIcon.setRotation(f);
        this.mMemoryIcon.setRotation(f);
        this.mTemperatureIcon.setRotation(f);
    }

    public void setViewsVisibility(int i) {
        if (this.mGpsIcon.isEnabled()) {
            this.mGpsIcon.setVisibility(i);
        }
        if (this.mMemoryIcon.isEnabled()) {
            this.mMemoryIcon.setVisibility(i);
        }
        if (this.mTemperatureIcon.isEnabled()) {
            this.mTemperatureIcon.setVisibility(i);
        }
    }
}
