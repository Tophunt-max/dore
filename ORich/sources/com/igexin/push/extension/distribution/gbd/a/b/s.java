package com.igexin.push.extension.distribution.gbd.a.b;

import android.os.Bundle;
import android.text.TextUtils;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.push.extension.distribution.gbd.i.am;
import com.igexin.sdk.PushConsts;
import io.dcloud.common.constant.AbsoluteConst;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static s f344a;

    public static synchronized s a() {
        if (f344a == null) {
            f344a = new s();
        }
        return f344a;
    }

    public synchronized void a(Object obj) {
        List<String> list;
        try {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_TGA", "start t guard.");
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
        if (!(obj instanceof JSONObject)) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_TGA", "start t Guard, format error.");
            return;
        }
        JSONArray jSONArray = ((JSONObject) obj).getJSONArray(AssistPushConsts.MSG_TYPE_PAYLOAD);
        if (jSONArray != null && jSONArray.length() != 0) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Map<String, com.igexin.push.extension.distribution.gbd.b.e> mapB = a.a().b();
            ArrayList arrayList3 = new ArrayList(mapB.keySet());
            if (com.igexin.push.extension.distribution.gbd.c.c.ao == null) {
                com.igexin.push.extension.distribution.gbd.c.c.ao = new CopyOnWriteArrayList();
            }
            com.igexin.push.extension.distribution.gbd.c.c.ao.clear();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("pkgname");
                    String strOptString2 = jSONObjectOptJSONObject.optString("appid");
                    String strOptString3 = jSONObjectOptJSONObject.optString("cid");
                    String strOptString4 = jSONObjectOptJSONObject.optString("is_forcestart");
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_TGA", "guard item: " + strOptString + ", " + strOptString2 + ", " + strOptString3 + ", " + strOptString4);
                    if (TextUtils.isEmpty(strOptString)) {
                        Iterator<Map.Entry<String, com.igexin.push.extension.distribution.gbd.b.e>> it = mapB.entrySet().iterator();
                        while (true) {
                            if (it.hasNext()) {
                                Map.Entry<String, com.igexin.push.extension.distribution.gbd.b.e> next = it.next();
                                String key = next.getKey();
                                com.igexin.push.extension.distribution.gbd.b.e value = next.getValue();
                                if (value != null) {
                                    String strA = value.a();
                                    String strB = value.b();
                                    int iC = value.c();
                                    if (strOptString2.equals(strA) && strOptString3.equals(strB)) {
                                        if (iC == 0) {
                                            arrayList.add(key);
                                        } else if (iC == 1) {
                                            arrayList2.add(key);
                                        }
                                        if (AbsoluteConst.TRUE.equals(strOptString4)) {
                                            list = com.igexin.push.extension.distribution.gbd.c.c.ao;
                                        }
                                    }
                                }
                            }
                        }
                        list.add(strOptString);
                    } else if (arrayList3.contains(strOptString)) {
                        int iC2 = mapB.get(strOptString).c();
                        if (iC2 == 0) {
                            arrayList.add(strOptString);
                        } else if (iC2 == 1) {
                            arrayList2.add(strOptString);
                        }
                        if (AbsoluteConst.TRUE.equals(strOptString4)) {
                            list = com.igexin.push.extension.distribution.gbd.c.c.ao;
                            list.add(strOptString);
                        }
                    }
                }
            }
            d.a().a(arrayList);
            j.a().a(arrayList2);
        }
    }

    public synchronized void b() {
        try {
            if (System.currentTimeMillis() - com.igexin.push.extension.distribution.gbd.c.c.ap > com.igexin.push.extension.distribution.gbd.c.a.m * 1000) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_TGA", "upload gt list match time.");
                com.igexin.push.extension.distribution.gbd.e.a.g.a().g(System.currentTimeMillis());
                Map<String, com.igexin.push.extension.distribution.gbd.b.e> mapB = a.a().b();
                if (mapB != null && !mapB.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    for (Map.Entry<String, com.igexin.push.extension.distribution.gbd.b.e> entry : mapB.entrySet()) {
                        try {
                            String key = entry.getKey();
                            com.igexin.push.extension.distribution.gbd.b.e value = entry.getValue();
                            if (!TextUtils.isEmpty(key) && value != null) {
                                String strA = value.a();
                                String strB = value.b();
                                int iC = value.c();
                                if (!TextUtils.isEmpty(strA) && !TextUtils.isEmpty(strB)) {
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put("pkg", key);
                                    jSONObject.put("appid", strA);
                                    jSONObject.put("cid", strB);
                                    jSONObject.put("type", iC);
                                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_TGA", "appInfo = " + jSONObject.toString());
                                    arrayList.add(jSONObject);
                                }
                            }
                        } catch (Throwable th) {
                            com.igexin.push.extension.distribution.gbd.i.j.a(th);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    JSONArray jSONArray = new JSONArray((Collection) arrayList);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("appinfo", jSONArray);
                    jSONObject2.put("deviceid", "ANDROID-" + com.igexin.push.core.f.x);
                    jSONObject2.put("type", 0);
                    jSONObject2.put("version", "GBD-1.10.3");
                    jSONObject2.put("pkg", com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageName());
                    byte[] bytes = jSONObject2.toString().getBytes();
                    Bundle bundle = new Bundle();
                    bundle.putString(PushConsts.CMD_ACTION, "sendMessage");
                    StringBuilder sb = new StringBuilder();
                    sb.append("6T5@S_");
                    sb.append(am.a(com.igexin.push.core.f.s + System.currentTimeMillis()));
                    bundle.putString("taskid", sb.toString());
                    bundle.putByteArray("extraData", bytes);
                    com.igexin.push.core.a.f.a().a(bundle);
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_TGA", "sendMessage guard to server.");
                }
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_TGA", "guardMap empty.");
                return;
            }
            if (!com.igexin.push.extension.distribution.gbd.c.c.f.getAndSet(true) && com.igexin.push.extension.distribution.gbd.c.c.g != null) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_TGA", "deal with the cached guard list.");
                a(com.igexin.push.extension.distribution.gbd.c.c.g);
            }
        } catch (Throwable th2) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th2);
        }
    }
}
