package com.itfenbao.snplugin.appsflyer;

import android.app.Application;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.deeplink.DeepLinkListener;
import com.appsflyer.deeplink.DeepLinkResult;
import io.dcloud.feature.uniapp.UniAppHookProxy;
import io.dcloud.feature.uniapp.bridge.UniJSCallback;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AppsFlyerProxy implements UniAppHookProxy {
    private static AppsFlyerProxy proxy;
    private JSONObject initDeepLinkData;
    private JSONObject initInstallData;
    private UniJSCallback mConversionListener = null;
    private UniJSCallback mAttributionDataListener = null;
    private UniJSCallback mDeepLinkListener = null;

    public static AppsFlyerProxy getInstance() {
        return proxy;
    }

    @Override // io.dcloud.feature.uniapp.UniAppHookProxy
    public void onSubProcessCreate(Application application) {
        proxy = this;
    }

    @Override // io.dcloud.weex.AppHookProxy
    public void onCreate(Application application) {
        proxy = this;
        String string = getAppMetaDataBundle(application).getString("APPS_FLYER_DEV_KEY");
        if (TextUtils.isEmpty(string)) {
            throw new IllegalArgumentException("缺少appsflyer_devkey");
        }
        AppsFlyerLib appsFlyerLib = AppsFlyerLib.getInstance();
        appsFlyerLib.setCollectAndroidID(true);
        appsFlyerLib.subscribeForDeepLink(new DeepLinkListener() { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerProxy.1
            @Override // com.appsflyer.deeplink.DeepLinkListener
            public void onDeepLinking(DeepLinkResult deepLinkResult) {
                try {
                    DeepLinkResult.Error error = deepLinkResult.getError();
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("deepLinkStatus", (Object) deepLinkResult.getStatus());
                    jSONObject.put("type", (Object) "onDeepLinking");
                    if (error != null) {
                        jSONObject.put("code", (Object) (-1));
                        jSONObject.put("status", (Object) "failure");
                        jSONObject.put("data", (Object) error.toString());
                    } else {
                        jSONObject.put("code", (Object) 0);
                        jSONObject.put("status", (Object) "success");
                        if (deepLinkResult.getDeepLink() != null) {
                            jSONObject.put("data", (Object) JSON.parseObject(deepLinkResult.getDeepLink().getClickEvent().toString()));
                        }
                    }
                    AppsFlyerProxy.this.sendEvent(jSONObject);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        appsFlyerLib.init(string, new AppsFlyerConversionListener() { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerProxy.2
            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onConversionDataSuccess(Map<String, Object> map) {
                AppsFlyerProxy.this.handleSuccess("onInstallConversionDataLoaded", new JSONObject(map), null);
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onConversionDataFail(String str) {
                AppsFlyerProxy.this.handleError("onInstallConversionFailure", str);
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onAppOpenAttribution(Map<String, String> map) {
                AppsFlyerProxy.this.handleSuccess("onAppOpenAttribution", null, new JSONObject(map) { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerProxy.2.1
                    final /* synthetic */ Map val$attributionData;

                    {
                        this.val$attributionData = map;
                        for (String str : map.keySet()) {
                            put(str, this.val$attributionData.get(str));
                        }
                    }
                });
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public void onAttributionFailure(String str) {
                AppsFlyerProxy.this.handleError("onAttributionFailure", str);
            }
        }, application);
    }

    public void setDeepLinkListener(UniJSCallback uniJSCallback) {
        this.mDeepLinkListener = uniJSCallback;
        JSONObject jSONObject = this.initDeepLinkData;
        if (jSONObject != null) {
            sendEvent(jSONObject);
            this.initDeepLinkData = null;
        }
    }

    public void setConversionListener(UniJSCallback uniJSCallback) {
        this.mConversionListener = uniJSCallback;
        JSONObject jSONObject = this.initInstallData;
        if (jSONObject != null) {
            sendEvent(jSONObject);
            this.initInstallData = null;
        }
    }

    public void setAttributionDataListener(UniJSCallback uniJSCallback) {
        this.mAttributionDataListener = uniJSCallback;
        JSONObject jSONObject = this.initInstallData;
        if (jSONObject != null) {
            sendEvent(jSONObject);
            this.initInstallData = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleError(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("code", (Object) (-1));
        jSONObject.put("status", "failure");
        jSONObject.put("type", (Object) str);
        jSONObject.put("data", (Object) str2);
        sendEvent(jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSuccess(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("code", (Object) 0);
        jSONObject3.put("status", (Object) "success");
        jSONObject3.put("type", (Object) str);
        if (jSONObject == null) {
            jSONObject = jSONObject2;
        }
        jSONObject3.put("data", (Object) jSONObject);
        sendEvent(jSONObject3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void sendEvent(JSONObject jSONObject) {
        String string = jSONObject.getString("type");
        if (string.equals("onAttributionFailure") || string.equals("onAppOpenAttribution")) {
            UniJSCallback uniJSCallback = this.mAttributionDataListener;
            if (uniJSCallback == null) {
                this.initInstallData = jSONObject;
                return;
            }
            uniJSCallback.invokeAndKeepAlive(new JSONObject(jSONObject) { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerProxy.3
                final /* synthetic */ JSONObject val$params;

                {
                    this.val$params = jSONObject;
                    put("code", (Object) 0);
                    put("data", (Object) jSONObject);
                }
            });
        } else if (string.equals("onInstallConversionDataLoaded") || string.equals("onInstallConversionFailure")) {
            UniJSCallback uniJSCallback2 = this.mConversionListener;
            if (uniJSCallback2 == null) {
                this.initInstallData = jSONObject;
                return;
            }
            uniJSCallback2.invokeAndKeepAlive(new JSONObject(jSONObject) { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerProxy.4
                final /* synthetic */ JSONObject val$params;

                {
                    this.val$params = jSONObject;
                    put("code", (Object) 0);
                    put("data", (Object) jSONObject);
                }
            });
        } else if (jSONObject.getString("type").equals("onDeepLinking")) {
            UniJSCallback uniJSCallback3 = this.mDeepLinkListener;
            if (uniJSCallback3 == null) {
                this.initDeepLinkData = jSONObject;
                return;
            }
            uniJSCallback3.invokeAndKeepAlive(new JSONObject(jSONObject) { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerProxy.5
                final /* synthetic */ JSONObject val$params;

                {
                    this.val$params = jSONObject;
                    put("code", (Object) 0);
                    put("data", (Object) jSONObject);
                }
            });
        }
    }

    private Bundle getAppMetaDataBundle(Application application) {
        try {
            return application.getPackageManager().getApplicationInfo(application.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("getMetaDataBundle", e.getMessage(), e);
            return null;
        }
    }
}
