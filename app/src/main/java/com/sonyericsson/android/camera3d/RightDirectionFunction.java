package com.sonyericsson.android.camera3d;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.Size;
import com.sonyericsson.android.camera3d.base.DirectionFunction;

public class RightDirectionFunction extends DirectionFunction {
    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    public boolean enabled() {
        return true;
    }

    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    public boolean getHorizontalNaviVisibility() {
        return true;
    }

    public RightDirectionFunction(int i, int i2, int i3, int i4, int i5, int i6) {
        super(i, i2, i3, i4, i5, i6);
        this.direction = 1;
    }

    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    public Size getPreviewSize() {
        return getHorizontalPreviewSize();
    }

    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    public boolean calcPreviewRect(Rect rect) {
        if (90 == this.angle) {
            UpDirectionFunction.calcPreviewRect(rect, this.inputWidth, this.inputHeight);
            return true;
        }
        if (270 == this.angle) {
            DownDirectionFunction.calcPreviewRect(rect, this.inputWidth, this.inputHeight);
            return true;
        }
        calcPreviewRect(rect, this.inputWidth, this.inputHeight);
        return true;
    }

    public static void calcPreviewRect(Rect rect, int i, int i2) {
        rect.right -= rect.left;
        rect.left = 0;
        rect.bottom = rect.height();
        rect.top = 0;
    }

    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    protected boolean checkImageComplete(Rect rect) {
        if (90 == this.angle || 270 == this.angle) {
            return this.maxWidth <= rect.height();
        }
        return this.maxWidth <= rect.width();
    }

    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    public int checkError(Rect rect) {
        int iHeight;
        int iWidth;
        int i;
        if (90 == this.angle || 270 == this.angle) {
            iHeight = rect.height();
            iWidth = rect.width();
            i = this.inputWidth;
        } else {
            iHeight = rect.width();
            iWidth = rect.height();
            i = this.inputHeight;
        }
        if (iHeight <= 0 || iWidth <= i / 3) {
            return -1;
        }
        return iWidth > i ? -2 : 0;
    }

    @Override // com.sonyericsson.android.camera3d.base.DirectionFunction
    public Rect getCenterLinePadding(Rect rect, Point point, int i, int i2) {
        return getHorizontalCenterLinePadding(rect, point, i2);
    }
}
