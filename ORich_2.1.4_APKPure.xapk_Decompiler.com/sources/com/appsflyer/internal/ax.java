package com.appsflyer.internal;

import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.SkuDetailsParams;
import com.android.billingclient.api.SkuDetailsResponseListener;
import com.appsflyer.AFLogger;
import com.taobao.weex.el.parse.Operators;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class ax implements PurchasesUpdatedListener {
    private /* synthetic */ av valueOf;

    ax(av avVar) {
        this.valueOf = avVar;
    }

    public final void onPurchasesUpdated(BillingResult billingResult, final List<Purchase> list) {
        final av avVar = this.valueOf;
        try {
            if (billingResult.getResponseCode() == 0 && list != null) {
                if (avVar.AFKeystoreWrapper == null) {
                    AFLogger.init("Got Ars billing callback but billing client is missing!");
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator<Purchase> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().getSku());
                }
                avVar.AFKeystoreWrapper.querySkuDetailsAsync(SkuDetailsParams.newBuilder().setType("subs").setSkusList(arrayList).build(), new SkuDetailsResponseListener() { // from class: com.appsflyer.internal.av.1
                    private /* synthetic */ List valueOf;

                    AnonymousClass1(final List list2) {
                        list = list2;
                    }

                    public final void onSkuDetailsResponse(BillingResult billingResult2, List<SkuDetails> list2) {
                        try {
                            if (billingResult2.getResponseCode() == 0 && list2 != null) {
                                ArrayList arrayList2 = new ArrayList();
                                Iterator<SkuDetails> it2 = list2.iterator();
                                while (it2.hasNext()) {
                                    arrayList2.add(it2.next().getSku());
                                }
                                ArrayList arrayList3 = new ArrayList();
                                for (Purchase purchase : list) {
                                    if (arrayList2.contains(purchase.getSku())) {
                                        arrayList3.add(purchase);
                                    }
                                }
                                if (arrayList3.isEmpty()) {
                                    return;
                                }
                                av.AFKeystoreWrapper(av.this, false, arrayList3);
                            }
                        } catch (Throwable th) {
                            if ((th instanceof NoSuchMethodError) || (th instanceof NoClassDefFoundError)) {
                                AFLogger.init("It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3");
                            }
                            AFLogger.values("Failed to log new purchase", th);
                        }
                    }
                });
                return;
            }
            StringBuilder sb = new StringBuilder("Failed to setup Ars Play billing service: ");
            sb.append(billingResult.getResponseCode());
            sb.append(Operators.SPACE_STR);
            sb.append(billingResult.getDebugMessage());
            AFLogger.init(sb.toString());
        } catch (Throwable th) {
            if ((th instanceof NoSuchMethodError) || (th instanceof NoClassDefFoundError)) {
                AFLogger.init("It seems your app uses different Play Billing library version than the SDK. Please use v.3.0.3");
            }
            AFLogger.values("Failed to query new purchase details", th);
        }
    }
}
