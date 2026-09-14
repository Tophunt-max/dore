package com.igexin.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.igexin.push.core.s;
import io.dcloud.feature.uniapp.adapter.AbsURIAdapter;

/* JADX INFO: loaded from: classes.dex */
public class PushReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f451a = "com.igexin.sdk.PushReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || intent.getAction() == null) {
            return;
        }
        try {
            String action = intent.getAction();
            if (PushConsts.ACTION_BROADCAST_PUSHMANAGER.equals(action)) {
                if (intent.getExtras() == null) {
                    return;
                }
                Intent intent2 = new Intent(context.getApplicationContext(), (Class<?>) com.igexin.push.core.a.f.a().a(context));
                intent2.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_PUSHMANAGER);
                intent2.putExtra(AbsURIAdapter.BUNDLE, intent.getExtras());
                s.a().a(context, intent2);
            } else if (PushConsts.ACTION_BROADCAST_TO_BOOT.equals(action) || action.equals("android.intent.action.ACTION_POWER_CONNECTED") || action.equals("android.intent.action.ACTION_POWER_DISCONNECTED") || action.equals("android.intent.action.MEDIA_MOUNTED")) {
                s.a().a(context, new Intent(context.getApplicationContext(), (Class<?>) com.igexin.push.core.a.f.a().a(context)));
            } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action) || PushConsts.ACTION_BROADCAST_USER_PRESENT.equals(action)) {
                Intent intent3 = new Intent(context.getApplicationContext(), (Class<?>) com.igexin.push.core.a.f.a().a(context));
                intent3.putExtra(PushConsts.CMD_ACTION, action);
                s.a().a(context, intent3);
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f451a + "|" + th.toString());
        }
    }
}
