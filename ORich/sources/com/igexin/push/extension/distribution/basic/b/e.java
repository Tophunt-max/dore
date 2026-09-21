package com.igexin.push.extension.distribution.basic.b;

import com.igexin.push.core.bean.BaseAction;

/* JADX INFO: loaded from: classes.dex */
public class e extends BaseAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f297a;
    private String b;
    private String c;
    private String d = null;
    private boolean e = false;

    public String a() {
        return this.d;
    }

    public void a(String str) {
        this.d = str;
    }

    public void a(boolean z) {
        this.e = z;
    }

    public void b(String str) {
        this.f297a = str;
        this.f297a = str;
    }

    public boolean b() {
        return this.e;
    }

    public String c() {
        return this.f297a;
    }

    public void c(String str) {
        this.b = str;
    }

    public String d() {
        return this.b;
    }

    public void d(String str) {
        this.c = str;
    }

    public String e() {
        return this.c;
    }
}
