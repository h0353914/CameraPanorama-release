package com.sonyericsson.android.camera3d;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.TextView;
import com.sonyericsson.android.camera3d.device.SomcCameraMetadataEnums;

public class VerticalTextView extends TextView {
    private TextPaint mTextPaint;
    private final Rect text_bounds;
    private final boolean topDown;

    public VerticalTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.text_bounds = new Rect();
        this.mTextPaint = null;
        int gravity = getGravity();
        if (Gravity.isVertical(gravity) && (gravity & SomcCameraMetadataEnums.SONYMOBILE_STATISTICS_SCENE_HIGH_SENSITIVITY) == 80) {
            setGravity((gravity & 7) | 48);
            this.topDown = false;
        } else {
            this.topDown = true;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i2, i);
        String string = getText().toString();
        if (this.mTextPaint == null) {
            this.mTextPaint = new TextPaint();
        }
        this.mTextPaint.setColor(getCurrentTextColor());
        this.mTextPaint.drawableState = getDrawableState();
        this.mTextPaint.getTextBounds(string, 0, string.length(), this.text_bounds);
        setMeasuredDimension(measureWidth(i), measureHeight(i2));
    }

    private int measureWidth(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int iHeight = this.text_bounds.height() + getPaddingLeft() + getPaddingRight();
        return mode == Integer.MIN_VALUE ? Math.min(iHeight, size) : iHeight;
    }

    private int measureHeight(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int iWidth = this.text_bounds.width() + getPaddingTop() + getPaddingBottom();
        return mode == Integer.MIN_VALUE ? Math.min(iWidth, size) : iWidth;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        TextPaint paint = getPaint();
        paint.setColor(getCurrentTextColor());
        paint.drawableState = getDrawableState();
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        canvas.save();
        if (this.topDown) {
            canvas.translate(getWidth(), 0.0f);
            canvas.rotate(90.0f);
        } else {
            canvas.translate(0.0f, getHeight());
            canvas.rotate(-90.0f);
        }
        canvas.translate(getPaddingTop(), getPaddingLeft() + ((getWidth() / 2.0f) / getLineCount()) + fontMetrics.ascent + fontMetrics.descent);
        getLayout().draw(canvas);
        canvas.restore();
    }
}
