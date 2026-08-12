package com.sonyericsson.android.camera3d;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.Size;

import com.sonyericsson.android.camera3d.base.DirectionFunction;

public class LeftDirectionFunction extends DirectionFunction {
    public LeftDirectionFunction(int inputWidth, int inputHeight, int maxWidth, int maxHeight, int scale, int angle) {
        super(inputWidth, inputHeight, maxWidth, maxHeight, scale, angle);
        direction = DIRECTION_LEFT;
    }

    public static void calcPreviewRect(Rect rect, int inputWidth, int inputHeight) {
        rect.left = rect.left - (rect.right - inputWidth);
        rect.right = inputWidth;
        rect.bottom = rect.height();
        rect.top = 0;
    }

    @Override
    public boolean calcPreviewRect(Rect rect) {
        if (angle == 270) {
            UpDirectionFunction.calcPreviewRect(rect, inputWidth, inputHeight);
            return true;
        } else if (angle == 90) {
            DownDirectionFunction.calcPreviewRect(rect, inputWidth, inputHeight);
            return true;
        } else {
            LeftDirectionFunction.calcPreviewRect(rect, inputWidth, inputHeight);
            return true;
        }
    }

    @Override
    public int checkError(Rect rect) {
        int limit;
        int size;
        int base;
        if (angle == 90 || angle == 270) {
            limit = rect.height();
            size = rect.width();
            base = inputWidth;
        } else {
            limit = rect.width();
            size = rect.height();
            base = inputHeight;
        }
        if (limit <= 0) {
            return ERROR_NO_EFFECTIVE_PIXEL;
        }
        if (size > base / 3) {
            if (size > base) {
                return ERROR_OVER_SWING;
            }
            return SUCCEEDED;
        }
        return ERROR_NO_EFFECTIVE_PIXEL;
    }

    @Override
    protected boolean checkImageComplete(Rect rect) {
        if (angle == 90 || angle == 270) {
            return maxWidth <= rect.height();
        }
        return maxWidth <= rect.width();
    }

    @Override
    public boolean enabled() {
        return true;
    }

    @Override
    public Rect getCenterLinePadding(Rect rect, Point point, int a, int b) {
        return getHorizontalCenterLinePadding(rect, point, b);
    }

    @Override
    public boolean getHorizontalNaviVisibility() {
        return true;
    }

    @Override
    public Size getPreviewSize() {
        return getHorizontalPreviewSize();
    }
}
