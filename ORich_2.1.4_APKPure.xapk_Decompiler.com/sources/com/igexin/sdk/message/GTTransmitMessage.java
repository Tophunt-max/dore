package com.igexin.sdk.message;

/* JADX INFO: loaded from: classes.dex */
public class GTTransmitMessage extends GTPushMessage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f469a;
    private String b;
    private String c;
    private byte[] d;

    public GTTransmitMessage() {
    }

    public GTTransmitMessage(String str, String str2, String str3, byte[] bArr) {
        this.f469a = str;
        this.b = str2;
        this.c = str3;
        this.d = bArr;
    }

    public String getMessageId() {
        return this.b;
    }

    public byte[] getPayload() {
        return this.d;
    }

    public String getPayloadId() {
        return this.c;
    }

    public String getTaskId() {
        return this.f469a;
    }

    public void setMessageId(String str) {
        this.b = str;
    }

    public void setPayload(byte[] bArr) {
        this.d = bArr;
    }

    public void setPayloadId(String str) {
        this.c = str;
    }

    public void setTaskId(String str) {
        this.f469a = str;
    }
}
