package com.igexin.push.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class o extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static o f251a;

    private o() {
    }

    public static o a() {
        if (f251a == null) {
            f251a = new o();
        }
        return f251a;
    }

    private void a(Intent intent) {
        try {
            com.igexin.b.a.c.b.a("----------------------------------------------------------------------------------");
            com.igexin.b.a.c.b.a("InternalPublicReceiver|action = " + intent.getAction() + ", component = " + intent.getComponent());
            Bundle extras = intent.getExtras();
            if (extras == null) {
                com.igexin.b.a.c.b.a("InternalPublicReceiver|no extras");
                return;
            }
            for (String str : extras.keySet()) {
                com.igexin.b.a.c.b.a("InternalPublicReceiver|key [" + str + "]: " + extras.get(str));
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            a(intent);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("InternalPublicReceiver InternalPublicReceiver:");
        sb.append(intent != null ? intent.getAction() : "null");
        com.igexin.b.a.c.b.a(sb.toString());
        if (e.a() != null) {
            Message message = new Message();
            message.what = b.f;
            message.obj = intent;
            e.a().a(message);
        }
    }
}
