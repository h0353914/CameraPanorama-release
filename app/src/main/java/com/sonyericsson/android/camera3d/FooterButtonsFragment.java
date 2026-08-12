package com.sonyericsson.android.camera3d;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.DisplayMetrics;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;

import com.sonyericsson.android.camera3d.utils.LogFilter;

public class FooterButtonsFragment extends Fragment {
    private final String LOG_TAG;
    private Camera2App mActivity;
    private int mDensityDpi;
    private int mDensityStable;
    private DisplayMetrics mDisplayMetrics;
    private boolean mIsValidThumbnail;
    private ImageView mModeSelectorButton;
    private ImageButton mPauseButton;
    private ImageButton mTakePictureButton;
    private ImageButton mThumbnailButton;
    private ImageButton mThumbnailButtonBg;
    private ImageView mThumbnailVideo;

    public FooterButtonsFragment() {
        LOG_TAG = getClass().getSimpleName();
        mIsValidThumbnail = false;
    }

    private void showVideoThumbnail() {
        mThumbnailVideo.setVisibility(mThumbnailVideo.isEnabled() ? View.VISIBLE : View.INVISIBLE);
    }

    private void updateViewWidthAndHeight(View view) {
        if (mDensityDpi != mDensityStable) {
            ViewGroup.LayoutParams params = view.getLayoutParams();
            int width = params.width;
            int height = params.height;
            int newWidth = mDensityStable * width / mDensityDpi;
            int newHeight = mDensityStable * height / mDensityDpi;
            params.width = newWidth;
            params.height = newHeight;
            view.setLayoutParams(params);
            LogFilter.i(LOG_TAG, "View = " + view.getClass().getSimpleName() + " -- onCreateView() before:"
                    + width + "x" + height + ", after: " + newWidth + "x" + newHeight);
        }
    }

    private void viewWidthAndHeightStable() {
        mDisplayMetrics = getActivity().getResources().getDisplayMetrics();
        mDensityDpi = mDisplayMetrics.densityDpi;
        mDensityStable = DisplayMetrics.DENSITY_DEVICE_STABLE;
        LogFilter.i(LOG_TAG, "onCreateView() mDensityDpi:" + mDensityDpi + ",DENSITY_DEVICE_STABLE:" + mDensityStable);

        updateViewWidthAndHeight(mThumbnailButton);
        updateViewWidthAndHeight(mThumbnailButtonBg);
        updateViewWidthAndHeight(mThumbnailVideo);
        updateViewWidthAndHeight(mTakePictureButton);
        updateViewWidthAndHeight(mPauseButton);
        updateViewWidthAndHeight(mModeSelectorButton);
    }

    public void clearThumbnail() {
        mIsValidThumbnail = false;
        mThumbnailButton.setImageDrawable(null);
        mThumbnailVideo.setEnabled(false);
        hideThumbnail();
    }

    public ImageView getModeSelectorButton() {
        return mModeSelectorButton;
    }

    public Size getThumbnailMaxSize() {
        View view = getView();
        if (view == null) {
            return new Size(0, 0);
        }
        ImageButton captureButton = (ImageButton) view.findViewById(R.id.capture_button);
        int width = (captureButton.getWidth() + 1) & ~1;
        int height = (captureButton.getHeight() + 1) & ~1;
        return new Size(width, height);
    }

    public void hideModeSelector() {
        mModeSelectorButton.setVisibility(View.INVISIBLE);
    }

    public void hideThumbnail() {
        mThumbnailButtonBg.setVisibility(View.INVISIBLE);
        mThumbnailButton.setVisibility(View.INVISIBLE);
        mThumbnailVideo.setVisibility(View.INVISIBLE);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.footer_buttons_fragment, container);

        mThumbnailButton = (ImageButton) view.findViewById(R.id.thumbnail_button);
        mThumbnailButtonBg = (ImageButton) view.findViewById(R.id.thumbnail_button_pressed);
        mThumbnailVideo = (ImageView) view.findViewById(R.id.thumbnail_video);
        mTakePictureButton = (ImageButton) view.findViewById(R.id.capture_button);
        mPauseButton = (ImageButton) view.findViewById(R.id.capture_stop_button);
        mModeSelectorButton = (ImageView) view.findViewById(R.id.image_button_modeselector);

        mThumbnailVideo.setEnabled(false);

        mActivity = (Camera2App) getActivity();

        if (mActivity.isDisplay18_9() || mActivity.isDisplay21_9()) {
            viewWidthAndHeightStable();
        }

        return view;
    }

    @Override
    public void onDestroy() {
        clearThumbnail();
        super.onDestroy();
    }

    public void rotateView(int angle) {
        mThumbnailButton.setRotation(angle);
        mThumbnailButtonBg.setRotation(angle);
        mThumbnailVideo.setRotation(angle);
        mTakePictureButton.setRotation(angle);
        mPauseButton.setRotation(angle);
        mModeSelectorButton.setRotation(angle);
    }

    public void setPauseIcon() {
        mPauseButton.setVisibility(View.VISIBLE);
        mTakePictureButton.setVisibility(View.INVISIBLE);
    }

    public void setShutterIcon() {
        mPauseButton.setVisibility(View.INVISIBLE);
        mTakePictureButton.setVisibility(View.VISIBLE);
    }

    public void setStopPictureButtonOnTouchListener(OnTouchListener listener) {
        mPauseButton.setOnTouchListener(listener);
    }

    public void setTakePictureButtonOnTouchListener(OnTouchListener listener) {
        mTakePictureButton.setOnTouchListener(listener);
    }

    public void setThumbnailBitmap(Bitmap bitmap, boolean isVideo) {
        mIsValidThumbnail = true;
        if (bitmap != null) {
            mThumbnailButton.setImageBitmap(bitmap);
        } else {
            mThumbnailButton.setImageDrawable(null);
            mThumbnailButton.setBackgroundResource(R.drawable.cam_addon_panorama_thumbnail_corrupted_icn);
        }
        mThumbnailVideo.setEnabled(isVideo);
        showThumbnail();
    }

    public void setViewsEnabled(boolean enabled) {
        mThumbnailButton.setEnabled(enabled);
        mThumbnailButtonBg.setEnabled(enabled);
        mTakePictureButton.setEnabled(enabled);
        mPauseButton.setEnabled(enabled);
        mModeSelectorButton.setEnabled(enabled);
        if (!enabled) {
            mModeSelectorButton.clearColorFilter();
        }
    }

    public void setViewsVisibility(int visibility) {
        if (visibility == View.VISIBLE && mThumbnailButton.getDrawable() == null) {
            hideThumbnail();
        } else {
            mThumbnailButton.setVisibility(visibility);
            mThumbnailButtonBg.setVisibility(visibility);
            if (visibility == View.VISIBLE) {
                showVideoThumbnail();
            } else {
                mThumbnailVideo.setVisibility(visibility);
            }
        }

        mTakePictureButton.setVisibility(visibility);
        mPauseButton.setVisibility(visibility);
        mModeSelectorButton.setVisibility(visibility);
    }

    public void showModeSelector() {
        mModeSelectorButton.setVisibility(View.VISIBLE);
    }

    public void showThumbnail() {
        if (mIsValidThumbnail) {
            mThumbnailButtonBg.setVisibility(View.VISIBLE);
            mThumbnailButton.setVisibility(View.VISIBLE);
            showVideoThumbnail();
        }
    }

    public void updateViews() {
        mModeSelectorButton.setImageResource(R.drawable.cam_panorama_close_app_icn);
    }
}
