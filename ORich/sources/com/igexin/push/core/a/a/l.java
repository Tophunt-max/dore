package com.igexin.push.core.a.a;

import android.app.ActivityManager;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.push.util.p;
import com.igexin.push.util.t;
import com.igexin.sdk.PushConsts;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.util.CreateShortResultReceiver;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class l implements a {
    private static final String b = com.igexin.push.core.b.s;
    private static final String c = com.igexin.push.core.b.u;
    private static final String d = com.igexin.push.core.b.t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PackageManager f145a;

    private String a(String str) {
        int i;
        if (!t.a(com.igexin.push.core.f.f)) {
            return null;
        }
        try {
            List<PackageInfo> listA = p.a(com.igexin.push.core.f.f, 4);
            if (listA != null) {
                for (PackageInfo packageInfo : listA) {
                    if (str.equals(packageInfo.packageName)) {
                        ServiceInfo[] serviceInfoArr = packageInfo.services;
                        int length = serviceInfoArr.length;
                        while (i < length) {
                            ServiceInfo serviceInfo = serviceInfoArr[i];
                            i = (b.equals(serviceInfo.name) || d.equals(serviceInfo.name) || c.equals(serviceInfo.name)) ? 0 : i + 1;
                            return serviceInfo.name;
                        }
                    }
                }
            }
        } catch (Exception e) {
            com.igexin.b.a.c.b.a(e.toString());
        }
        return null;
    }

    private List<String> a(int i, String str) throws Throwable {
        String[] list;
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        FileInputStream fileInputStream;
        String strA;
        FileInputStream fileInputStream2 = null;
        if (!t.a(com.igexin.push.core.f.f)) {
            return null;
        }
        File file = new File("/sdcard/libs/");
        if (!file.exists() || (list = file.list()) == null) {
            return null;
        }
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < list.length; i2++) {
            if (list[i2].indexOf(".db") > 0 && !list[i2].equals("app.db") && !list[i2].equals("imsi.db") && !list[i2].equals("com.igexin.sdk.deviceId.db")) {
                try {
                    String strSubstring = list[i2].substring(0, list[i2].length() - 3);
                    byte[] bArr = new byte[1024];
                    fileInputStream = new FileInputStream(new File(file + Operators.DIV + list[i2]));
                    try {
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        while (true) {
                            try {
                                try {
                                    int i3 = fileInputStream.read(bArr);
                                    if (i3 == -1) {
                                        break;
                                    }
                                    byteArrayOutputStream.write(bArr, 0, i3);
                                } catch (Throwable th2) {
                                    th = th2;
                                    fileInputStream2 = fileInputStream;
                                    if (fileInputStream2 != null) {
                                        try {
                                            fileInputStream2.close();
                                        } catch (IOException e) {
                                            e.printStackTrace();
                                        }
                                    }
                                    if (byteArrayOutputStream == null) {
                                        throw th;
                                    }
                                    try {
                                        byteArrayOutputStream.close();
                                        throw th;
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                        throw th;
                                    }
                                }
                            } catch (Exception e3) {
                                e = e3;
                            }
                        }
                        String[] strArrSplit = new String(com.igexin.b.a.a.a.c(byteArrayOutputStream.toByteArray(), com.igexin.b.b.a.a(com.igexin.push.core.f.u == null ? "cantgetimei" : com.igexin.push.core.f.u))).split("\\|");
                        System.out.println("length=" + strArrSplit.length);
                        if (strArrSplit[0].startsWith(CreateShortResultReceiver.KEY_VERSIONNAME)) {
                            if (strArrSplit[0].contains("null")) {
                                strArrSplit[0] = strArrSplit[0].substring(7);
                            } else {
                                strArrSplit[0] = strArrSplit[0].substring(20);
                            }
                        }
                        if (strArrSplit.length > 2) {
                            strA = strArrSplit[2];
                            if (strA != null) {
                                if (strA.equals("null")) {
                                    strA = null;
                                }
                                com.igexin.b.a.c.b.a("WakeupAction get check form db file : " + strA);
                            }
                        } else {
                            strA = null;
                        }
                        if (strA == null) {
                            strA = com.igexin.b.b.a.a(strArrSplit[0]);
                            com.igexin.b.a.c.b.a("WakeupAction check cid form md5 session : " + strA);
                        }
                        if (i == 0) {
                            if (str.equals(strA)) {
                                ArrayList arrayList2 = new ArrayList();
                                try {
                                    arrayList2.add(strSubstring);
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e4) {
                                        e4.printStackTrace();
                                    }
                                    try {
                                        byteArrayOutputStream.close();
                                    } catch (IOException e5) {
                                        e5.printStackTrace();
                                    }
                                    return arrayList2;
                                } catch (Exception e6) {
                                    e = e6;
                                    arrayList = arrayList2;
                                    com.igexin.b.a.c.b.a("WakeupAction" + e.toString());
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (IOException e7) {
                                            e7.printStackTrace();
                                        }
                                    }
                                    if (byteArrayOutputStream != null) {
                                        try {
                                            byteArrayOutputStream.close();
                                        } catch (IOException e8) {
                                            e8.printStackTrace();
                                        }
                                    }
                                }
                            }
                        } else if (strArrSplit.length > 1) {
                            if (str.equals(strArrSplit[1])) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(strSubstring);
                            }
                            com.igexin.b.a.c.b.a("WakeupAction", "check from appid=" + strArrSplit[1]);
                        }
                        try {
                            fileInputStream.close();
                        } catch (IOException e9) {
                            e9.printStackTrace();
                        }
                        byteArrayOutputStream.close();
                    } catch (Exception e10) {
                        e = e10;
                        byteArrayOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        byteArrayOutputStream = null;
                    }
                } catch (Exception e11) {
                    e = e11;
                    byteArrayOutputStream = null;
                    fileInputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    byteArrayOutputStream = null;
                }
            }
        }
        if (arrayList != null && arrayList.size() == 1) {
            com.igexin.b.a.c.b.a("WakeupAction check finished, final pkg is  : " + arrayList.get(0));
        }
        return arrayList;
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
        b("30025", sb.toString(), str, str2, str3);
        com.igexin.b.a.c.b.a("feedback actionId=30025 result=" + sb.toString());
    }

    private void a(String str, boolean z, PushTaskBean pushTaskBean, BaseAction baseAction) {
        try {
            String strA = a(str);
            String messageId = pushTaskBean.getMessageId();
            String taskId = pushTaskBean.getTaskId();
            String strA2 = ((com.igexin.push.core.bean.p) baseAction).a();
            if (strA == null) {
                a(messageId, taskId, strA2, ((com.igexin.push.core.bean.p) baseAction).d() != null ? ((com.igexin.push.core.bean.p) baseAction).d() : "", ((com.igexin.push.core.bean.p) baseAction).c() != null ? ((com.igexin.push.core.bean.p) baseAction).c() : "");
                return;
            }
            Map<String, String> map = new HashMap<>();
            map.put("messageId", messageId);
            map.put("taskId", taskId);
            map.put("id", strA2);
            map.put("pkgName", str);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(com.igexin.push.core.f.f.getPackageName());
            stringBuffer.append("#");
            stringBuffer.append(b(str));
            stringBuffer.append("#");
            stringBuffer.append(str);
            stringBuffer.append(Operators.DIV);
            String str2 = b;
            if (strA.equals(str2)) {
                stringBuffer.append(str2);
                stringBuffer.append("#");
                if (!a(str, str2)) {
                    if (z) {
                        try {
                            Intent intent = new Intent();
                            intent.setClassName(str, strA);
                            intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_SERVICE_INITIALIZE_SLAVE);
                            intent.putExtra("op_app", com.igexin.push.core.f.e);
                            intent.putExtra("isSlave", true);
                            com.igexin.push.core.f.f.startService(intent);
                        } catch (Exception e) {
                            com.igexin.b.a.c.b.a(e.toString());
                            a(stringBuffer, messageId, taskId, strA2);
                            return;
                        }
                    } else if (!b(str, strA)) {
                        a(stringBuffer, messageId, taskId, strA2);
                        return;
                    }
                    map.put("serviceName", str2);
                    a(map);
                    stringBuffer.append(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
                }
                stringBuffer.append("0");
            } else {
                String str3 = d;
                if (strA.equals(str3)) {
                    stringBuffer.append(str3);
                    stringBuffer.append("#");
                    if (a(str, str3)) {
                        stringBuffer.append("0");
                    } else if (!b(str, strA)) {
                        a(stringBuffer, messageId, taskId, strA2);
                        return;
                    } else {
                        map.put("serviceName", str3);
                        a(map);
                        stringBuffer.append(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
                    }
                } else {
                    String str4 = c;
                    if (strA.equals(str4)) {
                        stringBuffer.append(str4);
                        stringBuffer.append("#");
                        if (a(str, str4)) {
                            stringBuffer.append("0");
                        } else if (!b(str, strA)) {
                            a(stringBuffer, messageId, taskId, strA2);
                            return;
                        } else {
                            map.put("serviceName", str4);
                            a(map);
                            stringBuffer.append(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
                        }
                    }
                }
            }
            b("30025", stringBuffer.toString(), messageId, taskId, strA2);
            com.igexin.b.a.c.b.a("feedback actionId=30025 result=" + stringBuffer.toString());
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("WakeupAction|" + th.toString());
        }
    }

    private void a(StringBuffer stringBuffer, String str, String str2, String str3) {
        stringBuffer.append("-1");
        b("30025", stringBuffer.toString(), str, str2, str3);
        com.igexin.b.a.c.b.a("feedback actionId=30025 result=" + stringBuffer.toString());
    }

    private void a(Map<String, String> map) {
        com.igexin.push.core.e.a().a(new m(this, 180000L, map));
    }

    public static boolean a(String str, String str2) {
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) com.igexin.push.core.f.f.getSystemService("activity")).getRunningServices(2000);
        if (runningServices.size() <= 0) {
            return false;
        }
        for (int i = 0; i < runningServices.size(); i++) {
            if (runningServices.get(i).service.getClassName().equals(str2) && runningServices.get(i).service.getPackageName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str) {
        try {
            PackageManager packageManager = com.igexin.push.core.f.f.getPackageManager();
            this.f145a = packageManager;
            Bundle bundle = packageManager.getApplicationInfo(str, 128).metaData;
            if (bundle == null) {
                return "";
            }
            for (String str2 : bundle.keySet()) {
                if (str2.equals(AssistPushConsts.GETUI_APPID)) {
                    return bundle.get(str2).toString();
                }
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
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

    private boolean b(String str, String str2) {
        try {
            Intent intent = new Intent();
            intent.setClassName(str, str2);
            com.igexin.push.core.f.f.startService(intent);
            return true;
        } catch (Exception e) {
            com.igexin.b.a.c.b.a("WakeupAction|" + e.toString());
            return false;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public BaseAction a(JSONObject jSONObject) {
        try {
            if (!com.igexin.push.config.k.o || !jSONObject.has("do") || !jSONObject.has("actionid") || !jSONObject.has("type")) {
                return null;
            }
            if (!jSONObject.has("pkgname") && !jSONObject.has("appid") && !jSONObject.has("cid")) {
                return null;
            }
            com.igexin.push.core.bean.p pVar = new com.igexin.push.core.bean.p();
            pVar.setType("wakeupsdk");
            pVar.setActionId(jSONObject.getString("actionid"));
            pVar.setDoActionId(jSONObject.getString("do"));
            if (jSONObject.has("pkgname")) {
                pVar.b(jSONObject.getString("pkgname"));
            } else if (jSONObject.has("cid")) {
                pVar.d(jSONObject.getString("cid"));
            } else if (jSONObject.has("appid")) {
                pVar.c(jSONObject.getString("appid"));
            }
            if (jSONObject.has("is_forcestart")) {
                pVar.a(jSONObject.getBoolean("is_forcestart"));
            }
            if (jSONObject.has("id")) {
                pVar.a(jSONObject.getString("id"));
            }
            return pVar;
        } catch (JSONException e) {
            com.igexin.b.a.c.b.a(e.toString());
            return null;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction) {
        String str;
        if (!com.igexin.push.util.a.c("service")) {
            str = "WakeupAction|sdk isBrandSdkRomGuardEnable = false";
        } else {
            if (com.igexin.push.config.k.W || !com.igexin.push.util.c.a() || Build.VERSION.SDK_INT < 24) {
                return com.igexin.push.core.c.success;
            }
            str = "WakeupAction|miui wakeup stop";
        }
        com.igexin.b.a.c.b.a(str);
        return com.igexin.push.core.c.stop;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a0  */
    @Override // com.igexin.push.core.a.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(com.igexin.push.core.bean.PushTaskBean r11, com.igexin.push.core.bean.BaseAction r12) throws java.lang.Throwable {
        /*
            r10 = this;
            r0 = 1
            if (r11 == 0) goto Lb3
            if (r12 == 0) goto Lb3
            r1 = r12
            com.igexin.push.core.bean.p r1 = (com.igexin.push.core.bean.p) r1
            java.lang.String r2 = r1.c()
            r3 = 0
            if (r2 != 0) goto L2e
            java.lang.String r4 = r1.e()
            if (r4 == 0) goto L2e
            java.lang.String r4 = r1.e()
            java.util.List r4 = r10.a(r3, r4)
            if (r4 == 0) goto L2c
            int r5 = r4.size()
            if (r5 != r0) goto L2c
            java.lang.Object r2 = r4.get(r3)
            java.lang.String r2 = (java.lang.String) r2
            goto L2e
        L2c:
            r4 = 0
            goto L2f
        L2e:
            r4 = 1
        L2f:
            if (r2 == 0) goto L39
            boolean r3 = r1.b()
            r10.a(r2, r3, r11, r12)
            goto L67
        L39:
            java.lang.String r2 = r1.d()
            if (r2 == 0) goto L67
            java.lang.String r2 = r1.d()
            java.util.List r2 = r10.a(r0, r2)
            if (r2 == 0) goto L68
            int r5 = r2.size()
            if (r5 <= 0) goto L68
            java.util.Iterator r2 = r2.iterator()
        L53:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L67
            java.lang.Object r3 = r2.next()
            java.lang.String r3 = (java.lang.String) r3
            boolean r5 = r1.b()
            r10.a(r3, r5, r11, r12)
            goto L53
        L67:
            r3 = r4
        L68:
            java.lang.String r2 = ""
            if (r3 != 0) goto L96
            java.lang.String r5 = r11.getMessageId()
            java.lang.String r6 = r11.getTaskId()
            java.lang.String r7 = r1.a()
            java.lang.String r3 = r1.d()
            if (r3 == 0) goto L84
            java.lang.String r3 = r1.d()
            r8 = r3
            goto L85
        L84:
            r8 = r2
        L85:
            java.lang.String r3 = r1.c()
            if (r3 == 0) goto L91
            java.lang.String r1 = r1.c()
            r9 = r1
            goto L92
        L91:
            r9 = r2
        L92:
            r4 = r10
            r4.a(r5, r6, r7, r8, r9)
        L96:
            java.lang.String r1 = r12.getDoActionId()
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto Lb3
            com.igexin.push.core.a.f r1 = com.igexin.push.core.a.f.a()
            java.lang.String r2 = r11.getTaskId()
            java.lang.String r11 = r11.getMessageId()
            java.lang.String r12 = r12.getDoActionId()
            r1.a(r2, r11, r12)
        Lb3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.core.a.a.l.b(com.igexin.push.core.bean.PushTaskBean, com.igexin.push.core.bean.BaseAction):boolean");
    }
}
