package com.sonyericsson.android.camera3d;

import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;

import com.sonyericsson.android.camera3d.utils.LogFilter;

class PanoramaGP2LocationManager {
    private static final String LOG_TAG = "Camera2App";
    private static final int USE_GPS = 0x0;
    private static final int USE_NETWORK = 0x1;

    private final PanoramaGP2LocationListener[] mLocationListeners;
    private final LocationManager mLocationManager;

    public PanoramaGP2LocationManager(LocationManager locationManager) {
        mLocationListeners = new PanoramaGP2LocationListener[2];
        mLocationListeners[0] = new PanoramaGP2LocationListener();
        mLocationListeners[1] = new PanoramaGP2LocationListener();
        mLocationManager = locationManager;
    }

    private String getLocationProviderName() {
        if (mLocationManager.isProviderEnabled("gps")) {
            return "gps";
        }
        if (mLocationManager.isProviderEnabled("network")) {
            return "network";
        }
        Criteria criteria = new Criteria();
        criteria.setSpeedRequired(false);
        criteria.setAltitudeRequired(false);
        String provider = mLocationManager.getBestProvider(criteria, true);
        if (provider == null) {
            provider = "";
        }
        return provider;
    }

    public void clearLocation() {
        for (PanoramaGP2LocationListener listener : mLocationListeners) {
            listener.setLocation(null);
        }
    }

    public Location getLocation() {
        String providerName = getLocationProviderName();
        if (providerName.isEmpty()) {
            clearLocation();
            return null;
        }
        Location location = mLocationListeners[0].getLocation();
        if (location != null) {
            return location;
        }
        LogFilter.w(LOG_TAG, "gps no location. use network location.");
        return mLocationListeners[1].getLocation();
    }

    public boolean isValidLocationService() {
        if (mLocationManager.isProviderEnabled("gps")) {
            return true;
        }
        if (mLocationManager.isProviderEnabled("network")) {
            return true;
        }
        return false;
    }

    public void removeUpdates() {
        try {
            for (PanoramaGP2LocationListener listener : mLocationListeners) {
                mLocationManager.removeUpdates(listener);
            }
        } catch (SecurityException e) {
        }
    }

    public void requestLocation() {
        String providerName = getLocationProviderName();
        LogFilter.v(LOG_TAG, "GPS provider is " + providerName);
        if (providerName.isEmpty()) {
            return;
        }
        try {
            mLocationManager.requestLocationUpdates(providerName, 500L, 0.1f, mLocationListeners[0]);
            // "network" provider doesn't exist on GMS-less builds (no
            // NetworkLocationProvider registered) -- requestLocationUpdates()
            // throws IllegalArgumentException instead of just being a no-op.
            if (!"network".equals(providerName) && mLocationManager.isProviderEnabled("network")) {
                mLocationManager.requestLocationUpdates("network", 1000L, 0.0f, mLocationListeners[1]);
            }
        } catch (SecurityException e) {
            e.printStackTrace();
        }
    }

    public void updateLocation(final PanoramaGP2LocationListener.IPanoramaGP2LocationListener locationListener) {
        mLocationListeners[0].start();
        mLocationListeners[0].setListener(new PanoramaGP2LocationListener.IPanoramaGP2LocationListener() {
            @Override
            public void onLocationChanged(Location location) {
                mLocationListeners[0].setListener(null);
                locationListener.onLocationChanged(location);
            }

            @Override
            public void onProviderDisabled() {
                mLocationListeners[0].setListener(null);
                locationListener.onProviderDisabled();
            }
        });

        mLocationListeners[1].start();
        mLocationListeners[1].setListener(new PanoramaGP2LocationListener.IPanoramaGP2LocationListener() {
            @Override
            public void onLocationChanged(Location location) {
                mLocationListeners[1].setListener(null);
                locationListener.onLocationChanged(location);
            }

            @Override
            public void onProviderDisabled() {
            }
        });
    }
}
