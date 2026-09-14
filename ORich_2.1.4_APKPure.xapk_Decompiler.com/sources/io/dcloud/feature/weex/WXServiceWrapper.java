package io.dcloud.feature.weex;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.taobao.weex.IWXRenderListener;
import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.bridge.WXModuleManager;
import com.taobao.weex.common.WXRenderStrategy;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.ISysEventListener;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.feature.uniapp.UniSDKInstance;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class WXServiceWrapper extends WXBaseWrapper implements IWXRenderListener {
    IApp mApp;
    JSONObject mData;
    ViewGroup mRootView;
    ISysEventListener mSysEventListener;
    String mTemplate;
    long time;

    @Override // io.dcloud.feature.weex.WXBaseWrapper, io.dcloud.common.DHInterface.IUniNView
    public String evalJs(String str, int i) {
        return null;
    }

    @Override // io.dcloud.feature.weex.WXBaseWrapper, io.dcloud.common.DHInterface.IUniNView
    public String getType() {
        return "service";
    }

    @Override // com.taobao.weex.IWXRenderListener
    public void onException(WXSDKInstance wXSDKInstance, String str, String str2) {
    }

    @Override // com.taobao.weex.IWXRenderListener
    public void onRefreshSuccess(WXSDKInstance wXSDKInstance, int i, int i2) {
    }

    @Override // com.taobao.weex.IWXRenderListener
    public void onRenderSuccess(WXSDKInstance wXSDKInstance, int i, int i2) {
    }

    public WXServiceWrapper(IApp iApp, ViewGroup viewGroup, String str, JSONObject jSONObject) {
        super(viewGroup.getContext());
        this.time = 0L;
        this.mApp = iApp;
        this.mRootView = viewGroup;
        this.mWxId = str;
        this.mData = jSONObject;
        this.mSrcPath = jSONObject.optString(AbsoluteConst.XML_PATH);
        String strOptString = this.mData.optString("template");
        this.mTemplate = strOptString;
        render(strOptString, getOptions(), null);
    }

    public IApp obtanApp() {
        return this.mApp;
    }

    void render(String str, Map<String, Object> map, String str2) {
        if (this.mWXSDKInstance == null) {
            this.mWXSDKInstance = new UniSDKInstance(this.mRootView.getContext());
            this.mWXSDKInstance.registerRenderListener(this);
            this.mWXSDKInstance.setBundleUrl(this.mSrcPath);
        }
        this.mWXSDKInstance.render(this.mWxId, str, map, str2, WXRenderStrategy.APPEND_ASYNC);
        com.alibaba.fastjson.JSONObject registerJsModules = WXModuleManager.getRegisterJsModules();
        if (registerJsModules != null) {
            WeexInstanceMgr.self().setUniNViewModules(registerJsModules.toJSONString());
        }
    }

    @Override // com.taobao.weex.IWXRenderListener
    public void onViewCreated(WXSDKInstance wXSDKInstance, View view) {
        ViewGroup viewGroup = this.mRootView;
        if (viewGroup != null) {
            viewGroup.addView(this, new ViewGroup.LayoutParams(-1, -1));
            addView(view, new LinearLayout.LayoutParams(-1, -1));
            setVisibility(8);
        }
    }

    @Override // io.dcloud.feature.weex.WXBaseWrapper, io.dcloud.common.DHInterface.IUniNView
    public void reload() {
        if (this.time == 0 || System.currentTimeMillis() - this.time >= 600) {
            this.time = System.currentTimeMillis();
            if (this.mWXSDKInstance != null) {
                this.mWXSDKInstance.registerRenderListener(null);
                this.mWXSDKInstance.destroy();
                this.mWXSDKInstance = null;
                removeAllViews();
            }
            if (TextUtils.isEmpty(this.mTemplate)) {
                return;
            }
            render(this.mTemplate, getOptions(), null);
        }
    }

    public Map<String, Object> getOptions() {
        HashMap map = new HashMap();
        map.put("plus_appid", this.mApp.obtainAppId());
        map.put("bundleUrl", this.mSrcPath);
        return map;
    }

    @Override // io.dcloud.feature.weex.WXBaseWrapper, io.dcloud.common.DHInterface.IUniNView
    public void onDestroy() {
        if (this.mApp != null) {
            this.mApp = null;
        }
        ViewGroup viewGroup = this.mRootView;
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
        if (this.mWXSDKInstance != null) {
            this.mWXSDKInstance.onActivityDestroy();
            this.mWXSDKInstance = null;
        }
        this.mData = null;
    }

    public void findWebViewToLoadUrL(String str, String str2) {
        if (this.mApp == null) {
            return;
        }
        WeexInstanceMgr weexInstanceMgrSelf = WeexInstanceMgr.self();
        IApp iApp = this.mApp;
        IWebview iWebviewFindWebview = weexInstanceMgrSelf.findWebview(null, iApp, iApp.obtainAppId(), str2);
        if (iWebviewFindWebview != null) {
            iWebviewFindWebview.loadUrl(str);
        }
    }
}
