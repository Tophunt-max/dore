package com.appsflyer.internal;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public final class ba implements az {
    private final SharedPreferences valueOf;

    public ba(SharedPreferences sharedPreferences) {
        this.valueOf = sharedPreferences;
    }

    @Override // com.appsflyer.internal.az
    public final boolean valueOf(String str) {
        return this.valueOf.getBoolean(str, false);
    }

    @Override // com.appsflyer.internal.az
    public final void AFInAppEventParameterName(String str) {
        this.valueOf.edit().putBoolean(str, true).apply();
    }
}
