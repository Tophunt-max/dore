package com.igexin.push.extension.distribution.gbd.g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class a extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
            Message message = new Message();
            message.what = 3;
            message.obj = intent;
            com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(message);
        }
    }
}
