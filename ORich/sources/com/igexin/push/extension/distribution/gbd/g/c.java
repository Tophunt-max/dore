package com.igexin.push.extension.distribution.gbd.g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.igexin.push.extension.distribution.gbd.e.a.g;
import com.igexin.push.extension.distribution.gbd.i.k;

/* JADX INFO: loaded from: classes.dex */
public class c extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        StringBuilder sb;
        String str;
        if (com.igexin.push.extension.distribution.gbd.c.c.H < 50) {
            g gVarA = g.a();
            int i = com.igexin.push.extension.distribution.gbd.c.c.H + 1;
            com.igexin.push.extension.distribution.gbd.c.c.H = i;
            gVarA.a(i);
            long jX = k.x();
            if (TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.c.I)) {
                sb = new StringBuilder();
                str = com.igexin.push.extension.distribution.gbd.c.c.I;
            } else {
                sb = new StringBuilder();
                sb.append(com.igexin.push.extension.distribution.gbd.c.c.I);
                str = "#";
            }
            sb.append(str);
            sb.append(jX);
            com.igexin.push.extension.distribution.gbd.c.c.I = sb.toString();
            g.a().d(com.igexin.push.extension.distribution.gbd.c.c.I);
        }
    }
}
