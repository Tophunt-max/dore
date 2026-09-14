package io.dcloud.feature.weex;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.bridge.WXBridgeManager;
import com.taobao.weex.bridge.WXModuleManager;
import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.ICallBack;
import io.dcloud.common.DHInterface.IWaiter;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.DHInterface.ReceiveSystemEventVoucher;
import io.dcloud.common.DHInterface.StandardFeature;
import io.dcloud.common.adapter.ui.AdaUniWebView;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.JSONUtil;
import io.dcloud.common.util.JSUtil;
import io.dcloud.common.util.PdrUtil;
import java.util.HashMap;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public class WeexFeature extends StandardFeature implements IWaiter, ReceiveSystemEventVoucher {
    boolean isRegisterAllEvent = false;
    IApp mApp;

    @Override // io.dcloud.common.DHInterface.StandardFeature, io.dcloud.common.DHInterface.BaseFeature, io.dcloud.common.DHInterface.IFeature
    public void init(AbsMgr absMgr, String str) {
        super.init(absMgr, str);
        WeexInstanceMgr.self().init(absMgr);
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature, io.dcloud.common.DHInterface.IBoot
    public void onStart(Context context, Bundle bundle, String[] strArr) {
        super.onStart(context, bundle, strArr);
        if (context instanceof Application) {
            WeexInstanceMgr.self().initWeexEnv((Application) context);
        }
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature, io.dcloud.common.DHInterface.IBoot
    public void onResume() {
        super.onResume();
        WeexInstanceMgr.self().onActivityResume();
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature, io.dcloud.common.DHInterface.IBoot
    public void onPause() {
        super.onPause();
        WeexInstanceMgr.self().onActivityPause();
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature
    protected void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        WeexInstanceMgr.self().onRequestPermissionsResult(i, strArr, iArr);
    }

    public void onDestroy() {
        IApp iApp = this.mApp;
        if (iApp != null && iApp.getQuitModel() == 2) {
            WeexInstanceMgr.self().onActivityDestroy(false);
        } else {
            WeexInstanceMgr.self().onActivityDestroy();
        }
        WeexInstanceMgr.self().setUniServiceCreated(false, null);
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        WeexInstanceMgr.self().onActivityResult(i, i2, intent);
    }

    public void registerAllEvent(IApp iApp) {
        this.mApp = iApp;
        if (this.isRegisterAllEvent) {
            return;
        }
        this.isRegisterAllEvent = true;
        unregisterSysEvent(iApp);
        registerSysEvent(this.mApp);
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature, io.dcloud.common.DHInterface.IFeature
    public void dispose(String str) {
        super.dispose(str);
        if (this.mApp != null) {
            onDestroy();
            if (this.isRegisterAllEvent) {
                unregisterSysEvent(this.mApp);
                this.isRegisterAllEvent = false;
                this.mApp = null;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.dcloud.common.DHInterface.IWaiter
    public Object doForFeature(String str, Object obj) {
        JSONObject registerJsModules;
        WXSDKInstance wXSDKInstanceFindWXSDKInstance;
        WXBaseWrapper wXBaseWrapperFindWXBaseWrapper;
        str.hashCode();
        switch (str) {
            case "onKeyboardHeightChange":
                Object[] objArr = (Object[]) obj;
                String str2 = (String) objArr[0];
                int iIntValue = ((Integer) objArr[1]).intValue();
                WXBaseWrapper wXBaseWrapperFindWXBaseWrapper2 = WeexInstanceMgr.self().findWXBaseWrapper(str2);
                if (wXBaseWrapperFindWXBaseWrapper2 != null) {
                    int scale = (int) (iIntValue / wXBaseWrapperFindWXBaseWrapper2.mWebview.getScale());
                    HashMap map = new HashMap();
                    map.put("height", Integer.valueOf(scale));
                    wXBaseWrapperFindWXBaseWrapper2.fireGlobalEvent("KeyboardHeightChange", map);
                }
                return WeexInstanceMgr.self().findWebviewByInstanceId((String) ((Object[]) obj)[0]);
            case "setUniNViewModuleReladyCallBack":
                WeexInstanceMgr.self().setUniNViewModuleReladyCallBack((ICallBack) ((Object[]) obj)[0]);
                return null;
            case "updateReload":
                WXViewWrapper wXViewWrapperFindPathByWrapper = WeexInstanceMgr.self().findPathByWrapper((String) ((Object[]) obj)[0]);
                if (wXViewWrapperFindPathByWrapper != null) {
                    wXViewWrapperFindPathByWrapper.reload();
                }
                return null;
            case "findWebviewByInstanceId":
                return WeexInstanceMgr.self().findWebviewByInstanceId((String) ((Object[]) obj)[0]);
            case "getUniNViewModules":
                String uniNViewModules = WeexInstanceMgr.self().getUniNViewModules();
                return (uniNViewModules != null || (registerJsModules = WXModuleManager.getRegisterJsModules()) == null) ? uniNViewModules : registerJsModules.toJSONString();
            case "callNativeModuleSync":
                Object[] objArr2 = (Object[]) obj;
                String str3 = (String) objArr2[1];
                String str4 = (String) objArr2[2];
                String str5 = (String) objArr2[3];
                JSONObject object = JSON.parseObject((String) objArr2[4]);
                if (PdrUtil.isEmpty(str3)) {
                    str3 = str4;
                }
                if (str5.equalsIgnoreCase(str3)) {
                    wXSDKInstanceFindWXSDKInstance = WeexInstanceMgr.self().findWXSDKInstance(str5);
                } else {
                    wXSDKInstanceFindWXSDKInstance = WeexInstanceMgr.self().findWXSDKInstance(str3);
                }
                if (wXSDKInstanceFindWXSDKInstance != null) {
                    return callNativeModule(wXSDKInstanceFindWXSDKInstance.getInstanceId(), object);
                }
                return null;
            case "weexViewUpdate":
                Object[] objArr3 = (Object[]) obj;
                IWebview iWebview = (IWebview) objArr3[0];
                ViewGroup viewGroup = (ViewGroup) objArr3[1];
                org.json.JSONObject jSONObject = (org.json.JSONObject) objArr3[2];
                String strObtainAppId = (String) objArr3[3];
                if (PdrUtil.isEmpty(strObtainAppId)) {
                    strObtainAppId = iWebview.obtainApp().obtainAppId();
                }
                if (jSONObject.has(AbsoluteConst.XML_PATH) && !PdrUtil.isEmpty(jSONObject.optString(AbsoluteConst.XML_PATH))) {
                    WXBaseWrapper wXBaseWrapperFindWXBaseWrapper3 = WeexInstanceMgr.self().findWXBaseWrapper(strObtainAppId);
                    org.json.JSONObject jSONObject2 = new org.json.JSONObject();
                    String strOptString = jSONObject.optString(AbsoluteConst.XML_PATH);
                    if (iWebview.isUniWebView()) {
                        ((AdaUniWebView) iWebview).setNVuePath(strOptString);
                    }
                    try {
                        jSONObject2.put("js", strOptString);
                        jSONObject2.put("data", jSONObject);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    if (wXBaseWrapperFindWXBaseWrapper3 != null) {
                        wXBaseWrapperFindWXBaseWrapper3.loadTemplate(jSONObject2);
                    } else {
                        createUniNView(iWebview, viewGroup, strObtainAppId, jSONObject2);
                    }
                    break;
                }
                return null;
            case "postMessageToUniNView":
                Object[] objArr4 = (Object[]) obj;
                IWebview iWebview2 = (IWebview) objArr4[0];
                String str6 = (String) objArr4[1];
                String str7 = (String) objArr4[2];
                String str8 = (String) objArr4[3];
                JSONObject object2 = JSON.parseObject((String) objArr4[4]);
                HashMap map2 = new HashMap();
                map2.put("targetId", str7);
                map2.put("originId", iWebview2.getWebviewUUID());
                map2.put("data", object2);
                if (PdrUtil.isEmpty(str6)) {
                    str6 = str7;
                }
                if (str8.equalsIgnoreCase(str6)) {
                    wXBaseWrapperFindWXBaseWrapper = WeexInstanceMgr.self().findWXBaseWrapper(str8);
                } else {
                    wXBaseWrapperFindWXBaseWrapper = WeexInstanceMgr.self().findWXBaseWrapper(str6);
                }
                if (wXBaseWrapperFindWXBaseWrapper != null) {
                    wXBaseWrapperFindWXBaseWrapper.fireGlobalEvent("plusMessage", map2);
                }
                return null;
            case "createUniNView":
                return createWeexWindow((Object[]) obj);
            case "createServiceUniNView":
                return createWeexService((Object[]) obj);
            case "updateServiceReload":
                WeexInstanceMgr.self().reloadWXServiceWrapper();
                return null;
            default:
                return null;
        }
    }

    private void createUniNView(IWebview iWebview, ViewGroup viewGroup, String str, org.json.JSONObject jSONObject) {
        createUniNView(iWebview, viewGroup, str, jSONObject, WXBaseWrapper.DE_INDEX);
    }

    private void createUniNView(IWebview iWebview, ViewGroup viewGroup, String str, org.json.JSONObject jSONObject, int i) {
        WeexInstanceMgr.self().createWeexView(iWebview, viewGroup, jSONObject, str, i);
    }

    private Object createWeexWindow(Object[] objArr) {
        IWebview iWebview = (IWebview) objArr[0];
        registerAllEvent(iWebview.obtainApp());
        return WeexInstanceMgr.self().createWeexView(iWebview, (ViewGroup) objArr[1], (org.json.JSONObject) objArr[2], (String) objArr[3], WXViewWrapper.DE_INDEX);
    }

    private Object createWeexService(Object[] objArr) {
        IApp iApp = (IApp) objArr[0];
        registerAllEvent(iApp);
        org.json.JSONObject jSONObject = (org.json.JSONObject) objArr[1];
        return WeexInstanceMgr.self().createWeexService(iApp, (ViewGroup) objArr[2], (String) objArr[3], jSONObject);
    }

    public String callNativeModule(String str, JSONObject jSONObject) {
        Object objCallNativeModule = WXBridgeManager.getInstance().callNativeModule(str, jSONObject.getString("plugin"), jSONObject.getString("method"), JSON.parseArray(jSONObject.getString("args")), (JSONObject) null);
        if (objCallNativeModule != null) {
            if (objCallNativeModule instanceof JSONObject) {
                return JSUtil.wrapJsVar(JSONUtil.createJSONObject(((JSONObject) objCallNativeModule).toJSONString()));
            }
            if (objCallNativeModule instanceof HashMap) {
                return JSUtil.wrapJsVar(JSONUtil.createJSONObject(new JSONObject((HashMap) objCallNativeModule).toJSONString()));
            }
            if (objCallNativeModule instanceof JSONArray) {
                return JSUtil.wrapJsVar(JSONUtil.createJSONArray(((JSONArray) objCallNativeModule).toJSONString()));
            }
            if (objCallNativeModule instanceof String) {
                return JSUtil.wrapJsVar(String.valueOf(objCallNativeModule));
            }
            if (objCallNativeModule instanceof org.json.JSONObject) {
                return JSUtil.wrapJsVar((org.json.JSONObject) objCallNativeModule);
            }
            if (objCallNativeModule instanceof org.json.JSONArray) {
                return JSUtil.wrapJsVar((org.json.JSONArray) objCallNativeModule);
            }
        }
        return JSUtil.wrapJsVar("");
    }
}
