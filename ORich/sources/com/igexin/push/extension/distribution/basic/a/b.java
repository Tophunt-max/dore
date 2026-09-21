package com.igexin.push.extension.distribution.basic.a;

import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.push.core.bean.BaseAction;

/* JADX INFO: loaded from: classes.dex */
class b implements com.igexin.push.extension.distribution.basic.f.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ BaseAction f288a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ int e;
    final /* synthetic */ a f;

    b(a aVar, BaseAction baseAction, String str, String str2, String str3, int i) {
        this.f = aVar;
        this.f288a = baseAction;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = i;
    }

    @Override // com.igexin.push.extension.distribution.basic.f.g
    public void a(BaseAction baseAction) {
        int i = this.e;
        if (i == 2) {
            ((com.igexin.push.extension.distribution.basic.b.a) this.f288a).g(true);
        } else if (i == 3) {
            ((com.igexin.push.extension.distribution.basic.b.a) this.f288a).h(true);
        } else if (i == 8) {
            ((com.igexin.push.extension.distribution.basic.b.a) this.f288a).c(true);
        }
        com.igexin.push.extension.distribution.basic.b.a aVar = (com.igexin.push.extension.distribution.basic.b.a) baseAction;
        if (aVar.y() && aVar.z() && aVar.l() && com.igexin.push.core.f.a(this.b, true) == 0) {
            com.igexin.push.core.a.f.a().a(this.b, this.c, AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
        }
    }

    @Override // com.igexin.push.extension.distribution.basic.f.g
    public void a(Exception exc) {
        if (((com.igexin.push.extension.distribution.basic.b.a) this.f288a).A() >= 3) {
            ((com.igexin.push.extension.distribution.basic.b.a) this.f288a).g(true);
        }
        if (((com.igexin.push.extension.distribution.basic.b.a) this.f288a).B() >= 3) {
            ((com.igexin.push.extension.distribution.basic.b.a) this.f288a).h(true);
        }
        if (((com.igexin.push.extension.distribution.basic.b.a) this.f288a).m() >= 3) {
            ((com.igexin.push.extension.distribution.basic.b.a) this.f288a).c(true);
        }
        if (!((com.igexin.push.extension.distribution.basic.b.a) this.f288a).y() || !((com.igexin.push.extension.distribution.basic.b.a) this.f288a).z() || !((com.igexin.push.extension.distribution.basic.b.a) this.f288a).l()) {
            this.f.a(this.d, this.b, this.c, this.f288a, this.e);
        } else if (com.igexin.push.core.f.a(this.b, true) == 0) {
            com.igexin.push.core.a.f.a().a(this.b, this.c, AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
        }
    }
}
