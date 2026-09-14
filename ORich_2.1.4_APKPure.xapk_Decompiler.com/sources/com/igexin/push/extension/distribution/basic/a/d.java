package com.igexin.push.extension.distribution.basic.a;

import android.content.Intent;
import android.text.TextUtils;
import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d implements com.igexin.push.core.a.a.a {
    @Override // com.igexin.push.core.a.a.a
    public BaseAction a(JSONObject jSONObject) {
        try {
            if (!jSONObject.has("do") || !jSONObject.has("actionid") || !jSONObject.has("type") || !jSONObject.has("uri") || !jSONObject.has("do_failed")) {
                return null;
            }
            String string = jSONObject.getString("uri");
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            com.igexin.push.extension.distribution.basic.b.c cVar = new com.igexin.push.extension.distribution.basic.b.c();
            cVar.setType("startmyactivity");
            cVar.setActionId(jSONObject.getString("actionid"));
            cVar.setDoActionId(jSONObject.getString("do"));
            cVar.a(string);
            cVar.b(jSONObject.getString("do_failed"));
            return cVar;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction) {
        com.igexin.push.extension.distribution.basic.b.c cVar = (com.igexin.push.extension.distribution.basic.b.c) baseAction;
        try {
            Intent uri = Intent.parseUri(cVar.a(), 0);
            uri.setPackage(com.igexin.push.core.f.f.getPackageName());
            uri.addFlags(268435456);
            if (com.igexin.push.extension.distribution.basic.j.c.a(uri, com.igexin.push.core.f.f)) {
                return com.igexin.push.core.c.success;
            }
            com.igexin.b.a.c.b.a("EXT-StartMyActivity|execute failed, activity not exist");
            com.igexin.push.core.a.f.a().a(pushTaskBean.getId(), pushTaskBean.getMessageId(), cVar.b());
            return com.igexin.push.core.c.stop;
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("EXT-StartMyActivity|execute exception = " + th.toString());
            com.igexin.push.core.a.f.a().a(pushTaskBean.getId(), pushTaskBean.getMessageId(), cVar.b());
            return com.igexin.push.core.c.stop;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public boolean b(PushTaskBean pushTaskBean, BaseAction baseAction) {
        com.igexin.push.core.a.f fVarA;
        String id;
        String messageId;
        String strB;
        com.igexin.push.extension.distribution.basic.b.c cVar = (com.igexin.push.extension.distribution.basic.b.c) baseAction;
        try {
            Intent uri = Intent.parseUri(cVar.a(), 0);
            uri.setPackage(com.igexin.push.core.f.f.getPackageName());
            uri.addFlags(268435456);
            if (com.igexin.push.extension.distribution.basic.j.c.a(uri, com.igexin.push.core.f.f)) {
                com.igexin.push.core.f.f.startActivity(uri);
                fVarA = com.igexin.push.core.a.f.a();
                id = pushTaskBean.getTaskId();
                messageId = pushTaskBean.getMessageId();
                strB = cVar.getDoActionId();
            } else {
                com.igexin.b.a.c.b.a("EXT-StartMyActivity|execute failed, activity not exist");
                fVarA = com.igexin.push.core.a.f.a();
                id = pushTaskBean.getId();
                messageId = pushTaskBean.getMessageId();
                strB = cVar.b();
            }
            fVarA.a(id, messageId, strB);
            return true;
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("EXT-StartMyActivity|execute exception = " + th.getMessage());
            com.igexin.push.core.a.f.a().a(pushTaskBean.getId(), pushTaskBean.getMessageId(), cVar.b());
            return true;
        }
    }
}
