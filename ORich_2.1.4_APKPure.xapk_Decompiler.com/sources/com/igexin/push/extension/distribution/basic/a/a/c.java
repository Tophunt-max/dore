package com.igexin.push.extension.distribution.basic.a.a;

import android.os.Bundle;
import android.os.Environment;
import com.igexin.push.core.f;
import com.igexin.push.extension.distribution.basic.c.g;
import com.igexin.push.extension.distribution.basic.j.i;
import com.igexin.sdk.PushConsts;
import java.net.ServerSocket;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f287a = "EXT-" + c.class.getName();
    private static c d;
    private Long b;
    private ServerSocket c;

    private c() {
    }

    public static c a() {
        if (d == null) {
            d = new c();
        }
        return d;
    }

    public void a(boolean z) {
        int i;
        JSONArray jSONArray;
        try {
            if (com.igexin.push.extension.distribution.basic.d.c.a(f.f) && z && f.i && f.j) {
                try {
                    if (this.c == null) {
                        this.c = new ServerSocket(51688);
                    }
                } catch (Exception unused) {
                    com.igexin.b.a.c.b.a(f287a + "|port 51688 has occupy by others");
                }
                if (this.c != null) {
                    if (g.l < 180000) {
                        g.l = 180000L;
                    }
                    if (g.k < 180000) {
                        g.k = 180000L;
                    }
                    if (this.b == null) {
                        long jCurrentTimeMillis = System.currentTimeMillis() - g.m;
                        if (jCurrentTimeMillis < g.l) {
                            com.igexin.b.a.c.b.a(f287a + "|lastReportInterval < reportCidRestartThreshold not report");
                            return;
                        }
                        i = jCurrentTimeMillis < g.k ? 2 : 0;
                    } else {
                        if (System.currentTimeMillis() - this.b.longValue() < g.k) {
                            com.igexin.b.a.c.b.a(f287a + "|offline time < reportCidOfflineThreshold not report");
                            return;
                        }
                        i = 1;
                    }
                    List<JSONObject> listA = i.a(Environment.getExternalStorageDirectory() + "/libs");
                    if (listA == null) {
                        jSONArray = new JSONArray();
                    } else if (listA.size() <= 0) {
                        return;
                    } else {
                        jSONArray = new JSONArray((Collection) listA);
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("appinfo", jSONArray);
                    jSONObject.put("deviceid", "ANDROID-" + f.x);
                    jSONObject.put("type", i);
                    jSONObject.put("pkg", f.f.getPackageName());
                    jSONObject.toString();
                    Bundle bundle = new Bundle();
                    bundle.putString(PushConsts.CMD_ACTION, "sendMessage");
                    StringBuilder sb = new StringBuilder();
                    sb.append("6T5@S_");
                    sb.append(com.igexin.b.b.a.a(f.s + System.currentTimeMillis()));
                    bundle.putString("taskid", sb.toString());
                    bundle.putByteArray("extraData", jSONObject.toString().getBytes());
                    com.igexin.push.core.a.f.a().a(bundle);
                    com.igexin.push.extension.distribution.basic.d.b.a().b(System.currentTimeMillis());
                }
            }
            if (z) {
                return;
            }
            this.b = Long.valueOf(System.currentTimeMillis());
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f287a + "|do report exception:" + th.toString());
        }
    }
}
