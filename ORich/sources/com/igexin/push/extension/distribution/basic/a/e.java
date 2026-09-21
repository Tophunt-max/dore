package com.igexin.push.extension.distribution.basic.a;

import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import io.dcloud.common.constant.AbsoluteConst;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e implements com.igexin.push.core.a.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f290a = "EXT-" + e.class.getName();

    private void a(String str) {
        if (com.igexin.push.extension.distribution.basic.c.g.t.a()) {
            try {
                com.igexin.b.a.c.b.a(f290a + "|del condition taskid = " + str);
                com.igexin.push.extension.distribution.basic.c.g.t.a("message", new String[]{"taskid"}, new String[]{str});
                com.igexin.push.extension.distribution.basic.c.g.t.close();
            } catch (Throwable th) {
                com.igexin.b.a.c.b.a(f290a + "|del condition" + th.toString());
            }
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public BaseAction a(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("do") || !jSONObject.has("actionid") || !jSONObject.has("taskid")) {
                return null;
            }
            com.igexin.push.extension.distribution.basic.b.d dVar = new com.igexin.push.extension.distribution.basic.b.d();
            dVar.setType("terminatetask");
            dVar.setActionId(jSONObject.getString("actionid"));
            dVar.setDoActionId(jSONObject.getString("do"));
            dVar.a(jSONObject.getString("taskid"));
            dVar.a(jSONObject.optBoolean(AbsoluteConst.INSTALL_OPTIONS_FORCE));
            return dVar;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction) {
        return com.igexin.push.core.c.success;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a9 A[PHI: r4 r7
      0x00a9: PHI (r4v2 boolean) = (r4v0 boolean), (r4v3 boolean) binds: [B:32:0x00ae, B:29:0x00a7] A[DONT_GENERATE, DONT_INLINE]
      0x00a9: PHI (r7v4 android.database.Cursor) = (r7v3 android.database.Cursor), (r7v5 android.database.Cursor) binds: [B:32:0x00ae, B:29:0x00a7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.igexin.push.core.a.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(com.igexin.push.core.bean.PushTaskBean r16, com.igexin.push.core.bean.BaseAction r17) {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.basic.a.e.b(com.igexin.push.core.bean.PushTaskBean, com.igexin.push.core.bean.BaseAction):boolean");
    }
}
