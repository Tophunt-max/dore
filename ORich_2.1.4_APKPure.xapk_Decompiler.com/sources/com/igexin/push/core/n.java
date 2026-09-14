package com.igexin.push.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class n extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static n f250a;

    private n() {
    }

    public static n a() {
        if (f250a == null) {
            f250a = new n();
        }
        return f250a;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (e.a() != null) {
            Message message = new Message();
            message.what = b.f;
            message.obj = intent;
            e.a().a(message);
        }
    }
}
