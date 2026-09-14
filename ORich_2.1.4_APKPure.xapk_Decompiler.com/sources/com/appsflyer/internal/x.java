package com.appsflyer.internal;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class x implements SensorEventListener {
    private final int AFInAppEventParameterName;
    long AFKeystoreWrapper;
    private final int AFVersionDeclaration;
    private final Executor AppsFlyer2dXConversionCallback;
    private final String getLevel;
    private final String init;
    double values;
    final float[][] valueOf = new float[2][];
    final long[] AFInAppEventType = new long[2];

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    x(Sensor sensor, Executor executor) {
        this.AppsFlyer2dXConversionCallback = executor;
        int type = sensor.getType();
        this.AFInAppEventParameterName = type;
        String name = sensor.getName();
        name = name == null ? "" : name;
        this.getLevel = name;
        String vendor = sensor.getVendor();
        String str = vendor != null ? vendor : "";
        this.init = str;
        this.AFVersionDeclaration = ((((type + 31) * 31) + name.hashCode()) * 31) + str.hashCode();
    }

    private static List<Float> valueOf(float[] fArr) {
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(Float.valueOf(f));
        }
        return arrayList;
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        final long j = sensorEvent.timestamp;
        final float[] fArr = sensorEvent.values;
        this.AppsFlyer2dXConversionCallback.execute(new Runnable() { // from class: com.appsflyer.internal.x.3
            @Override // java.lang.Runnable
            public final void run() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                float[] fArr2 = x.this.valueOf[0];
                if (fArr2 != null) {
                    float[] fArr3 = x.this.valueOf[1];
                    if (fArr3 == null) {
                        float[] fArr4 = fArr;
                        float[] fArrCopyOf = Arrays.copyOf(fArr4, fArr4.length);
                        x.this.valueOf[1] = fArrCopyOf;
                        x.this.AFInAppEventType[1] = jCurrentTimeMillis;
                        x.this.values = x.AFInAppEventType(fArr2, fArrCopyOf);
                        return;
                    }
                    if (50000000 <= j - x.this.AFKeystoreWrapper) {
                        x.this.AFKeystoreWrapper = j;
                        if (Arrays.equals(fArr3, fArr)) {
                            x.this.AFInAppEventType[1] = jCurrentTimeMillis;
                            return;
                        }
                        double dAFInAppEventType = x.AFInAppEventType(fArr2, fArr);
                        if (dAFInAppEventType > x.this.values) {
                            float[][] fArr5 = x.this.valueOf;
                            float[] fArr6 = fArr;
                            fArr5[1] = Arrays.copyOf(fArr6, fArr6.length);
                            x.this.AFInAppEventType[1] = jCurrentTimeMillis;
                            x.this.values = dAFInAppEventType;
                            return;
                        }
                        return;
                    }
                    return;
                }
                float[][] fArr7 = x.this.valueOf;
                float[] fArr8 = fArr;
                fArr7[0] = Arrays.copyOf(fArr8, fArr8.length);
                x.this.AFInAppEventType[0] = jCurrentTimeMillis;
            }
        });
    }

    final void values(Map<x, Map<String, Object>> map, boolean z) {
        if (AFInAppEventType()) {
            map.put(this, valueOf());
            if (z) {
                int length = this.valueOf.length;
                for (int i = 0; i < length; i++) {
                    this.valueOf[i] = null;
                }
                int length2 = this.AFInAppEventType.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    this.AFInAppEventType[i2] = 0;
                }
                this.values = 0.0d;
                this.AFKeystoreWrapper = 0L;
                return;
            }
            return;
        }
        if (map.containsKey(this)) {
            return;
        }
        map.put(this, valueOf());
    }

    private boolean AFInAppEventType(int i, String str, String str2) {
        return this.AFInAppEventParameterName == i && this.getLevel.equals(str) && this.init.equals(str2);
    }

    private Map<String, Object> valueOf() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(7);
        concurrentHashMap.put("sT", Integer.valueOf(this.AFInAppEventParameterName));
        concurrentHashMap.put("sN", this.getLevel);
        concurrentHashMap.put("sV", this.init);
        float[] fArr = this.valueOf[0];
        if (fArr != null) {
            concurrentHashMap.put("sVS", valueOf(fArr));
        }
        float[] fArr2 = this.valueOf[1];
        if (fArr2 != null) {
            concurrentHashMap.put("sVE", valueOf(fArr2));
        }
        return concurrentHashMap;
    }

    private boolean AFInAppEventType() {
        return this.valueOf[0] != null;
    }

    public final int hashCode() {
        return this.AFVersionDeclaration;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return AFInAppEventType(xVar.AFInAppEventParameterName, xVar.getLevel, xVar.init);
    }

    static /* synthetic */ double AFInAppEventType(float[] fArr, float[] fArr2) {
        int iMin = Math.min(fArr.length, fArr2.length);
        double dPow = 0.0d;
        for (int i = 0; i < iMin; i++) {
            dPow += StrictMath.pow(fArr[i] - fArr2[i], 2.0d);
        }
        return Math.sqrt(dPow);
    }
}
