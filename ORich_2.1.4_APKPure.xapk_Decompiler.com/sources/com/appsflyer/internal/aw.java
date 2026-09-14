package com.appsflyer.internal;

import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.Purchase;
import com.appsflyer.AFLogger;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class aw implements BillingClientStateListener {
    private /* synthetic */ av values;

    public final void onBillingServiceDisconnected() {
    }

    aw(av avVar) {
        this.values = avVar;
    }

    public final void onBillingSetupFinished(final BillingResult billingResult) {
        final av avVar = this.values;
        avVar.AFInAppEventParameterName.submit(new Runnable() { // from class: com.appsflyer.internal.av.3
            private /* synthetic */ BillingResult AFKeystoreWrapper;

            AnonymousClass3(final BillingResult billingResult2) {
                billingResult = billingResult2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (billingResult.getResponseCode() == 0 && !av.this.AFInAppEventType.valueOf("ars_history_sent")) {
                        Purchase.PurchasesResult purchasesResultQueryPurchases = av.this.AFKeystoreWrapper.queryPurchases("subs");
                        List purchasesList = purchasesResultQueryPurchases.getPurchasesList();
                        if (purchasesResultQueryPurchases.getResponseCode() == 0 && purchasesList != null && !purchasesList.isEmpty()) {
                            av.AFKeystoreWrapper(av.this, true, purchasesList);
                            return;
                        }
                        AFLogger.init("Failed to query purchases history");
                    }
                } catch (Throwable th) {
                    if ((th instanceof NoSuchMethodError) || (th instanceof NoClassDefFoundError)) {
                        AFLogger.init("It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3");
                    }
                    AFLogger.values("Failed to log purchases history", th);
                }
            }
        });
    }
}
