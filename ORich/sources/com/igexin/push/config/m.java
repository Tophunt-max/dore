package com.igexin.push.config;

import io.dcloud.common.adapter.util.DeviceInfo;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class m {
    public static void a(String str, boolean z) {
        JSONObject jSONObject;
        String[] strArrA;
        String[] strArrA2;
        String[] strArrA3;
        String[] strArrA4;
        com.igexin.b.a.c.b.a("IDCConfigParse parse idc config data : " + str);
        try {
            jSONObject = new JSONObject(str);
        } catch (Exception unused) {
            jSONObject = null;
        }
        if (jSONObject == null) {
            return;
        }
        if (jSONObject.has("N")) {
            try {
                SDKUrlConfig.setLocation(jSONObject.getString("N"));
            } catch (JSONException unused2) {
            }
        }
        if (jSONObject.has("X1") && (strArrA4 = a(jSONObject, "X1")) != null && strArrA4.length > 0 && !Arrays.equals(strArrA4, SDKUrlConfig.getXfrAddress())) {
            SDKUrlConfig.setXfrAddressIps(strArrA4);
            if (z) {
                com.igexin.b.a.c.b.a("DT_IDCConfigParse xfr changed, reset and redetect ++++++");
                com.igexin.push.c.i.a().e();
            }
        }
        if (jSONObject.has("X2") && (strArrA3 = a(jSONObject, "X2")) != null && strArrA3.length > 0) {
            SDKUrlConfig.XFR_ADDRESS_BAK = strArrA3;
        }
        if (jSONObject.has("B") && (strArrA2 = a(jSONObject, "B")) != null && strArrA2.length > 0) {
            SDKUrlConfig.BI_ADDRESS_IPS = strArrA2;
        }
        if (!jSONObject.has("C") || (strArrA = a(jSONObject, "C")) == null || strArrA.length <= 0) {
            return;
        }
        SDKUrlConfig.CONFIG_ADDRESS_IPS = strArrA;
    }

    private static String[] a(JSONObject jSONObject, String str) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray(str);
            int length = jSONArray.length();
            String[] strArr = new String[length];
            for (int i = 0; i < length; i++) {
                if (str.equals("X1") || str.equals("X2")) {
                    strArr[i] = "socket://" + jSONArray.getString(i);
                } else {
                    strArr[i] = DeviceInfo.HTTPS_PROTOCOL + jSONArray.getString(i);
                }
            }
            return strArr;
        } catch (Exception unused) {
            return null;
        }
    }
}
