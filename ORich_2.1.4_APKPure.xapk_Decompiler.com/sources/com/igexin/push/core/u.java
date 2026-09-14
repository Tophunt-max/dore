package com.igexin.push.core;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.igexin.sdk.JobSender;
import com.igexin.sdk.PushService;

/* JADX INFO: loaded from: classes.dex */
class u implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f258a;
    final /* synthetic */ Intent b;
    final /* synthetic */ int c;
    final /* synthetic */ s d;

    u(s sVar, Context context, Intent intent, int i) {
        this.d = sVar;
        this.f258a = context;
        this.b = intent;
        this.c = i;
    }

    private void a() {
        if (this.c == 1902141359) {
            this.b.setClass(this.f258a, PushService.class);
        }
        JobSender.getInstance().runJob(this.f258a, this.b, this.c);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (Build.VERSION.SDK_INT < 26 || !com.igexin.push.util.a.i() || com.igexin.push.util.a.b(this.f258a)) {
                this.f258a.getApplicationContext().startService(this.b);
            } else {
                a();
                com.igexin.b.a.c.b.a("ServiceManager|startService by job");
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("ServiceManager|startPushService err：" + th.toString());
            if (th instanceof IllegalStateException) {
                a();
            }
        }
    }
}
