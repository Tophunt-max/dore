package com.taobao.weex.ui.action;

import com.taobao.weex.WXSDKInstance;

/* JADX INFO: loaded from: classes.dex */
public class GraphicActionBatchBegin extends BasicGraphicAction {
    @Override // com.taobao.weex.ui.action.IExecutable
    public void executeAction() {
    }

    public GraphicActionBatchBegin(WXSDKInstance wXSDKInstance, String str) {
        super(wXSDKInstance, str);
        this.mActionType = 1;
    }
}
