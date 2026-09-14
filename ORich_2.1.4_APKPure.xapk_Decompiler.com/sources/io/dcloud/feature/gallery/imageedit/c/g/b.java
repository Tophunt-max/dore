package io.dcloud.feature.gallery.imageedit.c.g;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import io.dcloud.feature.gallery.imageedit.c.g.a;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public class b implements a {
    RectF e = new RectF();
    RectF f = new RectF();
    RectF g = new RectF();
    RectF h = new RectF();
    RectF i = new RectF();
    float[] j = new float[16];
    float[] k = new float[32];
    float[][] l = (float[][]) Array.newInstance((Class<?>) float.class, 2, 4);
    private boolean m = false;
    private boolean n = true;
    private boolean o = false;
    Matrix p = new Matrix();
    Paint q;
    public int r;
    private float[] s;
    private boolean t;

    public b() {
        new Path();
        Paint paint = new Paint(1);
        this.q = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.q.setStrokeCap(Paint.Cap.SQUARE);
        this.r = 0;
        this.s = new float[]{1.0f, 1.0f};
        this.t = false;
    }

    public void a(RectF rectF, float f) {
        RectF rectF2 = new RectF();
        this.p.setRotate(f, rectF.centerX(), rectF.centerY());
        this.p.mapRect(rectF2, rectF);
        c(rectF2.width(), rectF2.height());
    }

    public boolean b() {
        this.f.set(this.e);
        this.g.set(this.e);
        io.dcloud.feature.gallery.imageedit.c.k.a.a(this.h, this.g, 60.0f);
        boolean z = !this.g.equals(this.f);
        this.o = z;
        return z;
    }

    void c(float f, float f2) {
        c(true);
        if (this.t) {
            float[] fArr = this.s;
            if ((f / fArr[0]) * fArr[1] > f2) {
                f = (f2 / fArr[1]) * fArr[0];
            } else {
                f2 = (f / fArr[0]) * fArr[1];
            }
        }
        this.e.set(0.0f, 0.0f, f, f2);
        io.dcloud.feature.gallery.imageedit.c.k.a.a(this.h, this.e, 60.0f);
        this.g.set(this.e);
    }

    public void d(float f, float f2) {
        this.i.set(0.0f, 0.0f, f, f2);
        this.h.set(0.0f, this.r, f, f2 * 0.85f);
        if (this.e.isEmpty()) {
            return;
        }
        io.dcloud.feature.gallery.imageedit.c.k.a.a(this.h, this.e);
        this.g.set(this.e);
    }

    public void d(boolean z) {
    }

    public void e(float f, float f2) {
        if (f <= 0.0f || f2 <= 0.0f) {
            return;
        }
        this.s = new float[]{f, f2};
        this.t = true;
    }

    public boolean f() {
        return this.n;
    }

    public boolean e() {
        return this.t;
    }

    public void a(float f) {
        if (this.o) {
            RectF rectF = this.e;
            RectF rectF2 = this.f;
            float f2 = rectF2.left;
            RectF rectF3 = this.g;
            float f3 = f2 + ((rectF3.left - f2) * f);
            float f4 = rectF2.top;
            float f5 = f4 + ((rectF3.top - f4) * f);
            float f6 = rectF2.right;
            float f7 = f6 + ((rectF3.right - f6) * f);
            float f8 = rectF2.bottom;
            rectF.set(f3, f5, f7, f8 + ((rectF3.bottom - f8) * f));
        }
    }

    public void b(boolean z) {
        this.o = z;
    }

    public RectF b(float f, float f2) {
        RectF rectF = new RectF(this.e);
        rectF.offset(f, f2);
        return rectF;
    }

    public void a(boolean z) {
        this.m = z;
    }

    public boolean d() {
        return this.o;
    }

    public RectF a() {
        return this.g;
    }

    public void a(Canvas canvas) {
        if (this.n) {
            return;
        }
        int i = 0;
        float[] fArr = {this.e.width(), this.e.height()};
        for (int i2 = 0; i2 < this.l.length; i2++) {
            int i3 = 0;
            while (true) {
                float[][] fArr2 = this.l;
                if (i3 < fArr2[i2].length) {
                    fArr2[i2][i3] = fArr[i2] * a.f654a[i3];
                    i3++;
                }
            }
        }
        int i4 = 0;
        while (true) {
            float[] fArr3 = this.j;
            if (i4 >= fArr3.length) {
                break;
            }
            fArr3[i4] = this.l[i4 & 1][(1935858840 >>> (i4 << 1)) & 3];
            i4++;
        }
        while (true) {
            float[] fArr4 = this.k;
            if (i < fArr4.length) {
                float f = this.l[i & 1][(179303760 >>> i) & 1];
                float[] fArr5 = a.c;
                byte[] bArr = a.d;
                fArr4[i] = f + fArr5[bArr[i] & 3] + a.b[bArr[i] >> 2];
                i++;
            } else {
                RectF rectF = this.e;
                canvas.translate(rectF.left, rectF.top);
                this.q.setStyle(Paint.Style.STROKE);
                this.q.setColor(-2130706433);
                this.q.setStrokeWidth(3.0f);
                canvas.drawLines(this.j, this.q);
                RectF rectF2 = this.e;
                canvas.translate(-rectF2.left, -rectF2.top);
                this.q.setColor(-1);
                this.q.setStrokeWidth(4.0f);
                canvas.drawRect(this.e, this.q);
                RectF rectF3 = this.e;
                canvas.translate(rectF3.left, rectF3.top);
                this.q.setColor(-1);
                this.q.setStrokeWidth(10.0f);
                canvas.drawLines(this.k, this.q);
                return;
            }
        }
    }

    public boolean c() {
        return this.m;
    }

    public void c(boolean z) {
        this.n = z;
    }

    public a.EnumC0046a a(float f, float f2) {
        if (!a.EnumC0046a.a(this.e, -48.0f, f, f2) || a.EnumC0046a.a(this.e, 48.0f, f, f2)) {
            return null;
        }
        float[] fArrA = a.EnumC0046a.a(this.e, 0.0f, 0.0f);
        float[] fArr = {f, f2};
        int i = 0;
        for (int i2 = 0; i2 < fArrA.length; i2++) {
            if (Math.abs(fArrA[i2] - fArr[i2 >> 1]) < 48.0f) {
                i |= 1 << i2;
            }
        }
        a.EnumC0046a enumC0046aA = a.EnumC0046a.a(i);
        if (enumC0046aA != null) {
            this.o = false;
        }
        return enumC0046aA;
    }

    public void a(a.EnumC0046a enumC0046a, float f, float f2) {
        boolean z = this.t;
        enumC0046a.a(z ? this.g : this.h, this.e, f, f2, this.s, z);
    }

    public void a(int i) {
        this.r = i;
    }
}
