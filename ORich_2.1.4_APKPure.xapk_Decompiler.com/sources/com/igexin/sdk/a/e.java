package com.igexin.sdk.a;

import android.content.Context;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f459a;

    public e(Context context) {
        if (context == null) {
            return;
        }
        this.f459a = context.getFilesDir().getPath() + Operators.DIV + "run.pid";
    }

    public void a() {
        if (b()) {
            return;
        }
        try {
            new File(this.f459a).createNewFile();
        } catch (IOException unused) {
        }
    }

    public boolean b() {
        return new File(this.f459a).exists();
    }
}
