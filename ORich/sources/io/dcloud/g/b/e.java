package io.dcloud.g.b;

import io.dcloud.common.DHInterface.IPdrModule;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    private static e b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile ConcurrentMap<String, IPdrModule> f779a = new ConcurrentHashMap();

    private e() {
    }

    public static e a() {
        if (b == null) {
            b = new e();
        }
        return b;
    }

    public void b() {
        Iterator<String> it = this.f779a.keySet().iterator();
        while (it.hasNext()) {
            IPdrModule iPdrModuleRemove = this.f779a.remove(it.next());
            if (iPdrModuleRemove != null) {
                iPdrModuleRemove.onDestroy();
            }
        }
    }

    public void a(Map<String, Class<? extends IPdrModule>> map) {
        if (map != null) {
            for (String str : map.keySet()) {
                a(str, map.get(str));
            }
        }
    }

    public void a(String str, Class<? extends IPdrModule> cls) {
        if (cls != null) {
            try {
                this.f779a.put(str, cls.newInstance());
            } catch (IllegalAccessException | InstantiationException unused) {
            }
        }
    }

    public IPdrModule a(String str) {
        if (this.f779a.containsKey(str)) {
            return this.f779a.get(str);
        }
        return null;
    }
}
