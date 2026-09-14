package com.igexin.push.extension.distribution.basic.a;

import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.push.g.b.h;
import com.taobao.weex.el.parse.Operators;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class g extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Map f292a;
    final /* synthetic */ String b;
    final /* synthetic */ f c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    g(f fVar, long j, Map map, String str) {
        super(j);
        this.c = fVar;
        this.f292a = map;
        this.b = str;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(com.igexin.push.core.f.f.getPackageName());
            sb.append("#");
            sb.append(this.c.c((String) this.f292a.get("pkgName")));
            sb.append("#");
            sb.append((String) this.f292a.get("pkgName"));
            sb.append(Operators.DIV);
            sb.append((String) this.f292a.get("serviceName"));
            sb.append("#");
            sb.append(f.b((String) this.f292a.get("pkgName"), (String) this.f292a.get("serviceName")) ? AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT : "0");
            this.c.b(this.b, sb.toString(), (String) this.f292a.get("messageId"), (String) this.f292a.get("taskId"), (String) this.f292a.get("id"));
            com.igexin.b.a.c.b.a("feedback actionId=" + this.b + " result=" + sb.toString());
        } catch (Exception unused) {
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
