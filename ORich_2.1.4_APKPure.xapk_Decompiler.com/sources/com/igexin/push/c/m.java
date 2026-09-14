package com.igexin.push.c;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import com.igexin.push.config.SDKUrlConfig;
import com.taobao.weex.ui.component.WXBasicComponentType;
import io.dcloud.WebAppActivity;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {
    private static final String e = "DT_" + m.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected long f120a;
    private Handler i;
    protected final Map<String, q> b = new LinkedHashMap();
    protected final Map<String, j> c = new HashMap();
    private final Object f = new Object();
    private final Object g = new Object();
    protected a d = new a();
    private final Comparator<Map.Entry<String, j>> h = new n(this);

    public m(String str, String str2) {
        if (!SDKUrlConfig.hasMultipleXfr()) {
            a();
        } else {
            b(str);
            c(str2);
        }
    }

    private j a(JSONObject jSONObject) {
        if (!jSONObject.has("domain")) {
            return null;
        }
        j jVar = new j();
        jVar.a(jSONObject.getString("domain"));
        if (jSONObject.has("port")) {
            jVar.a(jSONObject.getInt("port"));
        }
        if (jSONObject.has("ip")) {
            jVar.b(jSONObject.getString("ip"));
        }
        if (jSONObject.has("consumeTime")) {
            jVar.a(jSONObject.getLong("consumeTime"));
        }
        if (jSONObject.has("detectSuccessTime")) {
            jVar.b(jSONObject.getLong("detectSuccessTime"));
        }
        if (jSONObject.has("isDomain")) {
            jVar.a(jSONObject.getBoolean("isDomain"));
        }
        return jVar;
    }

    private List<String> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                arrayList.add(jSONArray.getJSONObject(i).getString("domain"));
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    private void a() {
        this.f120a = 0L;
        if (q()) {
            if (com.igexin.push.core.f.ar != null) {
                com.igexin.push.core.c.h.a().b("null", true);
            }
        } else if (com.igexin.push.core.f.as != null) {
            com.igexin.push.core.c.h.a().b("null", false);
        }
        List<String> listO = o();
        ArrayList arrayList = new ArrayList();
        for (String str : listO) {
            j jVar = new j(str, Integer.parseInt(com.igexin.b.a.b.f.a(str)[2]));
            if (listO.size() > 1) {
                a(jVar);
            }
            arrayList.add(jVar);
        }
        this.d.b(arrayList);
        listO.clear();
    }

    private void a(j jVar) {
        q qVar = new q();
        qVar.a(b() == h.WIFI);
        qVar.a(c());
        qVar.a(jVar);
        synchronized (this.g) {
            this.b.put(jVar.a(), qVar);
        }
        com.igexin.b.a.b.c.b().a(qVar, true, true);
    }

    private void b(String str) {
        JSONObject jSONObject;
        if (TextUtils.isEmpty(str)) {
            a();
            return;
        }
        JSONArray jSONArray = null;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException unused) {
            jSONObject = null;
        }
        if (jSONObject == null || jSONObject.length() == 0) {
            a();
            return;
        }
        if (jSONObject.has("lastDetectTime")) {
            try {
                this.f120a = jSONObject.getLong("lastDetectTime");
            } catch (JSONException unused2) {
            }
        }
        if (Math.abs(System.currentTimeMillis() - this.f120a) >= f.f114a) {
            a();
            return;
        }
        if (jSONObject.has(WXBasicComponentType.LIST)) {
            try {
                jSONArray = jSONObject.getJSONArray(WXBasicComponentType.LIST);
            } catch (JSONException unused3) {
            }
        }
        if (jSONArray == null || jSONArray.length() == 0) {
            a();
            return;
        }
        List<String> listA = a(jSONArray);
        if (listA.isEmpty()) {
            a();
            return;
        }
        List<String> listO = o();
        ArrayList arrayList = new ArrayList(listO);
        arrayList.retainAll(listA);
        if (arrayList.size() == listA.size()) {
            com.igexin.b.a.c.b.a(e + " | db cache xfr == default, use cache");
            b(jSONArray);
            return;
        }
        com.igexin.b.a.c.b.a(e + " | db cache xfr != default, use default");
        arrayList.clear();
        listO.clear();
        listA.clear();
        a();
    }

    private void b(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                j jVarA = a(jSONObject);
                if (jVarA != null) {
                    this.c.put(jVarA.a(), jVarA);
                } else {
                    try {
                        jVarA = d(jSONObject.getString("domain"));
                    } catch (Exception e2) {
                        com.igexin.b.a.c.b.a(e + "|initWithCacheData exception " + e2.toString());
                        this.c.clear();
                        a();
                        return;
                    }
                }
                if (jVarA != null) {
                    a(jVarA);
                    arrayList.add(jVarA);
                }
            } catch (Exception e3) {
                com.igexin.b.a.c.b.a(e + "|initWithCacheData exception " + e3.toString());
                return;
            }
        }
        this.d.b(arrayList);
    }

    private void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject = null;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException unused) {
        }
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        if (jSONObject.has("loginFailedlCnt")) {
            try {
                this.d.c = jSONObject.getInt("loginFailedlCnt");
            } catch (JSONException unused2) {
            }
        }
        if (jSONObject.has("lastChange2BackupTime")) {
            try {
                this.d.d = jSONObject.getLong("lastChange2BackupTime");
            } catch (JSONException unused3) {
            }
        }
        if (jSONObject.has("lastOfflineTime")) {
            try {
                this.d.e = jSONObject.getLong("lastOfflineTime");
            } catch (JSONException unused4) {
            }
        }
        if (jSONObject.has("domainType")) {
            try {
                this.d.f109a = d.a(jSONObject.getInt("domainType"));
                if (this.d.f109a == d.BACKUP) {
                    this.d.b.set(true);
                }
            } catch (JSONException unused5) {
            }
        }
    }

    private j d(String str) {
        j jVar = new j();
        String[] strArrA = com.igexin.b.a.b.f.a(str);
        jVar.a(str);
        jVar.a(Integer.parseInt(strArrA[2]));
        return jVar;
    }

    private List<String> o() {
        return SDKUrlConfig.getDefaultXfrList();
    }

    private void p() {
        synchronized (this.f) {
            this.c.clear();
        }
    }

    private boolean q() {
        return b() == h.MOBILE;
    }

    protected q a(String str) {
        synchronized (this.g) {
            for (Map.Entry<String, q> entry : this.b.entrySet()) {
                if (entry.getKey().equals(str)) {
                    return entry.getValue();
                }
            }
            return null;
        }
    }

    public abstract h b();

    protected void b(j jVar) {
        synchronized (this.f) {
            this.c.put(jVar.a(), jVar);
        }
        this.d.e();
    }

    public abstract p c();

    public void d() {
        if (!k()) {
            com.igexin.b.a.c.b.a(e + "|startDetect detect = false, return !!!");
            return;
        }
        com.igexin.b.a.c.b.a(e + "|startDetect detect = true, start detect !!!");
        h();
    }

    public void e() {
        synchronized (this.g) {
            for (Map.Entry<String, q> entry : this.b.entrySet()) {
                entry.getValue().a((p) null);
                entry.getValue().i();
            }
        }
    }

    public void f() {
        e();
        p();
        List<String> listO = o();
        synchronized (this.g) {
            int size = this.b.size();
            if (listO.size() < size) {
                int size2 = size - listO.size();
                Iterator<Map.Entry<String, q>> it = this.b.entrySet().iterator();
                for (int i = 0; it.hasNext() && i < size2; i++) {
                    it.next().getValue().j();
                    it.remove();
                }
            }
            ArrayList arrayList = new ArrayList(this.b.values());
            this.b.clear();
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < listO.size(); i2++) {
                j jVar = new j();
                String[] strArrA = com.igexin.b.a.b.f.a(listO.get(i2));
                jVar.a(listO.get(i2));
                jVar.a(Integer.parseInt(strArrA[2]));
                if (i2 < size) {
                    q qVar = (q) arrayList.get(i2);
                    qVar.a(jVar);
                    this.b.put(jVar.a(), qVar);
                } else {
                    a(jVar);
                }
                arrayList2.add(jVar);
            }
            this.d.b(arrayList2);
        }
    }

    public void g() {
        e();
        p();
        List<String> listO = o();
        synchronized (this.g) {
            Iterator<Map.Entry<String, q>> it = this.b.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().j();
            }
            this.b.clear();
            ArrayList arrayList = new ArrayList();
            j jVar = new j();
            String[] strArrA = com.igexin.b.a.b.f.a(listO.get(0));
            jVar.a(listO.get(0));
            jVar.a(Integer.parseInt(strArrA[2]));
            arrayList.add(jVar);
            this.d.b(arrayList);
            arrayList.clear();
        }
    }

    public void h() {
        this.f120a = System.currentTimeMillis();
        synchronized (this.g) {
            for (Map.Entry<String, q> entry : this.b.entrySet()) {
                entry.getValue().a(c());
                if (entry.getValue().f_() != null) {
                    entry.getValue().f_().b();
                }
                entry.getValue().g_();
            }
        }
    }

    public synchronized void i() {
        this.f120a = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        synchronized (this.g) {
            try {
                jSONObject.put("lastDetectTime", this.f120a);
                jSONObject.put(WXBasicComponentType.LIST, jSONArray);
                Iterator<Map.Entry<String, q>> it = this.b.entrySet().iterator();
                while (it.hasNext()) {
                    JSONObject jSONObjectH = it.next().getValue().f_().h();
                    if (jSONObjectH != null) {
                        jSONArray.put(jSONObjectH);
                    }
                }
            } catch (Exception unused) {
            }
        }
        if (jSONObject.length() > 0) {
            if (q()) {
                com.igexin.push.core.c.h.a().b(jSONObject.toString(), true);
            } else {
                com.igexin.push.core.c.h.a().b(jSONObject.toString(), false);
            }
        }
    }

    protected void j() {
        com.igexin.push.core.c.h.a().b("null", true);
        com.igexin.push.core.c.h.a().b("null", false);
    }

    protected boolean k() {
        long jAbs = Math.abs(System.currentTimeMillis() - this.f120a);
        if (jAbs >= (f.f114a * 2) - 3600) {
            com.igexin.b.a.c.b.a(e + "|current time - last detect time > " + (f.f114a / 1000) + " s, detect = true");
            k.f119a.set(true);
            return true;
        }
        if (k.f119a.getAndSet(true)) {
            return false;
        }
        long jAbs2 = Math.abs(f.f114a - jAbs);
        k.c_().a(jAbs2);
        com.igexin.b.a.c.b.a(e + "|set next detect time = " + jAbs2);
        return false;
    }

    protected synchronized void l() {
        this.d.f();
    }

    public void m() {
        synchronized (m.class) {
            if (this.i == null) {
                HandlerThread handlerThread = new HandlerThread("NetDetect-T");
                handlerThread.start();
                this.i = new Handler(handlerThread.getLooper());
            }
        }
        this.i.removeCallbacksAndMessages("detToken");
        this.i.postAtTime(new o(this), "detToken", SystemClock.uptimeMillis() + WebAppActivity.SPLASH_SECOND);
    }

    protected synchronized void n() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("loginFailedlCnt", this.d.c);
            jSONObject.put("lastChange2BackupTime", this.d.d);
            jSONObject.put("lastOfflineTime", this.d.e);
            jSONObject.put("domainType", this.d.f109a.b());
        } catch (Exception unused) {
        }
        if (jSONObject.length() > 0) {
            if (q()) {
                com.igexin.push.core.c.h.a().a(jSONObject.toString(), true);
            } else {
                com.igexin.push.core.c.h.a().a(jSONObject.toString(), false);
            }
        }
    }
}
