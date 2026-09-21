package com.itfenbao.snplugin.firebase.analytics;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson.JSONObject;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.dcloud.feature.uniapp.annotation.UniJSMethod;
import io.dcloud.feature.uniapp.bridge.UniJSCallback;
import io.dcloud.feature.uniapp.common.UniModule;
import java.io.IOException;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsModule extends UniModule {
    @UniJSMethod(uiThread = false)
    public String getAppInstanceId_Sync() {
        return FirebaseAnalytics.getInstance(this.mUniSDKInstance.getContext()).getAppInstanceId().getResult();
    }

    @UniJSMethod
    public void getAppInstanceId(UniJSCallback uniJSCallback) {
        try {
            FirebaseApp.getInstance();
            uniJSCallback.invoke(new JSONObject(this.mUniSDKInstance.getContext()) { // from class: com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.2
                final /* synthetic */ Context val$ctx;

                {
                    this.val$ctx = context;
                    put("code", (Object) 0);
                    put("data", (Object) FirebaseAnalytics.getInstance(context).getAppInstanceId().getResult());
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            uniJSCallback.invoke(new JSONObject(e) { // from class: com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.1
                final /* synthetic */ Exception val$e;

                {
                    this.val$e = e;
                    put("code", (Object) (-1));
                    put(NotificationCompat.CATEGORY_MESSAGE, (Object) e.getMessage());
                }
            });
        }
    }

    @UniJSMethod
    public void setUserId(String str) {
        FirebaseAnalytics.getInstance(this.mUniSDKInstance.getContext()).setUserId(str);
    }

    @UniJSMethod
    public void getGaid(final UniJSCallback uniJSCallback) {
        final Context context = this.mUniSDKInstance.getContext();
        if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context) == 0) {
            Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.itfenbao.snplugin.firebase.analytics.-$$Lambda$AnalyticsModule$01EknqoW59olm4XHGRSW9jajjWw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getGaid$1$AnalyticsModule(context, uniJSCallback);
                }
            });
        } else {
            uniJSCallback.invoke(new JSONObject() { // from class: com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.4
                {
                    put("code", (Object) (-1));
                    put(NotificationCompat.CATEGORY_MESSAGE, "google play service 不可用");
                }
            });
        }
    }

    public /* synthetic */ void lambda$getGaid$1$AnalyticsModule(Context context, final UniJSCallback uniJSCallback) {
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
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.itfenbao.snplugin.firebase.analytics.-$$Lambda$AnalyticsModule$SmeTqOEPFqXnKuoOB2huwusaOfw
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getGaid$0$AnalyticsModule(uniJSCallback, id);
            }
        });
    }

    public /* synthetic */ void lambda$getGaid$0$AnalyticsModule(UniJSCallback uniJSCallback, String str) {
        uniJSCallback.invoke(new JSONObject(str) { // from class: com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.3
            final /* synthetic */ String val$finalAdid;

            {
                this.val$finalAdid = str;
                put("code", (Object) 0);
                put("gaid", (Object) str);
            }
        });
    }

    @UniJSMethod
    public void logEvent(JSONObject jSONObject, UniJSCallback uniJSCallback) {
        try {
            FirebaseApp.getInstance();
            Context context = this.mUniSDKInstance.getContext();
            String string = jSONObject.getString("name");
            if (TextUtils.isEmpty(string)) {
                uniJSCallback.invoke(new JSONObject() { // from class: com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.6
                    {
                        put("code", (Object) (-1));
                        put(NotificationCompat.CATEGORY_MESSAGE, "[name] is required");
                    }
                });
                return;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject("params");
            if (jSONObject2 == null) {
                uniJSCallback.invoke(new JSONObject() { // from class: com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.7
                    {
                        put("code", (Object) (-1));
                        put(NotificationCompat.CATEGORY_MESSAGE, "[params] is required");
                    }
                });
                return;
            }
            Bundle bundle = new Bundle();
            for (String str : jSONObject2.keySet()) {
                bundle.putString(str, jSONObject2.getString(str));
            }
            FirebaseAnalytics.getInstance(context).logEvent(string, bundle);
            uniJSCallback.invoke(new JSONObject() { // from class: com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.8
                {
                    put("code", (Object) 0);
                    put(NotificationCompat.CATEGORY_MESSAGE, "success");
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            uniJSCallback.invoke(new JSONObject(e) { // from class: com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.5
                final /* synthetic */ Exception val$e;

                {
                    this.val$e = e;
                    put("code", (Object) (-1));
                    put(NotificationCompat.CATEGORY_MESSAGE, (Object) e.getMessage());
                }
            });
        }
    }
}
