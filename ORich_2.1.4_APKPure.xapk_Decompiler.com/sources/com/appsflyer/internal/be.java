package com.appsflyer.internal;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class be implements bg {
    private bd AFInAppEventParameterName;
    private ExecutorService AFInAppEventType;
    private av AFKeystoreWrapper;
    private u AFLogger$LogLevel;
    private final int valueOf = (int) TimeUnit.SECONDS.toMillis(30);
    public Context values;

    @Override // com.appsflyer.internal.bg
    public final bh AFInAppEventParameterName() {
        if (this.AFLogger$LogLevel == null) {
            bj bjVar = new bj(this.valueOf);
            if (this.AFInAppEventType == null) {
                this.AFInAppEventType = Executors.newCachedThreadPool();
            }
            this.AFLogger$LogLevel = new u(bjVar, this.AFInAppEventType);
        }
        u uVar = this.AFLogger$LogLevel;
        Context context = this.values;
        if (context != null) {
            return new bh(uVar, new n(context));
        }
        throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
    }

    @Override // com.appsflyer.internal.bg
    public final av values() {
        if (this.AFKeystoreWrapper == null) {
            if (this.AFInAppEventParameterName == null) {
                this.AFInAppEventParameterName = new bd();
            }
            bd bdVar = this.AFInAppEventParameterName;
            Context context = this.values;
            if (context != null) {
                bf bfVar = new bf(context);
                Context context2 = this.values;
                if (context2 != null) {
                    ba baVar = new ba(ag.AFKeystoreWrapper(context2));
                    if (this.AFInAppEventType == null) {
                        this.AFInAppEventType = Executors.newCachedThreadPool();
                    }
                    this.AFKeystoreWrapper = new av(bdVar, bfVar, baVar, this.AFInAppEventType, AFInAppEventParameterName());
                } else {
                    throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
                }
            } else {
                throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
            }
        }
        return this.AFKeystoreWrapper;
    }
}
