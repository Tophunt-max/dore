package com.igexin.push.core.a.a;

import com.igexin.assist.sdk.AssistPushConsts;
import com.taobao.weex.el.parse.Operators;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class m extends com.igexin.push.g.b.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Map f146a;
    final /* synthetic */ l b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    m(l lVar, long j, Map map) {
        super(j);
        this.b = lVar;
        this.f146a = map;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(com.igexin.push.core.f.f.getPackageName());
            sb.append("#");
            sb.append(this.b.b((String) this.f146a.get("pkgName")));
            sb.append("#");
            sb.append((String) this.f146a.get("pkgName"));
            sb.append(Operators.DIV);
            sb.append((String) this.f146a.get("serviceName"));
            sb.append("#");
            sb.append(l.a((String) this.f146a.get("pkgName"), (String) this.f146a.get("serviceName")) ? AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT : "0");
            this.b.b("30026", sb.toString(), (String) this.f146a.get("messageId"), (String) this.f146a.get("taskId"), (String) this.f146a.get("id"));
            com.igexin.b.a.c.b.a("feedback actionId=30026 result=" + sb.toString());
        } catch (Throwable unused) {
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
