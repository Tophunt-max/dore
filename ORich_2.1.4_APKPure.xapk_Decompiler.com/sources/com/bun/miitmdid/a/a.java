package com.bun.miitmdid.a;

import android.content.Context;
import com.bun.miitmdid.a.c.c;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C0008a f10a = new C0008a(this);

    /* JADX INFO: renamed from: com.bun.miitmdid.a.a$a, reason: collision with other inner class name */
    public class C0008a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public com.bun.miitmdid.a.c.a f11a;
        public com.bun.miitmdid.a.c.b b;
        public c c;

        public C0008a(a aVar) {
        }
    }

    private a() {
    }

    public static native a a(Context context);

    private static native boolean a(a aVar, JSONObject jSONObject);

    private static native boolean b(a aVar, JSONObject jSONObject);

    private static native boolean c(a aVar, JSONObject jSONObject);

    @Override // com.bun.miitmdid.a.b
    public native String a();
}
