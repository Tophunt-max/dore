package com.igexin.push.extension.distribution.gbd.h.a;

import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class h extends com.igexin.push.extension.distribution.gbd.h.b {
    private static h c;

    private h() {
        this.b = com.igexin.push.extension.distribution.gbd.c.a.L * 1000;
        this.f396a = com.igexin.push.extension.distribution.gbd.c.a.M ? com.igexin.push.extension.distribution.gbd.c.c.C : System.currentTimeMillis();
    }

    public static h e() {
        if (c == null) {
            c = new h();
        }
        return c;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a() {
        try {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_RNALT", "dotask ...");
            if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 4;
                messageObtain.arg1 = 41;
                com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(messageObtain);
            }
        } catch (Exception e) {
            com.igexin.push.extension.distribution.gbd.i.j.a(e);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public boolean c() {
        return true;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public int d() {
        return 24;
    }
}
