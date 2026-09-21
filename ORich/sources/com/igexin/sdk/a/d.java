package com.igexin.sdk.a;

import android.content.Context;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f458a;

    public d(Context context) {
        if (context == null) {
            return;
        }
        this.f458a = context.getFilesDir().getPath() + Operators.DIV + "push.pid";
    }

    public void a() {
        if (c()) {
            return;
        }
        try {
            new File(this.f458a).createNewFile();
        } catch (IOException unused) {
        }
    }

    public void b() {
        if (c()) {
            new File(this.f458a).delete();
        }
    }

    public boolean c() {
        return new File(this.f458a).exists();
    }
}
