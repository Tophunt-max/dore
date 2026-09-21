package com.igexin.push.core.a;

/* JADX INFO: loaded from: classes.dex */
public class k extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f153a = "com.igexin.push.core.a.k";

    @Override // com.igexin.push.core.a.a
    public boolean a(com.igexin.b.a.d.e eVar) {
        return false;
    }

    @Override // com.igexin.push.core.a.a
    public boolean a(Object obj) {
        if (obj instanceof com.igexin.push.e.c.j) {
            com.igexin.push.e.c.j jVar = (com.igexin.push.e.c.j) obj;
            boolean z = jVar.f274a == 0;
            StringBuilder sb = new StringBuilder();
            String str = f153a;
            sb.append(str);
            sb.append("|KeyNego result = ");
            sb.append((int) jVar.f274a);
            com.igexin.b.a.c.b.a(sb.toString());
            if (z) {
                com.igexin.b.a.c.b.a(str + "|KeyNego success and login");
                com.igexin.push.core.p.a().c();
            }
        }
        return true;
    }
}
