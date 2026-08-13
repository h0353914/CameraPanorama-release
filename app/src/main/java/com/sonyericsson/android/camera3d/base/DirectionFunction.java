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
    protected int direction;
    protected final int inputHeight;
    protected final int inputWidth;
    protected final int maxHeight;
    protected final int maxWidth;
    private boolean requestQuitFlag;
    private final int scale;

    public DirectionFunction(int inputWidth, int inputHeight, int maxWidth, int maxHeight, int scale, int angle) {
        this.direction = DIRECTION_NONE;
        this.inputWidth = inputWidth;
        this.inputHeight = inputHeight;
        this.scale = scale * 2;
        this.angle = angle;
        this.maxWidth = maxWidth;
        this.maxHeight = maxHeight;
        this.requestQuitFlag = false;
    }

    private int getAngle() {
        return angle;
    }

    private int getPaddingLeft(int a, int b, int c, int d) {
        int diff = ((b - a) >> 1) - c;
        int half = d >> 1;
        diff = diff / scale;
        return half + diff;
    }

    private int getPaddingTop(int a, int b, int c, int d) {
        int diff = ((b - a) >> 1) - c;
        int half = d >> 1;
        diff = diff / scale;
        return half + diff;
    }

    public static int reverseDirection(int direction) {
        switch (direction) {
            case 0:
                return 1;
            case 1:
                return 0;
            case 2:
                return 3;
            case 3:
                return 2;
            default:
                return direction;
        }
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

    public Rect getCenterLinePadding(Rect rect, Point point, int a, int b) {
        return new Rect(0, 0, 0, 0);
    }

    public int getDirection() {
        return direction;
    }

    protected Rect getHorizontalCenterLinePadding(Rect rect, Point point, int width) {
        int padding;
        if (getAngle() == 90 || getAngle() == 270) {
            padding = getPaddingTop(rect.left, rect.right, point.x, width);
        } else {
            padding = getPaddingTop(rect.top, rect.bottom, point.y, width);
        }
        return new Rect(0, padding, 0, 0);
    }

    public boolean getHorizontalNaviVisibility() {
        return false;
    }

    protected Size getHorizontalPreviewSize() {
        int w = (maxWidth + scale - 1) / scale;
        int h;
        if (getAngle() == 90 || getAngle() == 270) {
            h = (inputWidth + scale - 1) / scale;
        } else {
            h = (inputHeight + scale - 1) / scale;
        }
        w &= ~1;
        h &= ~1;
        return new Size(w, h);
    }

    public Size getPreviewSize() {
        return new Size(inputWidth, inputHeight);
    }

    public int getScale() {
        return scale;
    }

    protected Rect getVerticalCenterLinePadding(Rect rect, Point point, int width) {
        int padding;
        if (getAngle() == 90 || getAngle() == 270) {
            padding = getPaddingLeft(rect.top, rect.bottom, point.y, width);
        } else {
            padding = getPaddingLeft(rect.left, rect.right, point.x, width);
        }
        return new Rect(padding, 0, 0, 0);
    }

    public boolean getVerticalNaviVisibility() {
        return false;
    }

    protected Size getVerticalPreviewSize() {
        int h = (maxHeight + scale - 1) / scale;
        int w;
        if (getAngle() == 90 || getAngle() == 270) {
            w = (inputHeight + scale - 1) / scale;
        } else {
            w = (inputWidth + scale - 1) / scale;
        }
        w &= ~1;
        h &= ~1;
        return new Size(w, h);
    }

    public boolean isImageComplete() {
        return requestQuitFlag;
    }

    public boolean isImageComplete(Rect rect) {
        return requestQuitFlag || checkImageComplete(rect);
    }

    public void requestQuit() {
        requestQuitFlag = true;
    }
}
