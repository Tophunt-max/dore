package com.igexin.sdk.message;

/* JADX INFO: loaded from: classes.dex */
public class GTCmdMessage extends BaseMessage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f467a;

    public GTCmdMessage() {
    }

    public GTCmdMessage(int i) {
        this.f467a = i;
    }

    public int getAction() {
        return this.f467a;
    }

    public void setAction(int i) {
        this.f467a = i;
    }
}
