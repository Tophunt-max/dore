package io.dcloud.feature.gallery.imageedit.c;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import io.dcloud.feature.gallery.imageedit.c.g.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static final Bitmap E = Bitmap.createBitmap(100, 100, Bitmap.Config.ARGB_8888);
    private Paint A;
    private Paint B;
    private Matrix C;
    private List<c> D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Bitmap f648a;
    private Bitmap b;
    private b c;
    private a.EnumC0046a m;
    private io.dcloud.feature.gallery.imageedit.c.b q;
    private boolean r;
    private RectF s;
    private boolean t;
    private boolean u;
    private io.dcloud.feature.gallery.imageedit.c.j.a v;
    private List<io.dcloud.feature.gallery.imageedit.c.j.a> w;
    private List<io.dcloud.feature.gallery.imageedit.c.c> x;
    private List<io.dcloud.feature.gallery.imageedit.c.c> y;
    private Paint z;
    private RectF d = new RectF();
    private RectF e = new RectF();
    private RectF f = new RectF();
    private RectF g = new RectF();
    private float h = 0.0f;
    private float i = 0.0f;
    private float j = 0.0f;
    private boolean k = false;
    private boolean l = false;
    private boolean n = true;
    private Path o = new Path();
    private io.dcloud.feature.gallery.imageedit.c.g.b p = new io.dcloud.feature.gallery.imageedit.c.g.b();

    /* JADX INFO: renamed from: io.dcloud.feature.gallery.imageedit.c.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0045a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f649a;

        static {
            int[] iArr = new int[io.dcloud.feature.gallery.imageedit.c.b.values().length];
            f649a = iArr;
            try {
                iArr[io.dcloud.feature.gallery.imageedit.c.b.DOODLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f649a[io.dcloud.feature.gallery.imageedit.c.b.MOSAIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public interface b {
        void a();

        void b();
    }

    public interface c {
        void a();
    }

    public a() {
        io.dcloud.feature.gallery.imageedit.c.b bVar = io.dcloud.feature.gallery.imageedit.c.b.NONE;
        this.q = bVar;
        io.dcloud.feature.gallery.imageedit.c.b bVar2 = io.dcloud.feature.gallery.imageedit.c.b.CLIP;
        this.r = bVar == bVar2;
        this.s = new RectF();
        this.t = false;
        this.u = false;
        this.w = new ArrayList();
        this.x = new ArrayList();
        this.y = new ArrayList();
        this.C = new Matrix();
        this.o.setFillType(Path.FillType.WINDING);
        Paint paint = new Paint(1);
        this.z = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.z.setStrokeWidth(14.0f);
        this.z.setColor(-65536);
        this.z.setPathEffect(new CornerPathEffect(14.0f));
        this.z.setStrokeCap(Paint.Cap.ROUND);
        this.z.setStrokeJoin(Paint.Join.ROUND);
        this.D = new ArrayList();
        this.f648a = E;
        if (this.q == bVar2) {
            g();
        }
    }

    private void b(float f) {
        this.C.setRotate(f, this.e.centerX(), this.e.centerY());
        for (io.dcloud.feature.gallery.imageedit.c.j.a aVar : this.w) {
            this.C.mapRect(aVar.getFrame());
            aVar.setRotation(aVar.getRotation() + f);
            aVar.setX(aVar.getFrame().centerX() - aVar.getPivotX());
            aVar.setY(aVar.getFrame().centerY() - aVar.getPivotY());
        }
    }

    private void g() {
        if (this.B == null) {
            Paint paint = new Paint(1);
            this.B = paint;
            paint.setColor(-872415232);
            this.B.setStyle(Paint.Style.FILL);
        }
    }

    private void l() {
        Bitmap bitmap;
        if (this.b == null && (bitmap = this.f648a) != null && this.q == io.dcloud.feature.gallery.imageedit.c.b.MOSAIC) {
            int iRound = Math.round(bitmap.getWidth() / 64.0f);
            int iRound2 = Math.round(this.f648a.getHeight() / 64.0f);
            int iMax = Math.max(iRound, 8);
            int iMax2 = Math.max(iRound2, 8);
            if (this.A == null) {
                Paint paint = new Paint(1);
                this.A = paint;
                paint.setFilterBitmap(false);
                this.A.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            }
            this.b = Bitmap.createScaledBitmap(this.f648a, iMax, iMax2, false);
        }
    }

    private void n() {
        this.t = false;
        h(this.s.width(), this.s.height());
        if (this.q == io.dcloud.feature.gallery.imageedit.c.b.CLIP) {
            this.p.a(this.e, f());
        }
    }

    private void o() {
        if (this.q == io.dcloud.feature.gallery.imageedit.c.b.CLIP) {
            this.p.a(this.e, f());
        }
    }

    private void v() {
        if (this.e.isEmpty()) {
            return;
        }
        float fMin = Math.min(this.s.width() / this.e.width(), this.s.height() / this.e.height());
        this.C.setScale(fMin, fMin, this.e.centerX(), this.e.centerY());
        this.C.postTranslate(this.s.centerX() - this.e.centerX(), this.s.centerY() - this.e.centerY());
        this.C.mapRect(this.d);
        this.C.mapRect(this.e);
    }

    public void a(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.f648a = bitmap;
        Bitmap bitmap2 = this.b;
        if (bitmap2 != null) {
            bitmap2.recycle();
        }
        this.b = null;
        l();
        n();
    }

    public io.dcloud.feature.gallery.imageedit.c.b c() {
        return this.q;
    }

    public void d(io.dcloud.feature.gallery.imageedit.c.j.a aVar) {
        b(aVar);
    }

    public void e(io.dcloud.feature.gallery.imageedit.c.j.a aVar) {
        if (this.v == aVar) {
            this.v = null;
        } else {
            this.w.remove(aVar);
        }
    }

    public void f(io.dcloud.feature.gallery.imageedit.c.j.a aVar) {
        if (this.v != aVar) {
            c(aVar);
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        Bitmap bitmap = E;
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    public boolean h() {
        return this.x.isEmpty();
    }

    public boolean i() {
        return this.r;
    }

    public boolean j() {
        return this.u;
    }

    public boolean k() {
        return this.y.isEmpty();
    }

    public boolean m() {
        return this.p.b();
    }

    public void p() {
    }

    public void q() {
    }

    public void r() {
        Bitmap bitmap = this.f648a;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.f648a.recycle();
    }

    public void s() {
        e(d() - (d() % 360.0f));
        this.e.set(this.d);
        this.p.a(this.e, f());
    }

    public void t() {
        b(this.v);
    }

    public void u() {
        this.C.setScale(e(), e());
        Matrix matrix = this.C;
        RectF rectF = this.d;
        matrix.postTranslate(rectF.left, rectF.top);
        this.C.mapRect(this.e, this.g);
        float fD = d() % 360.0f;
        if (Math.abs(fD) >= 180.0f) {
            fD = 360.0f - Math.abs(fD);
        }
        c(fD);
        e(this.h);
        this.k = true;
    }

    public void w() {
        if (this.x.isEmpty()) {
            return;
        }
        this.x.remove(r0.size() - 1);
    }

    public void x() {
        if (this.y.isEmpty()) {
            return;
        }
        this.y.remove(r0.size() - 1);
    }

    private void d(float f, float f2) {
        this.d.set(0.0f, 0.0f, this.f648a.getWidth(), this.f648a.getHeight());
        this.e.set(this.d);
        this.p.d(f, f2);
        if (this.e.isEmpty()) {
            return;
        }
        v();
        this.t = true;
        o();
    }

    public io.dcloud.feature.gallery.imageedit.c.i.a c(float f, float f2) {
        return new io.dcloud.feature.gallery.imageedit.c.i.a(f, f2, e(), d());
    }

    public void h(float f, float f2) {
        if (f == 0.0f || f2 == 0.0f) {
            return;
        }
        this.s.set(0.0f, 0.0f, f, f2);
        if (this.t) {
            this.C.setTranslate(this.s.centerX() - this.e.centerX(), this.s.centerY() - this.e.centerY());
            this.C.mapRect(this.d);
            this.C.mapRect(this.e);
        } else {
            d(f, f2);
        }
        this.p.d(f, f2);
        this.u = true;
        a();
    }

    private void c(io.dcloud.feature.gallery.imageedit.c.j.a aVar) {
        if (aVar == null) {
            return;
        }
        b(this.v);
        if (aVar.b()) {
            this.v = aVar;
            this.w.remove(aVar);
        } else {
            aVar.a();
        }
    }

    public void f(Canvas canvas) {
        if (this.w.isEmpty()) {
            return;
        }
        canvas.save();
        for (io.dcloud.feature.gallery.imageedit.c.j.a aVar : this.w) {
            if (!aVar.b()) {
                float x = aVar.getX() + aVar.getPivotX();
                float y = aVar.getY() + aVar.getPivotY();
                canvas.save();
                this.C.setTranslate(aVar.getX(), aVar.getY());
                this.C.postScale(aVar.getScale(), aVar.getScale(), x, y);
                this.C.postRotate(aVar.getRotation(), x, y);
                canvas.concat(this.C);
                aVar.a(canvas);
                canvas.restore();
            }
        }
        canvas.restore();
    }

    public void e(Canvas canvas) {
        this.C.setRotate(d(), this.e.centerX(), this.e.centerY());
        this.C.mapRect(this.f, this.p.c() ? this.d : this.e);
        canvas.clipRect(this.f);
    }

    public void g(float f, float f2) {
        b bVar;
        io.dcloud.feature.gallery.imageedit.c.b bVar2 = this.q;
        if ((bVar2 == io.dcloud.feature.gallery.imageedit.c.b.DOODLE || bVar2 == io.dcloud.feature.gallery.imageedit.c.b.MOSAIC) && (bVar = this.c) != null) {
            bVar.a();
        }
        if (this.m != null) {
            this.m = null;
        }
    }

    public RectF b() {
        return this.e;
    }

    public io.dcloud.feature.gallery.imageedit.c.i.a b(float f, float f2) {
        io.dcloud.feature.gallery.imageedit.c.i.a aVar = new io.dcloud.feature.gallery.imageedit.c.i.a(f, f2, e(), f());
        if (this.q == io.dcloud.feature.gallery.imageedit.c.b.CLIP) {
            RectF rectF = new RectF(this.p.a());
            rectF.offset(f, f2);
            if (this.p.f()) {
                RectF rectF2 = new RectF();
                this.C.setRotate(f(), this.e.centerX(), this.e.centerY());
                this.C.mapRect(rectF2, this.e);
                aVar.a(io.dcloud.feature.gallery.imageedit.c.k.a.b(rectF, rectF2));
            } else {
                RectF rectF3 = new RectF();
                if (this.p.d()) {
                    this.C.setRotate(f() - d(), this.e.centerX(), this.e.centerY());
                    this.C.mapRect(rectF3, this.p.b(f, f2));
                    aVar.a(io.dcloud.feature.gallery.imageedit.c.k.a.b(rectF, rectF3, this.e.centerX(), this.e.centerY()));
                } else {
                    this.C.setRotate(f(), this.e.centerX(), this.e.centerY());
                    this.C.mapRect(rectF3, this.d);
                    aVar.a(io.dcloud.feature.gallery.imageedit.c.k.a.a(rectF, rectF3, this.e.centerX(), this.e.centerY()));
                }
            }
        } else {
            RectF rectF4 = new RectF();
            this.C.setRotate(f(), this.e.centerX(), this.e.centerY());
            this.C.mapRect(rectF4, this.e);
            RectF rectF5 = new RectF(this.s);
            rectF5.offset(f, f2);
            aVar.a(io.dcloud.feature.gallery.imageedit.c.k.a.a(rectF5, rectF4, this.k));
            this.k = false;
        }
        return aVar;
    }

    public void e(float f, float f2) {
        this.n = true;
        m();
        this.p.d(true);
    }

    public int c(Canvas canvas) {
        int iSaveLayer = canvas.saveLayer(this.d, null, 31);
        if (!k()) {
            canvas.save();
            float fE = e();
            RectF rectF = this.d;
            canvas.translate(rectF.left, rectF.top);
            canvas.scale(fE, fE);
            Iterator<io.dcloud.feature.gallery.imageedit.c.c> it = this.y.iterator();
            while (it.hasNext()) {
                it.next().b(canvas, this.z);
            }
            canvas.restore();
        }
        return iSaveLayer;
    }

    public void e(float f) {
        this.j = f;
    }

    public float e() {
        return (this.d.width() * 1.0f) / this.f648a.getWidth();
    }

    public void d(Canvas canvas) {
        if (this.q == io.dcloud.feature.gallery.imageedit.c.b.CLIP && this.n) {
            this.o.reset();
            Path path = this.o;
            RectF rectF = this.d;
            path.addRect(rectF.left - 2.0f, rectF.top - 2.0f, rectF.right + 2.0f, rectF.bottom + 2.0f, Path.Direction.CW);
            this.o.addRect(this.e, Path.Direction.CCW);
            canvas.drawPath(this.o, this.B);
        }
    }

    public void a(io.dcloud.feature.gallery.imageedit.c.b bVar) {
        if (this.q == bVar) {
            return;
        }
        b(this.v);
        io.dcloud.feature.gallery.imageedit.c.b bVar2 = io.dcloud.feature.gallery.imageedit.c.b.CLIP;
        if (bVar == bVar2) {
            c(true);
        }
        this.q = bVar;
        if (bVar == bVar2) {
            g();
            this.h = d();
            this.g.set(this.e);
            float fE = 1.0f / e();
            Matrix matrix = this.C;
            RectF rectF = this.d;
            matrix.setTranslate(-rectF.left, -rectF.top);
            this.C.postScale(fE, fE);
            this.C.mapRect(this.g);
            this.p.a(this.e, f());
            return;
        }
        if (bVar == io.dcloud.feature.gallery.imageedit.c.b.MOSAIC) {
            l();
        }
        this.p.a(false);
    }

    public void c(float f) {
        this.i = f;
    }

    public float d() {
        return this.i;
    }

    public void f(float f, float f2) {
        b bVar;
        this.n = false;
        b(this.v);
        io.dcloud.feature.gallery.imageedit.c.b bVar2 = this.q;
        if (bVar2 == io.dcloud.feature.gallery.imageedit.c.b.CLIP) {
            this.m = this.p.a(f, f2);
            this.p.d(false);
        } else if ((bVar2 == io.dcloud.feature.gallery.imageedit.c.b.DOODLE || bVar2 == io.dcloud.feature.gallery.imageedit.c.b.MOSAIC) && (bVar = this.c) != null) {
            bVar.b();
        }
    }

    private void c(boolean z) {
        if (z != this.r) {
            b(z ? -d() : f());
            this.r = z;
        }
    }

    public void d(float f) {
        b(f, this.e.centerX(), this.e.centerY());
    }

    public float f() {
        return this.j;
    }

    public io.dcloud.feature.gallery.imageedit.c.i.a a(float f, float f2) {
        RectF rectFB = this.p.b(f, f2);
        this.C.setRotate(-d(), this.e.centerX(), this.e.centerY());
        this.C.mapRect(this.e, rectFB);
        return new io.dcloud.feature.gallery.imageedit.c.i.a(f + (this.e.centerX() - rectFB.centerX()), f2 + (this.e.centerY() - rectFB.centerY()), e(), d());
    }

    private void b(io.dcloud.feature.gallery.imageedit.c.j.a aVar) {
        if (aVar == null) {
            return;
        }
        if (!aVar.b()) {
            if (!this.w.contains(aVar)) {
                this.w.add(aVar);
            }
            if (this.v == aVar) {
                this.v = null;
                return;
            }
            return;
        }
        aVar.dismiss();
    }

    public <S extends io.dcloud.feature.gallery.imageedit.c.j.a> void a(S s) {
        if (s != null) {
            c(s);
        }
    }

    public void a(io.dcloud.feature.gallery.imageedit.c.c cVar, float f, float f2) {
        if (cVar == null) {
            return;
        }
        float fE = 1.0f / e();
        this.C.setTranslate(f, f2);
        this.C.postRotate(-d(), this.e.centerX(), this.e.centerY());
        Matrix matrix = this.C;
        RectF rectF = this.d;
        matrix.postTranslate(-rectF.left, -rectF.top);
        this.C.postScale(fE, fE);
        cVar.a(this.C);
        int i = C0045a.f649a[cVar.b().ordinal()];
        if (i == 1) {
            cVar.a(cVar.d() * fE);
            this.x.add(cVar);
        } else {
            if (i != 2) {
                return;
            }
            cVar.a(cVar.d() * fE);
            this.y.add(cVar);
        }
    }

    public void b(c cVar) {
        List<c> list = this.D;
        if (list != null) {
            list.remove(cVar);
        }
    }

    public void b(Canvas canvas) {
        canvas.clipRect(this.p.c() ? this.d : this.e);
        canvas.drawBitmap(this.f648a, (Rect) null, this.d, (Paint) null);
    }

    public void b(float f, float f2, float f3) {
        a(f / e(), f2, f3);
    }

    public void a(c cVar) {
        if (this.D == null) {
            this.D = new ArrayList();
        }
        this.D.add(cVar);
    }

    public void b(boolean z) {
        this.l = false;
    }

    public void b(int i) {
        this.p.a(i);
    }

    private void a() {
        List<c> list = this.D;
        if (list != null) {
            for (c cVar : list) {
                if (cVar != null) {
                    cVar.a();
                }
            }
        }
    }

    public void a(Canvas canvas, int i) {
        canvas.drawBitmap(this.b, (Rect) null, this.d, this.A);
        canvas.restoreToCount(i);
    }

    public void a(Canvas canvas) {
        if (h()) {
            return;
        }
        canvas.save();
        float fE = e();
        RectF rectF = this.d;
        canvas.translate(rectF.left, rectF.top);
        canvas.scale(fE, fE);
        Iterator<io.dcloud.feature.gallery.imageedit.c.c> it = this.x.iterator();
        while (it.hasNext()) {
            it.next().a(canvas, this.z);
        }
        canvas.restore();
    }

    public void a(Canvas canvas, float f, float f2) {
        if (this.q == io.dcloud.feature.gallery.imageedit.c.b.CLIP) {
            this.p.a(canvas);
        }
    }

    public io.dcloud.feature.gallery.imageedit.c.i.a a(float f, float f2, float f3, float f4) {
        if (this.q != io.dcloud.feature.gallery.imageedit.c.b.CLIP) {
            return null;
        }
        this.p.d(false);
        a.EnumC0046a enumC0046a = this.m;
        if (enumC0046a == null) {
            return null;
        }
        this.p.a(enumC0046a, f3, f4);
        RectF rectF = new RectF();
        this.C.setRotate(d(), this.e.centerX(), this.e.centerY());
        this.C.mapRect(rectF, this.d);
        RectF rectFB = this.p.b(f, f2);
        io.dcloud.feature.gallery.imageedit.c.i.a aVar = new io.dcloud.feature.gallery.imageedit.c.i.a(f, f2, e(), f());
        aVar.a(io.dcloud.feature.gallery.imageedit.c.k.a.a(rectFB, rectF, this.e.centerX(), this.e.centerY()));
        return aVar;
    }

    public void a(int i) {
        this.j = Math.round((this.i + i) / 90.0f) * 90;
        if (this.p.e()) {
            this.e.set(this.d);
        }
        this.p.a(this.e, f());
    }

    public void a(float f, float f2, float f3) {
        if (f == 1.0f) {
            return;
        }
        if (Math.max(this.e.width(), this.e.height()) >= 10000.0f || Math.min(this.e.width(), this.e.height()) <= 500.0f) {
            f += (1.0f - f) / 2.0f;
        }
        this.C.setScale(f, f, f2, f3);
        this.C.mapRect(this.d);
        this.C.mapRect(this.e);
        this.d.contains(this.e);
        for (io.dcloud.feature.gallery.imageedit.c.j.a aVar : this.w) {
            this.C.mapRect(aVar.getFrame());
            float x = aVar.getX() + aVar.getPivotX();
            float y = aVar.getY() + aVar.getPivotY();
            aVar.a(f);
            aVar.setX((aVar.getX() + aVar.getFrame().centerX()) - x);
            aVar.setY((aVar.getY() + aVar.getFrame().centerY()) - y);
        }
    }

    public void a(float f) {
        this.p.a(f);
    }

    public boolean a(float f, float f2, boolean z) {
        if (this.q == io.dcloud.feature.gallery.imageedit.c.b.CLIP) {
            boolean z2 = !this.l;
            this.p.b(false);
            this.p.a(true);
            this.p.c(false);
            return z2;
        }
        if (this.r && !this.l) {
            c(false);
        }
        return false;
    }

    public void a(boolean z) {
        this.l = true;
        Log.d("IMGImage", "Homing cancel");
    }

    public void a(int i, int i2) {
        io.dcloud.feature.gallery.imageedit.c.g.b bVar = this.p;
        if (bVar != null) {
            bVar.e(i, i2);
        }
    }

    public void a(b bVar) {
        this.c = bVar;
    }
}
