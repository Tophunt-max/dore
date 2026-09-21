package com.igexin.push.extension.mod;

import android.util.Log;
import com.igexin.a.f;
import com.igexin.b.a.c.b;
import com.igexin.sdk.PushConsts;

/* JADX INFO: loaded from: classes.dex */
final class a implements f {
    a() {
    }

    @Override // com.igexin.a.f
    public void a() {
        b.a(SecurityUtils.f420a + "|load so by new success ^_^");
        SecurityUtils.b = true;
        SecurityUtils.c = "";
    }

    @Override // com.igexin.a.f
    public void a(Throwable th) {
        Log.e(PushConsts.KEY_CLIENT_ID, "load2 so error = " + th.getMessage());
        b.a(SecurityUtils.f420a + "|load so by new error = " + th.getMessage());
        SecurityUtils.b = false;
        SecurityUtils.c += th.toString() + " + " + th.getMessage();
    }
}
