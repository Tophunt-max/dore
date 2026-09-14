package com.igexin.push.core.a;

import com.igexin.push.config.SDKUrlConfig;
import com.igexin.push.util.EncryptUtils;
import com.igexin.sdk.PushConsts;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.adapter.util.DeviceInfo;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class s extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f158a = com.igexin.push.config.j.f135a + "_RedirectServerAction";

    private void a(String str, JSONArray jSONArray) {
        try {
            com.igexin.b.a.c.b.a(f158a + "|start fetch idc config, url : " + str);
            com.igexin.b.a.b.c.b().a(new com.igexin.push.g.a.e(new com.igexin.push.core.d.e(str, jSONArray)), false, true);
        } catch (Exception e) {
            com.igexin.b.a.c.b.a(f158a + e.toString());
        }
    }

    public static String[] a(JSONArray jSONArray) {
        String[] strArr = null;
        try {
            strArr = new String[jSONArray.length()];
            for (int i = 0; i < jSONArray.length(); i++) {
                strArr[i] = DeviceInfo.HTTPS_PROTOCOL + jSONArray.getString(i);
            }
        } catch (Exception e) {
            com.igexin.b.a.c.b.a(f158a + "|parseIDCConfigURL exception" + e.toString());
        }
        return strArr;
    }

    @Override // com.igexin.push.core.a.b
    public boolean a(Object obj, JSONObject jSONObject) {
        String str;
        com.igexin.b.a.c.b.a(f158a + "|redirect server resp data : " + jSONObject);
        try {
            if (!jSONObject.has(PushConsts.CMD_ACTION) || !jSONObject.getString(PushConsts.CMD_ACTION).equals("redirect_server")) {
                return true;
            }
            long j = 0;
            long jOptLong = jSONObject.optLong(IApp.ConfigProperty.CONFIG_DELAY, 0L) * 1000;
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("address_list");
            com.igexin.b.a.c.b.a("redirect|" + jOptLong + "|" + jSONArray.toString());
            int i = 0;
            while (i < jSONArray.length()) {
                String string = jSONArray.getString(i);
                int iIndexOf = string.indexOf(44);
                if (iIndexOf > 0) {
                    String strSubstring = string.substring(0, iIndexOf);
                    String strSubstring2 = string.substring(iIndexOf + 1);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    try {
                        long j2 = Long.parseLong(strSubstring2);
                        com.igexin.push.c.e eVar = new com.igexin.push.c.e();
                        eVar.f113a = "socket://" + strSubstring;
                        Long.signum(j2);
                        eVar.b = jCurrentTimeMillis + (j2 * 1000);
                        arrayList.add(eVar);
                    } catch (NumberFormatException unused) {
                    }
                }
                i++;
                j = 0;
            }
            if (jOptLong >= j) {
                com.igexin.push.core.f.D = jOptLong;
            }
            if (jSONObject.has("loc") && jSONObject.has("conf")) {
                try {
                    SDKUrlConfig.setLocation(jSONObject.getString("loc"));
                    StringBuilder sb = new StringBuilder();
                    String str2 = f158a;
                    sb.append(str2);
                    sb.append(" set group id : ");
                    sb.append(com.igexin.push.core.f.d);
                    com.igexin.b.a.c.b.a(sb.toString());
                    JSONArray jSONArray2 = jSONObject.getJSONArray("conf");
                    String[] strArrA = a(jSONArray2);
                    if (strArrA != null && strArrA.length > 1) {
                        String[] idcConfigUrl = SDKUrlConfig.getIdcConfigUrl();
                        if (idcConfigUrl != null && (idcConfigUrl.length <= 1 || strArrA[1].equals(idcConfigUrl[1]))) {
                            str = str2 + "|current idc config url == new idc config url, return";
                        } else if (com.igexin.push.core.f.aq != 0 && System.currentTimeMillis() - com.igexin.push.core.f.aq <= 7200000) {
                            str = str2 + "|get idc cfg last time less than 2 hours return";
                        } else {
                            String str3 = strArrA[1];
                            a(str3, jSONArray2);
                        }
                        com.igexin.b.a.c.b.a(str);
                    }
                } catch (Exception e) {
                    com.igexin.b.a.c.b.a(f158a + e.toString());
                }
            }
            com.igexin.push.c.i.a().d().a(arrayList);
            if (!EncryptUtils.isLoadSuccess()) {
                return true;
            }
            com.igexin.b.a.c.b.a(f158a + "|redirect reInit so ~~~~~");
            EncryptUtils.reset();
            return true;
        } catch (Exception e2) {
            com.igexin.b.a.c.b.a(f158a + e2.toString());
            return true;
        }
    }
}
