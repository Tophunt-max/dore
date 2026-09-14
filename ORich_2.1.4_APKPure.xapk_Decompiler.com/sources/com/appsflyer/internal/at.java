package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import com.appsflyer.AFLogger;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public abstract class at<T> {
    private final String[] AFInAppEventParameterName;
    public final String AFInAppEventType;
    public final FutureTask<T> AFKeystoreWrapper = new FutureTask<>(new Callable<T>() { // from class: com.appsflyer.internal.at.3
        @Override // java.util.concurrent.Callable
        public final T call() {
            if (at.this.AFInAppEventType()) {
                return (T) at.this.valueOf();
            }
            return null;
        }
    });
    public final Context valueOf;

    protected abstract T valueOf();

    public at(Context context, String str, String... strArr) {
        this.valueOf = context;
        this.AFInAppEventType = str;
        this.AFInAppEventParameterName = strArr;
    }

    public T AFInAppEventParameterName() {
        try {
            return this.AFKeystoreWrapper.get(500L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            AFLogger.valueOf(e.getMessage(), e);
            return null;
        }
    }

    public final boolean AFInAppEventType() {
        try {
            ProviderInfo providerInfoResolveContentProvider = this.valueOf.getPackageManager().resolveContentProvider(this.AFInAppEventType, 128);
            if (providerInfoResolveContentProvider != null) {
                return Arrays.asList(this.AFInAppEventParameterName).contains(aa.values(this.valueOf.getPackageManager(), ((PackageItemInfo) providerInfoResolveContentProvider).packageName));
            }
            return false;
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException | CertificateException e) {
            AFLogger.valueOf(e.getMessage(), e);
            return false;
        }
    }
}
