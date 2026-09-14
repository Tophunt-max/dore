package io.dcloud.f.a.c.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;

/* JADX INFO: loaded from: classes2.dex */
public class a extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Paint f625a = new Paint();
    RectF b = null;
    Bitmap c = null;
    RectF d = null;
    Bitmap e;
    Context f;

    public a(Bitmap bitmap, Context context) {
        this.e = bitmap;
        this.f = context;
    }

    private void a() {
        Rect bounds = getBounds();
        float height = this.e.getHeight();
        float width = this.e.getWidth();
        float fHeight = bounds.height();
        float fWidth = bounds.width();
        float f = height / width;
        float f2 = (fHeight / fWidth) - f;
        if (f2 <= 0.15d) {
            this.b = new RectF(0.0f, 0.0f, fWidth, fHeight);
            return;
        }
        float f3 = (fHeight - (f * fWidth)) / 2.0f;
        this.b = new RectF(0.0f, f3, fWidth, fHeight - f3);
        if (this.d == null) {
            int i = (int) width;
            int i2 = (int) height;
            this.c = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.c);
            canvas.drawBitmap(this.e, new Rect(0, 0, i, i2), new Rect(0, 0, i, i2), new Paint());
            canvas.drawColor(b(this.e) >= 128 ? 1711276032 : 1728053247);
            float f4 = (f2 * width) / 2.0f;
            this.d = new RectF(-f4, 0.0f, fWidth + f4, fHeight);
            a(this.c);
        }
    }

    public int b(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < width; i3++) {
            for (int i4 = 0; i4 < height; i4++) {
                i2++;
                int pixel = bitmap.getPixel(i3, i4);
                i = (int) (((double) i) + (((double) ((((-16711681) | pixel) >> 16) & 255)) * 0.299d) + (((double) ((((-65281) | pixel) >> 8) & 255)) * 0.587d) + (((double) ((pixel | (-256)) & 255)) * 0.114d));
            }
        }
        return i / i2;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Bitmap bitmap = this.e;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        Bitmap bitmap2 = this.c;
        if (bitmap2 != null) {
            canvas.drawBitmap(bitmap2, (Rect) null, this.d, this.f625a);
        } else {
            a();
        }
        canvas.drawBitmap(this.e, (Rect) null, this.b, this.f625a);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    private void a(Bitmap bitmap) {
        RenderScript renderScriptCreate = RenderScript.create(this.f);
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, allocationCreateFromBitmap.getElement());
        scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
        scriptIntrinsicBlurCreate.setRadius(20.0f);
        scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap);
        allocationCreateFromBitmap.copyTo(bitmap);
        renderScriptCreate.destroy();
    }
}
