package com.igexin.push.core;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.common.callercontext.ContextChain;
import com.igexin.assist.sdk.AssistPushManager;
import com.igexin.push.config.SDKUrlConfig;
import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.sdk.PushConsts;
import com.taobao.weex.common.Constants;
import io.dcloud.WebAppActivity;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static q f253a;

    private q() {
    }

    public static q a() {
        if (f253a == null) {
            f253a = new q();
        }
        return f253a;
    }

    public void a(int i, int i2, String str) {
        com.igexin.push.config.k.f136a = i;
        com.igexin.push.config.k.b = i2;
        com.igexin.push.config.a.a().b();
        com.igexin.push.a.a.c.c().d();
    }

    public void a(int i, String str) {
        com.igexin.push.config.k.d = i;
        com.igexin.push.config.a.a().c();
        if (f.l) {
            com.igexin.b.a.c.b.a("setHeartbeatInterval heartbeatReq");
            if (System.currentTimeMillis() - f.O > WebAppActivity.SPLASH_SECOND) {
                f.O = System.currentTimeMillis();
                com.igexin.push.core.a.f.a().b();
            }
        }
    }

    public void a(Bundle bundle) {
        String string = bundle.getString(PushConsts.CMD_ACTION);
        com.igexin.b.a.c.b.a("PushController|action pushmanager action = " + string);
        if (TextUtils.isEmpty(string)) {
            return;
        }
        if (string.equals("setTag")) {
            if (com.igexin.push.config.k.j) {
                a(bundle.getString("tags"), bundle.getString("sn"));
                return;
            }
            return;
        }
        if (string.equals("setSilentTime")) {
            if (com.igexin.push.config.k.k) {
                int i = bundle.getInt("beginHour", 0);
                int i2 = bundle.getInt("duration", 0);
                a(i, i2, f.f.getPackageName());
                AssistPushManager.getInstance().setSilentTime(f.f, i, i2);
                return;
            }
            return;
        }
        if (string.equals("sendMessage")) {
            com.igexin.b.a.c.b.a("PushController onPushManagerMessage recevie action : sendMessage");
            if (com.igexin.push.config.k.h) {
                String string2 = bundle.getString("taskid");
                byte[] byteArray = bundle.getByteArray("extraData");
                com.igexin.b.a.c.b.a("PushController receive broadcast msg data , task id : " + string2 + " ######@##@@@#");
                a(string2, byteArray);
                return;
            }
            return;
        }
        if (string.equals("setHeartbeatInterval")) {
            if (com.igexin.push.config.k.l) {
                a(bundle.getInt("interval", 0), f.f.getPackageName());
                return;
            }
            return;
        }
        if (string.equals("setSocketTimeout")) {
            if (com.igexin.push.config.k.m) {
                b(bundle.getInt("timeout", 0), f.f.getPackageName());
                return;
            }
            return;
        }
        if (!string.equals("sendFeedbackMessage")) {
            if (string.equals("turnOffPush")) {
                e.a().e();
                AssistPushManager.getInstance().turnOffPush(f.f);
                return;
            }
            if (string.equals("bindAlias")) {
                String string3 = bundle.getString(Constants.Name.Recycler.LIST_DATA_ITEM);
                String string4 = bundle.getString("sn");
                com.igexin.b.a.c.b.a("PushController|onPushManagerMessage bindAlias...");
                b(string3, string4);
                return;
            }
            if (!string.equals("unbindAlias")) {
                if (string.equals("sendApplinkFeedback")) {
                    a(bundle.getString("url"));
                    return;
                }
                return;
            } else {
                String string5 = bundle.getString(Constants.Name.Recycler.LIST_DATA_ITEM);
                String string6 = bundle.getString("sn");
                boolean z = bundle.getBoolean("isSeft");
                com.igexin.b.a.c.b.a("PushController|onPushManagerMessage unbindAlias...");
                a(string5, string6, z);
                return;
            }
        }
        if (!com.igexin.push.config.k.p || f.aj > 200) {
            return;
        }
        String string7 = bundle.getString("taskid");
        String string8 = bundle.getString("messageid");
        String string9 = bundle.getString("actionid");
        String str = string7 + ":" + string8 + ":" + string9;
        if (f.ai.get(str) == null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            PushTaskBean pushTaskBean = new PushTaskBean();
            pushTaskBean.setTaskId(string7);
            pushTaskBean.setMessageId(string8);
            pushTaskBean.setAppid(f.f238a);
            pushTaskBean.setAppKey(f.b);
            com.igexin.push.core.a.f.a().b(pushTaskBean, string9);
            f.aj++;
            f.ai.put(str, Long.valueOf(jCurrentTimeMillis));
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Uri uri = Uri.parse(str);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter(ContextChain.TAG_PRODUCT);
            if (uri != null && !TextUtils.isEmpty(host) && !TextUtils.isEmpty(queryParameter)) {
                if (!com.igexin.push.config.k.M) {
                    com.igexin.b.a.c.b.a("PushController|isApplinkFeedback is false, not feedback");
                    return;
                }
                if (!com.igexin.push.util.a.b(host)) {
                    com.igexin.b.a.c.b.a("PushController|checkIsWhiteApplinkDomain is false, not feedback");
                    return;
                }
                com.igexin.b.a.c.b.a("PushController|isApplinkFeedback is true and checkIsWhiteApplinkDomain is true, to feedback");
                PushTaskBean pushTaskBean = new PushTaskBean();
                pushTaskBean.setTaskId("getuiapplinkup");
                pushTaskBean.setMessageId(queryParameter);
                pushTaskBean.setAppid(f.f238a);
                pushTaskBean.setAppKey(f.b);
                com.igexin.push.core.a.f.a().b(pushTaskBean, PushConsts.SEND_MESSAGE_ERROR);
                return;
            }
            com.igexin.b.a.c.b.a("PushController|url " + str + " is invalid");
        } catch (Exception e) {
            com.igexin.b.a.c.b.a("PushController|" + e.toString());
        }
    }

    public void a(String str, String str2) {
        if (TextUtils.isEmpty(f.s)) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(PushConsts.CMD_ACTION, "set_tag");
                jSONObject.put("id", String.valueOf(jCurrentTimeMillis));
                jSONObject.put("cid", f.s);
                jSONObject.put("appid", f.f238a);
                jSONObject.put("tags", URLEncoder.encode(str, "utf-8"));
                jSONObject.put("sn", str2);
            } catch (Exception unused) {
            }
            String string = jSONObject.toString();
            com.igexin.push.core.c.d dVarA = com.igexin.push.core.c.d.a();
            if (dVarA != null) {
                dVarA.a(new com.igexin.push.core.bean.i(jCurrentTimeMillis, string, (byte) 2, jCurrentTimeMillis));
            }
            com.igexin.push.e.c.d dVar = new com.igexin.push.e.c.d();
            dVar.a();
            dVar.d = "17258000";
            dVar.e = string;
            com.igexin.b.a.b.c.b().a(SDKUrlConfig.getCmAddress(), 3, e.a().f(), dVar, false);
            com.igexin.b.a.c.b.a("settag");
        } catch (Exception unused2) {
        }
    }

    public void a(String str, String str2, boolean z) {
        String str3;
        if (z && TextUtils.isEmpty(f.s)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - f.Q > 1000) {
            String str4 = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(jCurrentTimeMillis));
            if (!str4.equals(f.P)) {
                com.igexin.push.core.c.h.a().g(str4);
                com.igexin.push.core.c.h.a().a(0);
            }
            if (f.R < 100) {
                com.igexin.b.a.c.b.a("start unbindAlias ###");
                f.Q = jCurrentTimeMillis;
                com.igexin.push.core.c.h.a().a(f.R + 1);
                a(str, str2, true, z);
                return;
            }
            str3 = "PushController|unbindAlias times exceed";
        } else {
            str3 = "PushController|unbindAlias frequently called";
        }
        com.igexin.b.a.c.b.a(str3);
    }

    public void a(String str, String str2, boolean z, boolean z2) {
        if (TextUtils.isEmpty(f.s)) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            String str3 = z ? "unbind_alias" : "bind_alias";
            byte b = z ? (byte) 8 : (byte) 7;
            try {
                jSONObject.put(PushConsts.CMD_ACTION, str3);
                jSONObject.put("id", String.valueOf(jCurrentTimeMillis));
                jSONObject.put("cid", f.s);
                jSONObject.put("appid", f.f238a);
                jSONObject.put(Constants.Name.Recycler.LIST_DATA_ITEM, str);
                jSONObject.put("sn", str2);
                if (z) {
                    jSONObject.put("is_self", z2);
                }
            } catch (Exception unused) {
            }
            String string = jSONObject.toString();
            com.igexin.push.core.c.d dVarA = com.igexin.push.core.c.d.a();
            if (dVarA != null) {
                dVarA.a(new com.igexin.push.core.bean.i(jCurrentTimeMillis, string, b, jCurrentTimeMillis));
            }
            com.igexin.push.e.c.d dVar = new com.igexin.push.e.c.d();
            dVar.a();
            dVar.d = "17258000";
            dVar.e = string;
            com.igexin.b.a.b.c.b().a(SDKUrlConfig.getCmAddress(), 3, e.a().f(), dVar, false);
            com.igexin.b.a.c.b.a(str3 + " = " + string);
        } catch (Exception unused2) {
        }
    }

    public void a(String str, byte[] bArr) {
        if (f.s != null) {
            JSONObject jSONObject = new JSONObject();
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                jSONObject.put(PushConsts.CMD_ACTION, "sendmessage");
                jSONObject.put("id", String.valueOf(jCurrentTimeMillis));
                jSONObject.put("cid", f.s);
                jSONObject.put("appid", f.f238a);
                jSONObject.put("taskid", str);
                jSONObject.put("extraData", com.igexin.push.util.j.b(bArr, 0));
                String string = jSONObject.toString();
                com.igexin.push.core.c.d.a().a(new com.igexin.push.core.bean.i(jCurrentTimeMillis, string, (byte) 6, jCurrentTimeMillis));
                com.igexin.push.e.c.d dVar = new com.igexin.push.e.c.d();
                dVar.a();
                dVar.f270a = (int) jCurrentTimeMillis;
                dVar.d = f.s;
                dVar.e = string;
                dVar.f = bArr;
                dVar.g = f.s;
                e.a().g().a("C-" + f.s, dVar);
                if (str == null || !str.startsWith("4T5@S_")) {
                    return;
                }
                com.igexin.b.a.c.b.a("PushController sending lbs report message : " + string);
            } catch (Throwable th) {
                com.igexin.b.a.c.b.a("PushController|" + th.toString());
            }
        }
    }

    public void b(int i, String str) {
        com.igexin.push.config.k.e = i;
        com.igexin.push.config.a.a().d();
    }

    public void b(String str, String str2) {
        String str3;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - f.Q > 1000) {
            String str4 = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(jCurrentTimeMillis));
            if (!str4.equals(f.P)) {
                com.igexin.push.core.c.h.a().g(str4);
                com.igexin.push.core.c.h.a().a(0);
            }
            com.igexin.b.a.c.b.a("-> CoreRuntimeInfo.opAliasTimes:" + f.R);
            if (f.R < 100) {
                com.igexin.b.a.c.b.a("start bindAlias ###");
                f.Q = jCurrentTimeMillis;
                com.igexin.push.core.c.h.a().a(f.R + 1);
                a(str, str2, false, true);
                return;
            }
            str3 = "PushController|bindAlias times exceed";
        } else {
            str3 = "PushController|bindAlias frequently called";
        }
        com.igexin.b.a.c.b.a(str3);
    }
}
