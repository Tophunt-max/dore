package com.igexin.push.a.a;

import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class a implements com.igexin.push.g.b.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f100a = 0;

    @Override // com.igexin.push.g.b.d
    public void a() {
        Message messageObtain = Message.obtain();
        messageObtain.what = com.igexin.push.core.b.l;
        com.igexin.push.core.e.a().a(messageObtain);
    }

    @Override // com.igexin.push.g.b.d
    public void a(long j) {
        this.f100a = j;
    }

    @Override // com.igexin.push.g.b.d
    public boolean b() {
        return System.currentTimeMillis() - this.f100a > 360000;
    }
}
