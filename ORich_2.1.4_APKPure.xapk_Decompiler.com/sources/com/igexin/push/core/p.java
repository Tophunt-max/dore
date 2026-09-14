package com.igexin.push.core;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Pair;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static p f252a;

    public static p a() {
        if (f252a == null) {
            f252a = new p();
        }
        return f252a;
    }

    private void a(List<com.igexin.push.e.c.l> list) {
        Pair<String, String> pairC = com.igexin.push.util.p.c(f.f);
        String str = (String) pairC.first;
        String str2 = (String) pairC.second;
        if (!TextUtils.isEmpty(str)) {
            com.igexin.push.e.c.l lVar = new com.igexin.push.e.c.l();
            lVar.f276a = (byte) 1;
            lVar.b = str;
            list.add(lVar);
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        com.igexin.push.e.c.l lVar2 = new com.igexin.push.e.c.l();
        lVar2.f276a = (byte) 4;
        lVar2.b = str2;
        list.add(lVar2);
    }

    private int b(List<com.igexin.push.e.c.l> list) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) f.f.getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return -1;
            }
            int type = activeNetworkInfo.getType();
            com.igexin.push.e.c.l lVar = new com.igexin.push.e.c.l();
            lVar.f276a = (byte) 2;
            lVar.b = String.valueOf(type);
            list.add(lVar);
            return type;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public int b() {
        if (!f.i || !f.j || com.igexin.push.util.a.a(System.currentTimeMillis()) || !com.igexin.push.util.a.b()) {
            com.igexin.b.a.c.b.a("LoginInteractor|keyNegotiate stop ++++++++++");
            return -1;
        }
        com.igexin.push.e.c.i iVar = new com.igexin.push.e.c.i();
        iVar.f273a = f.f238a;
        return e.a().g().a("K-", iVar, true) < 0 ? 0 : 1;
    }

    public void c() {
        if (f.k) {
            f.k = false;
            f.J = System.currentTimeMillis() + (((long) Math.abs(new Random().nextInt() % 24)) * 3600000);
        }
        com.igexin.push.c.i.a().d().g();
        if (f.r == 0) {
            com.igexin.b.a.c.b.a("registerReq #####");
            com.igexin.push.e.c.f fVar = new com.igexin.push.e.c.f(f.u, f.v, f.A, f.f238a);
            com.igexin.push.f.a aVarG = e.a().g();
            StringBuilder sb = new StringBuilder();
            sb.append("R-");
            sb.append(f.A);
            com.igexin.b.a.c.b.a("registerReq|" + (aVarG.a(sb.toString(), fVar, true) >= 0) + "|" + f.A);
            return;
        }
        com.igexin.push.e.c.k kVarD = d();
        com.igexin.b.a.c.b.a("loginReqBefore|" + kVarD.f275a);
        com.igexin.push.f.a aVarG2 = e.a().g();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("S-");
        sb2.append(String.valueOf(f.r));
        if (aVarG2.a(sb2.toString(), kVarD, true) >= 0) {
            com.igexin.b.a.c.b.a("LoginInteractor|loginReq|" + f.s);
        }
    }

    public com.igexin.push.e.c.k d() {
        NetworkInfo activeNetworkInfo;
        com.igexin.push.e.c.k kVar = new com.igexin.push.e.c.k();
        kVar.f275a = f.r;
        kVar.b = (byte) 0;
        kVar.c = 65280;
        kVar.d = f.f238a;
        try {
            boolean zA = com.igexin.push.util.a.a();
            ArrayList arrayList = new ArrayList();
            if (zA) {
                int iB = b(arrayList);
                try {
                    ConnectivityManager connectivityManager = (ConnectivityManager) f.f.getSystemService("connectivity");
                    if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                        iB = activeNetworkInfo.getType();
                        com.igexin.push.e.c.l lVar = new com.igexin.push.e.c.l();
                        lVar.f276a = (byte) 2;
                        lVar.b = String.valueOf(iB);
                        arrayList.add(lVar);
                    }
                } catch (Throwable unused) {
                }
                if (iB == 1) {
                    a(arrayList);
                }
                if (!arrayList.isEmpty()) {
                    kVar.e = arrayList;
                }
            }
        } catch (Throwable unused2) {
        }
        return kVar;
    }
}
