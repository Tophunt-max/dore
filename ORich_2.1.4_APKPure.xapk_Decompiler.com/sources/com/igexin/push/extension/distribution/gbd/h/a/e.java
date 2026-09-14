package com.igexin.push.extension.distribution.gbd.h.a;

import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class e extends com.igexin.push.extension.distribution.gbd.h.b {
    private static e c;

    private e() {
        this.b = com.igexin.push.extension.distribution.gbd.c.a.N * 1000;
        this.f396a = com.igexin.push.extension.distribution.gbd.c.c.t;
    }

    public static e e() {
        if (c == null) {
            c = new e();
        }
        return c;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_DGLT", "do Task");
        try {
            if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 6;
                com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(messageObtain);
            }
        } catch (Exception e) {
            com.igexin.push.extension.distribution.gbd.i.j.a(e);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a(long j) {
        this.f396a = j;
        com.igexin.push.extension.distribution.gbd.e.a.g.a().s(j);
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public boolean c() {
        return true;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public int d() {
        return 0;
    }

    public void f() {
        this.b = com.igexin.push.extension.distribution.gbd.c.a.N * 1000;
    }
}
