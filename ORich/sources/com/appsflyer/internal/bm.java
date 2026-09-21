package com.appsflyer.internal;

import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class bm<ResponseBody> {
    public final AtomicBoolean AFInAppEventParameterName = new AtomicBoolean(false);
    final br<ResponseBody> AFInAppEventType;
    final bj AFKeystoreWrapper;
    final v valueOf;
    public final ExecutorService values;

    public bm(v vVar, ExecutorService executorService, bj bjVar, br<ResponseBody> brVar) {
        this.valueOf = vVar;
        this.values = executorService;
        this.AFKeystoreWrapper = bjVar;
        this.AFInAppEventType = brVar;
    }

    /* JADX INFO: renamed from: com.appsflyer.internal.bm$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        private /* synthetic */ bl AFKeystoreWrapper;

        public AnonymousClass3(bl blVar) {
            this.AFKeystoreWrapper = blVar;
        }

        @Override // java.lang.Runnable
        public final void run() throws Throwable {
            try {
                bi<String> biVarValueOf = bm.this.AFKeystoreWrapper.valueOf(bm.this.valueOf);
                bl blVar = this.AFKeystoreWrapper;
                if (blVar != null) {
                    blVar.AFInAppEventParameterName(new bi(bm.this.AFInAppEventType.AFKeystoreWrapper(biVarValueOf.values), biVarValueOf.AFKeystoreWrapper, biVarValueOf.AFInAppEventType()));
                }
            } catch (IOException e) {
                bl blVar2 = this.AFKeystoreWrapper;
                if (blVar2 != null) {
                    blVar2.AFInAppEventParameterName(e);
                }
            }
        }
    }
}
