package com.igexin.push.core.a;

import android.text.TextUtils;
import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
public class t extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f159a = com.igexin.push.config.j.f135a + "_RegisterResultAction";

    @Override // com.igexin.push.core.a.a
    public boolean a(com.igexin.b.a.d.e eVar) {
        return false;
    }

    @Override // com.igexin.push.core.a.a
    public boolean a(Object obj) {
        if (obj instanceof com.igexin.push.e.c.q) {
            com.igexin.push.e.c.q qVar = (com.igexin.push.e.c.q) obj;
            com.igexin.push.core.f.D = 0L;
            com.igexin.b.a.c.b.a("register resp |" + qVar.f280a + "|" + com.igexin.push.core.f.r);
            com.igexin.b.a.c.b.a("register resp cid = " + qVar.c + " device id = " + qVar.d);
            if (qVar.f280a != com.igexin.push.core.f.r) {
                com.igexin.push.core.f.m = false;
                StringBuilder sb = new StringBuilder();
                String str = f159a;
                sb.append(str);
                sb.append(" change session : from [");
                sb.append(com.igexin.push.core.f.r);
                sb.append("] to [");
                sb.append(qVar.f280a);
                sb.append(Operators.ARRAY_END_STR);
                com.igexin.b.a.c.b.a(sb.toString());
                com.igexin.b.a.c.b.a(str + " change cid : from [" + com.igexin.push.core.f.s + "] to [" + qVar.c + Operators.ARRAY_END_STR);
                if (TextUtils.isEmpty(qVar.c) || TextUtils.isEmpty(qVar.d)) {
                    com.igexin.push.core.c.h.a().b(qVar.f280a);
                } else {
                    com.igexin.push.core.c.h.a().a(qVar.c, qVar.d, qVar.f280a);
                }
                com.igexin.push.core.f.F = 0L;
            }
            com.igexin.b.a.c.b.a("loginReqAfterRegister|new session:" + com.igexin.push.core.f.r + ", cid :" + com.igexin.push.core.f.s + ", devId :" + com.igexin.push.core.f.x);
            com.igexin.push.e.c.k kVarD = com.igexin.push.core.p.a().d();
            com.igexin.push.f.a aVarG = com.igexin.push.core.e.a().g();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("S-");
            sb2.append(kVarD.f275a);
            aVarG.a(sb2.toString(), kVarD, true);
        }
        return true;
    }
}
