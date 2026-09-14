package com.igexin.push.extension.distribution.basic.a;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c implements com.igexin.push.core.a.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f289a = "EXT-" + c.class.getName();

    @Override // com.igexin.push.core.a.a.a
    public BaseAction a(JSONObject jSONObject) {
        try {
            if (jSONObject.has("do") && jSONObject.has("actionid") && jSONObject.has("type") && jSONObject.has("intent") && jSONObject.has("do_failed") && jSONObject.has("t")) {
                String string = jSONObject.getString("intent");
                String string2 = jSONObject.getString("t");
                String string3 = jSONObject.getString("do");
                String string4 = jSONObject.getString("do_failed");
                if ((!string2.equals("0") && !string2.equals(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT)) || string4.equals("") || string3.equals("0")) {
                    return null;
                }
                com.igexin.push.extension.distribution.basic.b.b bVar = new com.igexin.push.extension.distribution.basic.b.b();
                bVar.setType("startintent");
                bVar.setActionId(jSONObject.getString("actionid"));
                bVar.setDoActionId(jSONObject.getString("do"));
                bVar.b(string);
                bVar.a(string2);
                bVar.c(jSONObject.getString("do_failed"));
                return bVar;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @Override // com.igexin.push.core.a.a.a
    public com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction) {
        return com.igexin.push.core.c.success;
    }

    @Override // com.igexin.push.core.a.a.a
    public boolean b(PushTaskBean pushTaskBean, BaseAction baseAction) {
        com.igexin.push.core.a.f fVarA;
        String taskId;
        String messageId;
        String strC;
        com.igexin.push.extension.distribution.basic.b.b bVar = (com.igexin.push.extension.distribution.basic.b.b) baseAction;
        try {
            Intent uri = Intent.parseUri(bVar.b(), 0);
            try {
                if (bVar.a().equals("0")) {
                    uri.setFlags(268435456);
                    com.igexin.push.core.f.f.startActivity(uri);
                    fVarA = com.igexin.push.core.a.f.a();
                    taskId = pushTaskBean.getTaskId();
                    messageId = pushTaskBean.getMessageId();
                } else {
                    if (!bVar.a().equals(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT)) {
                        return true;
                    }
                    List<ResolveInfo> listQueryIntentServices = com.igexin.push.core.f.f.getPackageManager().queryIntentServices(uri, 0);
                    if (listQueryIntentServices == null || listQueryIntentServices.size() <= 0) {
                        com.igexin.b.a.c.b.a("StartIntentAction err intent=" + bVar.b() + " t=" + bVar.a());
                        fVarA = com.igexin.push.core.a.f.a();
                        taskId = pushTaskBean.getTaskId();
                        messageId = pushTaskBean.getMessageId();
                        strC = bVar.c();
                        fVarA.a(taskId, messageId, strC);
                        return true;
                    }
                    com.igexin.push.core.f.f.startService(uri);
                    fVarA = com.igexin.push.core.a.f.a();
                    taskId = pushTaskBean.getTaskId();
                    messageId = pushTaskBean.getMessageId();
                }
                strC = bVar.getDoActionId();
                fVarA.a(taskId, messageId, strC);
                return true;
            } catch (Exception unused) {
                com.igexin.b.a.c.b.a(f289a + "|executeAction err intent=" + bVar.b() + " t=" + bVar.a());
                com.igexin.push.core.a.f.a().a(pushTaskBean.getTaskId(), pushTaskBean.getMessageId(), bVar.c());
                return true;
            }
        } catch (Exception unused2) {
            return true;
        }
    }
}
