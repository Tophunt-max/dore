package com.bun.miitmdid.b;

import com.bun.miitmdid.b.b;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, String> f17a = new HashMap();

    class a implements b.InterfaceC0009b {
        a(c cVar) {
        }

        @Override // com.bun.miitmdid.b.b.InterfaceC0009b
        public native void a(Exception exc, int i, String str);
    }

    private native Map<String, String> a();

    public native boolean a(boolean z, String str, String str2, String str3, String str4);
}
