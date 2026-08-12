package com.sonyericsson.android.camera3d;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.Size;

import com.sonyericsson.android.camera3d.base.DirectionFunction;

public class UpDirectionFunction extends DirectionFunction {
    public UpDirectionFunction(int inputWidth, int inputHeight, int maxWidth, int maxHeight, int scale, int angle) {
        super(inputWidth, inputHeight, maxWidth, maxHeight, scale, angle);
        direction = DIRECTION_UP;
    }

    public static void calcPreviewRect(Rect rect, int inputWidth, int inputHeight) {
        rect.right = rect.width();
        rect.left = 0;
        rect.top = rect.top - (rect.bottom - inputHeight);
        rect.bottom = inputHeight;
    }

    @Override
    public boolean calcPreviewRect(Rect rect) {
        if (angle == 270) {
            RightDirectionFunction.calcPreviewRect(rect, inputWidth, inputHeight);
            return true;
        } else if (angle == 90) {
            LeftDirectionFunction.calcPreviewRect(rect, inputWidth, inputHeight);
            return true;
        } else {
            UpDirectionFunction.calcPreviewRect(rect, inputWidth, inputHeight);
            return true;
        }
    }

    @Override
    public int checkError(Rect rect) {
        int limit;
        int size;
        int base;
        if (angle == 90 || angle == 270) {
            limit = rect.width();
            size = rect.height();
            base = inputHeight;
        } else {
            limit = rect.height();
            size = rect.width();
            base = inputWidth;
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
            return maxHeight <= rect.width();
        }
        return maxHeight <= rect.height();
    }

    @Override
    public boolean enabled() {
        return true;
    }

    @Override
    public Rect getCenterLinePadding(Rect rect, Point point, int a, int b) {
        return getVerticalCenterLinePadding(rect, point, a);
    }

    @Override
    public Size getPreviewSize() {
        return getVerticalPreviewSize();
    }

    @Override
    public boolean getVerticalNaviVisibility() {
        return true;
    }
}
