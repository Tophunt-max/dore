package com.igexin.push.extension.distribution.gbd.f.a;

import android.text.TextUtils;
import com.igexin.push.extension.distribution.gbd.i.i;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.taobao.weex.el.parse.Operators;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.igexin.push.extension.distribution.gbd.f.d {
    public a(com.igexin.push.extension.distribution.gbd.f.c cVar) {
        this.d = cVar;
    }

    private String n() {
        String strA;
        try {
            strA = com.igexin.b.b.a.a("d69998bb013e45f2" + com.igexin.push.extension.distribution.gbd.c.c.f373a.getPackageName());
        } catch (Exception e) {
            e = e;
            strA = "d69998bb013e45f2";
        }
        try {
            if (!TextUtils.isEmpty(strA)) {
                strA = strA.substring(10, strA.length() - 10);
            }
        } catch (Exception e2) {
            e = e2;
            j.a(e);
        }
        return com.igexin.push.extension.distribution.gbd.c.c.f373a.getFilesDir().getPath() + Operators.DIV + (TextUtils.isEmpty(strA) ? "d69998bb013e45f2" : strA);
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
                if (bArr == null) {
                    this.d.a(null);
                } else {
                    i.a(bArr, n(), false);
                    this.d.a(bArr);
                }
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }
}
