package com.igexin.push.extension;

import android.content.Context;
import com.igexin.b.a.c.b;
import com.igexin.push.core.f;
import com.igexin.push.extension.stub.IPushExtension;
import com.igexin.push.util.t;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f283a = "com.igexin.push.extension.a";
    private static a c;
    private List<IPushExtension> b = new ArrayList();

    private a() {
    }

    public static a a() {
        if (c == null) {
            c = new a();
        }
        return c;
    }

    private void c() {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add("com.igexin.push.extension.distribution.basic.stub.PushExtension");
        if (t.a(f.f)) {
            b.a(f283a + "|pri_authorized = true");
            arrayList.add("com.igexin.push.extension.distribution.gbd.stub.PushExtension");
            arrayList.add("com.igexin.push.extension.distribution.gkt.stub.PushExtension");
        } else {
            b.a(f283a + "|pri_authorized = false");
        }
        for (String str : arrayList) {
            try {
                IPushExtension iPushExtension = (IPushExtension) Class.forName(str).newInstance();
                iPushExtension.init(f.f);
                this.b.add(iPushExtension);
                b.a("init " + str);
            } catch (Exception e) {
                b.a(f283a + e.toString());
            }
        }
    }

    public boolean a(Context context) {
        try {
            c();
            return true;
        } catch (Throwable th) {
            b.a(f283a + "|" + th.toString());
            return false;
        }
    }

    public List<IPushExtension> b() {
        return this.b;
    }
}
