package com.igexin.sdk.a;

import android.content.Context;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f457a;

    public c(Context context) {
        if (context == null) {
            return;
        }
        this.f457a = context.getFilesDir().getPath() + Operators.DIV + "init.pid";
    }

    public void a() {
        if (b()) {
            return;
        }
        try {
            new File(this.f457a).createNewFile();
        } catch (IOException unused) {
        }
    }

    public boolean b() {
        return new File(this.f457a).exists();
    }
}
