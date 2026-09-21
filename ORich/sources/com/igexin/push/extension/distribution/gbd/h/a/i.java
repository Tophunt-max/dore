package com.igexin.push.extension.distribution.gbd.h.a;

import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class i extends com.igexin.push.extension.distribution.gbd.h.b {
    private static i c;

    private i() {
        this.b = com.igexin.push.extension.distribution.gbd.c.a.K * 1000;
    }

    public static i e() {
        if (c == null) {
            c = new i();
        }
        return c;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_RGLT", "doTask...");
        if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            messageObtain.arg1 = 22;
            com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(messageObtain);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a(long j) {
        super.a(j);
        this.b = com.igexin.push.extension.distribution.gbd.c.a.K * 1000;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public boolean c() {
        return true;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public int d() {
        return 19;
    }
}
