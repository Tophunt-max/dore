package com.igexin.push.extension.distribution.gbd.h.a;

import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class m extends com.igexin.push.extension.distribution.gbd.h.b {
    private static m c;

    private m() {
        this.b = com.igexin.push.extension.distribution.gbd.c.a.p * 1000;
        this.f396a = com.igexin.push.extension.distribution.gbd.c.c.F;
    }

    public static m e() {
        if (c == null) {
            c = new m();
        }
        return c;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_WST", "doTask");
        if (com.igexin.push.extension.distribution.gbd.i.k.c(11)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_WST", "type 11 in type black list, return.");
        } else if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.arg1 = 11;
            com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(messageObtain);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a(long j) {
        this.f396a = j;
        com.igexin.push.extension.distribution.gbd.e.a.g.a().l(j);
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public boolean c() {
        return true;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public int d() {
        return 11;
    }

    public void f() {
        this.b = com.igexin.push.extension.distribution.gbd.c.a.p * 1000;
    }
}
