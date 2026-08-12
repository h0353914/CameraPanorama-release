package com.sonyericsson.android.camera3d;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class CameraInfoViewFragment extends Fragment {
    private TextView mTextView;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.camera_info_view_fragment, container, false);
        mTextView = (TextView) view.findViewById(R.id.tv_result_text_view);
        return view;
    }

    public void update(String text) {
        mTextView.setText(text);
    }
}
