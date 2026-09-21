package io.dcloud.feature.uniapp.dom;

import android.text.TextUtils;
import java.lang.Enum;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbsCSSShorthand<T extends Enum<? extends CSSProperty>> implements Cloneable {
    private float[] values;

    public enum CORNER implements CSSProperty {
        BORDER_TOP_LEFT,
        BORDER_TOP_RIGHT,
        BORDER_BOTTOM_RIGHT,
        BORDER_BOTTOM_LEFT,
        ALL
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public interface CSSProperty {
    }

    public enum EDGE implements CSSProperty {
        TOP,
        BOTTOM,
        LEFT,
        RIGHT,
        ALL
    }

    public enum TYPE {
        MARGIN,
        PADDING,
        BORDER
    }

    public AbsCSSShorthand(float[] fArr) {
        replace(fArr);
    }

    public AbsCSSShorthand() {
        this(false);
    }

    AbsCSSShorthand(boolean z) {
        float[] fArr = new float[Math.max(EDGE.values().length, CORNER.values().length)];
        this.values = fArr;
        if (z) {
            Arrays.fill(fArr, Float.NaN);
        }
    }

    public void set(Enum<? extends CSSProperty> r1, float f) {
        setInternal(r1, f);
    }

    public void set(CORNER corner, float f) {
        setInternal(corner, f);
    }

    public float get(Enum<? extends CSSProperty> r1) {
        return getInternal(r1);
    }

    public float get(CORNER corner) {
        return getInternal(corner);
    }

    public final void replace(float[] fArr) {
        this.values = fArr;
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AbsCSSShorthand mo9clone() throws CloneNotSupportedException {
        return (AbsCSSShorthand) super.clone();
    }

    private void setInternal(Enum<? extends CSSProperty> r3, float f) {
        if (r3.name().equals(EDGE.ALL.name()) || r3.name().equals(CORNER.ALL.name())) {
            Arrays.fill(this.values, f);
        } else {
            this.values[r3.ordinal()] = f;
        }
    }

    private float getInternal(Enum<? extends CSSProperty> r3) {
        if (r3.name().equals(EDGE.ALL.name()) || r3.name().equals(CORNER.ALL.name())) {
            return 0.0f;
        }
        return this.values[r3.ordinal()];
    }

    public String toString() {
        return TextUtils.isEmpty(this.values.toString()) ? "" : Arrays.toString(this.values);
    }
}
