package com.igexin.push.extension.distribution.gbd.h.a;

import android.os.Message;
import com.taobao.weex.el.parse.Operators;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class d extends com.igexin.push.extension.distribution.gbd.h.b {
    private static d c;

    private d() {
        this.f396a = com.igexin.push.extension.distribution.gbd.c.c.E;
        this.b = f();
    }

    private void a(int i, int i2) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i;
        messageObtain.arg1 = i2;
        if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
            com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(messageObtain);
        }
    }

    private boolean a(String str) {
        String[] strArrSplit = str.split(Operators.SPACE_STR);
        String[] strArrSplit2 = new SimpleDateFormat("mm HH dd MM yy", Locale.getDefault()).format(new Date()).split(Operators.SPACE_STR);
        for (int i = 0; i < strArrSplit2.length; i++) {
            if (!strArrSplit[i].equals(Operators.MUL)) {
                if (strArrSplit[i].startsWith("*/")) {
                    int iIntValue = Integer.valueOf(strArrSplit[i].substring(2)).intValue();
                    if (iIntValue > 0 && Integer.valueOf(strArrSplit2[i]).intValue() % iIntValue != 0) {
                        return false;
                    }
                } else if (!strArrSplit2[i].equals(strArrSplit[i])) {
                    return false;
                }
            }
        }
        return true;
    }

    public static d e() {
        if (c == null) {
            c = new d();
        }
        return c;
    }

    private long f() {
        Date date = new Date(new Date().getTime() - com.igexin.push.extension.distribution.gbd.c.c.l);
        int iIntValue = Integer.valueOf(new SimpleDateFormat("mm", Locale.getDefault()).format(date)).intValue();
        int iIntValue2 = Integer.valueOf(new SimpleDateFormat("ss", Locale.getDefault()).format(date)).intValue();
        int i = (3600 - (((iIntValue * 60) + iIntValue2) % 3600)) * 1000;
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_CT", "calcDelay nowMinute:" + iIntValue + "|nowSecond:" + iIntValue2 + "|delaySeconds:" + i);
        return i;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a() {
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_CT", "doTask...");
        if (com.igexin.push.extension.distribution.gbd.i.k.c(11)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_CT", "type 11 in type black list, return.");
        } else if (a(com.igexin.push.extension.distribution.gbd.a.c.c.a().c())) {
            a(1, 12);
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public void a(long j) {
        this.f396a = j;
        this.b = f();
        com.igexin.push.extension.distribution.gbd.e.a.g.a().k(j);
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public boolean c() {
        return true;
    }

    @Override // com.igexin.push.extension.distribution.gbd.h.b
    public int d() {
        return 11;
    }
}
