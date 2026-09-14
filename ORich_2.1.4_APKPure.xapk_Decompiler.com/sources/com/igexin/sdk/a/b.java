package com.igexin.sdk.a;

import android.content.Context;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f456a;

    public b(Context context) {
        if (context == null) {
            return;
        }
        this.f456a = context.getFilesDir().getPath() + Operators.DIV + "push_sd.pid";
    }

    public void a() {
        if (c()) {
            try {
                new File(this.f456a).delete();
            } catch (Exception unused) {
            }
        }
    }

    public void b() {
        try {
            new File(this.f456a).createNewFile();
        } catch (IOException unused) {
        }
    }

    public boolean c() {
        return new File(this.f456a).exists();
    }
}
