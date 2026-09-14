package com.itfenbao.snplugin.appsflyer;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson.JSONObject;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.taobao.weex.WXGlobalEventReceiver;
import io.dcloud.feature.uniapp.annotation.UniJSMethod;
import io.dcloud.feature.uniapp.bridge.UniJSCallback;
import io.dcloud.feature.uniapp.common.UniModule;
import java.io.IOException;
import java.net.URI;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class AppsFlyerModule extends UniModule {
    @UniJSMethod
    public void onAppOpenAttribution(JSONObject jSONObject, UniJSCallback uniJSCallback) {
        AppsFlyerProxy.getInstance().setAttributionDataListener(uniJSCallback);
    }

    @UniJSMethod
    public void registerDeepLink(JSONObject jSONObject, UniJSCallback uniJSCallback) {
        AppsFlyerProxy.getInstance().setDeepLinkListener(uniJSCallback);
    }

    @UniJSMethod
    public void setCustomerUserId(String str, UniJSCallback uniJSCallback) {
        AppsFlyerLib.getInstance().setCustomerUserId(str);
        uniJSCallback.invoke(new JSONObject() { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerModule.1
            {
                put("code", (Object) 0);
                put(NotificationCompat.CATEGORY_MESSAGE, "Success");
            }
        });
    }

    @UniJSMethod
    public void getAppsFlyerUID(UniJSCallback uniJSCallback) {
        uniJSCallback.invoke(new JSONObject(AppsFlyerLib.getInstance().getAppsFlyerUID(this.mUniSDKInstance.getContext())) { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerModule.2
            final /* synthetic */ String val$uid;

            {
                this.val$uid = str;
                put("code", (Object) 0);
                put("uid", (Object) str);
            }
        });
    }

    @UniJSMethod
    public void getGaid(final UniJSCallback uniJSCallback) {
        final Context context = this.mUniSDKInstance.getContext();
        if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context) == 0) {
            Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.itfenbao.snplugin.appsflyer.-$$Lambda$AppsFlyerModule$PFtv9JrknYIZt_6ZkyIJVpDq2sM
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getGaid$1$AppsFlyerModule(context, uniJSCallback);
                }
            });
        } else {
            uniJSCallback.invoke(new JSONObject() { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerModule.4
                {
                    put("code", (Object) (-1));
                    put(NotificationCompat.CATEGORY_MESSAGE, "google play service 不可用");
                }
            });
        }
    }

    public /* synthetic */ void lambda$getGaid$1$AppsFlyerModule(Context context, final UniJSCallback uniJSCallback) {
        final String id;
        try {
            id = AdvertisingIdClient.getAdvertisingIdInfo(context).getId();
        } catch (GooglePlayServicesNotAvailableException e) {
            e.printStackTrace();
            id = "";
        } catch (GooglePlayServicesRepairableException e2) {
            e2.printStackTrace();
            id = "";
        } catch (IOException e3) {
            e3.printStackTrace();
            id = "";
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.itfenbao.snplugin.appsflyer.-$$Lambda$AppsFlyerModule$3qJyuyWGI5OLytBsJyB79BimMRM
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getGaid$0$AppsFlyerModule(uniJSCallback, id);
            }
        });
    }

    public /* synthetic */ void lambda$getGaid$0$AppsFlyerModule(UniJSCallback uniJSCallback, String str) {
        uniJSCallback.invoke(new JSONObject(str) { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerModule.3
            final /* synthetic */ String val$finalAdid;

            {
                this.val$finalAdid = str;
                put("code", (Object) 0);
                put("gaid", (Object) str);
            }
        });
    }

    @UniJSMethod
    public void performOnAppAttribution(JSONObject jSONObject, UniJSCallback uniJSCallback) {
        try {
            URI uriCreate = URI.create(jSONObject.getString("url"));
            AppsFlyerLib.getInstance().performOnAppAttribution(this.mUniSDKInstance.getContext().getApplicationContext(), uriCreate);
            uniJSCallback.invoke(new JSONObject() { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerModule.5
                {
                    put("code", (Object) 0);
                    put(NotificationCompat.CATEGORY_MESSAGE, "Success");
                }
            });
        } catch (Exception unused) {
            uniJSCallback.invoke(new JSONObject() { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerModule.6
                {
                    put("code", (Object) (-1));
                    put(NotificationCompat.CATEGORY_MESSAGE, "Passed string is not a valid URI");
                }
            });
        }
    }

    @UniJSMethod
    public void initSdk(JSONObject jSONObject, UniJSCallback uniJSCallback) {
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.LAUNCH_PROTECT_ENABLED, false);
        String string = jSONObject.getString("devKey");
        if (TextUtils.isEmpty(string)) {
            string = getAppMetaDataBundle(((Activity) this.mUniSDKInstance.getContext()).getApplication()).getString("APPS_FLYER_DEV_KEY");
        }
        if (TextUtils.isEmpty(string) || string.trim().equals("")) {
            uniJSCallback.invoke(new JSONObject() { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerModule.7
                {
                    put("code", (Object) (-1));
                    put(NotificationCompat.CATEGORY_MESSAGE, "No 'devKey' found or its empty");
                }
            });
            return;
        }
        boolean booleanValue = jSONObject.getBooleanValue("isDebug");
        if (jSONObject.containsKey("collectAndroidID")) {
            AppsFlyerLib.getInstance().setCollectAndroidID(jSONObject.getBoolean("collectAndroidID").booleanValue());
        }
        if (jSONObject.containsKey(AppsFlyerProperties.COLLECT_IMEI)) {
            AppsFlyerLib.getInstance().setCollectIMEI(jSONObject.getBoolean(AppsFlyerProperties.COLLECT_IMEI).booleanValue());
        }
        if (booleanValue) {
            AppsFlyerLib.getInstance().setDebugLog(true);
        }
        if (jSONObject.containsKey("onInstallConversionDataListener") ? jSONObject.getBooleanValue("onInstallConversionDataListener") : true) {
            AppsFlyerProxy.getInstance().setConversionListener(uniJSCallback);
        }
        AppsFlyerLib.getInstance().start(this.mUniSDKInstance.getContext());
        uniJSCallback.invokeAndKeepAlive(new JSONObject() { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerModule.8
            {
                put("code", (Object) 0);
                put(NotificationCompat.CATEGORY_MESSAGE, "Success");
            }
        });
    }

    @UniJSMethod
    public void logEvent(JSONObject jSONObject, final UniJSCallback uniJSCallback) {
        String string = jSONObject.getString(WXGlobalEventReceiver.EVENT_NAME);
        JSONObject jSONObject2 = jSONObject.containsKey("eventValues") ? jSONObject.getJSONObject("eventValues") : null;
        if (string == null || string.trim().length() == 0) {
            uniJSCallback.invoke(new JSONObject() { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerModule.9
                {
                    put("code", (Object) (-1));
                    put(NotificationCompat.CATEGORY_MESSAGE, "No 'eventName' found or its empty");
                }
            });
        } else {
            AppsFlyerLib.getInstance().logEvent(this.mUniSDKInstance.getContext().getApplicationContext(), string, jSONObject2, new AppsFlyerRequestListener() { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerModule.10
                @Override // com.appsflyer.attribution.AppsFlyerRequestListener
                public void onSuccess() {
                    uniJSCallback.invoke(new JSONObject() { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerModule.10.1
                        {
                            put("code", (Object) 0);
                        }
                    });
                }

                @Override // com.appsflyer.attribution.AppsFlyerRequestListener
                public void onError(int i, String str) {
                    uniJSCallback.invoke(new JSONObject(i, str) { // from class: com.itfenbao.snplugin.appsflyer.AppsFlyerModule.10.2
                        final /* synthetic */ int val$i;
                        final /* synthetic */ String val$s;

                        {
                            this.val$i = i;
                            this.val$s = str;
                            put("code", (Object) Integer.valueOf(i));
                            put(NotificationCompat.CATEGORY_MESSAGE, (Object) str);
                        }
                    });
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
