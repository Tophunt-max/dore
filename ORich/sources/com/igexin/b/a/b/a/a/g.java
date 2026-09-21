package com.igexin.b.a.b.a.a;

import android.os.Message;
import java.net.Socket;

/* JADX INFO: loaded from: classes.dex */
class g implements com.igexin.b.a.b.a.a.a.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f77a;

    g(f fVar) {
        this.f77a = fVar;
    }

    @Override // com.igexin.b.a.b.a.a.a.a
    public void a(com.igexin.b.a.b.e eVar) {
        this.f77a.n.sendEmptyMessage(q.INTERRUPT_SUCCESS.ordinal());
    }

    @Override // com.igexin.b.a.b.a.a.a.d
    public void a(Exception exc) {
        com.igexin.b.a.c.b.a("GS-M|c ex = " + exc.toString());
        this.f77a.i();
    }

    @Override // com.igexin.b.a.b.a.a.a.d
    public void a(String str) {
        this.f77a.n.sendEmptyMessage(q.TCP_CREATE_SUCCESS.ordinal());
    }

    @Override // com.igexin.b.a.b.a.a.a.d
    public void a(Socket socket) {
        Message messageObtain = Message.obtain();
        messageObtain.obj = socket;
        messageObtain.what = q.TCP_CONNECT_SUCCESS.ordinal();
        this.f77a.n.sendMessage(messageObtain);
    }
}
