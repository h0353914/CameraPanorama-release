package com.sonyericsson.android.camera3d;

import android.location.Location;
import android.location.LocationListener;
import com.sonyericsson.android.camera3d.utils.LogFilter;
import java.util.Date;

class PanoramaGP2LocationListener implements LocationListener {
    private static final String LOG_TAG = "Camera2App";
    private static final IPanoramaGP2LocationListener nullListener = new IPanoramaGP2LocationListener() { // from class: com.sonyericsson.android.camera3d.PanoramaGP2LocationListener.1
        @Override // com.sonyericsson.android.camera3d.PanoramaGP2LocationListener.IPanoramaGP2LocationListener
        public void onLocationChanged(Location location) {
        }

        @Override // com.sonyericsson.android.camera3d.PanoramaGP2LocationListener.IPanoramaGP2LocationListener
        public void onProviderDisabled() {
        }
    };
    private Location mLocation = null;
    private long mStartTime = 0;
    private volatile IPanoramaGP2LocationListener mListener = nullListener;

    public interface IPanoramaGP2LocationListener {
        void onLocationChanged(Location location);

        void onProviderDisabled();
    }

    PanoramaGP2LocationListener() {
    }

    public void setListener(IPanoramaGP2LocationListener iPanoramaGP2LocationListener) {
        if (iPanoramaGP2LocationListener == null) {
            this.mListener = nullListener;
        } else {
            this.mListener = iPanoramaGP2LocationListener;
        }
    }

    public Location getLocation() {
        return this.mLocation;
    }

    public void setLocation(Location location) {
        this.mLocation = location;
    }

    public void start() {
        this.mStartTime = new Date().getTime();
    }

    public Location getTargetLocation() {
        Location location = this.mLocation;
        if (location != null && this.mStartTime <= location.getTime()) {
            return this.mLocation;
        }
        return null;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        LogFilter.v(LOG_TAG, "onLocationChanged");
        setLocation(location);
        this.mListener.onLocationChanged(location);
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
        LogFilter.v(LOG_TAG, "LocationListener(" + str + ").onProviderEnabled");
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
        LogFilter.v(LOG_TAG, "LocationListener(" + str + ").onProviderDisabled");
        this.mListener.onProviderDisabled();
    }
}
