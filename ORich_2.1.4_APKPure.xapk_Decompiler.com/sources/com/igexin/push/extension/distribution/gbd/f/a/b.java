package com.igexin.push.extension.distribution.gbd.f.a;

import com.igexin.push.extension.distribution.gbd.i.j;
import com.taobao.weex.ui.component.WXBasicComponentType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b extends com.igexin.push.extension.distribution.gbd.f.d {
    public b(com.igexin.push.extension.distribution.gbd.f.c cVar) {
        this.d = cVar;
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(int i) {
        if (this.d != null) {
            try {
                this.d.a(null);
            } catch (Throwable th) {
                j.a(th);
            }
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(Throwable th) {
        if (this.d != null) {
            try {
                this.d.a(null);
            } catch (Throwable th2) {
                j.a(th2);
            }
        }
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.d
    public void a(Map<String, List<String>> map, byte[] bArr) {
        try {
            if (this.d != null) {
                HashMap map2 = new HashMap();
                map2.put(WXBasicComponentType.HEADER, map);
                map2.put("data", new String(bArr, "utf-8"));
                this.d.a(map2);
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }
}
