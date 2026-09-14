package com.igexin.push.extension.distribution.basic.stub;

import android.content.Context;
import android.content.IntentFilter;
import android.util.DisplayMetrics;
import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.push.extension.distribution.basic.a.c;
import com.igexin.push.extension.distribution.basic.a.d;
import com.igexin.push.extension.distribution.basic.a.e;
import com.igexin.push.extension.distribution.basic.a.f;
import com.igexin.push.extension.distribution.basic.c.g;
import com.igexin.push.extension.distribution.basic.j.i;
import com.igexin.push.extension.stub.IPushExtension;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PushExtension implements IPushExtension {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Map<String, com.igexin.push.core.a.a.a> f320a;
    private static com.igexin.push.extension.distribution.basic.a.a.a b;

    public PushExtension() {
        HashMap map = new HashMap();
        f320a = map;
        map.put("notification", new com.igexin.push.extension.distribution.basic.a.a());
        f320a.put("terminatetask", new e());
        f320a.put("startintent", new c());
        f320a.put("startmyactivity", new d());
        f320a.put("wakeupsdk", new f());
    }

    @Override // com.igexin.push.extension.stub.IPushExtension
    public boolean executeAction(PushTaskBean pushTaskBean, BaseAction baseAction) {
        com.igexin.push.core.a.a.a aVar;
        if (pushTaskBean == null || baseAction == null || (aVar = f320a.get(baseAction.getType())) == null || pushTaskBean.isStop()) {
            return false;
        }
        return aVar.b(pushTaskBean, baseAction);
    }

    @Override // com.igexin.push.extension.stub.IPushExtension
    public boolean init(Context context) {
        com.igexin.b.a.c.b.a("EXT-PushExtension|ext init ###");
        if (context == null) {
            com.igexin.b.a.c.b.a("EXT-PushExtension|context = null");
            return false;
        }
        g.f304a = context;
        if (!i.a()) {
            g.s = context.getCacheDir() + "/ImgCache/";
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        if (i2 > i) {
            g.b = i2;
            g.c = i;
        } else {
            g.b = i;
            g.c = i2;
        }
        try {
            g.t = new com.igexin.push.extension.distribution.basic.e.b(context);
            com.igexin.push.extension.distribution.basic.c.d.a().e();
        } catch (Throwable unused) {
        }
        com.igexin.push.extension.distribution.basic.c.d.a().c();
        com.igexin.push.extension.distribution.basic.c.d.a().d();
        g.f = new com.igexin.push.extension.distribution.basic.e.a(context);
        com.igexin.push.extension.distribution.basic.d.b.a().b();
        if (g.d == null) {
            g.d = com.igexin.b.b.a.a(com.igexin.push.core.f.f.getPackageName() + System.currentTimeMillis());
            com.igexin.push.extension.distribution.basic.d.b.a().a(4, g.d);
        }
        if (com.igexin.push.core.f.l) {
            com.igexin.push.extension.distribution.basic.a.a.c.a().a(com.igexin.push.core.f.l);
        }
        com.igexin.push.extension.distribution.basic.a.a.a aVar = new com.igexin.push.extension.distribution.basic.a.a.a();
        b = aVar;
        context.registerReceiver(aVar, new IntentFilter("com.igexin.sdk.action." + com.igexin.push.core.f.f238a));
        if (System.currentTimeMillis() - g.g > 86400000) {
            com.igexin.b.a.c.b.a("EXT-PushExtension|init addTimerTask getConfigTask result = " + com.igexin.push.core.e.a().a(new a(this, 20000L)));
        }
        com.igexin.b.a.c.b.a("EXT-PushExtension|init addTimerTask result = " + com.igexin.push.core.e.a().a(new b(this, 180000L)));
        return true;
    }

    @Override // com.igexin.push.extension.stub.IPushExtension
    public boolean isActionSupported(String str) {
        return (str == null || f320a.get(str) == null) ? false : true;
    }

    @Override // com.igexin.push.extension.stub.IPushExtension
    public void onDestroy() {
        com.igexin.push.extension.distribution.basic.c.d.a().f();
        try {
            if (b == null || com.igexin.push.core.f.f == null) {
                return;
            }
            com.igexin.push.core.f.f.unregisterReceiver(b);
        } catch (Exception unused) {
        }
    }

    @Override // com.igexin.push.extension.stub.IPushExtension
    public BaseAction parseAction(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("type")) {
            return null;
        }
        try {
            com.igexin.push.core.a.a.a aVar = f320a.get(jSONObject.getString("type"));
            if (aVar != null) {
                return aVar.a(jSONObject);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.igexin.push.extension.stub.IPushExtension
    public com.igexin.push.core.c prepareExecuteAction(PushTaskBean pushTaskBean, BaseAction baseAction) {
        com.igexin.push.core.a.a.a aVar;
        return (pushTaskBean == null || baseAction == null || (aVar = f320a.get(baseAction.getType())) == null) ? com.igexin.push.core.c.stop : aVar.a(pushTaskBean, baseAction);
    }
}
