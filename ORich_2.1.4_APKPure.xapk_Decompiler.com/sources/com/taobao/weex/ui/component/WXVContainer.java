package com.taobao.weex.ui.component;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.dom.CSSShorthand;
import com.taobao.weex.ui.action.BasicComponentData;
import com.taobao.weex.utils.WXLogUtils;
import com.taobao.weex.utils.WXViewUtils;
import io.dcloud.feature.uniapp.ui.component.AbsVContainer;

/* JADX INFO: loaded from: classes.dex */
public abstract class WXVContainer<T extends ViewGroup> extends AbsVContainer<T> {
    private static final String TAG = "WXVContainer";
    private WXVContainer<T>.BoxShadowHost mBoxShadowHost;

    @Override // io.dcloud.feature.uniapp.ui.component.AbsVContainer
    protected int getChildrenLayoutTopOffset() {
        return 0;
    }

    public WXVContainer(WXSDKInstance wXSDKInstance, WXVContainer wXVContainer, String str, boolean z, BasicComponentData basicComponentData) {
        super(wXSDKInstance, wXVContainer, str, z, basicComponentData);
    }

    public WXVContainer(WXSDKInstance wXSDKInstance, WXVContainer wXVContainer, boolean z, BasicComponentData basicComponentData) {
        super(wXSDKInstance, wXVContainer, z, basicComponentData);
    }

    public WXVContainer(WXSDKInstance wXSDKInstance, WXVContainer wXVContainer, BasicComponentData basicComponentData) {
        super(wXSDKInstance, wXVContainer, basicComponentData);
    }

    @Override // io.dcloud.feature.uniapp.ui.component.AbsVContainer
    public View getBoxShadowHost(boolean z) {
        if (z) {
            return this.mBoxShadowHost;
        }
        T hostView = getHostView();
        if (hostView == null) {
            return null;
        }
        try {
            String componentType = getComponentType();
            if (WXBasicComponentType.DIV.equals(componentType) || WXBasicComponentType.VIEW.equals(componentType)) {
                WXLogUtils.d("BoxShadow", "Draw box-shadow with BoxShadowHost on div: " + toString());
                if (this.mBoxShadowHost == null) {
                    WXVContainer<T>.BoxShadowHost boxShadowHost = new BoxShadowHost(getContext());
                    this.mBoxShadowHost = boxShadowHost;
                    WXViewUtils.setBackGround(boxShadowHost, null, this);
                    hostView.addView(this.mBoxShadowHost);
                }
                CSSShorthand padding = getPadding();
                CSSShorthand border = getBorder();
                int i = (int) (padding.get(CSSShorthand.EDGE.LEFT) + border.get(CSSShorthand.EDGE.LEFT));
                int i2 = (int) (padding.get(CSSShorthand.EDGE.TOP) + border.get(CSSShorthand.EDGE.TOP));
                int i3 = (int) (padding.get(CSSShorthand.EDGE.RIGHT) + border.get(CSSShorthand.EDGE.RIGHT));
                int i4 = (int) (padding.get(CSSShorthand.EDGE.BOTTOM) + border.get(CSSShorthand.EDGE.BOTTOM));
                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(hostView.getLayoutParams());
                setMarginsSupportRTL(marginLayoutParams, -i, -i2, -i3, -i4);
                this.mBoxShadowHost.setLayoutParams(marginLayoutParams);
                hostView.removeView(this.mBoxShadowHost);
                hostView.addView(this.mBoxShadowHost);
                return this.mBoxShadowHost;
            }
        } catch (Throwable th) {
            WXLogUtils.w("BoxShadow", th);
        }
        return hostView;
    }

    @Override // io.dcloud.feature.uniapp.ui.component.AbsVContainer
    public void removeBoxShadowHost() {
        T hostView = getHostView();
        if (hostView == null) {
            return;
        }
        try {
            String componentType = getComponentType();
            if (this.mBoxShadowHost != null) {
                if (WXBasicComponentType.DIV.equals(componentType) || WXBasicComponentType.VIEW.equals(componentType)) {
                    hostView.removeView(this.mBoxShadowHost);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private class BoxShadowHost extends View {
        public BoxShadowHost(Context context) {
            super(context);
        }
    }
}
