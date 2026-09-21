package com.igexin.push.core.a.a;

import android.content.Intent;
import android.text.TextUtils;
import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f141a = com.igexin.push.config.j.f135a;

    @Override // com.igexin.push.core.a.a.a
    public BaseAction a(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("do") || !jSONObject.has("actionid") || !jSONObject.has("type") || !jSONObject.has("uri") || !jSONObject.has("do_failed")) {
                return null;
            }
            String strOptString = jSONObject.optString("uri");
            if (TextUtils.isEmpty(strOptString)) {
                return null;
            }
            com.igexin.push.core.bean.l lVar = new com.igexin.push.core.bean.l();
            lVar.setType("startmyactivity");
            lVar.setActionId(jSONObject.getString("actionid"));
            lVar.setDoActionId(jSONObject.getString("do"));
            lVar.a(strOptString);
            lVar.b(jSONObject.optString("do_failed"));
            return lVar;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction) {
        com.igexin.push.core.bean.l lVar = (com.igexin.push.core.bean.l) baseAction;
        try {
            Intent uri = Intent.parseUri(lVar.a(), 0);
            uri.setPackage(com.igexin.push.core.f.f.getPackageName());
            uri.addFlags(268435456);
            if (com.igexin.push.util.a.c(uri, com.igexin.push.core.f.f)) {
                return com.igexin.push.core.c.success;
            }
            com.igexin.b.a.c.b.a(f141a + "|execute failed, activity not exist");
            com.igexin.push.core.a.f.a().a(pushTaskBean.getId(), pushTaskBean.getMessageId(), lVar.b());
            return com.igexin.push.core.c.stop;
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f141a + "|execute exception = " + th.toString());
            com.igexin.push.core.a.f.a().a(pushTaskBean.getId(), pushTaskBean.getMessageId(), lVar.b());
            return com.igexin.push.core.c.stop;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public boolean b(PushTaskBean pushTaskBean, BaseAction baseAction) {
        com.igexin.push.core.a.f fVarA;
        String id;
        String messageId;
        String strB;
        com.igexin.push.core.bean.l lVar = (com.igexin.push.core.bean.l) baseAction;
        try {
            Intent uri = Intent.parseUri(lVar.a(), 0);
            uri.setPackage(com.igexin.push.core.f.f.getPackageName());
            uri.addFlags(268435456);
            if (com.igexin.push.util.a.c(uri, com.igexin.push.core.f.f)) {
                com.igexin.push.core.f.f.startActivity(uri);
                fVarA = com.igexin.push.core.a.f.a();
                id = pushTaskBean.getTaskId();
                messageId = pushTaskBean.getMessageId();
                strB = lVar.getDoActionId();
            } else {
                com.igexin.b.a.c.b.a(f141a + "|execute failed, activity not exist");
                fVarA = com.igexin.push.core.a.f.a();
                id = pushTaskBean.getId();
                messageId = pushTaskBean.getMessageId();
                strB = lVar.b();
            }
            fVarA.a(id, messageId, strB);
            return true;
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f141a + "|execute exception = " + th.getMessage());
            com.igexin.push.core.a.f.a().a(pushTaskBean.getId(), pushTaskBean.getMessageId(), lVar.b());
            return true;
        }
    }
}
