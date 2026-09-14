package com.igexin.push.core.f;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
class e implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f242a;

    protected e() {
        this.f242a = Build.VERSION.SDK_INT >= 29 ? new a() : new b();
        com.igexin.b.a.c.b.a("SDCardWrapper|SDCardWrapper.mBase = " + this.f242a.getClass());
    }

    @Override // com.igexin.push.core.f.c
    public String a(Context context) {
        try {
            return this.f242a.a(context);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("SDCardWrapper|getDeviceId()|" + th.toString());
            return null;
        }
    }

    @Override // com.igexin.push.core.f.c
    public void a(Context context, long j) {
        try {
            this.f242a.a(context, j);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("SDCardWrapper|saveSession()|" + th.toString());
        }
    }

    @Override // com.igexin.push.core.f.c
    public void a(Context context, String str) {
        try {
            this.f242a.a(context, str);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("SDCardWrapper|saveDeviceId()|" + th.toString());
        }
    }

    @Override // com.igexin.push.core.f.c
    public String b(Context context) {
        try {
            return this.f242a.b(context);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("SDCardWrapper|getCid()|" + th.toString());
            return null;
        }
    }

    @Override // com.igexin.push.core.f.c
    public void b(Context context, String str) {
        try {
            this.f242a.b(context, str);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("SDCardWrapper|saveCid()|" + th.toString());
        }
    }

    @Override // com.igexin.push.core.f.c
    public long c(Context context) {
        try {
            return this.f242a.c(context);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("SDCardWrapper|getSession()|" + th.toString());
            return 0L;
        }
    }
}
