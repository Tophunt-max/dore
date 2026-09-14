package com.facebook.animated.webpdrawable;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.facebook.animated.webp.WebPFrame;
import com.facebook.animated.webp.WebPImage;
import com.facebook.fresco.animation.backend.AnimationBackend;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class WebpAnimationBackend implements AnimationBackend {
    private Rect mBounds;
    private final Rect mRenderDstRect = new Rect();
    private final Rect mRenderSrcRect = new Rect();

    @Nullable
    private Bitmap mTempBitmap;
    private final WebPImage mWebPImage;

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public int getSizeInBytes() {
        return 0;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setAlpha(int alpha) {
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
    }

    public static WebpAnimationBackend create(String filePath) throws Throwable {
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(filePath));
            try {
                bufferedInputStream2.mark(Integer.MAX_VALUE);
                byte[] bArr = new byte[bufferedInputStream2.available()];
                bufferedInputStream2.read(bArr);
                WebPImage webPImageCreateFromByteArray = WebPImage.createFromByteArray(bArr, null);
                bufferedInputStream2.reset();
                WebpAnimationBackend webpAnimationBackend = new WebpAnimationBackend(webPImageCreateFromByteArray);
                closeSilently(bufferedInputStream2);
                return webpAnimationBackend;
            } catch (Throwable th) {
                th = th;
                bufferedInputStream = bufferedInputStream2;
                closeSilently(bufferedInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private WebpAnimationBackend(WebPImage webPImage) {
        this.mWebPImage = webPImage;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public boolean drawFrame(Drawable parent, Canvas canvas, int frameNumber) {
        WebPFrame frame = this.mWebPImage.getFrame(frameNumber);
        double dWidth = ((double) this.mBounds.width()) / ((double) parent.getIntrinsicWidth());
        double dHeight = ((double) this.mBounds.height()) / ((double) parent.getIntrinsicHeight());
        int iRound = (int) Math.round(((double) frame.getWidth()) * dWidth);
        int iRound2 = (int) Math.round(((double) frame.getHeight()) * dHeight);
        int xOffset = (int) (((double) frame.getXOffset()) * dWidth);
        int yOffset = (int) (((double) frame.getYOffset()) * dHeight);
        synchronized (this) {
            int iWidth = this.mBounds.width();
            int iHeight = this.mBounds.height();
            prepareTempBitmapForThisSize(iWidth, iHeight);
            Bitmap bitmap = this.mTempBitmap;
            if (bitmap == null) {
                return false;
            }
            frame.renderFrame(iRound, iRound2, bitmap);
            this.mRenderSrcRect.set(0, 0, iWidth, iHeight);
            this.mRenderDstRect.set(xOffset, yOffset, iWidth + xOffset, iHeight + yOffset);
            canvas.drawBitmap(this.mTempBitmap, this.mRenderSrcRect, this.mRenderDstRect, (Paint) null);
            return true;
        }
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public synchronized void setBounds(Rect bounds) {
        this.mBounds = bounds;
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public int getIntrinsicWidth() {
        return this.mWebPImage.getWidth();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public int getIntrinsicHeight() {
        return this.mWebPImage.getHeight();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationBackend
    public void clear() {
        this.mWebPImage.dispose();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getFrameCount() {
        return this.mWebPImage.getFrameCount();
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getFrameDurationMs(int frameNumber) {
        return this.mWebPImage.getFrameDurations()[frameNumber];
    }

    @Override // com.facebook.fresco.animation.backend.AnimationInformation
    public int getLoopCount() {
        return this.mWebPImage.getLoopCount();
    }

    private synchronized void prepareTempBitmapForThisSize(int width, int height) {
        Bitmap bitmap = this.mTempBitmap;
        if (bitmap != null && (bitmap.getWidth() < width || this.mTempBitmap.getHeight() < height)) {
            clearTempBitmap();
        }
        if (this.mTempBitmap == null) {
            this.mTempBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        }
        this.mTempBitmap.eraseColor(0);
    }

    private synchronized void clearTempBitmap() {
        Bitmap bitmap = this.mTempBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.mTempBitmap = null;
        }
    }

    private static void closeSilently(@Nullable Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }
}
