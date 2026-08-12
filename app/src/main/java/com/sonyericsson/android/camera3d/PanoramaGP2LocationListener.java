package com.sonyericsson.android.camera3d;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

import com.sonyericsson.android.camera3d.utils.LogFilter;

import java.util.Date;

class PanoramaGP2LocationListener implements LocationListener {
    public interface IPanoramaGP2LocationListener {
        void onLocationChanged(Location location);

        void onProviderDisabled();
    }

    private static final String LOG_TAG = "Camera2App";
    private static final IPanoramaGP2LocationListener nullListener =
            new IPanoramaGP2LocationListener() {
                @Override
                public void onLocationChanged(Location location) {
                }

                @Override
                public void onProviderDisabled() {
                }
            };

    private volatile IPanoramaGP2LocationListener mListener;
    private Location mLocation;
    private long mStartTime;

    PanoramaGP2LocationListener() {
        mLocation = null;
        mStartTime = 0L;
        mListener = nullListener;
    }

    public Location getLocation() {
        return mLocation;
    }

    public Location getTargetLocation() {
        if (mLocation == null) {
            return null;
        }
        if (mStartTime <= mLocation.getTime()) {
            return mLocation;
        }
        return null;
    }

    @Override
    public void onLocationChanged(Location location) {
        LogFilter.v(LOG_TAG, "onLocationChanged");
        setLocation(location);
        mListener.onLocationChanged(location);
    }

    @Override
    public void onProviderDisabled(String provider) {
        LogFilter.v(LOG_TAG, "LocationListener(" + provider + ").onProviderDisabled");
        mListener.onProviderDisabled();
    }

    @Override
    public void onProviderEnabled(String provider) {
        LogFilter.v(LOG_TAG, "LocationListener(" + provider + ").onProviderEnabled");
    }

    @Override
    public void onStatusChanged(String provider, int status, Bundle extras) {
        switch (status) {
            case 0:
                LogFilter.v(LOG_TAG, "LocationListener(" + provider + ").onStatusChanged OUT_OF_SERVICE");
                break;
            case 1:
                LogFilter.v(LOG_TAG, "LocationListener(" + provider + ").onStatusChanged TEMPORARILY_UNAVAILABLE");
                break;
            case 2:
                LogFilter.v(LOG_TAG, "LocationListener(" + provider + ").onStatusChanged AVAILABLE");
                break;
            default:
                break;
        }
    }

    public void setListener(IPanoramaGP2LocationListener listener) {
        if (listener == null) {
            mListener = nullListener;
        } else {
            mListener = listener;
        }
    }

    public void setLocation(Location location) {
        mLocation = location;
    }

    public void start() {
        mStartTime = new Date().getTime();
    }
}
