package com.taobao.weex.bridge;

/* JADX INFO: loaded from: classes.dex */
public interface JavascriptInvokable {
    Invoker getMethodInvoker(String str);

    String[] getMethods();
}
