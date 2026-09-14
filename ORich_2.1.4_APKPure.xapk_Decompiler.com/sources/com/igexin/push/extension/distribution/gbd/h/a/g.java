package com.igexin.push.extension.distribution.gbd.h.a;

import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class g extends com.igexin.push.extension.distribution.gbd.h.b {
    private static g c;

    private g() {
        this.b = com.igexin.push.extension.distribution.gbd.c.a.Q * 1000;
        this.f396a = com.igexin.push.extension.distribution.gbd.c.c.x;
    }

    public static g e() {
        if (c == null) {
            c = new g();
        }
        return c;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a() {
        try {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_LFTask", "dotask ...");
            if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 13;
                com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(messageObtain);
            }
        } catch (Exception e) {
            com.igexin.push.extension.distribution.gbd.i.j.a(e);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a(long j) {
        this.f396a = j;
        com.igexin.push.extension.distribution.gbd.e.a.g.a().t(j);
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public boolean c() {
        return com.igexin.push.extension.distribution.gbd.c.a.O;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public int d() {
        return 31;
    }
}
