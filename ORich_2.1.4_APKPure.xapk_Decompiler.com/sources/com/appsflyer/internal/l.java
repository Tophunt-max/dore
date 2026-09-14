package com.appsflyer.internal;

import android.net.TrafficStats;
import com.appsflyer.AFLogger;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class l {
    public static l AFKeystoreWrapper;
    final ThreadFactory AFInAppEventParameterName = new ThreadFactory() { // from class: com.appsflyer.internal.l.3
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(final Runnable runnable) {
            return new Thread(new Runnable() { // from class: com.appsflyer.internal.l.3.2
                @Override // java.lang.Runnable
                public final void run() {
                    TrafficStats.setThreadStatsTag("AppsFlyer".hashCode());
                    runnable.run();
                }
            });
        }
    };
    Executor AFInAppEventType;
    ScheduledExecutorService valueOf;
    ScheduledExecutorService values;

    public final Executor AFInAppEventParameterName() {
        Executor executor = this.AFInAppEventType;
        if (executor == null || ((executor instanceof ThreadPoolExecutor) && (((ThreadPoolExecutor) executor).isShutdown() || ((ThreadPoolExecutor) this.AFInAppEventType).isTerminated() || ((ThreadPoolExecutor) this.AFInAppEventType).isTerminating()))) {
            this.AFInAppEventType = Executors.newFixedThreadPool(2, this.AFInAppEventParameterName);
        }
        return this.AFInAppEventType;
    }

    public final ScheduledThreadPoolExecutor AFInAppEventType() {
        ScheduledExecutorService scheduledExecutorService = this.valueOf;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown() || this.valueOf.isTerminated()) {
            this.valueOf = Executors.newScheduledThreadPool(2, this.AFInAppEventParameterName);
        }
        return (ScheduledThreadPoolExecutor) this.valueOf;
    }

    static void valueOf(ExecutorService executorService) {
        try {
            try {
                AFLogger.values("shut downing executor ...");
                executorService.shutdown();
                executorService.awaitTermination(10L, TimeUnit.SECONDS);
                if (!executorService.isTerminated()) {
                    AFLogger.values("killing non-finished tasks");
                }
                executorService.shutdownNow();
            } catch (InterruptedException unused) {
                AFLogger.values("InterruptedException!!!");
                if (!executorService.isTerminated()) {
                    AFLogger.values("killing non-finished tasks");
                }
                executorService.shutdownNow();
            }
        } catch (Throwable th) {
            if (!executorService.isTerminated()) {
                AFLogger.values("killing non-finished tasks");
            }
            executorService.shutdownNow();
            throw th;
        }
    }
}
