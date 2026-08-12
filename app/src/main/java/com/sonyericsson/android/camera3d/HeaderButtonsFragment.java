package com.sonyericsson.android.camera3d;

import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;

public class HeaderButtonsFragment extends Fragment {
    public interface OnSettingDialogStateChangedListener {
        void closeSettingDialog();

        boolean isOpened();

        boolean openSettingDialog();
    }

    private OnSettingDialogStateChangedListener mOnSettingDialogStateChangedListener;
    private ImageButton mSettingsButton;
    private ImageView mSettingsButtonBg;
    private ImageView mSettingsButtonPressed;
    private Rect touchRect;

    public HeaderButtonsFragment() {
        touchRect = null;
        mOnSettingDialogStateChangedListener = null;
    }

    private void hideSettingButtonBg() {
        if (mSettingsButtonBg != null) {
            mSettingsButtonBg.setVisibility(View.INVISIBLE);
        }
    }

    private void hideSettingButtonPressed() {
        if (mSettingsButtonPressed != null) {
            mSettingsButtonPressed.setVisibility(View.INVISIBLE);
        }
    }

    private void showSettingButtonBg() {
        if (mSettingsButtonBg != null) {
            mSettingsButtonBg.setVisibility(View.VISIBLE);
        }
    }

    private void showSettingButtonPressed() {
        if (mSettingsButtonPressed != null) {
            mSettingsButtonPressed.setVisibility(View.VISIBLE);
        }
    }

    public void notifySettingDialogClosed() {
        hideSettingButtonPressed();
        hideSettingButtonBg();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, final ViewGroup container, Bundle savedInstanceState) {
        final View view = inflater.inflate(R.layout.header_buttons_fragment, container);

        mSettingsButton = (ImageButton) view.findViewById(R.id.image_button_settings);
        mSettingsButtonPressed = (ImageView) view.findViewById(R.id.settings_button_pressed);
        mSettingsButtonBg = (ImageView) view.findViewById(R.id.settings_button_bg);

        mSettingsButton.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (mSettingsButtonPressed == null) {
                    return true;
                }

                if (event.getAction() == MotionEvent.ACTION_DOWN) {
                    showSettingButtonPressed();
                    touchRect = new Rect(v.getLeft(), v.getTop(), v.getRight(), v.getBottom());
                }

                if (event.getAction() == MotionEvent.ACTION_MOVE) {
                    int x = v.getLeft() + (int) event.getX();
                    int y = v.getTop() + (int) event.getY();
                    if (!touchRect.contains(x, y)) {
                        hideSettingButtonPressed();
                    }
                }

                if (event.getAction() == MotionEvent.ACTION_UP) {
                    hideSettingButtonPressed();
                    int x = v.getLeft() + (int) event.getX();
                    int y = v.getTop() + (int) event.getY();
                    if (touchRect.contains(x, y)) {
                        if (mOnSettingDialogStateChangedListener != null) {
                            if (mOnSettingDialogStateChangedListener.isOpened()) {
                                mOnSettingDialogStateChangedListener.closeSettingDialog();
                                hideSettingButtonBg();
                            } else if (mOnSettingDialogStateChangedListener.openSettingDialog()) {
                                showSettingButtonBg();
                            }
                        }
                        v.playSoundEffect(0);
                    }
                    v.performClick();
                }

                return true;
            }
        });

        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == MotionEvent.ACTION_DOWN
                        && mOnSettingDialogStateChangedListener != null
                        && mOnSettingDialogStateChangedListener.isOpened()) {
                    mOnSettingDialogStateChangedListener.closeSettingDialog();
                    return true;
                }
                return false;
            }
        });

        return view;
    }

    public void rotateView(int angle) {
        mSettingsButton.setRotation(angle);
        mSettingsButtonPressed.setRotation(angle);
    }

    public void setOnSettingDialogStateChangedListener(OnSettingDialogStateChangedListener listener) {
        mOnSettingDialogStateChangedListener = listener;
    }

    public void setViewsEnabled(boolean enabled) {
        mSettingsButton.setEnabled(enabled);
        mSettingsButtonPressed.setEnabled(enabled);
    }

    public void setViewsVisibility(int visibility) {
        mSettingsButton.setVisibility(visibility);
        if (visibility != 0) {
            mSettingsButtonPressed.setVisibility(visibility);
            mSettingsButtonBg.setVisibility(visibility);
            touchRect = new Rect();
        }
    }
}
