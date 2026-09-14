package com.igexin.push.core;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.assist.sdk.AssistPushManager;
import com.igexin.sdk.PushConsts;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.feature.uniapp.adapter.AbsURIAdapter;

/* JADX INFO: loaded from: classes.dex */
public class d extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f221a = "com.igexin.push.core.d";

    public d(Looper looper) {
        super(looper);
    }

    private void a() {
        com.igexin.push.d.c.a().b();
        if (f.l) {
            return;
        }
        int iRandom = (int) ((Math.random() * 100.0d) + 150.0d);
        com.igexin.b.a.c.b.a(f221a + "|userPresent, reConnectDelayTime = " + com.igexin.push.config.k.w + ", resetDelay = " + iRandom);
        f.D = (long) iRandom;
        com.igexin.push.g.b.g.i().j();
    }

    private void a(Intent intent) {
        Intent intent2;
        String stringExtra = intent.getStringExtra(PushConsts.CMD_ACTION);
        if (stringExtra.equals(PushConsts.ACTION_SERVICE_INITIALIZE)) {
            com.igexin.push.core.a.f.a().a(intent);
            return;
        }
        if (stringExtra.equals(PushConsts.ACTION_SERVICE_ONRESUME)) {
            com.igexin.b.a.c.b.a(f221a + "|handle onresume ~~~");
            com.igexin.push.core.a.f.a().c();
            return;
        }
        if (stringExtra.equals(PushConsts.ACTION_SERVICE_INITIALIZE_SLAVE)) {
            com.igexin.push.core.a.f.a().b(intent);
            AssistPushManager.getInstance().turnOnPush(f.f);
            return;
        }
        if (stringExtra.equals(PushConsts.ACTION_BROADCAST_PUSHMANAGER)) {
            com.igexin.push.core.a.f.a().a(intent.getBundleExtra(AbsURIAdapter.BUNDLE));
            return;
        }
        if (stringExtra.equals(PushConsts.ACTION_BROADCAST_USER_PRESENT)) {
            a();
            return;
        }
        if (!stringExtra.equals(PushConsts.ACTION_BROADCAST_NOTIFICATION_CLICK) || (intent2 = (Intent) intent.getParcelableExtra("broadcast_intent")) == null) {
            return;
        }
        String action = intent2.getAction();
        if (!TextUtils.isEmpty(action) && action.startsWith("pre_doaction.")) {
            intent2.setAction(b.b);
            com.igexin.push.core.a.f.a().c(intent2);
        } else {
            if (!TextUtils.isEmpty(action) && action.startsWith("pre_burypoint.")) {
                intent2.setAction(b.f163a);
            }
            f.f.sendBroadcast(intent2);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            if (message.obj == null) {
                if (message.what == b.l) {
                    r.a().e();
                    return;
                }
                return;
            }
            if (message.what == b.e) {
                Intent intent = (Intent) message.obj;
                if (intent.hasExtra(PushConsts.CMD_ACTION)) {
                    a(intent);
                    return;
                }
                return;
            }
            if (message.what == b.f || message.what == b.g) {
                com.igexin.push.core.a.f fVarA = com.igexin.push.core.a.f.a();
                Intent intent2 = (Intent) message.obj;
                fVarA.c(intent2);
                return;
            }
            if (message.what == b.i) {
                Bundle bundle = (Bundle) message.obj;
                r.a().b(bundle.getString("taskid"), bundle.getString("messageid"));
                return;
            }
            if (message.what == b.j) {
                Bundle bundle2 = (Bundle) message.obj;
                String string = bundle2.getString("taskid");
                String string2 = bundle2.getString("messageid");
                String string3 = bundle2.getString("actionid");
                com.igexin.b.a.c.b.a(f221a + "|hand execute_action taskid = " + string + ", actionid = " + string3);
                r.a().b(string, string2, string3);
                return;
            }
            if (message.what == b.m) {
                com.igexin.push.d.c.a().a((Intent) message.obj);
                return;
            }
            if (message.what == b.h) {
                return;
            }
            if (message.what == b.n) {
                com.igexin.push.core.c.h.a().d((String) message.obj);
                if (f.l) {
                    com.igexin.push.core.a.f.a().f();
                    return;
                }
                return;
            }
            if (message.what == b.o && com.igexin.push.config.k.T && !AbsoluteConst.FALSE.equals(f.y)) {
                com.igexin.push.e.c.o oVar = new com.igexin.push.e.c.o();
                oVar.c();
                oVar.e = message.obj;
                oVar.f = message.getData().getByteArray(AssistPushConsts.MSG_TYPE_PAYLOAD);
                new com.igexin.push.core.a.i().a(oVar);
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f221a + "|" + th.toString());
        }
    }
}
