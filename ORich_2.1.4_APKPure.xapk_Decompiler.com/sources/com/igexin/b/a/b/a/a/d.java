package com.igexin.b.a.b.a.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.net.Socket;

/* JADX INFO: loaded from: classes.dex */
public class d extends Handler {
    public d(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            int i = e.f75a[q.values()[message.what].ordinal()];
            if (i == 1) {
                f.a().g();
            } else if (i == 3) {
                f.a().a((Socket) message.obj);
            } else if (i == 4) {
                f.a().h();
            } else if (i == 5) {
                f.a().f();
            } else if (i == 6) {
                f.a().b();
            }
        } catch (Throwable unused) {
        }
    }
}
