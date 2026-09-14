package com.igexin.sdk.message;

/* JADX INFO: loaded from: classes.dex */
public class SetTagCmdMessage extends GTCmdMessage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f470a;
    private String b;

    public SetTagCmdMessage() {
    }

    public SetTagCmdMessage(String str, String str2, int i) {
        super(i);
        this.f470a = str;
        this.b = str2;
    }

    public String getCode() {
        return this.b;
    }

    public String getSn() {
        return this.f470a;
    }

    public void setCode(String str) {
        this.b = str;
    }

    public void setSn(String str) {
        this.f470a = str;
    }
}
