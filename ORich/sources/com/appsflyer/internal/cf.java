package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFInAppEventType;

/* JADX INFO: loaded from: classes.dex */
public final class cf extends by {
    public cf(Context context) {
        super(AFInAppEventType.PURCHASE, Boolean.TRUE, context);
    }

    @Override // com.appsflyer.internal.f
    public final f values(String str) {
        return super.values(AFInAppEventParameterName(str));
    }
}
