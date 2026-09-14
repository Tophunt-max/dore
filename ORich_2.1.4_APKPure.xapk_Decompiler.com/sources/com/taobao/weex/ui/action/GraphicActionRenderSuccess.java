package com.taobao.weex.ui.action;

import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.ui.component.WXComponent;

/* JADX INFO: loaded from: classes.dex */
public class GraphicActionRenderSuccess extends BasicGraphicAction {
    public GraphicActionRenderSuccess(WXSDKInstance wXSDKInstance) {
        super(wXSDKInstance, "");
    }

    @Override // com.taobao.weex.ui.action.IExecutable
    public void executeAction() {
        int layoutHeight;
        WXSDKInstance wXSDKIntance = getWXSDKIntance();
        if (wXSDKIntance == null || wXSDKIntance.getContext() == null) {
            return;
        }
        WXComponent rootComponent = wXSDKIntance.getRootComponent();
        int layoutWidth = 0;
        if (rootComponent != null) {
            layoutWidth = (int) rootComponent.getLayoutWidth();
            layoutHeight = (int) rootComponent.getLayoutHeight();
        } else {
            layoutHeight = 0;
        }
        wXSDKIntance.onRenderSuccess(layoutWidth, layoutHeight);
    }
}
