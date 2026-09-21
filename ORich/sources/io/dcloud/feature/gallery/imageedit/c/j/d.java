package io.dcloud.feature.gallery.imageedit.c.j;

import android.graphics.Matrix;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    private static final Matrix d = new Matrix();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f661a;
    private float b;
    private float c;

    public d(View view) {
        this.f661a = view;
    }

    public boolean a(View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.b = motionEvent.getX();
            this.c = motionEvent.getY();
            Matrix matrix = d;
            matrix.reset();
            matrix.setRotate(view.getRotation());
            return true;
        }
        if (actionMasked != 2) {
            return false;
        }
        float[] fArr = {motionEvent.getX() - this.b, motionEvent.getY() - this.c};
        d.mapPoints(fArr);
        view.setTranslationX(this.f661a.getTranslationX() + fArr[0]);
        view.setTranslationY(this.f661a.getTranslationY() + fArr[1]);
        return true;
    }
}
