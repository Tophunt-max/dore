package com.taobao.weex.ui.action;

import com.taobao.weex.WXSDKInstance;

/* JADX INFO: loaded from: classes.dex */
public class GraphicActionBatchEnd extends BasicGraphicAction {
    @Override // com.taobao.weex.ui.action.IExecutable
    public void executeAction() {
    }

    public GraphicActionBatchEnd(WXSDKInstance wXSDKInstance, String str) {
        super(wXSDKInstance, str);
        this.mActionType = 2;
    }
}
