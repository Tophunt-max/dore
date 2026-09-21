package com.igexin.push.core.g;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.view.KeyEvent;
import android.view.Menu;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Long f243a = Long.valueOf(System.currentTimeMillis());
    protected Activity b;
    protected String c;

    public Long a() {
        return this.f243a;
    }

    public void a(Activity activity) {
        this.b = activity;
    }

    public abstract void a(Intent intent);

    public abstract void a(Configuration configuration);

    public void a(Long l) {
        this.f243a = l;
    }

    public void a(String str) {
        this.c = str;
    }

    public abstract boolean a(int i, KeyEvent keyEvent);

    public abstract boolean a(Menu menu);

    public String b() {
        return this.c;
    }

    public abstract void c();

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public abstract void g();

    public abstract void h();

    public abstract void i();
}
