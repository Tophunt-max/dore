package com.igexin.push.core.bean;

import android.os.Build;
import com.igexin.push.core.s;
import com.igexin.push.util.t;
import com.igexin.sdk.PushBuildConfig;
import com.igexin.sdk.PushConsts;
import com.taobao.weex.WXEnvironment;
import com.taobao.weex.ui.component.WXBasicComponentType;
import io.dcloud.common.constant.AbsoluteConst;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f168a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f = PushBuildConfig.sdk_conf_channelid;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public String l;
    public long m;

    public a() {
        if (com.igexin.push.core.f.e != null) {
            this.f += ":" + com.igexin.push.core.f.e;
        }
        this.e = PushBuildConfig.sdk_conf_version;
        this.b = com.igexin.push.core.f.v;
        this.c = com.igexin.push.core.f.u;
        this.d = com.igexin.push.core.f.w;
        this.h = "ANDROID";
        this.j = "MDP";
        this.g = com.igexin.push.core.f.x;
        this.m = System.currentTimeMillis();
        this.k = com.igexin.push.core.f.y;
        if (t.a(com.igexin.push.core.f.f)) {
            this.f168a = Build.MODEL;
            this.l = com.igexin.push.util.p.a();
            this.i = WXEnvironment.OS + Build.VERSION.RELEASE;
        }
        if (com.igexin.assist.sdk.a.b(com.igexin.push.core.f.f) && com.igexin.push.config.k.T) {
            StringBuilder sb = new StringBuilder();
            sb.append("FCM-");
            String str = this.l;
            sb.append(str == null ? "" : str);
            this.l = sb.toString();
        }
    }

    public static String a(a aVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String str = aVar.f168a;
        if (str == null) {
            str = "";
        }
        jSONObject.put("model", str);
        String str2 = aVar.b;
        if (str2 == null) {
            str2 = "";
        }
        jSONObject.put("sim", str2);
        String str3 = aVar.c;
        if (str3 == null) {
            str3 = "";
        }
        jSONObject.put("imei", str3);
        String str4 = aVar.d;
        if (str4 == null) {
            str4 = "";
        }
        jSONObject.put("mac", str4);
        String str5 = aVar.e;
        if (str5 == null) {
            str5 = "";
        }
        jSONObject.put("version", str5);
        String str6 = aVar.f;
        if (str6 == null) {
            str6 = "";
        }
        jSONObject.put("channelid", str6);
        jSONObject.put("type", "ANDROID");
        String str7 = aVar.j;
        if (str7 == null) {
            str7 = "";
        }
        jSONObject.put(AbsoluteConst.XML_APP, str7);
        StringBuilder sb = new StringBuilder();
        sb.append("ANDROID-");
        String str8 = aVar.g;
        if (str8 == null) {
            str8 = "";
        }
        sb.append(str8);
        jSONObject.put("deviceid", sb.toString());
        String str9 = aVar.k;
        if (str9 == null) {
            str9 = "";
        }
        jSONObject.put("device_token", str9);
        String str10 = aVar.l;
        if (str10 == null) {
            str10 = "";
        }
        jSONObject.put("brand", str10);
        String str11 = aVar.i;
        if (str11 == null) {
            str11 = "";
        }
        jSONObject.put("system_version", str11);
        jSONObject.put(WXBasicComponentType.CELL, "");
        jSONObject.put("aid", com.igexin.push.util.p.f());
        jSONObject.put("adid", com.igexin.push.util.p.g());
        String name = s.a().c(com.igexin.push.core.f.f).getName();
        if (!com.igexin.push.core.b.s.equals(name)) {
            jSONObject.put("us", name);
        }
        jSONObject.put("ua", s.a().e(com.igexin.push.core.f.f));
        jSONObject.put("oaid", com.igexin.push.core.f.aC != null ? com.igexin.push.core.f.aC : "");
        jSONObject.put("notification_enabled", com.igexin.push.util.a.c(com.igexin.push.core.f.f) ? 1 : 0);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(PushConsts.CMD_ACTION, "addphoneinfo");
        jSONObject2.put("id", String.valueOf(aVar.m));
        jSONObject2.put("info", jSONObject);
        com.igexin.b.a.c.b.a("addphoneinfo|" + jSONObject2.toString());
        return jSONObject2.toString();
    }
}
