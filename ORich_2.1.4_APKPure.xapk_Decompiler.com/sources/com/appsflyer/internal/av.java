package com.appsflyer.internal;

import android.os.Build;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.Purchase;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.b;
import com.appsflyer.internal.bm;
import com.taobao.weex.WXEnvironment;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class av implements Runnable {
    public final ExecutorService AFInAppEventParameterName;
    final az AFInAppEventType;
    BillingClient AFKeystoreWrapper;
    private final bh getLevel;
    public final bd valueOf;
    private bf values;

    public av(bd bdVar, bf bfVar, az azVar, ExecutorService executorService, bh bhVar) {
        this.valueOf = bdVar;
        this.values = bfVar;
        this.AFInAppEventType = azVar;
        this.AFInAppEventParameterName = executorService;
        this.getLevel = bhVar;
    }

    static /* synthetic */ void AFKeystoreWrapper(av avVar, boolean z, List list) {
        z zVar = null;
        aa aaVar = new aa(false, z, list, null);
        bh bhVar = avVar.getLevel;
        String str = String.format("https://%sars.%s/api/v1/android/validate_subscription", AppsFlyerLib.getInstance().getHostPrefix(), ag.AFInAppEventType().getHostName());
        HashMap map = new HashMap();
        map.put("app_id", bhVar.AFInAppEventParameterName.values.getPackageName());
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID);
        if (string != null) {
            map.put("cuid", string);
        }
        n nVar = bhVar.AFInAppEventParameterName;
        map.put("app_version_name", aa.AFInAppEventParameterName(nVar.values, nVar.values.getPackageName()));
        HashMap map2 = new HashMap();
        b.e.a aVarValues = z.values(bhVar.AFInAppEventParameterName.values, new HashMap());
        String str2 = aVarValues != null ? aVarValues.valueOf : null;
        if (str2 != null) {
            map2.put("advertising_id", str2);
        }
        map2.put("appsflyer_id", al.AFInAppEventParameterName(new WeakReference(bhVar.AFInAppEventParameterName.values)));
        StringBuilder sb = new StringBuilder();
        sb.append(Build.VERSION.SDK_INT);
        map2.put("os_version", sb.toString());
        map2.put("sdk_version", ag.valueOf);
        map.put("device_data", map2);
        map.put("is_cached", Boolean.valueOf(aaVar.AFInAppEventParameterName()));
        map.put(WXEnvironment.ENVIRONMENT, aaVar.values() ? "SANDBOX" : "PRODUCTION");
        map.put("additional_parameters", aaVar.AFInAppEventParameterName);
        ArrayList arrayList = new ArrayList();
        for (Purchase purchase : aaVar.valueOf) {
            HashMap map3 = new HashMap();
            map3.put("token", purchase.getPurchaseToken());
            map3.put("subscription_id", purchase.getSku());
            arrayList.add(map3);
        }
        map.put("subscriptions", arrayList);
        v vVar = new v(str, new JSONObject(map).toString().getBytes(), "POST", Collections.emptyMap());
        u uVar = bhVar.values;
        bm bmVar = new bm(vVar, uVar.values, uVar.AFInAppEventParameterName, new bk());
        bl<String> blVar = new bl<String>(z, zVar) { // from class: com.appsflyer.internal.av.4
            private /* synthetic */ boolean AFInAppEventParameterName;

            @Override // com.appsflyer.internal.bl
            public final void AFInAppEventParameterName(bi<String> biVar) {
                if (biVar.AFInAppEventType() && this.AFInAppEventParameterName) {
                    av.this.AFInAppEventType.AFInAppEventParameterName("ars_history_sent");
                }
            }

            @Override // com.appsflyer.internal.bl
            public final void AFInAppEventParameterName(Throwable th) {
                AFLogger.AFKeystoreWrapper(th);
            }
        };
        if (!bmVar.AFInAppEventParameterName.getAndSet(true)) {
            bmVar.values.submit(new bm.AnonymousClass3(blVar));
            return;
        }
        throw new IllegalStateException("Http call is already executed");
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.AFKeystoreWrapper == null) {
                bf bfVar = this.values;
                BillingClient billingClientBuild = BillingClient.newBuilder(bfVar.AFKeystoreWrapper).setListener(new ax(this)).enablePendingPurchases().build();
                this.AFKeystoreWrapper = billingClientBuild;
                billingClientBuild.startConnection(new aw(this));
            }
        } catch (Throwable th) {
            if ((th instanceof NoSuchMethodError) || (th instanceof NoClassDefFoundError)) {
                AFLogger.init("It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3");
            }
            AFLogger.values("Failed to setup Play billing", th);
        }
    }
}
