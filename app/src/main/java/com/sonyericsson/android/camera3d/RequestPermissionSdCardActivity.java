package com.sonyericsson.android.camera3d;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.DocumentsContract;
import android.text.TextUtils;

import com.sonyericsson.android.camera3d.utils.LogFilter;

import java.io.File;
import java.util.List;

public class RequestPermissionSdCardActivity extends Activity {
    public static final String EXTERNAL_STORAGE_PROVIDER_AUTHORITY = "com.android.externalstorage.documents";
    public static final String EXTRA_SHOW_ADVANCED = "android.provider.extra.SHOW_ADVANCED";
    public static final String TAG = "RequestPermissionSdCardActivity";

    private final int FLAG_SD_PERMISSION;
    private final int REQUEST_CODE_SD_CARD_GRANTED;
    private Uri mReceiveUri;
    private Uri mSendUri;

    public RequestPermissionSdCardActivity() {
        REQUEST_CODE_SD_CARD_GRANTED = 0x100;
        FLAG_SD_PERMISSION = 3;
        mReceiveUri = null;
        mSendUri = null;
    }

    private boolean deleteCheckPermission(Uri uri) {
        if (mReceiveUri == null) {
            return true;
        }

        String receiveUriString = mReceiveUri.toString();
        if (!TextUtils.isEmpty(receiveUriString) && !receiveUriString.equals(uri.toString())) {
            LogFilter.d(TAG, "deletePermissions :" + receiveUriString);
            try {
                getContentResolver().releasePersistableUriPermission(mReceiveUri, FLAG_SD_PERMISSION);
                return true;
            } catch (Exception e) {
                LogFilter.d(TAG, "releasePersistableUriPermission Exception Occurred:" + e.toString());
                return false;
            }
        }

        return true;
    }

    private void finish(int resultCode) {
        Intent intent = new Intent();
        if (mSendUri != null) {
            intent.setData(mSendUri);
        }
        setResult(resultCode, intent);
        finish();
    }

    private void requestPermissionSdCard() {
        String storageUuid = "";
        File[] externalFilesDirs = getExternalFilesDirs(null);
        for (File dir : externalFilesDirs) {
            if (dir != null) {
                String[] parts = dir.getAbsolutePath().split("/");
                if (!parts[2].matches("emulated")) {
                    storageUuid = parts[2];
                }
            }
        }

        StorageManager storageManager = (StorageManager) getSystemService("storage");
        List<StorageVolume> volumes = storageManager.getStorageVolumes();
        for (StorageVolume volume : volumes) {
            if (volume != null && volume.isRemovable() && volume.getUuid().matches(storageUuid)) {
                Uri rootUri = DocumentsContract.buildRootUri(EXTERNAL_STORAGE_PROVIDER_AUTHORITY, storageUuid);

                Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
                intent.putExtra("android.provider.extra.INITIAL_URI", rootUri);
                intent.putExtra(EXTRA_SHOW_ADVANCED, true);

                startActivityForResult(intent, REQUEST_CODE_SD_CARD_GRANTED);
            }
        }
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        LogFilter.d(TAG, "onActivityResult: requestCode: " + requestCode + ", resultCode: " + resultCode);
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode != REQUEST_CODE_SD_CARD_GRANTED) {
            return;
        }

        int okResult = 0;
        switch (resultCode) {
            case -1: {
                mSendUri = data.getData();

                String storageUuid = "";
                File[] externalFilesDirs = getExternalFilesDirs(null);
                for (File dir : externalFilesDirs) {
                    if (dir != null) {
                        String[] parts = dir.getAbsolutePath().split("/");
                        if (!parts[2].matches("emulated")) {
                            storageUuid = parts[2];
                        }
                    }
                }

                File sendFile = new File(mSendUri.getPath());
                if (sendFile.getName().equals(storageUuid + ":")
                        || sendFile.getName().equals(storageUuid + ":" + Environment.DIRECTORY_DCIM)) {
                    int flags = data.getFlags() & 0x3;
                    ContentResolver resolver = getContentResolver();
                    resolver.takePersistableUriPermission(mSendUri, flags);
                    LogFilter.d(TAG, "Storage URI Permission granted :" + mSendUri);
                    deleteCheckPermission(mSendUri);
                    finish(-1);
                } else {
                    finish(okResult);
                }
                break;
            }
            case 0:
                finish(okResult);
                break;
            default:
                break;
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        LogFilter.d(TAG, "onCreate() start");
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_request_permission);
        mReceiveUri = getIntent().getData();
        requestPermissionSdCard();
        LogFilter.d(TAG, "onCreate() end");
    }

    @Override
    protected void onStop() {
        LogFilter.d(TAG, "onStop() start");
        super.onStop();
        LogFilter.d(TAG, "onStop() end");
    }
}
