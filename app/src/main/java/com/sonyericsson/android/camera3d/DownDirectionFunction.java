package com.sonyericsson.android.camera3d;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.Size;
import com.sonyericsson.android.camera3d.base.DirectionFunction;

public class DownDirectionFunction extends DirectionFunction {
    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    public boolean enabled() {
        return true;
    }

    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    public boolean getVerticalNaviVisibility() {
        return true;
    }

    public DownDirectionFunction(int i, int i2, int i3, int i4, int i5, int i6) {
        super(i, i2, i3, i4, i5, i6);
        this.direction = 3;
    }

    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    public Size getPreviewSize() {
        return getVerticalPreviewSize();
    }

    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    public boolean calcPreviewRect(Rect rect) {
        if (90 == this.angle) {
            RightDirectionFunction.calcPreviewRect(rect, this.inputWidth, this.inputHeight);
            return true;
        }
        if (270 == this.angle) {
            LeftDirectionFunction.calcPreviewRect(rect, this.inputWidth, this.inputHeight);
            return true;
        }
        calcPreviewRect(rect, this.inputWidth, this.inputHeight);
        return true;
    }

    public static void calcPreviewRect(Rect rect, int i, int i2) {
        rect.right = rect.width();
        rect.left = 0;
        rect.bottom -= rect.top;
        rect.top = 0;
    }

    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    protected boolean checkImageComplete(Rect rect) {
        if (90 == this.angle || 270 == this.angle) {
            return this.maxHeight <= rect.width();
        }
        return this.maxHeight <= rect.height();
    }

    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    public int checkError(Rect rect) {
        int iWidth;
        int iHeight;
        int i;
        if (90 == this.angle || 270 == this.angle) {
            iWidth = rect.width();
            iHeight = rect.height();
            i = this.inputHeight;
        } else {
            iWidth = rect.height();
            iHeight = rect.width();
            i = this.inputWidth;
        }
        if (iWidth <= 0 || iHeight <= i / 3) {
            return -1;
        }
        return iHeight > i ? -2 : 0;
    }

    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    public Rect getCenterLinePadding(Rect rect, Point point, int i, int i2) {
        return getVerticalCenterLinePadding(rect, point, i);
    }
}
