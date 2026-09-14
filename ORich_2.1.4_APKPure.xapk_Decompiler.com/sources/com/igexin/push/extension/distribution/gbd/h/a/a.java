package com.igexin.push.extension.distribution.gbd.h.a;

import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.igexin.push.extension.distribution.gbd.h.b {
    private static a c;

    private a() {
        this.b = com.igexin.push.extension.distribution.gbd.c.a.aF * 1000;
        this.f396a = com.igexin.push.extension.distribution.gbd.c.c.B;
    }

    public static a e() {
        if (c == null) {
            c = new a();
        }
        return c;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a() {
        try {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_ALT", "dotask ...");
            if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
                Message message = new Message();
                message.what = 10;
                com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(message);
            }
        } catch (Exception e) {
            com.igexin.push.extension.distribution.gbd.i.j.a(e);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a(long j) {
        this.f396a = j;
        com.igexin.push.extension.distribution.gbd.e.a.g.a().i(j);
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public boolean b() {
        return super.b();
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public boolean c() {
        return true;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public int d() {
        return 28;
    }
}
