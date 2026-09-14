package com.igexin.push.extension.distribution.basic.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.igexin.push.core.bean.PushTaskBean;

/* JADX INFO: loaded from: classes.dex */
public class f extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static f f303a;

    public static f a() {
        if (f303a == null) {
            f303a = new f();
        }
        return f303a;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action;
        StringBuilder sb;
        String stringExtra;
        if (intent == null || (action = intent.getAction()) == null || !action.equals(b.f299a)) {
            return;
        }
        String stringExtra2 = intent.getStringExtra("checkpackage");
        String stringExtra3 = intent.getStringExtra("accesstoken");
        if (stringExtra2 == null || stringExtra3 == null || !stringExtra2.equals(com.igexin.push.core.f.f.getPackageName()) || !stringExtra3.equals(g.d)) {
            return;
        }
        intent.setAction(com.igexin.push.core.b.b);
        intent.putExtra("accesstoken", com.igexin.push.core.f.ao);
        com.igexin.push.core.f.f.sendBroadcast(intent);
        PushTaskBean pushTaskBean = new PushTaskBean();
        pushTaskBean.setAppid(intent.getStringExtra("appid"));
        pushTaskBean.setMessageId(intent.getStringExtra("messageid"));
        pushTaskBean.setTaskId(intent.getStringExtra("taskid"));
        pushTaskBean.setId(intent.getStringExtra("id"));
        pushTaskBean.setAppKey(com.igexin.push.core.f.b);
        try {
            int i = Integer.parseInt(intent.getStringExtra("feedbackid")) + 30010;
            pushTaskBean.setCurrentActionid(i);
            if (intent.getBooleanExtra("isFloat", false)) {
                sb = new StringBuilder();
                sb.append("notifyFloat:");
                stringExtra = intent.getStringExtra("bigStyle");
            } else {
                sb = new StringBuilder();
                sb.append("notifyStyle:");
                stringExtra = intent.getStringExtra("notifyStyle");
            }
            sb.append(stringExtra);
            String string = sb.toString();
            com.igexin.push.core.a.f.a().a(pushTaskBean, i + "", string);
        } catch (Exception unused) {
        }
    }
}
