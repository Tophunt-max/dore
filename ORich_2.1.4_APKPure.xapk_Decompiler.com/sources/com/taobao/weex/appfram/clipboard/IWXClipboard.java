package com.taobao.weex.appfram.clipboard;

import com.taobao.weex.bridge.JSCallback;

/* JADX INFO: loaded from: classes.dex */
interface IWXClipboard {
    void getString(JSCallback jSCallback);

    void setString(String str);
}
