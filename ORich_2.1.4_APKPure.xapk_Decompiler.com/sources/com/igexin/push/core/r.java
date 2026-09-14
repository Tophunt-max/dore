package com.igexin.push.core;

import android.app.NotificationManager;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.push.extension.stub.IPushExtension;
import com.igexin.sdk.PushConsts;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.constant.AbsoluteConst;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static r f254a;
    private static Map<String, com.igexin.push.core.a.a.a> b;
    private static Set<String> c;

    private r() {
        c = new HashSet();
        b = new HashMap();
        c.add("goto");
        c.add("notification");
        c.add("terminatetask");
        c.add("startmyactivity");
        c.add("startapp");
        c.add("null");
        c.add("wakeupsdk");
        c.add("startweb");
        c.add("checkapp");
        c.add("enablelog");
        c.add("disablelog");
    }

    private com.igexin.push.core.a.a.a a(String str) {
        Map<String, com.igexin.push.core.a.a.a> map;
        com.igexin.push.core.a.a.a cVar;
        if (TextUtils.isEmpty(str) || !c.contains(str)) {
            return null;
        }
        if (!b.containsKey(str) || b.get(str) == null) {
            String str2 = "goto";
            if (str.equals("goto")) {
                map = b;
                cVar = new com.igexin.push.core.a.a.f();
            } else {
                str2 = "notification";
                if (str.equals("notification")) {
                    map = b;
                    cVar = new com.igexin.push.core.a.a.g();
                } else {
                    str2 = "terminatetask";
                    if (str.equals("terminatetask")) {
                        map = b;
                        cVar = new com.igexin.push.core.a.a.k();
                    } else {
                        str2 = "startmyactivity";
                        if (str.equals("startmyactivity")) {
                            map = b;
                            cVar = new com.igexin.push.core.a.a.h();
                        } else {
                            str2 = "startapp";
                            if (str.equals("startapp")) {
                                map = b;
                                cVar = new com.igexin.push.core.a.a.j();
                            } else {
                                str2 = "null";
                                if (str.equals("null")) {
                                    map = b;
                                    cVar = new com.igexin.push.core.a.a.e();
                                } else {
                                    str2 = "wakeupsdk";
                                    if (str.equals("wakeupsdk")) {
                                        map = b;
                                        cVar = new com.igexin.push.core.a.a.l();
                                    } else {
                                        str2 = "startweb";
                                        if (str.equals("startweb")) {
                                            map = b;
                                            cVar = new com.igexin.push.core.a.a.i();
                                        } else {
                                            str2 = "checkapp";
                                            if (str.equals("checkapp")) {
                                                map = b;
                                                cVar = new com.igexin.push.core.a.a.b();
                                            } else {
                                                str2 = "enablelog";
                                                if (str.equals("enablelog")) {
                                                    map = b;
                                                    cVar = new com.igexin.push.core.a.a.d();
                                                } else {
                                                    str2 = "disablelog";
                                                    if (str.equals("disablelog")) {
                                                        map = b;
                                                        cVar = new com.igexin.push.core.a.a.c();
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            map.put(str2, cVar);
        }
        return b.get(str);
    }

    public static r a() {
        if (f254a == null) {
            f254a = new r();
        }
        return f254a;
    }

    private void a(int i, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", Integer.valueOf(i));
        e.a().i().a("message", contentValues, new String[]{"taskid"}, new String[]{str});
    }

    private boolean a(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("condition");
            if (jSONObject2.has("wifi") || jSONObject2.has("screenOn") || jSONObject2.has("ssid") || jSONObject2.has("duration")) {
                return false;
            }
            return !jSONObject2.has("netConnected");
        } catch (Exception unused) {
            return true;
        }
    }

    private void b(JSONObject jSONObject, PushTaskBean pushTaskBean) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("condition");
            HashMap map = new HashMap();
            if (jSONObject2.has("wifi")) {
                map.put("wifi", jSONObject2.getString("wifi"));
            }
            if (jSONObject2.has("screenOn")) {
                map.put("screenOn", jSONObject2.getString("screenOn"));
            }
            if (jSONObject2.has("ssid")) {
                map.put("ssid", jSONObject2.getString("ssid"));
                if (jSONObject2.has("bssid")) {
                    map.put("bssid", jSONObject2.getString("bssid"));
                }
            }
            if (jSONObject2.has("duration")) {
                String string = jSONObject2.getString("duration");
                if (string.contains(Operators.SUB)) {
                    int iIndexOf = string.indexOf(Operators.SUB);
                    String strSubstring = string.substring(0, iIndexOf);
                    String strSubstring2 = string.substring(iIndexOf + 1, string.length());
                    map.put("startTime", strSubstring);
                    map.put("endTime", strSubstring2);
                }
            }
            if (jSONObject2.has("netConnected")) {
                map.put("netConnected", jSONObject2.getString("netConnected"));
            }
            if (jSONObject2.has("expiredTime")) {
                String string2 = jSONObject2.getString("expiredTime");
                if (!TextUtils.isEmpty(string2) && TextUtils.isDigitsOnly(string2)) {
                    map.put("expiredTime", string2);
                }
            }
            pushTaskBean.setConditionMap(map);
        } catch (Exception unused) {
        }
    }

    private boolean g() {
        if (f.ad.isEmpty() && f.n) {
            Cursor cursorA = null;
            try {
                cursorA = e.a().i().a("message", new String[]{"status"}, new String[]{"0"}, null, null);
                if (cursorA != null) {
                    while (cursorA.moveToNext()) {
                        byte[] blob = cursorA.getBlob(cursorA.getColumnIndex("msgextra"));
                        try {
                            JSONObject jSONObject = new JSONObject(new String(com.igexin.b.b.a.c(cursorA.getBlob(cursorA.getColumnIndex("info")))));
                            String string = jSONObject.getString("id");
                            String string2 = jSONObject.getString("appid");
                            String string3 = jSONObject.getString("messageid");
                            String string4 = jSONObject.getString("taskid");
                            String string5 = jSONObject.getString("appkey");
                            JSONArray jSONArray = jSONObject.getJSONArray("action_chains");
                            String strA = com.igexin.push.core.a.f.a().a(string4, string3);
                            PushTaskBean pushTaskBean = new PushTaskBean();
                            pushTaskBean.setAppid(string2);
                            pushTaskBean.setMessageId(string3);
                            pushTaskBean.setTaskId(string4);
                            pushTaskBean.setId(string);
                            pushTaskBean.setAppKey(string5);
                            pushTaskBean.setCurrentActionid(1);
                            pushTaskBean.setStatus(cursorA.getInt(cursorA.getColumnIndex("status")));
                            if (blob != null) {
                                pushTaskBean.setMsgExtra(blob);
                            }
                            if (jSONObject.has("cdnType")) {
                                pushTaskBean.setCDNType(jSONObject.getBoolean("cdnType"));
                            }
                            if (jSONObject.has("condition")) {
                                b(jSONObject, pushTaskBean);
                            }
                            if (jSONArray != null && jSONArray.length() > 0 && !a(jSONObject, pushTaskBean)) {
                                com.igexin.b.a.c.b.a("PushMessageExecutor|load task from db parseActionChains result = false ####### " + jSONObject.toString());
                            }
                            f.ad.put(strA, pushTaskBean);
                        } catch (JSONException unused) {
                        }
                    }
                }
                f.n = false;
            } catch (Throwable th) {
                try {
                    com.igexin.b.a.c.b.a("PushMessageExecutor|checkPushMessageMapValue error:" + th.toString());
                } finally {
                    if (cursorA != null) {
                        cursorA.close();
                    }
                }
            }
            if (cursorA != null) {
            }
        }
        return f.ad.isEmpty();
    }

    private void h() {
        try {
            List<ScanResult> scanResults = ((WifiManager) f.f.getSystemService("wifi")).getScanResults();
            f.ak.clear();
            if (scanResults == null || scanResults.isEmpty()) {
                return;
            }
            for (int i = 0; i < scanResults.size(); i++) {
                f.ak.put(scanResults.get(i).BSSID, scanResults.get(i).SSID);
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("PushMessageExecutor|" + th.toString());
        }
    }

    public void a(ContentValues contentValues) {
        try {
            if (f.aA >= 2000) {
                int iA = e.a().i().a("message", "id IN (SELECT id from message where status IS NULL or status=1 or status=2 order by id asc limit 500)");
                f.aA -= iA;
                if (iA < 500) {
                    f.aA -= e.a().i().a("message", "id IN (SELECT id from message where status=0 order by id asc limit " + (500 - iA) + Operators.BRACKET_END_STR);
                }
                if (!e.a().i().a("message", contentValues)) {
                    return;
                }
            } else if (!e.a().i().a("message", contentValues)) {
                return;
            }
            f.aA++;
        } catch (Throwable unused) {
        }
    }

    public void a(Intent intent) {
        String stringExtra = intent.getStringExtra("taskid");
        intent.getStringExtra("messageid");
        String stringExtra2 = intent.getStringExtra("appid");
        String stringExtra3 = intent.getStringExtra("pkgname");
        com.igexin.b.a.c.b.a("PushMessageExecutor do processActionExecuteBroadcast");
        if (f.e.equals(stringExtra3)) {
            com.igexin.b.a.c.b.a("PushMessageExecutor|discard own exec broadcast, taskid = " + stringExtra);
            return;
        }
        ContentValues contentValues = new ContentValues();
        String str = "EXEC_" + stringExtra;
        contentValues.put("taskid", stringExtra);
        contentValues.put("appid", stringExtra2);
        contentValues.put(IApp.ConfigProperty.CONFIG_KEY, str);
        contentValues.put("createtime", Long.valueOf(System.currentTimeMillis()));
        Cursor cursorA = null;
        try {
            cursorA = e.a().i().a("message", new String[]{IApp.ConfigProperty.CONFIG_KEY}, new String[]{str}, null, null);
            if (cursorA != null && cursorA.getCount() == 0) {
                a(contentValues);
            }
            if (cursorA == null) {
            }
        } catch (Throwable th) {
            try {
                com.igexin.b.a.c.b.a("PushMessageExecutor|" + th.toString());
            } finally {
                if (cursorA != null) {
                    cursorA.close();
                }
            }
        }
    }

    public void a(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("taskid", str);
        bundle.putString("messageid", str2);
        Message messageObtain = Message.obtain();
        messageObtain.what = b.i;
        messageObtain.obj = bundle;
        e.a().a(messageObtain);
    }

    public void a(String str, String str2, String str3, String str4) {
        com.igexin.b.a.c.b.a("PushMessageExecutor start broadcastExecute");
        if (f.f == null) {
            return;
        }
        Intent intent = new Intent("com.igexin.sdk.action.execute");
        intent.putExtra("taskid", str);
        intent.putExtra("messageid", str2);
        intent.putExtra("appid", f.f238a);
        intent.putExtra("pkgname", f.e);
        f.f.sendBroadcast(intent);
    }

    public boolean a(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        bundle.putString("taskid", str);
        bundle.putString("messageid", str2);
        bundle.putString("actionid", str3);
        Message messageObtain = Message.obtain();
        messageObtain.what = b.j;
        messageObtain.obj = bundle;
        return e.a().a(messageObtain);
    }

    public boolean a(JSONObject jSONObject, PushTaskBean pushTaskBean) {
        com.igexin.push.core.a.a.a aVarA;
        boolean z;
        com.igexin.b.a.c.b.a("PushMessageExecutor------parse pushmessage actionchain json start-------");
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("action_chains");
            for (int i = 0; i < jSONArray.length(); i++) {
                String string = ((JSONObject) jSONArray.get(i)).getString("type");
                if (string != null) {
                    Iterator<IPushExtension> it = com.igexin.push.extension.a.a().b().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        if (it.next().isActionSupported(string)) {
                            z = true;
                            break;
                        }
                    }
                    if (z) {
                        continue;
                    } else {
                        com.igexin.b.a.c.b.a("PushMessageExecutor|extension not suport type = " + string);
                        if (!c.contains(string)) {
                            return false;
                        }
                    }
                }
            }
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject2 = (JSONObject) jSONArray.get(i2);
                String string2 = jSONObject2.getString("type");
                if (string2 != null) {
                    BaseAction baseActionA = null;
                    Iterator<IPushExtension> it2 = com.igexin.push.extension.a.a().b().iterator();
                    while (it2.hasNext() && (baseActionA = it2.next().parseAction(jSONObject2)) == null) {
                    }
                    if (baseActionA == null && (aVarA = a(string2)) != null && (baseActionA = aVarA.a(jSONObject2)) != null) {
                        baseActionA.setSupportExt(false);
                    }
                    if (baseActionA == null) {
                        return false;
                    }
                    arrayList.add(baseActionA);
                }
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("PushMessageExecutor|" + th.toString());
        }
        pushTaskBean.setActionChains(arrayList);
        com.igexin.b.a.c.b.a("PushMessageExecutor------parse pushmessage actionchain json end-------");
        return true;
    }

    public boolean a(JSONObject jSONObject, byte[] bArr, boolean z) {
        r rVar;
        Integer numValueOf;
        try {
            if (!jSONObject.has(PushConsts.CMD_ACTION) || !jSONObject.getString(PushConsts.CMD_ACTION).equals("pushmessage")) {
                return true;
            }
            String string = jSONObject.getString("id");
            String string2 = jSONObject.getString("appid");
            String string3 = jSONObject.getString("messageid");
            String string4 = jSONObject.getString("taskid");
            String string5 = jSONObject.getString("appkey");
            JSONArray jSONArray = jSONObject.getJSONArray("action_chains");
            StringBuilder sb = new StringBuilder();
            try {
                sb.append("pushmessage|");
                sb.append(string4);
                sb.append("|");
                sb.append(string3);
                sb.append("|");
                sb.append(string2);
                sb.append("|");
                sb.append(z);
                com.igexin.b.a.c.b.a(sb.toString());
                try {
                    if (string2 == null || string == null || string3 == null || string4 == null || jSONArray == null || !string2.equals(f.f238a)) {
                        com.igexin.b.a.c.b.a("PushMessageExecutor receieve error pushmessage +++++++++++++++++++");
                        return true;
                    }
                    PushTaskBean pushTaskBean = new PushTaskBean();
                    pushTaskBean.setAppid(string2);
                    pushTaskBean.setMessageId(string3);
                    pushTaskBean.setTaskId(string4);
                    pushTaskBean.setId(string);
                    pushTaskBean.setAppKey(string5);
                    pushTaskBean.setCurrentActionid(1);
                    if (jSONObject.has("cdnType")) {
                        pushTaskBean.setCDNType(jSONObject.getBoolean("cdnType"));
                    }
                    String strA = com.igexin.push.core.a.f.a().a(string4, string3);
                    if (z) {
                        com.igexin.push.core.a.f.a().b(pushTaskBean, "0");
                        if (com.igexin.push.util.a.a(string4)) {
                            com.igexin.b.a.c.b.a("PushMessageExecutor|" + string4 + " in blacklist ###");
                            return true;
                        }
                        if (com.igexin.push.util.a.a(System.currentTimeMillis())) {
                            return true;
                        }
                        if (com.igexin.push.util.a.a(jSONObject)) {
                            com.igexin.b.a.c.b.a("PushMessageExecutor|message have loop");
                            return true;
                        }
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("messageid", string3);
                    contentValues.put("taskid", string4);
                    contentValues.put("appid", string2);
                    contentValues.put(IApp.ConfigProperty.CONFIG_KEY, "CACHE_" + strA);
                    contentValues.put("info", com.igexin.b.b.a.b(jSONObject.toString().getBytes()));
                    contentValues.put("createtime", Long.valueOf(System.currentTimeMillis()));
                    if (bArr != null) {
                        contentValues.put("msgextra", bArr);
                        pushTaskBean.setMsgExtra(bArr);
                    }
                    if (jSONArray.length() > 0) {
                        rVar = this;
                        if (!rVar.a(jSONObject, pushTaskBean)) {
                            com.igexin.b.a.c.b.a("PushMessageExecutor parseActionChains result = false #######");
                            return true;
                        }
                    } else {
                        rVar = this;
                    }
                    if (!z) {
                        if (jSONObject.has("condition")) {
                            rVar.b(jSONObject, pushTaskBean);
                        }
                        pushTaskBean.setStatus(b.q);
                        f.ad.put(strA, pushTaskBean);
                        return true;
                    }
                    Cursor cursorA = null;
                    try {
                        cursorA = e.a().i().a("message", new String[]{"taskid"}, new String[]{string4}, null, null);
                        if (cursorA != null) {
                            com.igexin.b.a.c.b.a("PushMessageExecutor|taskid = " + string4 + ", db cnt = " + cursorA.getCount());
                            if (cursorA.getCount() != 0) {
                                if (cursorA == null) {
                                    return true;
                                }
                                cursorA.close();
                                return true;
                            }
                            if (jSONObject.has("extra_actionid")) {
                                com.igexin.push.core.a.f.a().b(pushTaskBean, jSONObject.getString("extra_actionid"));
                            }
                            if (jSONObject.has("condition")) {
                                rVar.b(jSONObject, pushTaskBean);
                                pushTaskBean.setStatus(b.p);
                                numValueOf = Integer.valueOf(b.p);
                            } else {
                                pushTaskBean.setStatus(b.q);
                                numValueOf = Integer.valueOf(b.q);
                            }
                            contentValues.put("status", numValueOf);
                            rVar.a(contentValues);
                            f.ad.put(strA, pushTaskBean);
                            if (jSONObject.has("condition")) {
                                e();
                            } else {
                                rVar.a(string4, string3);
                                rVar.a(string4, string3, f.f238a, f.e);
                            }
                        }
                        if (cursorA == null) {
                            return true;
                        }
                    } catch (Exception unused) {
                        if (0 == 0) {
                            return true;
                        }
                    } catch (Throwable th) {
                        if (0 != 0) {
                            cursorA.close();
                        }
                        throw th;
                    }
                    cursorA.close();
                    return true;
                } catch (Exception e) {
                    e = e;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        com.igexin.b.a.c.b.a("PushMessageExecutor " + e.toString());
        return true;
    }

    public void b(Intent intent) {
        String stringExtra = intent.getStringExtra("taskid");
        String stringExtra2 = intent.getStringExtra("messageid");
        String stringExtra3 = intent.getStringExtra("actionid");
        String stringExtra4 = intent.getStringExtra("accesstoken");
        String stringExtra5 = intent.hasExtra(AbsoluteConst.JSON_KEY_TITLE) ? intent.getStringExtra(AbsoluteConst.JSON_KEY_TITLE) : "";
        String stringExtra6 = intent.hasExtra("content") ? intent.getStringExtra("content") : "";
        int intExtra = intent.getIntExtra("notifID", 0);
        NotificationManager notificationManager = (NotificationManager) f.f.getSystemService("notification");
        if (intExtra != 0) {
            notificationManager.cancel(intExtra);
        } else if (f.ae.get(stringExtra) != null) {
            intExtra = f.ae.get(stringExtra).intValue();
            notificationManager.cancel(intExtra);
        }
        if (stringExtra4.equals(f.ao)) {
            a.a().c(stringExtra, stringExtra2, stringExtra5, stringExtra6);
            b(stringExtra, stringExtra2, stringExtra3);
        }
    }

    public void b(String str, String str2) {
        com.igexin.b.a.c.b.a("PushMessageExecutor do processActionExecute");
        if (str2 == null || str == null) {
            return;
        }
        try {
            if (e.a() == null || c(str, str2) != c.success) {
                return;
            }
            a(str, str2, AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("PushMessageExecutor|" + th.toString());
        }
    }

    public boolean b() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (f.H <= 0) {
            f.H = jCurrentTimeMillis - 60000;
            return true;
        }
        if (jCurrentTimeMillis - f.H <= 60000) {
            return false;
        }
        f.H = jCurrentTimeMillis;
        return true;
    }

    public boolean b(String str, String str2, String str3) {
        String strA = com.igexin.push.core.a.f.a().a(str, str2);
        PushTaskBean pushTaskBean = f.ad.get(strA);
        if (pushTaskBean == null) {
            Cursor cursorA = null;
            try {
                cursorA = e.a().i().a("message", new String[]{"taskid", "messageid"}, new String[]{str, str2}, null, null);
            } catch (Throwable th) {
                try {
                    com.igexin.b.a.c.b.a("PushMessageExecutor|" + th.toString());
                    if (cursorA != null) {
                    }
                } finally {
                    if (cursorA != null) {
                        cursorA.close();
                    }
                }
            }
            if (cursorA != null && cursorA.getCount() > 0) {
                while (cursorA.moveToNext()) {
                    a().a(new JSONObject(new String(com.igexin.b.b.a.c(cursorA.getBlob(cursorA.getColumnIndexOrThrow("info"))))), cursorA.getBlob(cursorA.getColumnIndexOrThrow("msgextra")), false);
                    PushTaskBean pushTaskBean2 = f.ad.get(str + ":" + str2);
                    if (pushTaskBean2 == null) {
                        return false;
                    }
                    pushTaskBean = pushTaskBean2;
                }
                if (cursorA != null) {
                    cursorA.close();
                }
            }
            if (cursorA != null) {
                cursorA.close();
            }
            return false;
        }
        int executeTimes = pushTaskBean.getExecuteTimes();
        if (executeTimes >= 50) {
            try {
                f.ad.remove(strA);
            } catch (Exception e) {
                com.igexin.b.a.c.b.a("PushMessageExecutor|" + e.toString());
            }
            return true;
        }
        pushTaskBean.setExecuteTimes(executeTimes + 1);
        com.igexin.push.core.a.f.a().b(pushTaskBean, str3);
        try {
            BaseAction baseAction = pushTaskBean.getBaseAction(str3);
            if (baseAction == null) {
                return false;
            }
            if (baseAction.isSupportExt()) {
                Iterator<IPushExtension> it = com.igexin.push.extension.a.a().b().iterator();
                while (it.hasNext()) {
                    if (it.next().executeAction(pushTaskBean, baseAction)) {
                        return true;
                    }
                }
            }
            try {
                com.igexin.push.core.a.a.a aVarA = a(baseAction.getType());
                if (aVarA != null && !pushTaskBean.isStop()) {
                    return aVarA.b(pushTaskBean, baseAction);
                }
                return false;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        com.igexin.b.a.c.b.a("PushMessageExecutor|" + th.toString());
        return false;
    }

    public c c(String str, String str2) {
        c cVar = c.success;
        PushTaskBean pushTaskBean = f.ad.get(com.igexin.push.core.a.f.a().a(str, str2));
        if (pushTaskBean == null) {
            return c.stop;
        }
        int i = 0;
        for (BaseAction baseAction : pushTaskBean.getActionChains()) {
            c cVarA = c.stop;
            if (baseAction == null) {
                return cVarA;
            }
            Iterator<IPushExtension> it = com.igexin.push.extension.a.a().b().iterator();
            while (it.hasNext() && (cVarA = it.next().prepareExecuteAction(pushTaskBean, baseAction)) == c.stop) {
            }
            if (cVarA == c.stop) {
                com.igexin.push.core.a.a.a aVarA = a(baseAction.getType());
                if (aVarA == null) {
                    return cVarA;
                }
                cVarA = aVarA.a(pushTaskBean, baseAction);
                if (cVarA == c.stop) {
                    return cVarA;
                }
            }
            if (cVar == c.success) {
                cVar = cVarA;
            }
            if (cVarA == c.wait) {
                i++;
            }
        }
        return (i == 0 || f.a(str, Integer.valueOf(i), true)) ? cVar : c.success;
    }

    public void c() {
        long jCurrentTimeMillis = System.currentTimeMillis() - 604800000;
        e.a().i().a("message", "createtime <= " + jCurrentTimeMillis);
    }

    public void d() {
        try {
            if (!TextUtils.isEmpty(com.igexin.push.config.k.L) && !"none".equals(com.igexin.push.config.k.L)) {
                List<String> listAsList = Arrays.asList(com.igexin.push.config.k.L.split(","));
                if (listAsList.isEmpty()) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator<Map.Entry<String, PushTaskBean>> it = f.ad.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, PushTaskBean> next = it.next();
                    String key = next.getKey();
                    PushTaskBean value = next.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        for (String str : listAsList) {
                            if (!TextUtils.isEmpty(str) && key.startsWith(str)) {
                                arrayList.add(value.getTaskId());
                                it.remove();
                            }
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                String[] strArr = new String[arrayList.size()];
                for (int i = 0; i < arrayList.size(); i++) {
                    strArr[i] = (String) arrayList.get(i);
                }
                e.a().i().a("message", new String[]{"taskid"}, strArr);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00f7 A[Catch: Exception -> 0x0186, TryCatch #2 {Exception -> 0x0186, blocks: (B:36:0x00cd, B:42:0x00da, B:44:0x00e0, B:47:0x00f7, B:49:0x00fd, B:52:0x0111, B:54:0x0117, B:57:0x0126, B:60:0x0135, B:62:0x013b, B:65:0x0152, B:70:0x016d), top: B:89:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0111 A[Catch: Exception -> 0x0186, PHI: r13
      0x0111: PHI (r13v2 java.lang.String) = (r13v0 java.lang.String), (r13v6 java.lang.String) binds: [B:48:0x00fb, B:50:0x010d] A[DONT_GENERATE, DONT_INLINE], TryCatch #2 {Exception -> 0x0186, blocks: (B:36:0x00cd, B:42:0x00da, B:44:0x00e0, B:47:0x00f7, B:49:0x00fd, B:52:0x0111, B:54:0x0117, B:57:0x0126, B:60:0x0135, B:62:0x013b, B:65:0x0152, B:70:0x016d), top: B:89:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0135 A[Catch: Exception -> 0x0186, TryCatch #2 {Exception -> 0x0186, blocks: (B:36:0x00cd, B:42:0x00da, B:44:0x00e0, B:47:0x00f7, B:49:0x00fd, B:52:0x0111, B:54:0x0117, B:57:0x0126, B:60:0x0135, B:62:0x013b, B:65:0x0152, B:70:0x016d), top: B:89:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x016d A[Catch: Exception -> 0x0186, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x0186, blocks: (B:36:0x00cd, B:42:0x00da, B:44:0x00e0, B:47:0x00f7, B:49:0x00fd, B:52:0x0111, B:54:0x0117, B:57:0x0126, B:60:0x0135, B:62:0x013b, B:65:0x0152, B:70:0x016d), top: B:89:0x00cd }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void e() {
        /*
            Method dump skipped, instruction units count: 454
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.core.r.e():void");
    }

    public void f() {
        Cursor cursorA = null;
        try {
            com.igexin.push.b.b bVarI = e.a().i();
            cursorA = bVarI.a("message", new String[]{"status"}, new String[]{"0"}, null, null);
            if (cursorA != null) {
                while (cursorA.moveToNext()) {
                    byte[] blob = cursorA.getBlob(cursorA.getColumnIndex("info"));
                    long j = cursorA.getLong(cursorA.getColumnIndex("createtime"));
                    try {
                        JSONObject jSONObject = new JSONObject(new String(com.igexin.b.b.a.c(blob)));
                        String string = jSONObject.getString("taskid");
                        if (jSONObject.has("condition") && !a(jSONObject) && System.currentTimeMillis() - j > 259200000) {
                            com.igexin.b.a.c.b.a("PushMessageExecutor|del condition taskid = " + string);
                            bVarI.a("message", new String[]{"taskid"}, new String[]{string});
                        }
                    } catch (Throwable th) {
                        com.igexin.b.a.c.b.a("PushMessageExecutor|del condition" + th.toString());
                    }
                }
            }
            if (cursorA == null) {
            }
        } catch (Throwable th2) {
            try {
                com.igexin.b.a.c.b.a("PushMessageExecutor|del condition" + th2.toString());
            } finally {
                if (cursorA != null) {
                    cursorA.close();
                }
            }
        }
    }
}
