package com.igexin.push.e.c;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f272a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public byte g;
    public byte h;
    public byte i;
    public byte j;
    public byte k;
    public byte l;
    public byte m;
    public byte[] n;
    public int o;
    public int p;
    public int q;

    public int a() {
        int i = this.d | this.g;
        this.d = i;
        int i2 = i | this.h;
        this.d = i2;
        int i3 = i2 | this.i;
        this.d = i3;
        return i3;
    }

    public void a(byte b) {
        this.d = b & 255;
        this.g = (byte) (b & 192);
        this.h = (byte) (b & 48);
        this.i = (byte) (b & 15);
    }

    public int b() {
        int i = this.f | this.j;
        this.f = i;
        int i2 = i | this.k;
        this.f = i2;
        int i3 = i2 | this.l;
        this.f = i3;
        int i4 = i3 | this.m;
        this.f = i4;
        return i4;
    }
}
