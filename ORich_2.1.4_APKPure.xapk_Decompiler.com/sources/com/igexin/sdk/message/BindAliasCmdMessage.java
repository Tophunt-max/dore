package com.igexin.sdk.message;

/* JADX INFO: loaded from: classes.dex */
public class BindAliasCmdMessage extends GTCmdMessage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f465a;
    private String b;

    public BindAliasCmdMessage() {
    }

    public BindAliasCmdMessage(String str, String str2, int i) {
        super(i);
        this.f465a = str;
        this.b = str2;
    }

    public String getCode() {
        return this.b;
    }

    public String getSn() {
        return this.f465a;
    }

    public void setCode(String str) {
        this.b = str;
    }

    public void setSn(String str) {
        this.f465a = str;
    }
}
