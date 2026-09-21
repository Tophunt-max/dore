package io.dcloud.feature.gallery.imageedit.c;

import android.text.TextUtils;
import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f652a;
    private int b;
    private int c;

    public d(String str, int i, int i2) {
        this.b = -1;
        this.c = 0;
        this.f652a = str;
        this.b = i;
        this.c = i2;
    }

    public int a() {
        return this.c;
    }

    public int b() {
        return this.b;
    }

    public String c() {
        return this.f652a;
    }

    public boolean d() {
        return TextUtils.isEmpty(this.f652a);
    }

    public String toString() {
        return "IMGText{text='" + this.f652a + Operators.SINGLE_QUOTE + ", color=" + this.b + Operators.BLOCK_END;
    }
}
