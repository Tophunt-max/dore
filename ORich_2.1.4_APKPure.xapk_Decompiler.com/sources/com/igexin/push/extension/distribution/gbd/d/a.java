package com.igexin.push.extension.distribution.gbd.d;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.igexin.push.extension.distribution.gbd.a.b.s;
import io.dcloud.WebAppActivity;

/* JADX INFO: loaded from: classes.dex */
public class a extends Handler {
    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i;
        try {
            i = message.what;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Handler", th.toString());
        }
        if (i == 10) {
            if (com.igexin.push.extension.distribution.gbd.c.a.aH) {
                com.igexin.push.extension.distribution.gbd.a.a.a.a().b();
            }
            if (com.igexin.push.extension.distribution.gbd.c.a.aR) {
                com.igexin.push.extension.distribution.gbd.a.a.f.a().b();
                return;
            }
            return;
        }
        if (i == 13) {
            com.igexin.push.extension.distribution.gbd.a.e.a.a().b();
            return;
        }
        if (i == 17) {
            com.igexin.push.extension.distribution.gbd.a.d.a.a().b();
            return;
        }
        if (i == 101) {
            if (message.arg1 != 11) {
                return;
            }
            s.a().a(message.obj);
            return;
        }
        switch (i) {
            case 1:
                int i2 = message.arg1;
                if (i2 == 11) {
                    com.igexin.push.extension.distribution.gbd.a.c.c.a().a(11);
                } else if (i2 == 12) {
                    com.igexin.push.extension.distribution.gbd.a.c.c.a().a(12);
                }
                break;
            case 2:
                int i3 = message.arg1;
                if (i3 == 21) {
                    com.igexin.push.extension.distribution.gbd.e.a.b.a().c();
                } else if (i3 == 22) {
                    if (com.igexin.push.extension.distribution.gbd.c.a.A) {
                        com.igexin.push.extension.distribution.gbd.e.a.b.a().a(0);
                    }
                    if (com.igexin.push.extension.distribution.gbd.c.a.B || com.igexin.push.extension.distribution.gbd.c.a.bM) {
                        com.igexin.push.extension.distribution.gbd.e.a.b.a().a(1);
                        com.igexin.push.extension.distribution.gbd.e.a.b.a().a(2);
                        com.igexin.push.extension.distribution.gbd.e.a.b.a().a(3);
                        com.igexin.push.extension.distribution.gbd.e.a.b.a().a(5);
                        com.igexin.push.extension.distribution.gbd.e.a.b.a().a(4);
                    }
                }
                break;
            case 3:
                if (message.obj != null) {
                    com.igexin.push.extension.distribution.gbd.a.a.d.a().a((Intent) message.obj);
                }
                break;
            case 4:
                if (message.arg1 == 41) {
                    if (com.igexin.push.extension.distribution.gbd.c.a.W) {
                        com.igexin.push.extension.distribution.gbd.a.a.c.a().d();
                    }
                    if (com.igexin.push.extension.distribution.gbd.c.a.X) {
                        com.igexin.push.extension.distribution.gbd.a.a.e.a().d();
                    }
                }
                break;
            case 5:
                int i4 = message.arg1;
                if (i4 == 51) {
                    com.igexin.push.extension.distribution.gbd.a.b.d.a().d();
                    postDelayed(new b(this), WebAppActivity.SPLASH_SECOND);
                    if (com.igexin.push.extension.distribution.gbd.c.a.W) {
                        com.igexin.push.extension.distribution.gbd.a.a.c.a().b();
                    }
                    if (com.igexin.push.extension.distribution.gbd.c.a.X) {
                        com.igexin.push.extension.distribution.gbd.a.a.e.a().b();
                    }
                } else if (i4 == 52) {
                    com.igexin.push.extension.distribution.gbd.a.b.i.a().c();
                    if (com.igexin.push.extension.distribution.gbd.c.a.W) {
                        com.igexin.push.extension.distribution.gbd.a.a.c.a().c();
                    }
                    if (com.igexin.push.extension.distribution.gbd.c.a.X) {
                        com.igexin.push.extension.distribution.gbd.a.a.e.a().c();
                    }
                }
                break;
            case 6:
                com.igexin.push.extension.distribution.gbd.a.b.d.a().c();
                postDelayed(new c(this), WebAppActivity.SPLASH_SECOND);
                break;
            case 7:
                com.igexin.push.extension.distribution.gbd.a.c.f.a().b();
                break;
        }
    }
}
