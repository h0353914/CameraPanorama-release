package com.sonyericsson.android.camera3d;

import android.location.Location;
import android.location.LocationManager;
import com.sonyericsson.android.camera3d.utils.LogFilter;

class PanoramaGP2LocationManager {
    private static final String LOG_TAG = "Camera2App";
    private static final int USE_GPS = 0;
    private static final int USE_NETWORK = 1;
    private final PanoramaGP2LocationListener[] mLocationListeners = {new PanoramaGP2LocationListener(), new PanoramaGP2LocationListener()};
    private final LocationManager mLocationManager;

    public PanoramaGP2LocationManager(LocationManager locationManager) {
        this.mLocationManager = locationManager;
    }

    public void clearLocation() {
        for (PanoramaGP2LocationListener panoramaGP2LocationListener : this.mLocationListeners) {
            panoramaGP2LocationListener.setLocation(null);
        }
    }

    public void removeUpdates() {
        for (PanoramaGP2LocationListener panoramaGP2LocationListener : this.mLocationListeners) {
            try {
                this.mLocationManager.removeUpdates(panoramaGP2LocationListener);
            } catch (SecurityException unused) {
                return;
            }
        }
    }

    public void requestLocation() {
        String locationProviderName = getLocationProviderName();
        LogFilter.v(LOG_TAG, "GPS provider is " + locationProviderName);
        if (locationProviderName.isEmpty()) {
            return;
        }
        try {
            this.mLocationManager.requestLocationUpdates(locationProviderName, 500L, 0.1f, this.mLocationListeners[0]);
            if ("network".equals(locationProviderName)) {
                return;
            }
            this.mLocationManager.requestLocationUpdates("network", 1000L, 0.0f, this.mLocationListeners[1]);
        } catch (SecurityException e) {
            e.printStackTrace();
        }
    }

    public void updateLocation(final PanoramaGP2LocationListener.IPanoramaGP2LocationListener iPanoramaGP2LocationListener) {
        this.mLocationListeners[0].start();
        this.mLocationListeners[0].setListener(new PanoramaGP2LocationListener.IPanoramaGP2LocationListener() { // from class: com.sonyericsson.android.camera3d.PanoramaGP2LocationManager.1
            @Override // com.sonyericsson.android.camera3d.PanoramaGP2LocationListener.IPanoramaGP2LocationListener
            public void onLocationChanged(Location location) {
                PanoramaGP2LocationManager.this.mLocationListeners[0].setListener(null);
                iPanoramaGP2LocationListener.onLocationChanged(location);
            }

            @Override // com.sonyericsson.android.camera3d.PanoramaGP2LocationListener.IPanoramaGP2LocationListener
            public void onProviderDisabled() {
                PanoramaGP2LocationManager.this.mLocationListeners[0].setListener(null);
                iPanoramaGP2LocationListener.onProviderDisabled();
            }
        });
        this.mLocationListeners[1].start();
        this.mLocationListeners[1].setListener(new PanoramaGP2LocationListener.IPanoramaGP2LocationListener() { // from class: com.sonyericsson.android.camera3d.PanoramaGP2LocationManager.2
            @Override // com.sonyericsson.android.camera3d.PanoramaGP2LocationListener.IPanoramaGP2LocationListener
            public void onProviderDisabled() {
            }

            @Override // com.sonyericsson.android.camera3d.PanoramaGP2LocationListener.IPanoramaGP2LocationListener
            public void onLocationChanged(Location location) {
                PanoramaGP2LocationManager.this.mLocationListeners[1].setListener(null);
                iPanoramaGP2LocationListener.onLocationChanged(location);
            }
        });
    }

    public Location getLocation() {
        if (getLocationProviderName().isEmpty()) {
            clearLocation();
            return null;
        }
        Location location = this.mLocationListeners[0].getLocation();
        if (location != null) {
            return location;
        }
        LogFilter.w(LOG_TAG, "gps no location. use network location.");
        return this.mLocationListeners[1].getLocation();
    }

    private String getLocationProviderName() {
        if (this.mLocationManager.isProviderEnabled("gps")) {
            return "gps";
        }
        return this.mLocationManager.isProviderEnabled("network") ? "network" : "";
    }

    public boolean isValidLocationService() {
        return this.mLocationManager.isProviderEnabled("gps") || this.mLocationManager.isProviderEnabled("network");
    }
}
