package com.taobao.weex.ui.view.border;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import com.taobao.weex.base.FloatUtil;

/* JADX INFO: loaded from: classes.dex */
abstract class BorderCorner {
    static final float SWEEP_ANGLE = 45.0f;
    protected float mAngleBisector;
    private RectF mBorderBox;
    private float mOvalBottom;
    private float mOvalLeft;
    private float mOvalRight;
    private float mOvalTop;
    private float mRoundCornerEndX;
    private float mRoundCornerEndY;
    private float mRoundCornerStartX;
    private float mRoundCornerStartY;
    private float mCornerRadius = 0.0f;
    private float mPreBorderWidth = 0.0f;
    private float mPostBorderWidth = 0.0f;
    private boolean hasInnerCorner = false;
    private boolean hasOuterCorner = false;

    protected abstract void prepareOval();

    protected abstract void prepareRoundCorner();

    BorderCorner() {
    }

    final void set(float f, float f2, float f3, RectF rectF, float f4) {
        RectF rectF2;
        boolean z = false;
        if ((FloatUtil.floatsEqual(this.mCornerRadius, f) && FloatUtil.floatsEqual(this.mPreBorderWidth, f2) && FloatUtil.floatsEqual(this.mPostBorderWidth, f3) && FloatUtil.floatsEqual(this.mAngleBisector, f4) && ((rectF2 = this.mBorderBox) == null || !rectF2.equals(rectF))) ? false : true) {
            this.mCornerRadius = f;
            this.mPreBorderWidth = f2;
            this.mPostBorderWidth = f3;
            this.mBorderBox = rectF;
            this.mAngleBisector = f4;
            boolean z2 = f > 0.0f && !FloatUtil.floatsEqual(0.0f, f);
            this.hasOuterCorner = z2;
            if (z2 && getPreBorderWidth() >= 0.0f && getPostBorderWidth() >= 0.0f && getOuterCornerRadius() > getPreBorderWidth() && getOuterCornerRadius() > getPostBorderWidth()) {
                z = true;
            }
            this.hasInnerCorner = z;
            if (this.hasOuterCorner) {
                prepareOval();
            }
            prepareRoundCorner();
        }
    }

    public final void drawRoundedCorner(Canvas canvas, Paint paint, float f) {
        if (!hasOuterCorner()) {
            if (getRoundCornerStartX() == getRoundCornerEndX() && getRoundCornerStartY() == getRoundCornerEndY()) {
                return;
            }
            canvas.drawLine(getRoundCornerStartX(), getRoundCornerStartY(), getRoundCornerEndX(), getRoundCornerEndY(), paint);
            return;
        }
        Paint paint2 = new Paint(paint);
        float fAbs = Math.abs(this.mOvalLeft - this.mOvalRight);
        if (paint.getStrokeWidth() > fAbs) {
            paint2.setStrokeWidth(fAbs);
        }
        paint2.setStrokeCap(Paint.Cap.ROUND);
        if (Build.VERSION.SDK_INT >= 21) {
            canvas.drawArc(this.mOvalLeft, this.mOvalTop, this.mOvalRight, this.mOvalBottom, f, SWEEP_ANGLE, false, paint2);
        } else {
            canvas.drawArc(new RectF(this.mOvalLeft, this.mOvalTop, this.mOvalRight, this.mOvalBottom), f, SWEEP_ANGLE, false, paint2);
        }
    }

    public final float getRoundCornerStartX() {
        return this.mRoundCornerStartX;
    }

    final void setRoundCornerStartX(float f) {
        this.mRoundCornerStartX = f;
    }

    public final float getRoundCornerStartY() {
        return this.mRoundCornerStartY;
    }

    final void setRoundCornerStartY(float f) {
        this.mRoundCornerStartY = f;
    }

    public final float getRoundCornerEndX() {
        return this.mRoundCornerEndX;
    }

    final void setRoundCornerEndX(float f) {
        this.mRoundCornerEndX = f;
    }

    public final float getRoundCornerEndY() {
        return this.mRoundCornerEndY;
    }

    final void setRoundCornerEndY(float f) {
        this.mRoundCornerEndY = f;
    }

    final void setOvalLeft(float f) {
        this.mOvalLeft = f;
    }

    final void setOvalTop(float f) {
        this.mOvalTop = f;
    }

    final void setOvalRight(float f) {
        this.mOvalRight = f;
    }

    final void setOvalBottom(float f) {
        this.mOvalBottom = f;
    }

    boolean hasInnerCorner() {
        return this.hasInnerCorner;
    }

    boolean hasOuterCorner() {
        return this.hasOuterCorner;
    }

    protected final float getPreBorderWidth() {
        return this.mPreBorderWidth;
    }

    protected final float getPostBorderWidth() {
        return this.mPostBorderWidth;
    }

    protected final float getOuterCornerRadius() {
        return this.mCornerRadius;
    }

    protected final float getAngleBisectorDegree() {
        return this.mAngleBisector;
    }

    protected final RectF getBorderBox() {
        return this.mBorderBox;
    }
}
