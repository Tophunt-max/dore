package io.dcloud.feature.gallery.imageedit.c.h;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Uri f656a;

    public b(Uri uri) {
        this.f656a = uri;
    }

    public abstract Bitmap a(BitmapFactory.Options options);

    public Uri a() {
        return this.f656a;
    }
}
