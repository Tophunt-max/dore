package com.igexin.push.extension.distribution.gbd.a.b;

import android.app.ActivityManager;
import io.dcloud.common.constant.AbsoluteConst;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class p extends com.igexin.push.g.b.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Map f342a;
    final /* synthetic */ int b;
    final /* synthetic */ int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    p(long j, Map map, int i, int i2) {
        super(j);
        this.f342a = map;
        this.b = i;
        this.c = i2;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        try {
            List list = (List) this.f342a.get("checkList");
            if (list == null) {
                return;
            }
            List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) com.igexin.push.extension.distribution.gbd.c.c.f373a.getSystemService("activity")).getRunningServices(2000);
            HashMap map = new HashMap();
            for (int i = 0; i < list.size(); i++) {
                map.put(list.get(i), Boolean.valueOf(com.igexin.push.extension.distribution.gbd.i.k.a((String) list.get(i), this.f342a.get("pkgName").toString(), runningServices)));
            }
            com.igexin.push.extension.distribution.gbd.i.j.a(this.l, "runing service = " + map.toString());
            if (map.toString().contains(AbsoluteConst.TRUE)) {
                com.igexin.push.extension.distribution.gbd.c.c.c.post(new q(this));
                return;
            }
            if (this.c == 0) {
                o.a(this.f342a, 1, this.b);
                return;
            }
            com.igexin.push.extension.distribution.gbd.i.j.b(this.l, "guard failed type = " + this.b + " pkg = " + this.f342a.get("pkgName").toString());
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
