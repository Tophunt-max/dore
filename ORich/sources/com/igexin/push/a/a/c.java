package com.igexin.push.a.a;

/* JADX INFO: loaded from: classes.dex */
public class c implements com.igexin.push.g.b.d {
    private static c c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f102a = 0;
    private long b = 0;
    private boolean d = false;

    private c() {
    }

    public static c c() {
        if (c == null) {
            c = new c();
        }
        return c;
    }

    @Override // com.igexin.push.g.b.d
    public void a() {
        d();
    }

    @Override // com.igexin.push.g.b.d
    public void a(long j) {
        this.f102a = j;
    }

    @Override // com.igexin.push.g.b.d
    public boolean b() {
        return System.currentTimeMillis() - this.f102a > this.b;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d() {
        /*
            r12 = this;
            r0 = 3600000(0x36ee80, double:1.7786363E-317)
            r12.b = r0
            long r0 = java.lang.System.currentTimeMillis()
            int r2 = com.igexin.push.config.k.b
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L87
            java.util.Calendar r2 = java.util.Calendar.getInstance()
            boolean r5 = com.igexin.push.util.a.a(r0)
            r6 = 5
            r7 = 13
            r8 = 12
            r9 = 11
            if (r5 == 0) goto L58
            boolean r5 = r12.d
            if (r5 != 0) goto L31
            r12.d = r3
            com.igexin.push.core.e r5 = com.igexin.push.core.e.a()
            com.igexin.push.f.a r5 = r5.g()
            r5.c()
        L31:
            int r5 = com.igexin.push.config.k.f136a
            int r10 = com.igexin.push.config.k.b
            int r5 = r5 + r10
            r10 = 24
            if (r5 <= r10) goto L41
            int r5 = com.igexin.push.config.k.f136a
            int r11 = com.igexin.push.config.k.b
            int r5 = r5 + r11
            int r5 = r5 - r10
            goto L46
        L41:
            int r5 = com.igexin.push.config.k.f136a
            int r10 = com.igexin.push.config.k.b
            int r5 = r5 + r10
        L46:
            r2.set(r9, r5)
            r2.set(r8, r4)
            r2.set(r7, r4)
            long r4 = r2.getTimeInMillis()
            int r7 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r7 >= 0) goto L7f
            goto L7c
        L58:
            boolean r5 = r12.d
            if (r5 == 0) goto L69
            r12.d = r4
            com.igexin.push.core.e r5 = com.igexin.push.core.e.a()
            com.igexin.push.f.a r5 = r5.g()
            r5.b()
        L69:
            int r5 = com.igexin.push.config.k.f136a
            r2.set(r9, r5)
            r2.set(r8, r4)
            r2.set(r7, r4)
            long r4 = r2.getTimeInMillis()
            int r7 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r7 >= 0) goto L7f
        L7c:
            r2.add(r6, r3)
        L7f:
            long r4 = r2.getTimeInMillis()
            long r4 = r4 - r0
            r12.b = r4
            goto L98
        L87:
            boolean r2 = r12.d
            if (r2 == 0) goto L98
            r12.d = r4
            com.igexin.push.core.e r2 = com.igexin.push.core.e.a()
            com.igexin.push.f.a r2 = r2.g()
            r2.b()
        L98:
            long r4 = com.igexin.push.config.k.c
            long r6 = r12.b
            long r6 = r6 + r0
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 <= 0) goto Lb7
            long r4 = com.igexin.push.config.k.c
            long r4 = r4 - r0
            r12.b = r4
            boolean r0 = r12.d
            if (r0 != 0) goto Lb7
            r12.d = r3
            com.igexin.push.core.e r0 = com.igexin.push.core.e.a()
            com.igexin.push.f.a r0 = r0.g()
            r0.c()
        Lb7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.a.a.c.d():void");
    }
}
