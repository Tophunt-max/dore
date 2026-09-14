package com.taobao.weex;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class Script {
    private byte[] mBinary;
    private String mContent;

    public Script(String str) {
        this.mContent = str;
    }

    public Script(byte[] bArr) {
        this.mBinary = bArr;
    }

    public String getContent() {
        return this.mContent;
    }

    public byte[] getBinary() {
        return this.mBinary;
    }

    public int length() {
        String str = this.mContent;
        if (str != null) {
            return str.length();
        }
        byte[] bArr = this.mBinary;
        if (bArr != null) {
            return bArr.length;
        }
        return 0;
    }

    public boolean isEmpty() {
        byte[] bArr;
        return TextUtils.isEmpty(this.mContent) && ((bArr = this.mBinary) == null || bArr.length == 0);
    }
}
