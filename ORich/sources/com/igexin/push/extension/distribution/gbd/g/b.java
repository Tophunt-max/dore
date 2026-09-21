package com.igexin.push.extension.distribution.gbd.g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Message;
import com.igexin.sdk.PushConsts;

/* JADX INFO: loaded from: classes.dex */
public class b extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Message messageObtain;
        if (com.igexin.push.extension.distribution.gbd.c.c.c != null) {
            if (PushConsts.ACTION_BROADCAST_USER_PRESENT.equals(intent.getAction())) {
                messageObtain = Message.obtain();
                messageObtain.what = 5;
                messageObtain.arg1 = 51;
                messageObtain.obj = intent;
            } else {
                if (!"android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                    return;
                }
                messageObtain = Message.obtain();
                messageObtain.what = 5;
                messageObtain.arg1 = 52;
            }
            com.igexin.push.extension.distribution.gbd.c.c.c.sendMessage(messageObtain);
        }
    }
}
