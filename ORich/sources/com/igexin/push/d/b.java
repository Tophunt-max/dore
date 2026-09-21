package com.igexin.push.d;

import android.content.Intent;
import com.igexin.push.core.f;
import com.igexin.push.g.b.h;
import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
class b extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f261a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    b(a aVar, long j) {
        super(j);
        this.f261a = aVar;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        boolean z = false;
        try {
            Intent intent = new Intent();
            intent.setClassName(this.f261a.f260a, "com.igexin.sdk.GActivity");
            intent.setFlags(268435456);
            f.f.startActivity(intent);
            z = true;
            com.igexin.b.a.c.b.a(this.l + "|startActivity success pkg = " + this.f261a.f260a + " activityName = com.igexin.sdk.GActivity");
        } catch (Exception e) {
            com.igexin.b.a.c.b.a(this.l + "|startActivity exception pkg = " + this.f261a.f260a + " activityName = com.igexin.sdk.GActivity" + Operators.SPACE_STR + e.toString());
        }
        if (z || this.f261a.b == null) {
            return;
        }
        this.f261a.b.a();
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
