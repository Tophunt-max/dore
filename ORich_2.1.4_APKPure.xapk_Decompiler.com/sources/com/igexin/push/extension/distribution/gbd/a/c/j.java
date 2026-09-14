package com.igexin.push.extension.distribution.gbd.a.c;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class j implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f353a;
    private List<String> b;
    private HashMap<String, String> c;

    public j(f fVar, List<String> list, HashMap<String, String> map) {
        this.f353a = fVar;
        this.b = list;
        this.c = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        Map map;
        String str;
        try {
            List<String> list = this.b;
            if (list != null) {
                for (String str2 : list) {
                    if (com.igexin.push.extension.distribution.gbd.i.k.d(str2)) {
                        map = this.f353a.g;
                        str = this.c.get(str2);
                    } else {
                        map = this.f353a.h;
                        str = this.c.get(str2);
                    }
                    map.put(str2, str);
                }
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }
}
