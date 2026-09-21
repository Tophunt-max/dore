package com.igexin.push.c;

import android.text.TextUtils;
import com.igexin.push.config.SDKUrlConfig;
import com.taobao.weex.el.parse.Operators;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static final String f = "DT_" + a.class.getName();
    protected int c;
    protected volatile long d;
    protected volatile long e;
    private int g;
    private int h;
    private int i;
    private j j;
    private boolean p;
    private final List<e> k = new ArrayList();
    private final List<j> l = new ArrayList();
    private final Object m = new Object();
    private final Object n = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile d f109a = d.NORMAL;
    private int o = 0;
    public AtomicBoolean b = new AtomicBoolean(false);
    private final Comparator<j> q = new b(this);

    private synchronized void a(d dVar) {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = f;
        sb.append(str2);
        sb.append("|set domain type = ");
        sb.append(dVar);
        com.igexin.b.a.c.b.a(sb.toString());
        if (com.igexin.push.config.k.f) {
            if (this.f109a != dVar) {
                a((List<e>) null);
            }
            int i = c.f111a[dVar.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    this.b.set(true);
                    if (this.f109a != dVar) {
                        this.d = System.currentTimeMillis();
                    }
                    SDKUrlConfig.setCmAddress(SDKUrlConfig.XFR_ADDRESS_BAK[0]);
                    str = str2 + "|set domain type backup cm = " + SDKUrlConfig.getCmAddress();
                    com.igexin.b.a.c.b.a(str);
                    this.f109a = dVar;
                    i.a().f().n();
                } else if (i != 3) {
                    this.f109a = dVar;
                    i.a().f().n();
                } else if (this.f109a != dVar) {
                    this.o = 0;
                }
            }
            this.g = 0;
            SDKUrlConfig.setCmAddress(c(true));
            if (dVar == d.NORMAL) {
                this.b.set(false);
            }
            str = str2 + "|set domain type normal cm = " + SDKUrlConfig.getCmAddress();
            com.igexin.b.a.c.b.a(str);
            this.f109a = dVar;
            i.a().f().n();
        }
    }

    private void a(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                this.k.add(new e().a(jSONArray.getJSONObject(i)));
            }
            com.igexin.b.a.c.b.a(f + "|get cm from cache, isWifi = " + this.p + ", lastCmList = " + str);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f + "|" + th.toString());
        }
    }

    private String b(boolean z) {
        try {
            synchronized (this.n) {
                String str = this.p ? com.igexin.push.core.f.av : com.igexin.push.core.f.aw;
                int i = 0;
                if (this.k.isEmpty() && TextUtils.isEmpty(str)) {
                    com.igexin.b.a.c.b.a(f + "cm list size = 0");
                    this.i = 0;
                    this.h = 0;
                    return null;
                }
                if (this.k.isEmpty() && !TextUtils.isEmpty(str)) {
                    a(str);
                }
                StringBuilder sb = new StringBuilder();
                String str2 = f;
                sb.append(str2);
                sb.append("cm try = ");
                sb.append(this.i);
                sb.append(" times");
                com.igexin.b.a.c.b.a(sb.toString());
                if (this.i >= this.k.size() * 3) {
                    com.igexin.b.a.c.b.a(str2 + "cm invalid");
                    this.i = 0;
                    this.h = 0;
                    this.k.clear();
                    return null;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                Iterator<e> it = this.k.iterator();
                while (it.hasNext()) {
                    e next = it.next();
                    if (next.b < jCurrentTimeMillis) {
                        com.igexin.b.a.c.b.a(f + "|add[" + next.f113a + "] outDate");
                        it.remove();
                    }
                }
                d();
                if (this.k.isEmpty()) {
                    return null;
                }
                if (z) {
                    this.i++;
                }
                if (this.h < this.k.size()) {
                    i = this.h;
                }
                this.h = i;
                String str3 = this.k.get(i).f113a;
                this.h++;
                return str3;
            }
        } catch (Exception e) {
            com.igexin.b.a.c.b.a(f + "|" + e.toString());
            return null;
        }
    }

    private String c(boolean z) {
        String strB;
        synchronized (this.m) {
            int i = this.g >= this.l.size() ? 0 : this.g;
            this.g = i;
            j jVar = this.l.get(i);
            this.j = jVar;
            strB = jVar.b(z);
        }
        return strB;
    }

    private void j() {
        d dVar;
        com.igexin.b.a.c.b.a(f + "|before disconnect, type = " + this.f109a);
        int i = c.f111a[this.f109a.ordinal()];
        if (i != 1) {
            if (i != 2 || System.currentTimeMillis() - this.d <= com.igexin.push.config.k.x) {
                return;
            } else {
                dVar = d.TRY_NORMAL;
            }
        } else if (System.currentTimeMillis() - this.e <= 86400000 || this.c <= com.igexin.push.config.k.z) {
            return;
        } else {
            dVar = d.BACKUP;
        }
        a(dVar);
    }

    public void a(List<e> list) {
        synchronized (this.n) {
            this.h = 0;
            this.i = 0;
            this.k.clear();
            if (list != null) {
                this.k.addAll(list);
                com.igexin.b.a.c.b.a(f + "|set cm list: " + list.toString());
            }
            d();
        }
    }

    public void a(boolean z) {
        this.p = z;
    }

    public boolean a() {
        boolean z = false;
        try {
            boolean z2 = !com.igexin.push.core.e.a().g().h();
            String strB = b(z2);
            StringBuilder sb = new StringBuilder();
            String str = f;
            sb.append(str);
            sb.append("|get from cm = ");
            sb.append(strB);
            com.igexin.b.a.c.b.a(sb.toString());
            if (strB != null) {
                z = true;
            } else if (com.igexin.push.config.k.f && this.f109a == d.BACKUP) {
                this.g = this.g >= SDKUrlConfig.XFR_ADDRESS_BAK.length ? 0 : this.g;
                String[] strArr = SDKUrlConfig.XFR_ADDRESS_BAK;
                int i = this.g;
                String str2 = strArr[i];
                this.g = i + 1;
                strB = str2;
            } else {
                j jVar = this.j;
                if (jVar != null && !jVar.f()) {
                    this.g++;
                }
                strB = c(z2);
            }
            if (!SDKUrlConfig.getCmAddress().equals(strB)) {
                com.igexin.b.a.c.b.a(str + "|address changed : form [" + SDKUrlConfig.getCmAddress() + "] to [" + strB + Operators.ARRAY_END_STR);
            }
            SDKUrlConfig.setCmAddress(strB);
        } catch (Exception e) {
            e.printStackTrace();
            com.igexin.b.a.c.b.a(f + "|switch address|" + e.toString());
        }
        return z;
    }

    public synchronized void b() {
        this.i = 0;
        j jVar = this.j;
        if (jVar != null) {
            jVar.g();
        }
    }

    public void b(List<j> list) {
        synchronized (this.m) {
            this.l.clear();
            this.l.addAll(list);
            Collections.sort(this.l, this.q);
        }
    }

    public synchronized void c() {
        this.c++;
        com.igexin.b.a.c.b.a(f + "|loginFailedlCnt = " + this.c);
    }

    public void d() {
        JSONArray jSONArray = new JSONArray();
        Iterator<e> it = this.k.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().a());
        }
        com.igexin.push.core.c.h.a().c(jSONArray.length() == 0 ? "null" : jSONArray.toString(), !this.p);
    }

    public void e() {
        synchronized (this.m) {
            this.g = 0;
            Collections.sort(this.l, this.q);
        }
    }

    public void f() {
        com.igexin.b.a.c.b.a(f + "|detect success, current type = " + this.f109a);
        if (this.f109a == d.BACKUP) {
            a(d.TRY_NORMAL);
            com.igexin.push.core.e.a().g().a(true);
        }
    }

    public void g() {
        if (c.f111a[this.f109a.ordinal()] == 2 && System.currentTimeMillis() - this.d > com.igexin.push.config.k.x) {
            a(d.TRY_NORMAL);
        }
    }

    public void h() {
        if (this.f109a != d.BACKUP) {
            this.c = 0;
        }
        int i = c.f111a[this.f109a.ordinal()];
        if (i == 1) {
            this.e = System.currentTimeMillis();
            i.a().f().n();
        } else if (i != 3) {
            return;
        } else {
            a(d.NORMAL);
        }
        this.b.set(false);
    }

    public void i() {
        j();
        if (com.igexin.push.core.f.l && this.f109a != d.BACKUP) {
            this.e = System.currentTimeMillis();
            i.a().f().n();
        }
        if (c.f111a[this.f109a.ordinal()] != 3) {
            return;
        }
        int i = this.o + 1;
        this.o = i;
        if (i >= 10) {
            this.c = 0;
            this.d = System.currentTimeMillis();
            a(d.BACKUP);
        }
    }
}
