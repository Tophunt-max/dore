package com.igexin.push.core.bean;

import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
public class m extends BaseAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f180a;
    private boolean b;
    private boolean c;
    private String d;

    public String a() {
        return this.f180a;
    }

    public void a(String str) {
        this.f180a = str;
    }

    public void a(boolean z) {
        this.b = z;
    }

    public String b() {
        return this.d;
    }

    public void b(String str) {
        this.d = str;
    }

    public void b(boolean z) {
        this.c = z;
    }

    public String c() {
        String strJ;
        StringBuilder sb;
        String str;
        StringBuilder sb2;
        String str2;
        String string = this.f180a;
        if (this.b) {
            if (string.indexOf(Operators.CONDITION_IF_STRING) > 0) {
                sb2 = new StringBuilder();
                sb2.append(string);
                str2 = "&cid=";
            } else {
                sb2 = new StringBuilder();
                sb2.append(string);
                str2 = "?cid=";
            }
            sb2.append(str2);
            sb2.append(com.igexin.push.core.f.s);
            string = sb2.toString();
        }
        if (!this.c || (strJ = com.igexin.push.core.e.a().j()) == null) {
            return string;
        }
        if (string.indexOf(Operators.CONDITION_IF_STRING) > 0) {
            sb = new StringBuilder();
            sb.append(string);
            str = "&nettype=";
        } else {
            sb = new StringBuilder();
            sb.append(string);
            str = "?nettype=";
        }
        sb.append(str);
        sb.append(strJ);
        return sb.toString();
    }
}
