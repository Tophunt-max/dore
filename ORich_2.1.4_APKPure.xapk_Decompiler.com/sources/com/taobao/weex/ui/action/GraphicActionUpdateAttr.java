package com.taobao.weex.ui.action;

import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.WXSDKManager;
import com.taobao.weex.ui.component.WXComponent;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GraphicActionUpdateAttr extends BasicGraphicAction {
    private WXComponent component;
    private Map<String, String> mAttrs;

    public GraphicActionUpdateAttr(WXSDKInstance wXSDKInstance, String str, Map<String, String> map) {
        Map<String, String> map2;
        super(wXSDKInstance, str);
        this.mAttrs = map;
        WXComponent wXComponent = WXSDKManager.getInstance().getWXRenderManager().getWXComponent(getPageId(), getRef());
        this.component = wXComponent;
        if (wXComponent == null || (map2 = this.mAttrs) == null) {
            return;
        }
        wXComponent.addAttr(map2);
    }

    @Override // com.taobao.weex.ui.action.IExecutable
    public void executeAction() {
        WXComponent wXComponent = this.component;
        if (wXComponent != null && wXComponent.getHostView() == null) {
            if (this.component.getClass().getSimpleName().equals("DCWXAd")) {
                this.component.getAttrs().mergeAttr();
                this.component.updateAttrs(this.mAttrs);
                return;
            }
            return;
        }
        WXComponent wXComponent2 = this.component;
        if (wXComponent2 == null || wXComponent2.getHostView() == null) {
            return;
        }
        this.component.getAttrs().mergeAttr();
        this.component.updateAttrs(this.mAttrs);
    }
}
