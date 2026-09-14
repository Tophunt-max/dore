package com.igexin.push.core.a.a;

import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.push.core.bean.n;
import io.dcloud.common.constant.AbsoluteConst;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class k implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f144a = com.igexin.push.config.j.f135a;

    private void a(String... strArr) {
        try {
            com.igexin.b.a.c.b.a(f144a + "|del condition taskid = " + strArr.toString());
            com.igexin.push.core.e.a().i().a("message", new String[]{"taskid"}, strArr);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f144a + "|del condition" + th.toString());
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public BaseAction a(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("do") || !jSONObject.has("actionid") || !jSONObject.has("taskid")) {
                return null;
            }
            n nVar = new n();
            nVar.setType("terminatetask");
            nVar.setActionId(jSONObject.getString("actionid"));
            nVar.setDoActionId(jSONObject.getString("do"));
            nVar.a(jSONObject.getString("taskid"));
            nVar.a(jSONObject.optBoolean(AbsoluteConst.INSTALL_OPTIONS_FORCE));
            return nVar;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction) {
        return com.igexin.push.core.c.success;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0098 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.igexin.push.core.a.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(com.igexin.push.core.bean.PushTaskBean r14, com.igexin.push.core.bean.BaseAction r15) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.core.a.a.k.b(com.igexin.push.core.bean.PushTaskBean, com.igexin.push.core.bean.BaseAction):boolean");
    }
}
