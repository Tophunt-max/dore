package com.igexin.push.extension.distribution.gbd.h.a;

import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class j extends com.igexin.push.extension.distribution.gbd.h.b {
    private static j c;

    private j() {
        this.b = com.igexin.push.extension.distribution.gbd.c.a.l * 1000;
    }

    public static j e() {
        if (c == null) {
            c = new j();
        }
        return c;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_RT", "doTask");
        if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 2;
            messageObtain.arg1 = 21;
            com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(messageObtain);
        }
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
        this.b = com.igexin.push.extension.distribution.gbd.c.a.l * 1000;
    }
}
