package com.igexin.push.e;

import android.content.Context;
import com.igexin.b.a.b.a.a.m;

/* JADX INFO: loaded from: classes.dex */
public class a implements com.igexin.b.a.d.a.a<String, Integer, com.igexin.b.a.b.b, com.igexin.b.a.b.e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f264a;

    public a(Context context) {
        this.f264a = context;
    }

    @Override // com.igexin.b.a.d.a.a
    public com.igexin.b.a.b.e a(String str, Integer num, com.igexin.b.a.b.b bVar) {
        if (str.startsWith("socket") && com.igexin.push.core.f.h) {
            return new m(str, bVar);
        }
        return null;
    }
}
