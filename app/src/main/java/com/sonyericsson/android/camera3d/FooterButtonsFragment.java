package com.sonyericsson.android.camera3d;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Size;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import com.sonyericsson.android.camera3d.utils.LogFilter;

public class FooterButtonsFragment extends Fragment {
    private Camera2App mActivity;
    private int mDensityDpi;
    private int mDensityStable;
    private DisplayMetrics mDisplayMetrics;
    private ImageView mModeSelectorButton;
    private ImageButton mPauseButton;
    private ImageButton mTakePictureButton;
    private ImageButton mThumbnailButton;
    private ImageButton mThumbnailButtonBg;
    private FrameLayout mThumbnailLayout;
    private ImageView mThumbnailVideo;
    private final String LOG_TAG = getClass().getSimpleName();
    private boolean mIsValidThumbnail = false;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.footer_buttons_fragment, viewGroup);
        this.mThumbnailLayout = (FrameLayout) viewInflate.findViewById(R.id.thumbnail_layout);
        this.mThumbnailButton = (ImageButton) viewInflate.findViewById(R.id.thumbnail_button);
        this.mThumbnailButtonBg = (ImageButton) viewInflate.findViewById(R.id.thumbnail_button_pressed);
        this.mThumbnailVideo = (ImageView) viewInflate.findViewById(R.id.thumbnail_video);
        this.mTakePictureButton = (ImageButton) viewInflate.findViewById(R.id.capture_button);
        this.mPauseButton = (ImageButton) viewInflate.findViewById(R.id.capture_stop_button);
        this.mModeSelectorButton = (ImageView) viewInflate.findViewById(R.id.image_button_modeselector);
        this.mThumbnailVideo.setEnabled(false);
        Camera2App camera2App = (Camera2App) getActivity();
        this.mActivity = camera2App;
        if (camera2App.isDisplayEighteenToNine() || this.mActivity.isDisplayTwentyOneToNine() || this.mActivity.isDisplayNineteenPointFiveToNine()) {
            viewWidthAndHeightStable();
        }
        return viewInflate;
    }

    private void updateViewWidthAndHeight(View view) {
        if (this.mDensityDpi != this.mDensityStable) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            int i = layoutParams.width;
            int i2 = layoutParams.height;
            int i3 = this.mDensityStable;
            int i4 = this.mDensityDpi;
            int i5 = (i * i3) / i4;
            int i6 = (i3 * i2) / i4;
            layoutParams.width = i5;
            layoutParams.height = i6;
            view.setLayoutParams(layoutParams);
            LogFilter.i(this.LOG_TAG, "View = " + view.getClass().getSimpleName() + " -- onCreateView() before:" + i + "x" + i2 + ", after: " + i5 + "x" + i6);
        }
    }

    private void viewWidthAndHeightStable() {
        DisplayMetrics displayMetrics = getActivity().getResources().getDisplayMetrics();
        this.mDisplayMetrics = displayMetrics;
        this.mDensityDpi = displayMetrics.densityDpi;
        this.mDensityStable = DisplayMetrics.DENSITY_DEVICE_STABLE;
        LogFilter.i(this.LOG_TAG, "onCreateView() mDensityDpi:" + this.mDensityDpi + ",DENSITY_DEVICE_STABLE:" + this.mDensityStable);
        updateViewWidthAndHeight(this.mThumbnailButton);
        updateViewWidthAndHeight(this.mThumbnailButtonBg);
        updateViewWidthAndHeight(this.mThumbnailVideo);
        updateViewWidthAndHeight(this.mTakePictureButton);
        updateViewWidthAndHeight(this.mPauseButton);
        updateViewWidthAndHeight(this.mModeSelectorButton);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        clearThumbnail();
        super.onDestroy();
    }

    public void clearThumbnail() {
        this.mIsValidThumbnail = false;
        this.mThumbnailButton.setImageDrawable(null);
        this.mThumbnailVideo.setEnabled(false);
        hideThumbnail();
    }

    public void setThumbnailBitmap(Bitmap bitmap, boolean z) {
        this.mIsValidThumbnail = true;
        if (bitmap != null) {
            this.mThumbnailButton.setImageBitmap(bitmap);
        } else {
            this.mThumbnailButton.setImageDrawable(null);
            this.mThumbnailButton.setBackgroundResource(R.drawable.cam_addon_panorama_thumbnail_corrupted_icn);
        }
        this.mThumbnailVideo.setEnabled(z);
        showThumbnail();
    }

    public void hideThumbnail() {
        this.mThumbnailLayout.setVisibility(4);
    }

    public void showThumbnail() {
        if (this.mIsValidThumbnail) {
            this.mThumbnailLayout.setVisibility(0);
            ImageView imageView = this.mThumbnailVideo;
            imageView.setVisibility(imageView.isEnabled() ? 0 : 4);
        }
    }

    public Size getThumbnailMaxSize() {
        View view = getView();
        if (view == null) {
            return new Size(0, 0);
        }
        ImageButton imageButton = (ImageButton) view.findViewById(R.id.capture_button);
        return new Size((imageButton.getWidth() + 1) & (-2), (imageButton.getHeight() + 1) & (-2));
    }

    public void setShutterIcon() {
        this.mPauseButton.setVisibility(4);
        this.mTakePictureButton.setVisibility(0);
        this.mTakePictureButton.sendAccessibilityEvent(128);
        this.mTakePictureButton.requestFocus();
    }

    public void setPauseIcon() {
        this.mPauseButton.setVisibility(0);
        this.mTakePictureButton.setVisibility(4);
        this.mPauseButton.sendAccessibilityEvent(128);
        this.mPauseButton.requestFocus();
    }

    public void rotateView(int i) {
        float f = i;
        this.mThumbnailButton.setRotation(f);
        this.mThumbnailButtonBg.setRotation(f);
        this.mThumbnailVideo.setRotation(f);
        this.mTakePictureButton.setRotation(f);
        this.mPauseButton.setRotation(f);
    }

    public ImageView getModeSelectorButton() {
        return this.mModeSelectorButton;
    }

    public ImageButton getTakePictureButton() {
        return this.mTakePictureButton;
    }

    public void updateViews() {
        this.mModeSelectorButton.setImageResource(R.drawable.camera_common_back);
    }

    public void hideModeSelector() {
        this.mModeSelectorButton.setVisibility(4);
    }

    public void showModeSelector() {
        this.mModeSelectorButton.setVisibility(0);
    }

    public void setViewsVisibility(int i) {
        if (i != 0 || this.mThumbnailButton.getDrawable() == null) {
            hideThumbnail();
        } else {
            showThumbnail();
        }
        this.mTakePictureButton.setVisibility(i);
        this.mPauseButton.setVisibility(i);
        this.mModeSelectorButton.setVisibility(i);
    }

    public void setViewsEnabled(boolean z) {
        this.mThumbnailButton.setEnabled(z);
        this.mThumbnailButtonBg.setEnabled(z);
        this.mTakePictureButton.setEnabled(z);
        this.mPauseButton.setEnabled(z);
        this.mModeSelectorButton.setEnabled(z);
        if (z) {
            return;
        }
        this.mModeSelectorButton.clearColorFilter();
    }

    public void setTakePictureButtonOnTouchListener(View.OnTouchListener onTouchListener) {
        this.mTakePictureButton.setOnTouchListener(onTouchListener);
    }

    public void setTakePictureButtonOnKeyListener(View.OnKeyListener onKeyListener) {
        this.mTakePictureButton.setOnKeyListener(onKeyListener);
    }

    public void setStopPictureButtonOnTouchListener(View.OnTouchListener onTouchListener) {
        this.mPauseButton.setOnTouchListener(onTouchListener);
    }

    public void setStopPictureButtonOnKeyListener(View.OnKeyListener onKeyListener) {
        this.mPauseButton.setOnKeyListener(onKeyListener);
    }
}
