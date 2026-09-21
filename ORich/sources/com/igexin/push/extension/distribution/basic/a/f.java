package com.igexin.push.extension.distribution.basic.a;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.push.config.k;
import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.push.extension.distribution.basic.j.i;
import com.igexin.push.extension.distribution.basic.j.l;
import com.igexin.push.extension.distribution.basic.j.n;
import com.igexin.sdk.PushConsts;
import com.taobao.weex.el.parse.Operators;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f implements com.igexin.push.core.a.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f291a = "EXT-" + f.class.getName();
    private String b;
    private String c;
    private PackageManager d = null;

    private String a(String str) {
        String str2;
        List<PackageInfo> installedPackages;
        int i;
        try {
            byte[] bArrB = i.b("/sdcard/libs//" + str + ".bin");
            str2 = bArrB != null ? new String(n.b(bArrB)) : com.igexin.push.extension.distribution.basic.d.a.a().a(str);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f291a + "|" + th.toString());
        }
        if (str2 != null) {
            com.igexin.b.a.c.b.a(f291a + "|guardService name = " + str2);
            return str2;
        }
        if (com.igexin.push.extension.distribution.basic.d.c.a(com.igexin.push.core.f.f) && (installedPackages = com.igexin.push.core.f.f.getPackageManager().getInstalledPackages(4)) != null) {
            for (PackageInfo packageInfo : installedPackages) {
                if (str.equals(packageInfo.packageName)) {
                    ServiceInfo[] serviceInfoArr = packageInfo.services;
                    int length = serviceInfoArr.length;
                    while (i < length) {
                        ServiceInfo serviceInfo = serviceInfoArr[i];
                        i = ("com.igexin.sdk.PushService".equals(serviceInfo.name) || "com.igexin.sdk.coordinator.SdkMsgService".equals(serviceInfo.name) || "com.igexin.sdk.coordinator.GexinMsgService".equals(serviceInfo.name)) ? 0 : i + 1;
                        return serviceInfo.name;
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0133 A[Catch: Exception -> 0x0137, TRY_ENTER, TryCatch #5 {Exception -> 0x0137, blocks: (B:20:0x0052, B:70:0x0133, B:71:0x0136, B:57:0x0107), top: B:81:0x0052 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.List<java.lang.String> a(int r13, java.lang.String r14, java.lang.String r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 347
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.basic.a.f.a(int, java.lang.String, java.lang.String):java.util.List");
    }

    private void a(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        sb.append(com.igexin.push.core.f.f.getPackageName());
        sb.append("#");
        sb.append(str4);
        sb.append("#");
        sb.append(str5);
        sb.append("#");
        sb.append("-1");
        b(this.b, sb.toString(), str, str2, str3);
        com.igexin.b.a.c.b.a(f291a + "|feedback actionId=" + this.b + " result=" + sb.toString());
    }

    private void a(String str, boolean z, PushTaskBean pushTaskBean, BaseAction baseAction) {
        try {
            String strA = a(str);
            com.igexin.b.a.c.b.a(f291a + "|startSByPkgName Name = " + strA);
            String messageId = pushTaskBean.getMessageId();
            String taskId = pushTaskBean.getTaskId();
            String strA2 = ((com.igexin.push.extension.distribution.basic.b.e) baseAction).a();
            if (strA == null) {
                a(messageId, taskId, strA2, ((com.igexin.push.extension.distribution.basic.b.e) baseAction).d() != null ? ((com.igexin.push.extension.distribution.basic.b.e) baseAction).d() : "", ((com.igexin.push.extension.distribution.basic.b.e) baseAction).c() != null ? ((com.igexin.push.extension.distribution.basic.b.e) baseAction).c() : "");
                return;
            }
            HashMap map = new HashMap();
            map.put("messageId", messageId);
            map.put("taskId", taskId);
            map.put("id", strA2);
            map.put("pkgName", str);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(com.igexin.push.core.f.f.getPackageName());
            stringBuffer.append("#");
            stringBuffer.append(c(str));
            stringBuffer.append("#");
            stringBuffer.append(str);
            stringBuffer.append(Operators.DIV);
            if (strA.equals("com.igexin.sdk.PushService")) {
                stringBuffer.append("com.igexin.sdk.PushService");
                stringBuffer.append("#");
                if (!b(str, "com.igexin.sdk.PushService")) {
                    if (!a(str, strA, z)) {
                        a(stringBuffer, messageId, taskId, strA2);
                        return;
                    } else {
                        map.put("serviceName", "com.igexin.sdk.PushService");
                        a(map);
                        stringBuffer.append(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
                    }
                }
                stringBuffer.append("0");
            } else if (strA.equals("com.igexin.sdk.coordinator.SdkMsgService")) {
                stringBuffer.append("com.igexin.sdk.coordinator.SdkMsgService");
                stringBuffer.append("#");
                if (b(str, "com.igexin.sdk.coordinator.SdkMsgService")) {
                    stringBuffer.append("0");
                } else if (!a(str, strA, false)) {
                    a(stringBuffer, messageId, taskId, strA2);
                    return;
                } else {
                    map.put("serviceName", "com.igexin.sdk.coordinator.SdkMsgService");
                    a(map);
                    stringBuffer.append(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
                }
            } else if (strA.equals("com.igexin.sdk.coordinator.GexinMsgService")) {
                stringBuffer.append("com.igexin.sdk.coordinator.GexinMsgService");
                stringBuffer.append("#");
                if (b(str, "com.igexin.sdk.coordinator.GexinMsgService")) {
                    stringBuffer.append("0");
                } else if (!a(str, strA, false)) {
                    a(stringBuffer, messageId, taskId, strA2);
                    return;
                } else {
                    map.put("serviceName", "com.igexin.sdk.coordinator.GexinMsgService");
                    a(map);
                    stringBuffer.append(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
                }
            } else {
                stringBuffer.append(strA);
                stringBuffer.append("#");
                if (b(str, strA)) {
                    stringBuffer.append("0");
                } else if (!a(str, strA, z)) {
                    a(stringBuffer, messageId, taskId, strA2);
                    return;
                } else {
                    map.put("serviceName", strA);
                    a(map);
                    stringBuffer.append(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
                }
            }
            b(this.b, stringBuffer.toString(), messageId, taskId, strA2);
            com.igexin.b.a.c.b.a("feedback actionId=" + this.b + " result=" + stringBuffer.toString());
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f291a + "|" + th.toString());
        }
    }

    private void a(StringBuffer stringBuffer, String str, String str2, String str3) {
        stringBuffer.append("-1");
        b(this.b, stringBuffer.toString(), str, str2, str3);
        com.igexin.b.a.c.b.a("feedback actionId=" + this.b + " result=" + stringBuffer.toString());
    }

    private void a(Map<String, String> map) {
        com.igexin.push.core.e.a().a(new g(this, 40000L, map, this.c));
    }

    private boolean a() {
        StringBuilder sb = new StringBuilder();
        String str = f291a;
        sb.append(str);
        sb.append("|Check is activity guard available, Build.Version = ");
        sb.append(Build.VERSION.SDK_INT);
        com.igexin.b.a.c.b.a(sb.toString());
        if (!com.igexin.push.extension.distribution.basic.j.c.c()) {
            com.igexin.b.a.c.b.a(str + "| Check black list app = false, gEnable = true.");
            return true;
        }
        if (Build.VERSION.SDK_INT < 21) {
            try {
                List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) com.igexin.push.core.f.f.getSystemService("activity")).getRunningTasks(1);
                if (runningTasks == null || runningTasks.isEmpty()) {
                    return true;
                }
                ComponentName componentName = runningTasks.get(0).topActivity;
                if (componentName != null) {
                    boolean zD = com.igexin.push.extension.distribution.basic.j.c.d(componentName.getPackageName());
                    com.igexin.b.a.c.b.a(str + "|SDK < 21, top app = " + componentName.getPackageName() + ", isInBlackList = " + zD);
                    return !zD;
                }
            } catch (Exception e) {
                com.igexin.b.a.c.b.a(f291a + "|" + e.toString());
            }
        } else {
            try {
                List<String> listA = l.a();
                if (listA != null && !listA.isEmpty() && (listA.size() != 1 || !listA.get(0).equals(com.igexin.push.core.f.f.getPackageName()))) {
                    boolean zA = com.igexin.push.extension.distribution.basic.j.c.a(listA);
                    com.igexin.b.a.c.b.a(str + "| SDK >= 21, isInBlackList = " + zA);
                    return !zA;
                }
                com.igexin.b.a.c.b.a(str + "|SDK >= 21, recentList = null, guard = false");
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private boolean a(Intent intent) {
        if (intent == null) {
            return false;
        }
        try {
            List<ResolveInfo> listQueryIntentServices = com.igexin.push.core.f.f.getPackageManager().queryIntentServices(intent, 0);
            if (listQueryIntentServices != null) {
                return listQueryIntentServices.size() > 0;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(java.lang.String r4, java.lang.String r5, boolean r6) {
        /*
            r3 = this;
            boolean r0 = r3.b(r4)
            r1 = 0
            if (r0 == 0) goto L16
            java.lang.String r0 = r3.d(r4)
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L16
            boolean r0 = r3.b(r4, r0, r6)
            goto L17
        L16:
            r0 = 0
        L17:
            if (r0 != 0) goto L1f
            boolean r4 = r3.c(r4, r5, r6)
            if (r4 == 0) goto L20
        L1f:
            r1 = 1
        L20:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.basic.a.f.a(java.lang.String, java.lang.String, boolean):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, String str2, String str3, String str4, String str5) {
        PushTaskBean pushTaskBean = new PushTaskBean();
        pushTaskBean.setAppid(com.igexin.push.core.f.f238a);
        pushTaskBean.setMessageId(str3);
        pushTaskBean.setTaskId(str4);
        pushTaskBean.setId(str5);
        pushTaskBean.setAppKey(com.igexin.push.core.f.b);
        com.igexin.push.core.a.f.a().a(pushTaskBean, str, str2);
    }

    private boolean b(String str) {
        if (!com.igexin.push.extension.distribution.basic.c.g.j || com.igexin.push.extension.distribution.basic.j.c.c(str)) {
            return false;
        }
        com.igexin.push.core.a.f.a().h();
        if (com.igexin.push.core.f.q == 0) {
            return true;
        }
        return a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(String str, String str2) {
        boolean z = false;
        try {
            List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) com.igexin.push.core.f.f.getSystemService("activity")).getRunningServices(2000);
            if (!runningServices.isEmpty()) {
                int i = 0;
                while (true) {
                    if (i < runningServices.size()) {
                        if (runningServices.get(i).service.getClassName().equals(str2) && runningServices.get(i).service.getPackageName().equals(str)) {
                            z = true;
                            break;
                        }
                        i++;
                    } else {
                        break;
                    }
                }
            } else {
                return false;
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f291a + "|" + th.toString());
        }
        com.igexin.b.a.c.b.a(f291a + "|isServiceRunning pkgName = " + str + ", serviceName = " + str2 + "isRunning = " + z);
        return z;
    }

    private boolean b(String str, String str2, boolean z) {
        try {
            this.b = "30022";
            this.c = "30023";
            Intent intent = new Intent();
            intent.setClassName(str, str2);
            if (z) {
                intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_SERVICE_INITIALIZE_SLAVE);
                intent.putExtra("op_app", com.igexin.push.core.f.e);
                intent.putExtra("isSlave", true);
            }
            intent.setFlags(268435456);
            com.igexin.push.core.f.f.startActivity(intent);
            com.igexin.b.a.c.b.a(f291a + "|pkg = " + str + ", guardActivity success");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c(String str) {
        try {
            PackageManager packageManager = com.igexin.push.core.f.f.getPackageManager();
            this.d = packageManager;
            Bundle bundle = packageManager.getApplicationInfo(str, 128).metaData;
            if (bundle == null) {
                return "";
            }
            for (String str2 : bundle.keySet()) {
                if (str2.equals(AssistPushConsts.GETUI_APPID) || str2.equals("appid")) {
                    return bundle.get(str2).toString();
                }
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    private boolean c(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                Intent intent = new Intent();
                intent.setClassName(str, str2);
                if (com.igexin.push.core.f.f.getPackageManager().resolveActivity(intent, 0) != null) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private boolean c(String str, String str2, boolean z) {
        try {
            this.b = "30020";
            this.c = "30021";
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Intent intent = new Intent();
            intent.setClassName(str, str2);
            if (!a(intent)) {
                return false;
            }
            if (z) {
                intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_SERVICE_INITIALIZE_SLAVE);
                intent.putExtra("op_app", com.igexin.push.core.f.e);
                intent.putExtra("isSlave", true);
            }
            com.igexin.push.core.f.f.startService(intent);
            com.igexin.b.a.c.b.a(f291a + "|pkg = " + str + ", guardService success");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private String d(String str) {
        try {
            String strC = i.c(str);
            if (TextUtils.isEmpty(strC)) {
                strC = "com.igexin.sdk.GActivity";
            }
            if (c(str, strC)) {
                com.igexin.b.a.c.b.a(f291a + "|guarddynamic p-a " + str + "  " + strC);
                return strC;
            }
        } catch (Throwable unused) {
        }
        com.igexin.b.a.c.b.a(f291a + "|guarddynamic p-a " + str + "  check = false");
        return null;
    }

    @Override // com.igexin.push.core.a.a.a
    public BaseAction a(JSONObject jSONObject) {
        try {
            if (!k.o || !jSONObject.has("do") || !jSONObject.has("actionid") || !jSONObject.has("type")) {
                return null;
            }
            if (!jSONObject.has("pkgname") && !jSONObject.has("appid") && !jSONObject.has("cid")) {
                return null;
            }
            com.igexin.push.extension.distribution.basic.b.e eVar = new com.igexin.push.extension.distribution.basic.b.e();
            eVar.setType("wakeupsdk");
            eVar.setActionId(jSONObject.getString("actionid"));
            eVar.setDoActionId(jSONObject.getString("do"));
            if (jSONObject.has("pkgname")) {
                eVar.b(jSONObject.getString("pkgname"));
            } else if (jSONObject.has("cid")) {
                eVar.d(jSONObject.getString("cid"));
            } else if (jSONObject.has("appid")) {
                eVar.c(jSONObject.getString("appid"));
            }
            if (jSONObject.has("is_forcestart")) {
                eVar.a(jSONObject.getBoolean("is_forcestart"));
            }
            if (jSONObject.has("id")) {
                eVar.a(jSONObject.getString("id"));
            }
            return eVar;
        } catch (Exception e) {
            com.igexin.b.a.c.b.a(f291a + "|" + e.toString());
            return null;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction) {
        if (com.igexin.push.extension.distribution.basic.c.g.u || !com.igexin.push.extension.distribution.basic.j.g.a() || Build.VERSION.SDK_INT < 24) {
            return com.igexin.push.core.c.success;
        }
        com.igexin.b.a.c.b.a(f291a + "|ext miui wakeup stop");
        return com.igexin.push.core.c.stop;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f5  */
    @Override // com.igexin.push.core.a.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(com.igexin.push.core.bean.PushTaskBean r13, com.igexin.push.core.bean.BaseAction r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.basic.a.f.b(com.igexin.push.core.bean.PushTaskBean, com.igexin.push.core.bean.BaseAction):boolean");
    }
}
