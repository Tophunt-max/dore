package com.taobao.weex.bridge;

import com.taobao.weex.common.WXModule;

/* JADX INFO: loaded from: classes.dex */
public interface ModuleFactory<T extends WXModule> extends JavascriptInvokable {
    T buildInstance() throws IllegalAccessException, InstantiationException;
}
