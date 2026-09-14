package com.nostra13.dcloudimageloader.core.display;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.widget.ImageView;
import com.nostra13.dcloudimageloader.core.assist.LoadedFrom;
import com.nostra13.dcloudimageloader.core.imageaware.ImageAware;
import com.nostra13.dcloudimageloader.core.imageaware.ImageViewAware;
import com.nostra13.dcloudimageloader.utils.L;

/* JADX INFO: loaded from: classes.dex */
public class RoundedBitmapDisplayer implements BitmapDisplayer {
    private final int roundPixels;

    public RoundedBitmapDisplayer(int i) {
        this.roundPixels = i;
    }

    private static Bitmap getRoundedCornerBitmap(Bitmap bitmap, int i, Rect rect, Rect rect2, int i2, int i3) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        RectF rectF = new RectF(rect2);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-16777216);
        float f = i;
        canvas.drawRoundRect(rectF, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rectF, paint);
        return bitmapCreateBitmap;
    }

    public static Bitmap roundCorners(Bitmap bitmap, ImageViewAware imageViewAware, int i) {
        int i2;
        int iMin;
        Rect rect;
        int i3;
        int i4;
        Rect rect2;
        int iMin2;
        int i5;
        int iMin3;
        int i6;
        Rect rect3;
        Rect rect4;
        ImageView wrappedView = imageViewAware.getWrappedView();
        if (wrappedView == null) {
            L.w("View is collected probably. Can't round bitmap corners without view properties.", new Object[0]);
            return bitmap;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int width2 = imageViewAware.getWidth();
        int height2 = imageViewAware.getHeight();
        if (width2 <= 0) {
            width2 = width;
        }
        if (height2 <= 0) {
            height2 = height;
        }
        ImageView.ScaleType scaleType = wrappedView.getScaleType();
        if (scaleType == null) {
            return bitmap;
        }
        int iOrdinal = scaleType.ordinal();
        if (iOrdinal != 1) {
            if (iOrdinal != 5) {
                if (iOrdinal == 6) {
                    rect4 = new Rect(0, 0, width, height);
                    rect = new Rect(0, 0, width2, height2);
                } else if (iOrdinal == 7 || iOrdinal == 8) {
                    iMin2 = Math.min(width2, width);
                    iMin3 = Math.min(height2, height);
                    int i7 = (width - iMin2) / 2;
                    int i8 = (height - iMin3) / 2;
                    rect3 = new Rect(i7, i8, i7 + iMin2, i8 + iMin3);
                    rect = new Rect(0, 0, iMin2, iMin3);
                } else {
                    float f = width2;
                    float f2 = height2;
                    float f3 = width;
                    float f4 = height;
                    if (f / f2 > f3 / f4) {
                        width2 = (int) (f3 / (f4 / f2));
                    } else {
                        height2 = (int) (f4 / (f3 / f));
                    }
                    rect4 = new Rect(0, 0, width, height);
                    rect = new Rect(0, 0, width2, height2);
                }
                i3 = width2;
                i4 = height2;
                rect2 = rect4;
            } else {
                float f5 = width2;
                float f6 = height2;
                float f7 = width;
                float f8 = height;
                if (f5 / f6 > f7 / f8) {
                    int i9 = (int) (f6 * (f7 / f5));
                    i6 = (height - i9) / 2;
                    iMin3 = i9;
                    iMin2 = width;
                    i5 = 0;
                } else {
                    iMin2 = (int) (f5 * (f8 / f6));
                    i5 = (width - iMin2) / 2;
                    iMin3 = height;
                    i6 = 0;
                }
                rect3 = new Rect(i5, i6, i5 + iMin2, i6 + iMin3);
                rect = new Rect(0, 0, iMin2, iMin3);
            }
            i3 = iMin2;
            i4 = iMin3;
            rect2 = rect3;
        } else {
            float f9 = width;
            float f10 = height;
            if (width2 / height2 > f9 / f10) {
                iMin = Math.min(height2, height);
                i2 = (int) (f9 / (f10 / iMin));
            } else {
                int iMin4 = Math.min(width2, width);
                int i10 = (int) (f10 / (f9 / iMin4));
                i2 = iMin4;
                iMin = i10;
            }
            int i11 = (width2 - i2) / 2;
            int i12 = (height2 - iMin) / 2;
            Rect rect5 = new Rect(0, 0, width, height);
            rect = new Rect(i11, i12, i2 + i11, iMin + i12);
            i3 = width2;
            i4 = height2;
            rect2 = rect5;
        }
        try {
            return getRoundedCornerBitmap(bitmap, i, rect2, rect, i3, i4);
        } catch (OutOfMemoryError e) {
            L.e(e, "Can't create bitmap with rounded corners. Not enough memory.", new Object[0]);
            return bitmap;
        }
    }

    @Override // com.nostra13.dcloudimageloader.core.display.BitmapDisplayer
    public Bitmap display(Bitmap bitmap, ImageAware imageAware, LoadedFrom loadedFrom) {
        if (!(imageAware instanceof ImageViewAware)) {
            throw new IllegalArgumentException("ImageAware should wrap ImageView. ImageViewAware is expected.");
        }
        Bitmap bitmapRoundCorners = roundCorners(bitmap, (ImageViewAware) imageAware, this.roundPixels);
        imageAware.setImageBitmap(bitmapRoundCorners);
        return bitmapRoundCorners;
    }
}
