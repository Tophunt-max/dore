package com.igexin.push.extension.distribution.gbd.f;

import com.igexin.push.extension.distribution.gbd.i.j;
import com.nostra13.dcloudimageloader.core.download.BaseImageDownloader;
import io.dcloud.common.util.net.NetWork;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f393a;
    public byte[] b;
    public boolean c;
    public c d;
    public boolean e;
    public boolean f;
    public int g = BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT;
    public int h = BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT;
    public boolean i = true;
    public boolean j = true;
    public boolean k = false;
    public boolean l = true;
    public HashMap<String, String> m = new HashMap<>();

    public d() {
    }

    public d(String str) {
        j.a("HttpPlugin", "http url:" + str);
        this.f393a = str;
        a(NetWork.CONTENT_TYPE, "application/x-www-form-urlencoded");
    }

    public void a(int i) {
    }

    public void a(c cVar) {
        this.d = cVar;
    }

    public void a(String str) {
        this.f393a = str;
    }

    public void a(String str, String str2) {
        this.m.put(str, str2);
    }

    public void a(Throwable th) {
    }

    public void a(Map<String, List<String>> map, byte[] bArr) {
    }

    public void a(boolean z) {
        this.c = z;
    }

    public void a(byte[] bArr) {
        this.b = bArr;
    }

    public boolean a() {
        return this.e;
    }

    public boolean b() {
        return this.f;
    }

    public boolean c() {
        return this.l;
    }

    public boolean d() {
        return this.k;
    }

    public int e() {
        return this.g;
    }

    public int f() {
        return this.h;
    }

    public boolean g() {
        return this.i;
    }

    public boolean h() {
        return this.j;
    }

    public HashMap<String, String> i() {
        return this.m;
    }

    public boolean j() {
        return this.c;
    }

    public String k() {
        return this.f393a;
    }

    public byte[] l() {
        return this.b;
    }

    public void m() {
    }
}
