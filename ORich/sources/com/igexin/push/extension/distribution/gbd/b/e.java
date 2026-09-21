package com.igexin.push.extension.distribution.gbd.b;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f365a;
    private String b;
    private int c;
    private List<String> d = new ArrayList();

    public String a() {
        return this.f365a;
    }

    public void a(int i) {
        this.c = i;
    }

    public void a(String str) {
        this.f365a = str;
    }

    public void a(List<String> list) {
        this.d = list;
    }

    public String b() {
        return this.b;
    }

    public void b(String str) {
        this.b = str;
    }

    public int c() {
        return this.c;
    }

    public List<String> d() {
        return this.d;
    }

    public String toString() {
        return "type = " + this.c + ", serviceList = " + this.d;
    }
}
