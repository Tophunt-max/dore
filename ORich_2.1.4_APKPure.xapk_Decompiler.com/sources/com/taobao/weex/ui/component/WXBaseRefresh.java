package com.taobao.weex.ui.component;

import android.content.Context;
import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.annotation.Component;
import com.taobao.weex.ui.action.BasicComponentData;
import com.taobao.weex.ui.view.WXFrameLayout;

/* JADX INFO: loaded from: classes.dex */
@Component(lazyload = false)
public class WXBaseRefresh extends WXVContainer<WXFrameLayout> {
    private WXLoadingIndicator mLoadingIndicator;

    public WXBaseRefresh(WXSDKInstance wXSDKInstance, WXVContainer wXVContainer, boolean z, BasicComponentData basicComponentData) {
        super(wXSDKInstance, wXVContainer, z, basicComponentData);
    }

    @Override // io.dcloud.feature.uniapp.ui.component.AbsVContainer
    public void addChild(WXComponent wXComponent) {
        super.addChild(wXComponent);
        checkLoadingIndicator(wXComponent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.taobao.weex.ui.component.WXComponent
    public WXFrameLayout initComponentHostView(Context context) {
        return new WXFrameLayout(context);
    }

    @Override // io.dcloud.feature.uniapp.ui.component.AbsVContainer
    public void addChild(WXComponent wXComponent, int i) {
        super.addChild(wXComponent, i);
        checkLoadingIndicator(wXComponent);
    }

    private void checkLoadingIndicator(WXComponent wXComponent) {
        if (wXComponent instanceof WXLoadingIndicator) {
            this.mLoadingIndicator = (WXLoadingIndicator) wXComponent;
        }
    }
}
