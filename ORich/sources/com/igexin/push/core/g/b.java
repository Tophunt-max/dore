package com.igexin.push.core.g;

import android.content.Intent;
import com.igexin.push.core.f;
import com.igexin.sdk.PushActivity;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static b b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<Long, a> f244a = new HashMap();

    private b() {
    }

    public static b a() {
        if (b == null) {
            b = new b();
        }
        return b;
    }

    private void d(a aVar) {
        if (aVar != null) {
            this.f244a.put(aVar.a(), aVar);
        }
    }

    public a a(Long l) {
        return this.f244a.get(l);
    }

    public void a(a aVar) {
        if (aVar != null) {
            d(aVar);
            Intent intent = new Intent(f.f, (Class<?>) PushActivity.class);
            intent.putExtra("activityid", aVar.a());
            intent.setFlags(268435456);
            f.f.startActivity(intent);
        }
    }

    public void b(a aVar) {
        if (aVar != null) {
            aVar.i();
            c(aVar);
        }
    }

    public void c(a aVar) {
        if (aVar != null) {
            this.f244a.remove(aVar.a());
        }
    }
}
