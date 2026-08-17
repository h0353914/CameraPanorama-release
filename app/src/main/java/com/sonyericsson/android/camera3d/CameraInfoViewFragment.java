package com.sonyericsson.android.camera3d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;

public class CameraInfoViewFragment extends Fragment {
    private TextView mTextView;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.camera_info_view_fragment, viewGroup, false);
        this.mTextView = (TextView) viewInflate.findViewById(R.id.tv_result_text_view);
        return viewInflate;
    }

    public void update(String str) {
        this.mTextView.setText(str);
    }
}
