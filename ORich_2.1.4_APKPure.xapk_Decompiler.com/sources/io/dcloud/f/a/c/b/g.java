package io.dcloud.f.a.c.b;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.taobao.weex.common.WXConfig;
import com.taobao.weex.ui.component.WXComponent;
import com.taobao.weex.utils.tools.TimeCalculator;
import java.lang.reflect.Method;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f624a = "0";
    private static String b = "1";
    private static String c = "3";
    private static String d = "4";
    private static String e = "5";
    private static String f = "6";
    private static String g = "7";

    public static JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device", b(context));
            jSONObject.put("net", d(context));
            jSONObject.put("gps", c(context));
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static JSONObject b(Context context) {
        String str = "";
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", 1);
            jSONObject.put(WXConfig.os, TimeCalculator.PLATFORM_ANDROID);
            jSONObject.put("osv", Build.VERSION.RELEASE);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("model", Build.MODEL);
            jSONObject.put(WXComponent.PROP_FS_WRAP_CONTENT, context.getResources().getDisplayMetrics().widthPixels);
            jSONObject.put("h", context.getResources().getDisplayMetrics().heightPixels);
            jSONObject.put("ip", d.a(context));
            jSONObject.put("mac", "");
            jSONObject.put("dpi", context.getResources().getDisplayMetrics().densityDpi);
            jSONObject.put("density", context.getResources().getDisplayMetrics().density);
            jSONObject.put("lan", Locale.getDefault().getLanguage());
            jSONObject.put("country", Locale.getDefault().getCountry());
            String[] strArrD = c.d(context);
            jSONObject.put("imei", (strArrD == null || strArrD.length <= 0) ? "" : TextUtils.join(",", strArrD));
            jSONObject.put("oaid", e.a().c(context));
            String strA = c.a(context);
            if (TextUtils.isEmpty(strA)) {
                strA = "";
            }
            jSONObject.put("aid", strA);
            String strC = c.c(context);
            if (!TextUtils.isEmpty(strC)) {
                str = strC;
            }
            jSONObject.put("imsi", str);
            jSONObject.put("ua", f(context));
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static JSONObject c(Context context) {
        Class<?> cls;
        JSONObject jSONObject = new JSONObject();
        LocationManager locationManager = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        if (locationManager != null) {
            try {
                Method declaredMethod = locationManager.getClass().getDeclaredMethod("getLastKnownLocation", String.class);
                declaredMethod.setAccessible(true);
                Location location = (Location) declaredMethod.invoke(locationManager, "gps");
                if (location == null && (location = (Location) declaredMethod.invoke(locationManager, "network")) == null) {
                    location = (Location) declaredMethod.invoke(locationManager, "passive");
                }
                if (location != null && (cls = Class.forName("android.location.Location")) != null) {
                    Method method = cls.getMethod("getLongitude", new Class[0]);
                    Method method2 = cls.getMethod("getLatitude", new Class[0]);
                    Method method3 = cls.getMethod("getAccuracy", new Class[0]);
                    Method method4 = cls.getMethod("getTime", new Class[0]);
                    method.setAccessible(true);
                    jSONObject.put("lon", String.valueOf(method.invoke(location, new Object[0])));
                    method2.setAccessible(true);
                    jSONObject.put("lat", String.valueOf(method2.invoke(location, new Object[0])));
                    method3.setAccessible(true);
                    jSONObject.put("accuracy", String.valueOf(method3.invoke(location, new Object[0])));
                    method4.setAccessible(true);
                    jSONObject.put("ts", String.valueOf(method4.invoke(location, new Object[0])));
                }
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    public static JSONObject d(Context context) {
        int i;
        int i2;
        String strSubstring;
        int i3;
        TelephonyManager telephonyManager;
        int baseStationId;
        GsmCellLocation gsmCellLocation;
        int lac;
        String str = "10";
        JSONObject jSONObject = new JSONObject();
        String strSubstring2 = "460";
        int i4 = 0;
        try {
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String networkOperator = telephonyManager.getNetworkOperator();
            try {
                telephonyManager.getSimSerialNumber();
            } catch (Exception unused) {
            }
            i2 = 3;
            if (TextUtils.isEmpty(networkOperator) || networkOperator.length() != 5) {
                strSubstring = "10";
            } else {
                strSubstring2 = networkOperator.substring(0, 3);
                strSubstring = networkOperator.substring(3);
            }
        } catch (Exception unused2) {
        }
        if (TextUtils.isEmpty(strSubstring) || strSubstring.equals("10")) {
            i3 = 0;
            i = 0;
        } else {
            if ("03".equals(strSubstring) || "05".equals(strSubstring)) {
                CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) telephonyManager.getCellLocation();
                int networkId = cdmaCellLocation.getNetworkId();
                try {
                    baseStationId = cdmaCellLocation.getBaseStationId();
                } catch (Exception unused3) {
                    i4 = networkId;
                    str = strSubstring;
                    i = 0;
                    i2 = 0;
                }
                try {
                    int i5 = baseStationId / 16;
                    i3 = networkId;
                    i = i5;
                    i4 = 2;
                } catch (Exception unused4) {
                    i4 = networkId;
                    i2 = 0;
                    i = baseStationId;
                    str = strSubstring;
                    strSubstring = str;
                    i3 = i4;
                    i4 = i2;
                }
            } else {
                if (!"01".equals(strSubstring) && !"06".equals(strSubstring)) {
                    i2 = ("00".equals(strSubstring) || "02".equals(strSubstring) || "07".equals(strSubstring)) ? 1 : 4;
                }
                try {
                    gsmCellLocation = (GsmCellLocation) telephonyManager.getCellLocation();
                    lac = gsmCellLocation.getLac();
                } catch (Exception unused5) {
                }
                try {
                    int cid = gsmCellLocation.getCid();
                    i3 = lac;
                    i = cid;
                } catch (Exception unused6) {
                    i4 = lac;
                    str = strSubstring;
                    i = 0;
                    strSubstring = str;
                    i3 = i4;
                }
                i4 = i2;
            }
            strSubstring = str;
            i3 = i4;
            i4 = i2;
        }
        try {
            jSONObject.put("type", e(context));
            jSONObject.put("mcc", strSubstring2);
            jSONObject.put("mnc", strSubstring);
            jSONObject.put("carrier", i4);
            jSONObject.put("cid", i);
            jSONObject.put("lac", i3);
        } catch (Exception unused7) {
        }
        return jSONObject;
    }

    public static String e(Context context) {
        String str = b;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || connectivityManager.getActiveNetworkInfo() == null) {
            return str;
        }
        String str2 = f624a;
        if (connectivityManager.getActiveNetworkInfo().getType() == 1) {
            return c;
        }
        if (connectivityManager.getActiveNetworkInfo().getType() != 0) {
            return str2;
        }
        int subtype = connectivityManager.getActiveNetworkInfo().getSubtype();
        switch (subtype) {
            case 1:
            case 2:
            case 4:
            case 7:
                return d;
            case 3:
            case 8:
                return e;
            case 5:
            case 6:
            case 12:
            case 14:
                return e;
            case 9:
            case 10:
            case 11:
            case 13:
            case 15:
                return f;
            case 16:
            case 19:
            default:
                return "" + subtype;
            case 17:
            case 18:
                return e;
            case 20:
                return g;
        }
    }

    public static String f(Context context) {
        String strA = io.dcloud.f.a.d.e.a(context, "dcloud-ads", "u-a");
        if (!TextUtils.isEmpty(strA)) {
            return strA;
        }
        WebView webView = new WebView(context);
        WebSettings settings = webView.getSettings();
        settings.setSavePassword(false);
        String userAgentString = settings.getUserAgentString();
        webView.destroy();
        io.dcloud.f.a.d.e.a(context, "dcloud-ads", "u-a", userAgentString);
        return userAgentString;
    }
}
