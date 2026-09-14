package com.igexin.push.extension.distribution.basic.a.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.igexin.sdk.PushConsts;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class a extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f285a = "EXT-" + a.class.getName();
    private static Handler b = new Handler();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            Bundle extras = intent.getExtras();
            if (extras.getInt(PushConsts.CMD_ACTION) == 10007) {
                boolean z = extras.getBoolean(PushConsts.KEY_ONLINE_STATE);
                com.igexin.b.a.c.b.a(f285a + "|ExtCidReceiver onlineState = " + z);
                b.postDelayed(new b(this, z), (long) ((new Random().nextInt(5) + 5) * 1000));
            }
        } catch (Exception e) {
            com.igexin.b.a.c.b.a(f285a + "|exception = " + e.toString());
        }
    }
}
