package com.igexin.sdk.message;

import com.igexin.push.core.f;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class BaseMessage implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f464a = f.f238a;
    private String b = f.e;
    private String c = f.s;

    public String getAppid() {
        return this.f464a;
    }

    public String getClientId() {
        return this.c;
    }

    public String getPkgName() {
        return this.b;
    }

    public void setAppid(String str) {
        this.f464a = str;
    }

    public void setClientId(String str) {
        this.c = str;
    }

    public void setPkgName(String str) {
        this.b = str;
    }
}
