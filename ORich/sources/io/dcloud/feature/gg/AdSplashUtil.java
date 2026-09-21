package io.dcloud.feature.gg;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import com.igexin.assist.sdk.AssistPushConsts;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.adapter.util.AndroidResources;
import io.dcloud.common.adapter.util.DeviceInfo;
import io.dcloud.common.adapter.util.SP;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.feature.gg.dcloud.ADHandler;
import io.dcloud.g.e.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdSplashUtil {
    private static String DC_AD_TYPE_KEY = "dc_ad_type_key";
    static final float Main_View_Weight = 0.8f;
    public static final String SP_AD_LIST_TYPE = "ad_list_order";
    static String[] adTypes = {"adpid", "csj", "gdt"};
    public static final String showCountADReward = "_s_c_a_r";

    public static String da(String str, String str2) {
        JSONObject jSONObjectOptJSONObject;
        b bVar = SP.getsOrCreateBundle(ADHandler.AdTag);
        String strA = bVar.a("cgk") ? bVar.a("cgk", "") : bVar.a("uniad", "");
        if (TextUtils.isEmpty(strA)) {
            String metaValue = AndroidResources.getMetaValue(str);
            return (PdrUtil.isEmpty(metaValue) || !metaValue.contains("_")) ? metaValue : Arrays.binarySearch(adTypes, metaValue.substring(0, metaValue.indexOf("_"))) != -1 ? metaValue.substring(metaValue.indexOf("_") + 1) : metaValue;
        }
        try {
            JSONObject jSONObject = new JSONObject(strA);
            if (jSONObject.has("appid") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("appid")) != null && jSONObjectOptJSONObject.has(str2)) {
                return jSONObjectOptJSONObject.optString(str2);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONArray dah(String str) {
        JSONObject jSONObjectOptJSONObject;
        String str2 = SP.getsBundleData(ADHandler.AdTag, "uniad");
        if (!TextUtils.isEmpty(str2)) {
            try {
                JSONObject jSONObject = new JSONObject(str2);
                if (jSONObject.has("appid_h") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("appid_h")) != null && jSONObjectOptJSONObject.has(str)) {
                    return jSONObjectOptJSONObject.getJSONArray(str);
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static int dh(Context context) {
        return (int) (context.getResources().getDisplayMetrics().heightPixels * Main_View_Weight);
    }

    public static int dw(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static String getAL(Context context) {
        String str = SP.getsBundleData(context, ADHandler.AdTag, "al");
        if (PdrUtil.isEmpty(str)) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.length() == 0) {
                return "";
            }
            JSONObject jSONObject2 = new JSONObject();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String strOptString = jSONObject.optString(next);
                try {
                    if (PdrUtil.isEmpty(strOptString)) {
                        jSONObject2.put(next, 0);
                    } else if (context.getPackageManager().getLaunchIntentForPackage(strOptString) != null) {
                        jSONObject2.put(next, 1);
                    } else {
                        jSONObject2.put(next, 0);
                    }
                } catch (Exception unused) {
                }
            }
            return jSONObject2.length() > 0 ? jSONObject2.toString() : "";
        } catch (Exception unused2) {
            return "";
        }
    }

    public static List<String> getAdOrder() {
        ArrayList arrayList = new ArrayList(Arrays.asList(SP.getBundleData(ADHandler.AdTag, SP_AD_LIST_TYPE).split(",")));
        arrayList.remove("");
        return arrayList;
    }

    public static String getAdpId(IApp iApp, String str) {
        JSONObject jSONObjectOptJSONObject;
        String str2 = SP.getsBundleData(ADHandler.AdTag, "uniad");
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str2);
            if (jSONObject.has("adpids") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("adpids")) != null && jSONObjectOptJSONObject.has(str)) {
                return jSONObjectOptJSONObject.optString(str);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getAppKey(String str, String str2) {
        JSONObject jSONObjectOptJSONObject;
        String str3 = SP.getsBundleData(DeviceInfo.sApplicationContext, ADHandler.AdTag, "uniad");
        if (TextUtils.isEmpty(str3)) {
            String metaValue = AndroidResources.getMetaValue(str);
            return (PdrUtil.isEmpty(metaValue) || !metaValue.contains("_")) ? metaValue : Arrays.binarySearch(adTypes, metaValue.substring(0, metaValue.indexOf("_"))) != -1 ? metaValue.substring(metaValue.indexOf("_") + 1) : metaValue;
        }
        try {
            JSONObject jSONObject = new JSONObject(str3);
            if (jSONObject.has("appid") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("appid")) != null && jSONObjectOptJSONObject.has(str2)) {
                return jSONObjectOptJSONObject.optString(str2);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static String getAppKey2(String str, String str2) {
        JSONObject jSONObjectOptJSONObject;
        String str3 = SP.getsBundleData(DeviceInfo.sApplicationContext, ADHandler.AdTag, "uniad");
        if (TextUtils.isEmpty(str3)) {
            String metaValue = AndroidResources.getMetaValue(str);
            return (PdrUtil.isEmpty(metaValue) || !metaValue.contains("_")) ? metaValue : Arrays.binarySearch(adTypes, metaValue.substring(0, metaValue.indexOf("_"))) != -1 ? metaValue.substring(metaValue.indexOf("_") + 1) : metaValue;
        }
        try {
            JSONObject jSONObject = new JSONObject(str3);
            if (jSONObject.has("appKey") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("appKey")) != null && jSONObjectOptJSONObject.has(str2)) {
                return jSONObjectOptJSONObject.optString(str2);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static Drawable getApplicationIcon(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getApplicationIcon(packageManager.getApplicationInfo(context.getPackageName(), 0));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getApplicationName(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getPlashType() {
        SharedPreferences orCreateBundle = SP.getOrCreateBundle(DC_AD_TYPE_KEY);
        return orCreateBundle != null ? orCreateBundle.getString("type", "dcloud") : "dcloud";
    }

    public static String getSplashAdpId(String str, String str2) {
        JSONObject jSONObjectOptJSONObject;
        String str3 = SP.getsBundleData(ADHandler.AdTag, "uniad");
        if (!TextUtils.isEmpty(str3)) {
            try {
                JSONObject jSONObject = new JSONObject(str3);
                if (jSONObject.has("splash") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("splash")) != null && jSONObjectOptJSONObject.has(str)) {
                    return jSONObjectOptJSONObject.optString(str);
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        String metaValue = AndroidResources.getMetaValue(str2);
        if (!PdrUtil.isEmpty(metaValue) && metaValue.contains("_")) {
            if (Arrays.binarySearch(adTypes, metaValue.substring(0, metaValue.indexOf("_"))) != -1) {
                metaValue = metaValue.substring(metaValue.indexOf("_") + 1);
            }
        }
        return "UNIAD_FULL_SPLASH".equals(str2) ? Boolean.parseBoolean(metaValue) ? AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT : "0" : metaValue;
    }

    public static JSONObject getUniad() {
        String str = SP.getsBundleData(ADHandler.AdTag, "uniad");
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("adpids")) {
                return jSONObject.optJSONObject("adpids");
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String random(JSONObject jSONObject) {
        ArrayList<Range> arrayList = new ArrayList();
        Iterator<String> itKeys = jSONObject.keys();
        int iOptInt = 0;
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (jSONObject.length() <= 1) {
                return next;
            }
            double d = iOptInt;
            iOptInt += jSONObject.optInt(next);
            arrayList.add(new Range(d, iOptInt, next));
        }
        double dRandom = Math.random() * ((double) iOptInt);
        for (Range range : arrayList) {
            if (range.contains(dRandom)) {
                return range.getType();
            }
        }
        return "";
    }

    public static List<String> reorderList(List<String> list, String str, JSONObject jSONObject, JSONObject jSONObject2, boolean z) {
        ArrayList arrayList = new ArrayList();
        boolean z2 = true;
        if (jSONObject != null && jSONObject.length() > 0 && list.size() > 1) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!list.contains(next)) {
                    itKeys.remove();
                } else if (jSONObject.optInt(next) <= 0) {
                    itKeys.remove();
                }
            }
            while (jSONObject.length() > 0) {
                String strRandom = random(jSONObject);
                if (TextUtils.isEmpty(strRandom)) {
                    break;
                }
                arrayList.add(strRandom);
                jSONObject.remove(strRandom);
            }
            if (list.size() != arrayList.size()) {
                for (String str2 : list) {
                    if (!arrayList.contains(str2)) {
                        arrayList.add(str2);
                    }
                }
            }
            list = arrayList;
        }
        if (jSONObject2 != null && jSONObject2.length() > 0 && list.size() > 1) {
            JSONObject jSONObject3 = null;
            try {
                jSONObject3 = new JSONObject(SP.getBundleData(showCountADReward, str));
            } catch (Exception unused) {
            }
            int i = 0;
            while (jSONObject3 != null && z2 && i < list.size()) {
                String str3 = list.get(0);
                i++;
                int iOptInt = jSONObject2.optInt(str3);
                if (iOptInt > jSONObject3.optInt(str3) || iOptInt == 0) {
                    z2 = false;
                } else {
                    list.add(list.remove(0));
                }
            }
        }
        if (BaseInfo.checkTestOpenFile()) {
            Log.i("zl-reorder-list", String.valueOf(str) + "------" + list.toString());
        }
        return list;
    }

    public static void saveADShowCount(String str, String str2) {
        JSONObject jSONObject;
        SharedPreferences orCreateBundle = SP.getOrCreateBundle(showCountADReward);
        int iOptInt = 0;
        try {
            jSONObject = new JSONObject(SP.getBundleData(orCreateBundle, str));
            try {
                iOptInt = jSONObject.optInt(str2) + 1;
                jSONObject.put(str2, iOptInt);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            jSONObject = null;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(str2, iOptInt + 1);
            } catch (Exception unused3) {
            }
        }
        SP.setBundleData(orCreateBundle, str, jSONObject.toString());
    }

    public static void saveOperate(Context context, String str, HashMap<String, String> map) {
        try {
            SharedPreferences.Editor editorEdit = SP.getOrCreateBundle(context, ADHandler.AdTag).edit();
            for (String str2 : map.keySet()) {
                editorEdit.putString(str2, map.get(str2));
            }
            editorEdit.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void saveOperate(HashMap<String, String> map) {
        saveOperate(null, null, map);
    }
}
