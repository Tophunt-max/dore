package com.igexin.sdk.a;

import android.content.Context;
import com.igexin.push.core.stub.PushCore;
import com.igexin.sdk.IPushCore;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f455a = "PushSdk";
    private static a c;
    private IPushCore b;

    private a() {
    }

    public static a a() {
        if (c == null) {
            c = new a();
        }
        return c;
    }

    public void a(IPushCore iPushCore) {
        this.b = iPushCore;
    }

    public boolean a(Context context) {
        try {
            a(new PushCore());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public IPushCore b() {
        return this.b;
    }
}
