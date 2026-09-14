package com.igexin.push.core.bean;

/* JADX INFO: loaded from: classes.dex */
public class BaseAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f166a;
    private String b;
    private String c;
    private boolean d = true;

    public String getActionId() {
        return this.f166a;
    }

    public String getDoActionId() {
        return this.c;
    }

    public String getType() {
        return this.b;
    }

    public boolean isSupportExt() {
        return this.d;
    }

    public void setActionId(String str) {
        this.f166a = str;
    }

    public void setDoActionId(String str) {
        this.c = str;
    }

    public void setSupportExt(boolean z) {
        this.d = z;
    }

    public void setType(String str) {
        this.b = str;
    }
}
