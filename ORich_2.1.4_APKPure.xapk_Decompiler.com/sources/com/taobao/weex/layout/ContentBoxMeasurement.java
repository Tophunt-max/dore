package com.taobao.weex.layout;

import com.taobao.weex.common.Destroyable;
import com.taobao.weex.ui.component.WXComponent;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class ContentBoxMeasurement implements Serializable, Destroyable {
    protected WXComponent mComponent;
    protected float mMeasureHeight;
    protected float mMeasureWidth;

    public abstract void layoutAfter(float f, float f2);

    public abstract void layoutBefore();

    public abstract void measureInternal(float f, float f2, int i, int i2);

    public ContentBoxMeasurement() {
        this.mComponent = null;
    }

    public ContentBoxMeasurement(WXComponent wXComponent) {
        this.mComponent = wXComponent;
    }

    public final void measure(float f, float f2, int i, int i2) {
        measureInternal(f, f2, i, i2);
    }

    public float getWidth() {
        return this.mMeasureWidth;
    }

    public float getHeight() {
        return this.mMeasureHeight;
    }

    @Override // com.taobao.weex.common.Destroyable
    public void destroy() {
        this.mComponent = null;
    }
}
