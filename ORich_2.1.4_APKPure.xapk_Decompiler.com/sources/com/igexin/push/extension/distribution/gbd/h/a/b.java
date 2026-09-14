package com.igexin.push.extension.distribution.gbd.h.a;

import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class b extends com.igexin.push.extension.distribution.gbd.h.b {
    private static b c;

    private b() {
        this.b = com.igexin.push.extension.distribution.gbd.c.a.aK * 1000;
        this.f396a = com.igexin.push.extension.distribution.gbd.c.c.L;
    }

    public static synchronized b e() {
        if (c == null) {
            c = new b();
        }
        return c;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a() {
        try {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_CAReportTask", "dotask ...");
            if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 17;
                com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(messageObtain);
            }
        } catch (Exception e) {
            com.igexin.push.extension.distribution.gbd.i.j.a(e);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a(long j) {
        this.f396a = j;
        com.igexin.push.extension.distribution.gbd.e.a.g.a().n(j);
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public boolean c() {
        return com.igexin.push.extension.distribution.gbd.i.k.w();
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public int d() {
        return 43;
    }
}
