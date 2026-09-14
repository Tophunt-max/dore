package io.dcloud.feature.gg.dcloud;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.View;
import io.dcloud.feature.gg.dcloud.ADHandler;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapView extends View {
    Bitmap backgroundBitmap;
    RectF backgroundRect;
    RectF dest;
    ADHandler.AdData mAdData;
    Bitmap mDrawable;
    int mMaxHeight;
    int mMaxWidth;
    Paint paint;
    Rect src;

    public BitmapView(Context context, Bitmap bitmap, ADHandler.AdData adData) {
        super(context);
        this.mDrawable = null;
        this.mMaxHeight = 0;
        this.mMaxWidth = 0;
        this.mAdData = null;
        this.paint = new Paint();
        this.src = null;
        this.dest = null;
        this.backgroundBitmap = null;
        this.backgroundRect = null;
        this.mDrawable = bitmap;
        this.mAdData = adData;
    }

    private void blurBitmap(Bitmap bitmap) {
        RenderScript renderScriptCreate = RenderScript.create(getContext());
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, allocationCreateFromBitmap.getElement());
        scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
        scriptIntrinsicBlurCreate.setRadius(20.0f);
        scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap);
        allocationCreateFromBitmap.copyTo(bitmap);
        renderScriptCreate.destroy();
    }

    private void drawBackgroundImage(Canvas canvas) {
        float height = this.mDrawable.getHeight();
        float width = this.mDrawable.getWidth();
        float height2 = getHeight() > 0 ? getHeight() : canvas.getHeight();
        float width2 = getWidth() > 0 ? getWidth() : canvas.getWidth();
        float f = height / width;
        float f2 = (height2 / width2) - f;
        if (f2 <= 0.15d) {
            this.dest = new RectF(0.0f, 0.0f, width2, height2);
            return;
        }
        float f3 = (height2 - (f * width2)) / 2.0f;
        this.dest = new RectF(0.0f, f3, width2, height2 - f3);
        if (this.backgroundRect == null) {
            int i = (int) width;
            int i2 = (int) height;
            this.backgroundBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(this.backgroundBitmap);
            canvas2.drawBitmap(this.mDrawable, new Rect(0, 0, i, i2), new Rect(0, 0, i, i2), new Paint());
            canvas2.drawColor(getBright(this.mDrawable) >= 128 ? 1711276032 : 1728053247);
            float f4 = (f2 * width) / 2.0f;
            this.backgroundRect = new RectF(-f4, 0.0f, width2 + f4, height2);
            blurBitmap(this.backgroundBitmap);
        }
    }

    private void testData(Canvas canvas) {
        canvas.save();
        canvas.translate(100.0f, 100.0f);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("path=");
        stringBuffer.append(this.mAdData.mImgPath);
        stringBuffer.append("\n");
        stringBuffer.append("tid=");
        stringBuffer.append(this.mAdData.data().optString("tid"));
        new StaticLayout(stringBuffer.toString(), new TextPaint(this.paint), this.mMaxWidth / 2, Layout.Alignment.ALIGN_CENTER, 0.0f, 0.0f, false).draw(canvas);
        canvas.restore();
    }

    public int getBright(Bitmap bitmap) {
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

    protected void initRect() {
        float height = this.mDrawable.getHeight();
        float width = this.mDrawable.getWidth();
        float f = this.mMaxHeight;
        float f2 = this.mMaxWidth;
        float f3 = height / width;
        float f4 = f / f2;
        if (f3 > f4) {
            this.src = new Rect(0, 0, (int) width, (int) (width * f4));
            this.dest = new RectF(getLeft(), getTop(), this.mMaxWidth, this.mMaxHeight);
        } else {
            this.src = null;
            this.dest = new RectF(getLeft(), getTop(), this.mMaxWidth, f2 * f3);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.backgroundBitmap = null;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap = this.mDrawable;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        drawBackgroundImage(canvas);
        Bitmap bitmap2 = this.backgroundBitmap;
        if (bitmap2 != null) {
            canvas.drawBitmap(bitmap2, this.src, this.backgroundRect, this.paint);
        }
        canvas.drawBitmap(this.mDrawable, this.src, this.dest, this.paint);
    }
}
