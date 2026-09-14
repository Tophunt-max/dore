package com.appsflyer.internal;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class ab {
    private static final Handler AppsFlyer2dXConversionCallback;
    private static volatile ab getLevel;
    private static final BitSet init;
    final Handler AFInAppEventParameterName;
    boolean AFInAppEventType;
    final Runnable AFKeystoreWrapper;
    final Executor AFLogger$LogLevel;
    final Runnable AFVersionDeclaration;
    private final Runnable onAppOpenAttribution;
    private boolean onAppOpenAttributionNative;
    private final Map<x, x> onAttributionFailureNative;
    private long onConversionDataFail;
    private final SensorManager onDeepLinkingNative;
    private int onInstallConversionDataLoadedNative;
    private final Map<x, Map<String, Object>> onInstallConversionFailureNative;
    final Runnable valueOf;
    final Object values = new Object();

    static {
        BitSet bitSet = new BitSet(6);
        init = bitSet;
        AppsFlyer2dXConversionCallback = new Handler(Looper.getMainLooper());
        bitSet.set(1);
        bitSet.set(2);
        bitSet.set(4);
    }

    private ab(SensorManager sensorManager, Handler handler) {
        BitSet bitSet = init;
        this.onAttributionFailureNative = new HashMap(bitSet.size());
        this.onInstallConversionFailureNative = new ConcurrentHashMap(bitSet.size());
        this.valueOf = new Runnable() { // from class: com.appsflyer.internal.ab.4
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (ab.this.values) {
                    final ab abVar = ab.this;
                    abVar.AFLogger$LogLevel.execute(new Runnable() { // from class: com.appsflyer.internal.ab.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                for (Sensor sensor : ab.this.onDeepLinkingNative.getSensorList(-1)) {
                                    if (ab.AFInAppEventParameterName(sensor.getType())) {
                                        x xVar = new x(sensor, ab.this.AFLogger$LogLevel);
                                        if (!ab.this.onAttributionFailureNative.containsKey(xVar)) {
                                            ab.this.onAttributionFailureNative.put(xVar, xVar);
                                        }
                                        ab.this.onDeepLinkingNative.registerListener((SensorEventListener) ab.this.onAttributionFailureNative.get(xVar), sensor, 0);
                                    }
                                }
                            } catch (Throwable unused) {
                            }
                            ab.this.onAppOpenAttributionNative = true;
                        }
                    });
                    ab.this.AFInAppEventParameterName.postDelayed(ab.this.onAppOpenAttribution, 100L);
                    ab.this.AFInAppEventType = true;
                }
            }
        };
        this.AFKeystoreWrapper = new Runnable() { // from class: com.appsflyer.internal.ab.1
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (ab.this.values) {
                    ab abVar = ab.this;
                    abVar.AFLogger$LogLevel.execute(abVar.new AnonymousClass10());
                }
            }
        };
        this.AFVersionDeclaration = new Runnable() { // from class: com.appsflyer.internal.ab.3
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (ab.this.values) {
                    if (ab.this.AFInAppEventType) {
                        ab.this.AFInAppEventParameterName.removeCallbacks(ab.this.valueOf);
                        ab.this.AFInAppEventParameterName.removeCallbacks(ab.this.AFKeystoreWrapper);
                        ab abVar = ab.this;
                        abVar.AFLogger$LogLevel.execute(abVar.new AnonymousClass10());
                        ab.this.AFInAppEventType = false;
                    }
                }
            }
        };
        this.onInstallConversionDataLoadedNative = 1;
        this.onConversionDataFail = 0L;
        this.onAppOpenAttribution = new Runnable() { // from class: com.appsflyer.internal.ab.2
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (ab.this.values) {
                    if (ab.this.onInstallConversionDataLoadedNative == 0) {
                        ab.this.onInstallConversionDataLoadedNative = 1;
                    }
                    ab.this.AFInAppEventParameterName.postDelayed(ab.this.AFKeystoreWrapper, ((long) ab.this.onInstallConversionDataLoadedNative) * 500);
                }
            }
        };
        this.AFLogger$LogLevel = Executors.newSingleThreadExecutor();
        this.onDeepLinkingNative = sensorManager;
        this.AFInAppEventParameterName = handler;
    }

    static ab valueOf(Context context) {
        if (getLevel != null) {
            return getLevel;
        }
        return values((SensorManager) context.getApplicationContext().getSystemService("sensor"), AppsFlyer2dXConversionCallback);
    }

    private static ab values(SensorManager sensorManager, Handler handler) {
        if (getLevel == null) {
            synchronized (ab.class) {
                if (getLevel == null) {
                    getLevel = new ab(sensorManager, handler);
                }
            }
        }
        return getLevel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean AFInAppEventParameterName(int i) {
        return i >= 0 && init.get(i);
    }

    final void AFKeystoreWrapper() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.onConversionDataFail;
        if (j != 0) {
            this.onInstallConversionDataLoadedNative++;
            if (j - jCurrentTimeMillis < 500) {
                this.AFInAppEventParameterName.removeCallbacks(this.AFKeystoreWrapper);
                this.AFInAppEventParameterName.post(this.valueOf);
            }
        } else {
            this.AFInAppEventParameterName.post(this.AFVersionDeclaration);
            this.AFInAppEventParameterName.post(this.valueOf);
        }
        this.onConversionDataFail = jCurrentTimeMillis;
    }

    /* JADX INFO: renamed from: com.appsflyer.internal.ab$10, reason: invalid class name */
    final class AnonymousClass10 implements Runnable {
        AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (!ab.this.onAttributionFailureNative.isEmpty()) {
                    for (x xVar : ab.this.onAttributionFailureNative.values()) {
                        ab.this.onDeepLinkingNative.unregisterListener(xVar);
                        xVar.values(ab.this.onInstallConversionFailureNative, true);
                    }
                }
            } catch (Throwable unused) {
            }
            ab.this.onInstallConversionDataLoadedNative = 0;
            ab.this.onAppOpenAttributionNative = false;
        }
    }

    final List<Map<String, Object>> AFInAppEventType() {
        Iterator<x> it = this.onAttributionFailureNative.values().iterator();
        while (it.hasNext()) {
            it.next().values(this.onInstallConversionFailureNative, true);
        }
        Map<x, Map<String, Object>> map = this.onInstallConversionFailureNative;
        if (map == null || map.isEmpty()) {
            return new CopyOnWriteArrayList(Collections.emptyList());
        }
        return new CopyOnWriteArrayList(this.onInstallConversionFailureNative.values());
    }

    final List<Map<String, Object>> AFInAppEventParameterName() {
        synchronized (this.values) {
            if (!this.onAttributionFailureNative.isEmpty() && this.onAppOpenAttributionNative) {
                Iterator<x> it = this.onAttributionFailureNative.values().iterator();
                while (it.hasNext()) {
                    it.next().values(this.onInstallConversionFailureNative, false);
                }
            }
            if (this.onInstallConversionFailureNative.isEmpty()) {
                return new CopyOnWriteArrayList(Collections.emptyList());
            }
            return new CopyOnWriteArrayList(this.onInstallConversionFailureNative.values());
        }
    }
}
