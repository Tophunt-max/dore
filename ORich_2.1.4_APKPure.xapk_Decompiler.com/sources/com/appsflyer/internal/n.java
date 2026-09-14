package com.appsflyer.internal;

import android.content.Context;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class n {
    public final Context values;

    public n() {
    }

    public static JSONObject AFKeystoreWrapper(Map<String, ?> map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), AFInAppEventParameterName(entry.getValue()));
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    private static Object AFInAppEventParameterName(Object obj) {
        if (obj == null) {
            return JSONObject.NULL;
        }
        if ((obj instanceof JSONArray) || (obj instanceof JSONObject) || obj.equals(JSONObject.NULL)) {
            return obj;
        }
        try {
            if (obj instanceof Collection) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    jSONArray.put(AFInAppEventParameterName(it.next()));
                }
                return jSONArray;
            }
            if (obj.getClass().isArray()) {
                int length = Array.getLength(obj);
                JSONArray jSONArray2 = new JSONArray();
                for (int i = 0; i < length; i++) {
                    jSONArray2.put(AFInAppEventParameterName(Array.get(obj, i)));
                }
                return jSONArray2;
            }
            if (obj instanceof Map) {
                return AFKeystoreWrapper((Map<String, ?>) obj);
            }
            return ((obj instanceof Boolean) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Double) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof String)) ? obj : obj.toString();
        } catch (Exception unused) {
            return JSONObject.NULL;
        }
    }

    public static Map<String, Object> valueOf(JSONObject jSONObject) throws JSONException {
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objValueOf = jSONObject.get(next);
            if (objValueOf instanceof JSONArray) {
                objValueOf = AFKeystoreWrapper((JSONArray) objValueOf);
            } else if (objValueOf instanceof JSONObject) {
                objValueOf = valueOf((JSONObject) objValueOf);
            }
            map.put(next, objValueOf);
        }
        return map;
    }

    private static List<Object> AFKeystoreWrapper(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object objValueOf = jSONArray.get(i);
            if (objValueOf instanceof JSONArray) {
                objValueOf = AFKeystoreWrapper((JSONArray) objValueOf);
            } else if (objValueOf instanceof JSONObject) {
                objValueOf = valueOf((JSONObject) objValueOf);
            }
            arrayList.add(objValueOf);
        }
        return arrayList;
    }

    public n(Context context) {
        this.values = context.getApplicationContext();
    }
}
