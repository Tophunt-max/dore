package com.igexin.push.core.a;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.sdk.PushConsts;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SparseArray<a> f148a;
    private static f b;

    private f() {
        SparseArray<a> sparseArray = new SparseArray<>();
        f148a = sparseArray;
        sparseArray.put(0, new j());
        f148a.put(5, new l());
        f148a.put(37, new p());
        f148a.put(9, new t());
        f148a.put(26, new i());
        f148a.put(28, new e());
        f148a.put(97, new k());
    }

    public static f a() {
        if (b == null) {
            b = new f();
        }
        return b;
    }

    private void a(com.igexin.push.e.c.c cVar, PushTaskBean pushTaskBean, String str, String str2) {
        cVar.a(new com.igexin.push.g.b.b(pushTaskBean, str, com.igexin.push.util.u.a()));
        com.igexin.push.core.f.ah.put(str2, cVar);
    }

    public static boolean a(long j) {
        return com.igexin.push.util.a.a(j);
    }

    private void l() {
        com.igexin.push.core.e.a().g().i();
        if (com.igexin.push.core.r.a().b()) {
            com.igexin.b.a.c.b.a("CoreAction|network changed check condition status");
            com.igexin.push.core.r.a().e();
        }
    }

    public Class a(Context context) {
        return com.igexin.push.core.s.a().c(context);
    }

    public String a(String str, String str2) {
        return str + ":" + str2;
    }

    public void a(Intent intent) {
        com.igexin.b.a.c.b.a("CoreAction|onServiceInitialize ##");
        if (intent != null) {
            com.igexin.push.core.e.a().a(false);
            com.igexin.push.core.f.C = intent.hasExtra("op_app") ? intent.getStringExtra("op_app") : "";
            com.igexin.push.core.f.m = false;
            if (com.igexin.push.core.f.l) {
                com.igexin.push.core.a.a().c();
                com.igexin.push.core.f.m = true;
            }
            if (com.igexin.push.util.t.a(com.igexin.push.core.f.f) && com.igexin.push.core.s.a().b(com.igexin.push.core.f.f) && com.igexin.push.core.f.Y != null) {
                String name = com.igexin.push.core.s.a().c(com.igexin.push.core.f.f).getName();
                if (!name.equals(com.igexin.push.core.b.s)) {
                    byte[] bArrB = com.igexin.b.b.a.b(name.getBytes());
                    if (bArrB != null) {
                        com.igexin.push.util.g.a(bArrB, com.igexin.push.core.f.Y, false);
                        return;
                    }
                    return;
                }
                if (new File(com.igexin.push.core.f.Y).delete()) {
                    com.igexin.b.a.c.b.a("del " + com.igexin.push.core.f.Y + " success ~~~");
                }
            }
        }
    }

    public void a(Bundle bundle) {
        com.igexin.push.core.q.a().a(bundle);
    }

    public void a(PushTaskBean pushTaskBean) {
        com.igexin.push.e.c.c cVar = new com.igexin.push.e.c.c();
        cVar.a();
        cVar.c = "RCV" + pushTaskBean.getMessageId();
        cVar.d = com.igexin.push.core.f.s;
        cVar.f269a = (int) System.currentTimeMillis();
        com.igexin.push.core.e.a().g().a("C-" + com.igexin.push.core.f.s, cVar);
        com.igexin.b.a.c.b.a("CoreAction|cdnreceive " + pushTaskBean.getTaskId() + "|" + pushTaskBean.getMessageId());
    }

    public void a(PushTaskBean pushTaskBean, String str) {
        a(pushTaskBean, AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE + str, "ok");
    }

    public void a(PushTaskBean pushTaskBean, String str, String str2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PushConsts.CMD_ACTION, "pushmessage_feedback");
            jSONObject.put("appid", pushTaskBean.getAppid());
            jSONObject.put("id", String.valueOf(jCurrentTimeMillis));
            jSONObject.put("appkey", pushTaskBean.getAppKey());
            jSONObject.put("messageid", pushTaskBean.getMessageId());
            jSONObject.put("taskid", pushTaskBean.getTaskId());
            jSONObject.put("actionid", str);
            jSONObject.put("result", str2);
            jSONObject.put("timestamp", String.valueOf(System.currentTimeMillis()));
        } catch (Exception unused) {
        }
        String string = jSONObject.toString();
        com.igexin.push.e.c.d dVar = new com.igexin.push.e.c.d();
        dVar.a();
        dVar.f270a = (int) jCurrentTimeMillis;
        dVar.d = "17258000";
        dVar.e = string;
        dVar.g = com.igexin.push.core.f.s;
        com.igexin.push.core.c.d dVarA = com.igexin.push.core.c.d.a();
        if (dVarA != null) {
            dVarA.a(new com.igexin.push.core.bean.i(jCurrentTimeMillis, string, (byte) 3, jCurrentTimeMillis));
        }
        if (com.igexin.push.core.e.a().g() != null) {
            com.igexin.push.core.e.a().g().a("C-" + com.igexin.push.core.f.s, dVar);
        }
        com.igexin.b.a.c.b.a("feedback|" + pushTaskBean.getTaskId() + "|" + pushTaskBean.getMessageId() + "|" + str);
    }

    void a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PushConsts.CMD_ACTION, "received");
            jSONObject.put("id", str);
        } catch (JSONException unused) {
        }
        String string = jSONObject.toString();
        com.igexin.push.e.c.p pVar = new com.igexin.push.e.c.p();
        pVar.a();
        ((com.igexin.push.e.c.d) pVar).f270a = (int) System.currentTimeMillis();
        pVar.d = "17258000";
        pVar.e = string;
        pVar.g = com.igexin.push.core.f.s;
        com.igexin.push.core.e.a().g().a("C-" + com.igexin.push.core.f.s, pVar);
    }

    public void a(String str, com.igexin.push.e.c.a aVar, PushTaskBean pushTaskBean) {
        com.igexin.b.a.b.c.b().a(new com.igexin.push.g.a.a(new com.igexin.push.core.d.b(str, aVar, pushTaskBean)), false, true);
    }

    void a(JSONObject jSONObject, String str) {
        try {
            PushTaskBean pushTaskBean = new PushTaskBean();
            pushTaskBean.parse(jSONObject);
            a(pushTaskBean, str);
        } catch (Exception e) {
            com.igexin.b.a.c.b.a("CoreAction " + e.toString());
        }
    }

    @Override // com.igexin.push.core.a.a
    public boolean a(com.igexin.b.a.d.e eVar) {
        return false;
    }

    public boolean a(com.igexin.push.e.c.e eVar) {
        if (eVar == null) {
            return false;
        }
        a aVar = f148a.get(eVar.i);
        if ((eVar instanceof com.igexin.push.e.c.j) || (eVar instanceof com.igexin.push.e.c.m) || (eVar instanceof com.igexin.push.e.c.n) || (eVar instanceof com.igexin.push.e.c.q) || (eVar instanceof com.igexin.push.e.c.h)) {
            com.igexin.b.a.c.b.a("CoreAction|receive : " + eVar.getClass().getName() + " resp ~~~~");
            com.igexin.b.a.b.a.a.f.a().a(eVar.getClass().getName());
        }
        if ((eVar instanceof com.igexin.push.e.c.m) || (eVar instanceof com.igexin.push.e.c.n) || (eVar instanceof com.igexin.push.e.c.q)) {
            com.igexin.push.core.f.D = 0L;
            com.igexin.push.c.i.a().d().b();
        }
        if (aVar != null) {
            aVar.a(eVar);
        }
        com.igexin.push.g.b.c.i().j();
        return true;
    }

    @Override // com.igexin.push.core.a.a
    public boolean a(Object obj) {
        com.igexin.push.f.a aVarG = com.igexin.push.core.e.a().g();
        if ((obj instanceof com.igexin.push.e.c.e) && aVarG != null) {
            aVarG.a((com.igexin.push.e.c.e) obj);
        } else if (obj instanceof com.igexin.push.e.b.b) {
            com.igexin.b.a.c.b.a("CoreAction|TcpExceptionNotify###");
            aVarG.f();
        } else if (obj instanceof com.igexin.push.e.b.a) {
            com.igexin.b.a.c.b.a("CoreAction|TcpDisconnectSuccessNotify ###");
            if (com.igexin.push.core.f.l) {
                com.igexin.push.core.f.l = false;
                com.igexin.b.a.c.b.a("CoreAction|broadcast online state = offline");
                com.igexin.push.core.a.a().b();
            }
            aVarG.g();
        }
        return false;
    }

    public boolean a(String str, String str2, String str3) {
        return com.igexin.push.core.r.a().a(str, str2, str3);
    }

    public boolean a(JSONObject jSONObject, PushTaskBean pushTaskBean) {
        return com.igexin.push.core.r.a().a(jSONObject, pushTaskBean);
    }

    public void b() {
        com.igexin.b.a.c.b.a("CoreAction|send heart beat data ........");
        com.igexin.push.core.e.a().g().a("H-" + com.igexin.push.core.f.s, new com.igexin.push.e.c.h(), true);
    }

    public void b(Intent intent) {
        if (intent == null || !intent.hasExtra("isSlave")) {
            return;
        }
        boolean booleanExtra = intent.getBooleanExtra("isSlave", false);
        com.igexin.b.a.c.b.a("CoreAction|onServiceInitializeForSlave isSlave =" + booleanExtra);
        if (booleanExtra) {
            com.igexin.push.core.e.a().a(true);
            com.igexin.push.core.f.C = intent.hasExtra("op_app") ? intent.getStringExtra("op_app") : "";
            if (com.igexin.push.core.f.l) {
                com.igexin.push.core.a.a().c();
            }
        }
    }

    public void b(PushTaskBean pushTaskBean, String str) {
        if (pushTaskBean.isCDNType()) {
            c(pushTaskBean, str);
        } else {
            a(pushTaskBean, str, "ok");
        }
    }

    public void c() {
        if (com.igexin.push.core.f.l || (com.igexin.push.core.f.D <= com.igexin.push.config.k.w && com.igexin.push.core.f.D != 0)) {
            com.igexin.b.a.c.b.a("CoreAction|resetDelayTime, ignore ~~~~~");
            return;
        }
        int iRandom = (int) ((Math.random() * 50.0d) + 100.0d);
        com.igexin.b.a.c.b.a("CoreAction|screen on or onresume, reConnectDelayTime = " + com.igexin.push.config.k.w + ", resetDelay = " + iRandom);
        com.igexin.push.core.f.D = (long) iRandom;
        com.igexin.push.g.b.g.i().j();
    }

    public void c(Intent intent) {
        if (intent == null || intent.getAction() == null) {
            return;
        }
        try {
            String action = intent.getAction();
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                if (com.igexin.b.a.b.c.b() != null) {
                    l();
                    return;
                }
                return;
            }
            if ("com.igexin.sdk.action.execute".equals(action)) {
                com.igexin.push.core.r.a().a(intent);
                return;
            }
            if (com.igexin.push.core.b.b.equals(action)) {
                com.igexin.push.core.r.a().b(intent);
                return;
            }
            if ("android.intent.action.TIME_SET".equals(action)) {
                if (com.igexin.push.config.k.b != 0) {
                    com.igexin.push.a.a.c.c().d();
                    return;
                }
                return;
            }
            if ("android.intent.action.SCREEN_ON".equals(action)) {
                com.igexin.push.core.f.q = 1;
                if (com.igexin.push.core.r.a().b()) {
                    com.igexin.push.core.r.a().e();
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    c();
                    return;
                }
                return;
            }
            if ("android.intent.action.SCREEN_OFF".equals(action)) {
                com.igexin.push.core.f.q = 0;
            } else if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
                com.igexin.push.d.c.a().a(intent.getDataString());
            } else if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                com.igexin.push.d.c.a().b(intent.getDataString());
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("CoreAction" + th.toString());
        }
    }

    public void c(PushTaskBean pushTaskBean, String str) {
        com.igexin.push.e.c.c cVar;
        if (pushTaskBean == null || TextUtils.isEmpty(pushTaskBean.getMessageId())) {
            return;
        }
        String str2 = pushTaskBean.getMessageId() + "|" + str;
        if (com.igexin.push.core.f.ah.containsKey(str2)) {
            cVar = com.igexin.push.core.f.ah.get(str2);
            if (cVar.c() < 2) {
                com.igexin.push.core.e.a().g().a("C-" + com.igexin.push.core.f.s, cVar);
                cVar.a(cVar.c() + 1);
            }
            com.igexin.b.a.c.b.a("cdnfeedback|" + pushTaskBean.getTaskId() + "|" + pushTaskBean.getMessageId() + "|" + str);
        }
        cVar = new com.igexin.push.e.c.c();
        long jCurrentTimeMillis = System.currentTimeMillis();
        cVar.a();
        cVar.c = "FDB" + pushTaskBean.getMessageId() + "|" + pushTaskBean.getTaskId() + "|" + str + "|ok|" + jCurrentTimeMillis;
        cVar.d = com.igexin.push.core.f.s;
        cVar.f269a = (int) jCurrentTimeMillis;
        com.igexin.push.f.a aVarG = com.igexin.push.core.e.a().g();
        StringBuilder sb = new StringBuilder();
        sb.append("C-");
        sb.append(com.igexin.push.core.f.s);
        aVarG.a(sb.toString(), cVar);
        a(cVar, pushTaskBean, str, str2);
        com.igexin.b.a.c.b.a("cdnfeedback|" + pushTaskBean.getTaskId() + "|" + pushTaskBean.getMessageId() + "|" + str);
    }

    void d() {
        try {
            for (com.igexin.push.core.bean.i iVar : com.igexin.push.core.c.d.a().b()) {
                if (iVar.d() + 20000 <= System.currentTimeMillis()) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject(iVar.b());
                    com.igexin.push.e.c.d dVar = new com.igexin.push.e.c.d();
                    dVar.a();
                    dVar.f270a = (int) jCurrentTimeMillis;
                    dVar.d = "17258000";
                    if (jSONObject.has("extraData")) {
                        dVar.f = com.igexin.push.util.j.a(jSONObject.optString("extraData").getBytes(), 0);
                        jSONObject.remove("extraData");
                    }
                    dVar.e = iVar.b();
                    dVar.g = com.igexin.push.core.f.s;
                    com.igexin.b.a.c.b.a("freshral|" + iVar.b());
                    com.igexin.push.core.c.d.a().a(iVar.a(), System.currentTimeMillis() + 20000);
                    com.igexin.push.core.e.a().g().a("C-" + com.igexin.push.core.f.s, dVar);
                    return;
                }
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("CoreActionfreshRAL error :" + th.toString());
        }
    }

    void e() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PushConsts.CMD_ACTION, "request_deviceid");
            jSONObject.put("id", String.valueOf(jCurrentTimeMillis));
        } catch (JSONException unused) {
        }
        String string = jSONObject.toString();
        com.igexin.push.e.c.d dVar = new com.igexin.push.e.c.d();
        dVar.a();
        dVar.f270a = (int) jCurrentTimeMillis;
        dVar.d = "17258000";
        dVar.e = string;
        dVar.g = com.igexin.push.core.f.s;
        com.igexin.push.core.e.a().g().a("C-" + com.igexin.push.core.f.s, dVar);
        com.igexin.b.a.c.b.a("CoreAction|deviceidReq");
    }

    public void f() {
        try {
            if (System.currentTimeMillis() - com.igexin.push.core.f.F > 86400000) {
                com.igexin.push.core.c.h.a().b(0);
                com.igexin.push.core.c.h.a().h(System.currentTimeMillis());
            }
            if (com.igexin.push.core.f.az <= 5) {
                com.igexin.push.core.c.h.a().b(com.igexin.push.core.f.az + 1);
                com.igexin.b.a.b.c.b().a(new g(this), false, true);
            }
        } catch (Throwable unused) {
        }
    }

    public void g() {
        String[] list;
        if (com.igexin.push.core.f.f == null) {
            return;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
        String str = simpleDateFormat.format(new Date());
        String str2 = com.igexin.push.core.f.f.getExternalFilesDir("gtpush") + "/log/";
        File file = new File(str2);
        String str3 = com.igexin.push.core.f.e;
        if (str3 == null) {
            str3 = "unknowPacageName";
        }
        if (file.exists() && (list = file.list()) != null) {
            int length = list.length;
            for (int i = 0; i < length; i++) {
                int length2 = list[i].length();
                if (list[i].startsWith(str3) && list[i].endsWith(".log") && length2 > str3.length() + 14 && str3.equals(list[i].substring(0, length2 - 15))) {
                    try {
                        if (Math.abs((simpleDateFormat.parse(str).getTime() - simpleDateFormat.parse(list[i].substring(str3.length() + 1, length2 - 4)).getTime()) / 86400000) > 6) {
                            File file2 = new File(str2 + list[i]);
                            if (file2.exists()) {
                                file2.delete();
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }

    public void h() {
        com.igexin.push.util.a.e();
    }

    public void i() {
        int i = com.igexin.push.core.f.aj - 100;
        if (i < 0) {
            i = 0;
        }
        com.igexin.push.core.f.aj = i;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Iterator<Map.Entry<String, Long>> it = com.igexin.push.core.f.ai.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, Long> next = it.next();
            next.getKey();
            if (jCurrentTimeMillis - next.getValue().longValue() > 3600000) {
                it.remove();
            }
        }
    }

    public void j() {
        if (com.igexin.push.core.f.N < System.currentTimeMillis()) {
            com.igexin.push.core.c.h.a().a(false);
        }
    }

    public void k() {
        if (!com.igexin.push.core.f.aa) {
            com.igexin.push.core.f.aa = com.igexin.b.a.b.c.b().a(com.igexin.push.g.b.c.i(), false, true);
        }
        if (!com.igexin.push.core.f.ab) {
            com.igexin.push.core.f.ab = com.igexin.b.a.b.c.b().a(com.igexin.push.g.b.g.i(), true, true);
        }
        if (com.igexin.push.core.f.ac) {
            return;
        }
        com.igexin.push.core.e.a().d();
    }
}
