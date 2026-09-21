package com.taobao.weex.ui.view.refresh.wrapper;

import android.content.Context;
import com.taobao.weex.ui.component.WXBaseScroller;
import com.taobao.weex.ui.view.WXScrollView;

/* JADX INFO: loaded from: classes.dex */
public class BounceScrollerView extends BaseBounceView<WXScrollView> {
    @Override // com.taobao.weex.ui.view.refresh.wrapper.BaseBounceView
    public void onLoadmoreComplete() {
    }

    @Override // com.taobao.weex.ui.view.refresh.wrapper.BaseBounceView
    public void onRefreshingComplete() {
    }

    public BounceScrollerView(Context context, int i, WXBaseScroller wXBaseScroller) {
        super(context, i);
        init(context);
        if (getInnerView() != null) {
            getInnerView().setWAScroller(wXBaseScroller);
        }
    }

    @Override // com.taobao.weex.ui.view.refresh.wrapper.BaseBounceView
    public WXScrollView setInnerView(Context context) {
        return new WXScrollView(context);
    }
}
