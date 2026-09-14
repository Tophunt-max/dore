package com.igexin.push.core.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import com.taobao.weex.WXEnvironment;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class j implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f143a = "com.igexin.push.core.a.a.j";

    private static void a(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(packageInfo.packageName);
            ResolveInfo next = context.getPackageManager().queryIntentActivities(intent, 0).iterator().next();
            if (next != null) {
                String str2 = next.activityInfo.packageName;
                String str3 = next.activityInfo.name;
                Intent intent2 = new Intent("android.intent.action.MAIN");
                intent2.addCategory("android.intent.category.LAUNCHER");
                intent2.setFlags(270532608);
                intent2.setComponent(new ComponentName(str2, str3));
                context.startActivity(intent2);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public BaseAction a(JSONObject jSONObject) {
        try {
            com.igexin.push.core.bean.k kVar = new com.igexin.push.core.bean.k();
            kVar.setType("startapp");
            kVar.setActionId(jSONObject.getString("actionid"));
            kVar.setDoActionId(jSONObject.getString("do"));
            if (jSONObject.has("appstartupid")) {
                kVar.a(jSONObject.getJSONObject("appstartupid").getString(WXEnvironment.OS));
            }
            if (jSONObject.has("is_autostart")) {
                kVar.d(jSONObject.getString("is_autostart"));
            }
            if (jSONObject.has("appid")) {
                kVar.b(jSONObject.getString("appid"));
            }
            if (jSONObject.has("noinstall_action")) {
                kVar.c(jSONObject.getString("noinstall_action"));
            }
            return kVar;
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction) {
        return com.igexin.push.core.c.success;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0048 A[Catch: Exception -> 0x00e1, TRY_ENTER, TryCatch #0 {Exception -> 0x00e1, blocks: (B:15:0x0048, B:17:0x0063, B:18:0x006a, B:20:0x0070, B:21:0x007c, B:22:0x0080, B:23:0x0084, B:25:0x009d, B:27:0x00a9, B:30:0x00b7, B:32:0x00bd, B:33:0x00ca, B:35:0x00d0), top: B:39:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0084 A[Catch: Exception -> 0x00e1, TryCatch #0 {Exception -> 0x00e1, blocks: (B:15:0x0048, B:17:0x0063, B:18:0x006a, B:20:0x0070, B:21:0x007c, B:22:0x0080, B:23:0x0084, B:25:0x009d, B:27:0x00a9, B:30:0x00b7, B:32:0x00bd, B:33:0x00ca, B:35:0x00d0), top: B:39:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b7 A[Catch: Exception -> 0x00e1, TryCatch #0 {Exception -> 0x00e1, blocks: (B:15:0x0048, B:17:0x0063, B:18:0x006a, B:20:0x0070, B:21:0x007c, B:22:0x0080, B:23:0x0084, B:25:0x009d, B:27:0x00a9, B:30:0x00b7, B:32:0x00bd, B:33:0x00ca, B:35:0x00d0), top: B:39:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ca A[Catch: Exception -> 0x00e1, TryCatch #0 {Exception -> 0x00e1, blocks: (B:15:0x0048, B:17:0x0063, B:18:0x006a, B:20:0x0070, B:21:0x007c, B:22:0x0080, B:23:0x0084, B:25:0x009d, B:27:0x00a9, B:30:0x00b7, B:32:0x00bd, B:33:0x00ca, B:35:0x00d0), top: B:39:0x0046 }] */
    @Override // com.igexin.push.core.a.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(com.igexin.push.core.bean.PushTaskBean r10, com.igexin.push.core.bean.BaseAction r11) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.core.a.a.j.b(com.igexin.push.core.bean.PushTaskBean, com.igexin.push.core.bean.BaseAction):boolean");
    }
}
