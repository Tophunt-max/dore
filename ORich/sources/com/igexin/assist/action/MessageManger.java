package com.igexin.assist.action;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.igexin.assist.MessageBean;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.assist.util.AssistUtils;
import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.push.core.c.h;
import com.igexin.push.core.e;
import com.igexin.push.core.f;
import com.igexin.push.core.s;
import com.igexin.push.util.t;
import com.igexin.sdk.PushConsts;
import com.igexin.sdk.message.GTTransmitMessage;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MessageManger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f61a;

    private MessageManger() {
        this.f61a = Executors.newSingleThreadExecutor();
    }

    private PushTaskBean a(d dVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        PushTaskBean pushTaskBean = new PushTaskBean();
        pushTaskBean.setAppid(dVar.e());
        pushTaskBean.setMessageId(dVar.d());
        pushTaskBean.setTaskId(dVar.c());
        pushTaskBean.setId(String.valueOf(jCurrentTimeMillis));
        pushTaskBean.setAppKey(f.b);
        pushTaskBean.setCurrentActionid(1);
        return pushTaskBean;
    }

    private Class a(Context context) {
        try {
            String str = (String) t.c(context, "uis", "");
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, d dVar) {
        if (!f.g.get()) {
            AssistUtils.startGetuiService(context);
        }
        if (dVar == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = com.igexin.push.core.b.o;
        messageObtain.obj = dVar.h();
        Bundle bundle = new Bundle();
        bundle.putString("content", dVar.h());
        if (dVar.b() != null) {
            bundle.putByteArray(AssistPushConsts.MSG_TYPE_PAYLOAD, dVar.b());
        }
        messageObtain.setData(bundle);
        e.a().a(messageObtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str) {
        try {
            if (!TextUtils.isEmpty(str) && !str.equals(f.y)) {
                Log.e("Assist_MessageManger", "other token = " + str);
                new com.igexin.push.core.c.c(context).c(str);
                if (f.g.get()) {
                    h.a().d(str);
                    if (f.l) {
                        com.igexin.push.core.a.f.a().f();
                    }
                } else {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = com.igexin.push.core.b.n;
                    messageObtain.obj = str;
                    e.a().a(messageObtain);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(d dVar, Context context) {
        StringBuilder sb;
        if (dVar == null || context == null) {
            return;
        }
        try {
            com.igexin.push.core.c.c cVar = new com.igexin.push.core.c.c(context);
            if (cVar.a(dVar.c())) {
                sb = new StringBuilder();
                sb.append(getBrandCode(context));
                sb.append(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
            } else {
                cVar.b(dVar.c());
                Class clsA = a(context);
                if (clsA != null) {
                    Intent intent = new Intent(context, (Class<?>) clsA);
                    Bundle bundle = new Bundle();
                    bundle.putInt(PushConsts.CMD_ACTION, PushConsts.GET_MSG_DATA);
                    bundle.putSerializable(PushConsts.KEY_MESSAGE_DATA, new GTTransmitMessage(dVar.c(), dVar.d(), dVar.d() + ":" + dVar.c(), dVar.b()));
                    intent.putExtras(bundle);
                    s.a().b(context, intent);
                } else {
                    Intent intent2 = new Intent();
                    if (Build.VERSION.SDK_INT >= 12) {
                        intent2.addFlags(32);
                    }
                    intent2.setAction("com.igexin.sdk.action." + dVar.e());
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt(PushConsts.CMD_ACTION, PushConsts.GET_MSG_DATA);
                    bundle2.putString("taskid", dVar.c());
                    bundle2.putString("messageid", dVar.d());
                    bundle2.putString("appid", dVar.e());
                    bundle2.putString("payloadid", dVar.d() + ":" + dVar.c());
                    bundle2.putString("packagename", dVar.g());
                    bundle2.putByteArray(AssistPushConsts.MSG_TYPE_PAYLOAD, dVar.b());
                    intent2.putExtras(bundle2);
                    context.sendBroadcast(intent2);
                }
                sb = new StringBuilder();
                sb.append(getBrandCode(context));
                sb.append("0");
            }
            feedbackPushMessage(context, dVar, sb.toString());
        } catch (Throwable unused) {
        }
    }

    public static MessageManger getInstance() {
        return c.f63a;
    }

    public void addMessage(MessageBean messageBean) {
        ExecutorService executorService = this.f61a;
        if (executorService != null) {
            executorService.execute(new b(this, messageBean));
        }
    }

    public void feedbackPushMessage(Context context, d dVar, String str) {
        try {
            if (f.g.get()) {
                com.igexin.push.core.a.f.a().a(a(dVar), str);
            } else {
                com.igexin.push.core.c.c cVar = new com.igexin.push.core.c.c(context);
                long jCurrentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", String.valueOf(jCurrentTimeMillis));
                jSONObject.put("messageid", dVar.d());
                jSONObject.put("taskid", dVar.c());
                jSONObject.put("multaid", str);
                jSONObject.put("timestamp", String.valueOf(System.currentTimeMillis()));
                cVar.a(dVar.c(), jSONObject);
            }
        } catch (Throwable unused) {
        }
    }

    public String getBrandCode(Context context) {
        return null;
    }
}
