package com.sonyericsson.android.camera3d;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.TextView;

public class VerticalTextView extends TextView {
    private TextPaint mTextPaint;
    private final Rect text_bounds;
    private final boolean topDown;

    public VerticalTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        text_bounds = new Rect();
        mTextPaint = null;

        int gravity = getGravity();
        if (Gravity.isVertical(gravity) && (gravity & 0x70) == 0x50) {
            setGravity((gravity & 0x7) | 0x30);
            topDown = false;
        } else {
            topDown = true;
        }
    }

    private int measureHeight(int measureSpec) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size = View.MeasureSpec.getSize(measureSpec);
        if (mode == View.MeasureSpec.EXACTLY) {
            return size;
        }
        int result = text_bounds.width() + getPaddingTop();
        result += getPaddingBottom();
        if (mode == View.MeasureSpec.AT_MOST) {
            result = Math.min(result, size);
        }
        return result;
    }

    private int measureWidth(int measureSpec) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size = View.MeasureSpec.getSize(measureSpec);
        if (mode == View.MeasureSpec.EXACTLY) {
            return size;
        }
        int result = text_bounds.height() + getPaddingLeft();
        result += getPaddingRight();
        if (mode == View.MeasureSpec.AT_MOST) {
            result = Math.min(result, size);
        }
        return result;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        TextPaint paint = getPaint();
        paint.setColor(getCurrentTextColor());
        paint.drawableState = getDrawableState();
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();

        canvas.save();

        if (topDown) {
            canvas.translate((float) getWidth(), 0f);
            canvas.rotate(90.0f);
        } else {
            canvas.translate(0f, (float) getHeight());
            canvas.rotate(-90.0f);
        }

        float translateY = getPaddingLeft() + getWidth() / 2.0f
                + (fontMetrics.ascent + fontMetrics.descent);
        float translateX = (float) getPaddingTop();
        canvas.translate(translateX, translateY);

        getLayout().draw(canvas);

        canvas.restore();
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(heightMeasureSpec, widthMeasureSpec);

        String text = getText().toString();
        if (mTextPaint == null) {
            mTextPaint = new TextPaint();
        }
        mTextPaint.setColor(getCurrentTextColor());
        mTextPaint.drawableState = getDrawableState();
        mTextPaint.getTextBounds(text, 0, text.length(), text_bounds);

        int width = measureWidth(widthMeasureSpec);
        int height = measureHeight(heightMeasureSpec);
        setMeasuredDimension(width, height);
    }
}
