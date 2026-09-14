package com.igexin.push.core.bean;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f170a;
    private List<String> b;
    private int c;

    public String a() {
        return this.f170a;
    }

    public void a(String str) {
        this.f170a = str;
    }

    public void a(List<String> list) {
        this.b = list;
    }

    public List<String> b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public void d() {
        this.c++;
    }

    public void e() {
        this.c--;
    }
}
