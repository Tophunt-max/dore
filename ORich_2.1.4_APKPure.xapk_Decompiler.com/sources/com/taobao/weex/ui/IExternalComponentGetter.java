package com.taobao.weex.ui;

import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.ui.component.WXComponent;

/* JADX INFO: loaded from: classes.dex */
public interface IExternalComponentGetter {
    Class<? extends WXComponent> getExternalComponentClass(String str, WXSDKInstance wXSDKInstance);
}
