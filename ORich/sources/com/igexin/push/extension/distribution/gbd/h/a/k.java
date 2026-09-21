package com.igexin.push.extension.distribution.gbd.h.a;

import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class k extends com.igexin.push.extension.distribution.gbd.h.b {
    private static k c;

    private k() {
        this.b = com.igexin.push.extension.distribution.gbd.c.a.av * 1000;
        this.f396a = com.igexin.push.extension.distribution.gbd.c.c.A;
    }

    public static k e() {
        if (c == null) {
            c = new k();
        }
        return c;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMT", "do Task");
        try {
            if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 7;
                com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(messageObtain);
            }
        } catch (Exception e) {
            com.igexin.push.extension.distribution.gbd.i.j.a(e);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a(long j) {
        this.f396a = j;
        com.igexin.push.extension.distribution.gbd.e.a.g.a().j(j);
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public boolean c() {
        return com.igexin.push.extension.distribution.gbd.c.a.au;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public int d() {
        return 27;
    }
}
