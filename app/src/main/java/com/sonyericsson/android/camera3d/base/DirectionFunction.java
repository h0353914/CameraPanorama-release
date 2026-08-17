package com.sonyericsson.android.camera3d.base;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.Size;

public class DirectionFunction {
    public static final int DIRECTION_DOWN = 3;
    public static final int DIRECTION_LEFT = 0;
    private static final int DIRECTION_NONE = -1;
    public static final int DIRECTION_RIGHT = 1;
    public static final int DIRECTION_UP = 2;
    public static final int ERROR_NO_EFFECTIVE_PIXEL = -1;
    public static final int ERROR_OVER_SWING = -2;
    public static final int SUCCEEDED = 0;
    protected final int angle;
    protected final int inputHeight;
    protected final int inputWidth;
    protected final int maxHeight;
    protected final int maxWidth;
    private final int scale;
    protected int direction = -1;
    private boolean requestQuitFlag = false;

    public static int reverseDirection(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 3;
        }
        if (i != 3) {
            return i;
        }
        return 2;
    }

    public boolean calcPreviewRect(Rect rect) {
        return false;
    }

    public int checkError(Rect rect) {
        return 0;
    }

    protected boolean checkImageComplete(Rect rect) {
        return true;
    }

    public boolean enabled() {
        return false;
    }

    public boolean getHorizontalNaviVisibility() {
        return false;
    }

    public boolean getVerticalNaviVisibility() {
        return false;
    }

    public int getScale() {
        return this.scale;
    }

    private int getAngle() {
        return this.angle;
    }

    public DirectionFunction(int i, int i2, int i3, int i4, int i5, int i6) {
        this.inputWidth = i;
        this.inputHeight = i2;
        this.scale = i5 * 2;
        this.angle = i6;
        this.maxWidth = i3;
        this.maxHeight = i4;
    }

    public Size getPreviewSize() {
        return new Size(this.inputWidth, this.inputHeight);
    }

    protected Size getVerticalPreviewSize() {
        int i;
        int i2 = this.maxHeight;
        int i3 = this.scale;
        int i4 = ((i2 + i3) - 1) / i3;
        if (90 == getAngle() || 270 == getAngle()) {
            int i5 = this.inputHeight;
            int i6 = this.scale;
            i = ((i5 + i6) - 1) / i6;
        } else {
            int i7 = this.inputWidth;
            int i8 = this.scale;
            i = ((i7 + i8) - 1) / i8;
        }
        return new Size(i & (-2), i4 & (-2));
    }

    protected Size getHorizontalPreviewSize() {
        int i;
        int i2 = this.maxWidth;
        int i3 = this.scale;
        int i4 = ((i2 + i3) - 1) / i3;
        if (90 == getAngle() || 270 == getAngle()) {
            int i5 = this.inputWidth;
            int i6 = this.scale;
            i = ((i5 + i6) - 1) / i6;
        } else {
            int i7 = this.inputHeight;
            int i8 = this.scale;
            i = ((i7 + i8) - 1) / i8;
        }
        return new Size(i4 & (-2), i & (-2));
    }

    public boolean isImageComplete(Rect rect) {
        return this.requestQuitFlag || checkImageComplete(rect);
    }

    public boolean isImageComplete() {
        return this.requestQuitFlag;
    }

    public Rect getCenterLinePadding(Rect rect, Point point, int i, int i2) {
        return new Rect(0, 0, 0, 0);
    }

    protected Rect getHorizontalCenterLinePadding(Rect rect, Point point, int i) {
        int paddingTop;
        if (90 == getAngle() || 270 == getAngle()) {
            paddingTop = getPaddingTop(rect.left, rect.right, point.x, i);
        } else {
            paddingTop = getPaddingTop(rect.top, rect.bottom, point.y, i);
        }
        return new Rect(0, paddingTop, 0, 0);
    }

    private int getPaddingTop(int i, int i2, int i3, int i4) {
        return (i4 >> 1) + ((((i2 - i) >> 1) - i3) / this.scale);
    }

    protected Rect getVerticalCenterLinePadding(Rect rect, Point point, int i) {
        int paddingLeft;
        if (90 == getAngle() || 270 == getAngle()) {
            paddingLeft = getPaddingLeft(rect.top, rect.bottom, point.y, i);
        } else {
            paddingLeft = getPaddingLeft(rect.left, rect.right, point.x, i);
        }
        return new Rect(paddingLeft, 0, 0, 0);
    }

    private int getPaddingLeft(int i, int i2, int i3, int i4) {
        return (i4 >> 1) + ((((i2 - i) >> 1) - i3) / this.scale);
    }

    public void requestQuit() {
        this.requestQuitFlag = true;
    }

    public int getDirection() {
        return this.direction;
    }
}
