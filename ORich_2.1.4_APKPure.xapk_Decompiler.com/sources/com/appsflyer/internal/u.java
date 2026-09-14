package com.appsflyer.internal;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class u {
    public final bj AFInAppEventParameterName;
    public final ExecutorService values;

    interface e {
        void AFInAppEventParameterName(String str, String str2);

        void AFInAppEventType(String str, Exception exc);
    }

    u() {
    }

    public u(bj bjVar, ExecutorService executorService) {
        this.AFInAppEventParameterName = bjVar;
        this.values = executorService;
    }
}
