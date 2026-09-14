package com.igexin.assist.action;

import android.content.Context;
import android.text.TextUtils;
import com.igexin.assist.MessageBean;
import com.igexin.assist.sdk.AssistPushConsts;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f64a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;

    d() {
    }

    public void a(MessageBean messageBean) {
        try {
            Context context = messageBean.getContext();
            String stringMessage = messageBean.getStringMessage();
            if (!TextUtils.isEmpty(stringMessage) && context != null) {
                String string = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString(AssistPushConsts.GETUI_APPID);
                this.d = string;
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                this.e = context.getPackageName();
                this.c = (TextUtils.isEmpty(messageBean.getMessageSource()) ? "" : messageBean.getMessageSource()) + UUID.randomUUID().toString();
                String strA = com.igexin.assist.util.a.a(stringMessage, this.d);
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(strA);
                if (jSONObject.has(AssistPushConsts.MSG_KEY_TASKID)) {
                    this.b = jSONObject.getString(AssistPushConsts.MSG_KEY_TASKID);
                }
                if (jSONObject.has(AssistPushConsts.MSG_KEY_ACTION)) {
                    this.f = jSONObject.getString(AssistPushConsts.MSG_KEY_ACTION);
                }
                if (jSONObject.has(AssistPushConsts.MSG_KEY_CONTENT) && !TextUtils.isEmpty(jSONObject.getString(AssistPushConsts.MSG_KEY_CONTENT))) {
                    this.f64a = jSONObject.getString(AssistPushConsts.MSG_KEY_CONTENT).getBytes();
                }
                if (jSONObject.has(AssistPushConsts.MSG_KEY_ACTION_CHAINS)) {
                    String string2 = jSONObject.getString(AssistPushConsts.MSG_KEY_ACTION_CHAINS);
                    this.g = string2;
                    if (TextUtils.isEmpty(string2)) {
                        return;
                    }
                    JSONObject jSONObject2 = new JSONObject(this.g);
                    jSONObject2.put("extra_actionid", "40550");
                    this.g = jSONObject2.toString();
                }
            }
        } catch (Throwable unused) {
        }
    }

    public boolean a() {
        return ((this.f64a == null && this.g == null) || TextUtils.isEmpty(this.b) || TextUtils.isEmpty(this.e) || TextUtils.isEmpty(this.d) || TextUtils.isEmpty(this.f) || TextUtils.isEmpty(this.c)) ? false : true;
    }

    public byte[] b() {
        return this.f64a;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.c;
    }

    public String e() {
        return this.d;
    }

    public String f() {
        return this.f;
    }

    public String g() {
        return this.e;
    }

    public String h() {
        return this.g;
    }
}
