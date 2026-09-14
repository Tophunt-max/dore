package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.view.WindowManager;
import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import com.appsflyer.AFKeystoreWrapper;
import com.appsflyer.AFLogger;
import com.appsflyer.AFVersionDeclaration;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerInAppPurchaseValidatorListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.attribution.RequestError;
import com.appsflyer.deeplink.DeepLinkListener;
import com.appsflyer.deeplink.DeepLinkResult;
import com.appsflyer.internal.ae;
import com.appsflyer.internal.as;
import com.appsflyer.internal.b;
import com.appsflyer.internal.bm;
import com.appsflyer.internal.cj;
import com.appsflyer.internal.o;
import com.appsflyer.internal.u;
import com.appsflyer.internal.y;
import com.facebook.common.callercontext.ContextChain;
import com.google.android.gms.common.GoogleApiAvailability;
import com.igexin.sdk.PushConsts;
import com.taobao.weex.common.RenderTypes;
import com.taobao.weex.common.WXConfig;
import com.taobao.weex.el.parse.Operators;
import com.taobao.weex.utils.tools.TimeCalculator;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.JSUtil;
import io.dcloud.common.util.net.NetWork;
import io.dcloud.feature.gg.dcloud.ADSim;
import io.dcloud.feature.uniapp.adapter.AbsURIAdapter;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.HttpURLConnection;
import java.net.NetworkInterface;
import java.net.URI;
import java.net.URL;
import java.security.KeyStoreException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class ag extends AppsFlyerLib {
    public static AppsFlyerConversionListener AFInAppEventParameterName = null;
    static final String AFInAppEventType = "130";
    static AppsFlyerInAppPurchaseValidatorListener AFKeystoreWrapper = null;
    private static ag onAppOpenAttribution = null;
    private static String onAttributionFailure = null;
    private static String onConversionDataFail = null;
    private static String onConversionDataSuccess = null;
    private static String onDeepLinking = null;
    private static String onDeepLinkingNative = "https://%sstats.%s/stats";
    private static final String onInstallConversionDataLoadedNative;
    private static String onInstallConversionFailureNative = null;
    public static final String valueOf = "6.4";
    public static final String values;
    public au AFLogger$LogLevel;
    public cj[] AFVersionDeclaration;
    long AppsFlyer2dXConversionCallback;
    private boolean enableLocationCollection;
    private String getInstance;
    String getLevel;
    private Map<String, Object> getOutOfStore;
    private long getSdkVersion;
    String init;
    final be onAppOpenAttributionNative;
    public o onAttributionFailureNative;
    private Map<Long, String> onPause;
    private String sendPushNotificationData;
    private ch setAppInviteOneLink;
    private Map<String, Object> setCustomerUserId;
    private boolean setImeiData;
    private bb setOutOfStore;
    private Application setPhoneNumber;
    private SharedPreferences setUserEmails;
    private long stop;
    private long AppsFlyerInAppPurchaseValidatorListener = -1;
    private long onValidateInApp = -1;
    private long AppsFlyerConversionListener = TimeUnit.SECONDS.toMillis(5);
    private boolean onValidateInAppFailure = false;
    private ScheduledExecutorService AppsFlyerLib = null;
    private boolean updateServerUninstallToken = false;
    private final an setOaidData = new an();
    private boolean setAndroidIdData = false;
    private boolean setDebugLog = false;
    private boolean setCustomerIdAndLogSession = false;
    private boolean waitForCustomerUserId = false;
    private final Executor setAdditionalData = Executors.newSingleThreadExecutor();

    static /* synthetic */ ScheduledExecutorService init(ag agVar) {
        agVar.AppsFlyerLib = null;
        return null;
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("6.4");
        sb.append("/androidevent?buildnumber=6.4.2&app_id=");
        values = sb.toString();
        StringBuilder sb2 = new StringBuilder("https://%sadrevenue.%s/api/v");
        sb2.append("6.4");
        sb2.append("/android?buildnumber=6.4.2&app_id=");
        onInstallConversionFailureNative = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("6.4");
        sb3.append("/androidevent?app_id=");
        String string = sb3.toString();
        onInstallConversionDataLoadedNative = string;
        StringBuilder sb4 = new StringBuilder("https://%sconversions.%s/api/v");
        sb4.append(string);
        onConversionDataFail = sb4.toString();
        StringBuilder sb5 = new StringBuilder("https://%slaunches.%s/api/v");
        sb5.append(string);
        onAttributionFailure = sb5.toString();
        StringBuilder sb6 = new StringBuilder("https://%sinapps.%s/api/v");
        sb6.append(string);
        onConversionDataSuccess = sb6.toString();
        StringBuilder sb7 = new StringBuilder("https://%sattr.%s/api/v");
        sb7.append(string);
        onDeepLinking = sb7.toString();
        AFKeystoreWrapper = null;
        AFInAppEventParameterName = null;
        onAppOpenAttribution = new ag();
    }

    public ag() {
        AFVersionDeclaration.init();
        this.onAppOpenAttributionNative = new be();
    }

    public static ag AFInAppEventType() {
        return onAppOpenAttribution;
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void performOnAppAttribution(Context context, URI uri) {
        if (uri == null || uri.toString().isEmpty()) {
            StringBuilder sb = new StringBuilder("Link is \"");
            sb.append(uri);
            sb.append(JSUtil.QUOTE);
            aq.valueOf(sb.toString(), DeepLinkResult.Error.NETWORK);
            return;
        }
        if (context == null) {
            StringBuilder sb2 = new StringBuilder("Context is \"");
            sb2.append(context);
            sb2.append(JSUtil.QUOTE);
            aq.valueOf(sb2.toString(), DeepLinkResult.Error.NETWORK);
            return;
        }
        j.AFInAppEventType().values(context, new HashMap(), Uri.parse(uri.toString()));
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void setSharingFilter(String... strArr) {
        setSharingFilterForPartners(strArr);
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void setSharingFilterForAllPartners() {
        setSharingFilterForPartners("all");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setSharingFilterForPartners(String... strArr) {
        this.onAttributionFailureNative = new o(strArr);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void appendParametersToDeepLinkingURL(String str, Map<String, String> map) {
        j jVarAFInAppEventType = j.AFInAppEventType();
        jVarAFInAppEventType.AppsFlyer2dXConversionCallback = str;
        jVarAFInAppEventType.AFVersionDeclaration = map;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void subscribeForDeepLink(DeepLinkListener deepLinkListener) {
        subscribeForDeepLink(deepLinkListener, TimeUnit.SECONDS.toMillis(3L));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void subscribeForDeepLink(DeepLinkListener deepLinkListener, long j) {
        j.AFInAppEventType().AFKeystoreWrapper = deepLinkListener;
        ao.onDeepLinkingNative = j;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void performOnDeepLinking(final Intent intent, Context context) {
        if (intent == null) {
            aq.valueOf("performOnDeepLinking was called with null intent", DeepLinkResult.Error.DEVELOPER_ERROR);
        } else if (context == null) {
            aq.valueOf("performOnDeepLinking was called with null context", DeepLinkResult.Error.DEVELOPER_ERROR);
        } else {
            final Context applicationContext = context.getApplicationContext();
            this.setAdditionalData.execute(new Runnable() { // from class: com.appsflyer.internal.ag.5
                @Override // java.lang.Runnable
                public final void run() {
                    j.AFInAppEventType();
                    Intent intent2 = intent;
                    Context context2 = applicationContext;
                    ag agVar = ag.this;
                    if (agVar.AFLogger$LogLevel == null) {
                        agVar.AFLogger$LogLevel = new au(context2);
                    }
                    au auVar = agVar.AFLogger$LogLevel;
                    Uri uriAFKeystoreWrapper = j.AFKeystoreWrapper(intent2);
                    boolean z = (uriAFKeystoreWrapper == null || uriAFKeystoreWrapper.toString().isEmpty()) ? false : true;
                    if (ag.AFKeystoreWrapper(context2).getBoolean("ddl_sent", false) && !z) {
                        aq.valueOf("No direct deep link", null);
                    } else {
                        j.AFInAppEventType().values(new HashMap(), auVar, intent2, context2);
                    }
                }
            });
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void addPushNotificationDeepLinkPath(String... strArr) {
        List<String> listAsList = Arrays.asList(strArr);
        List<List<String>> list = j.AFInAppEventType().getLevel;
        if (list.contains(listAsList)) {
            return;
        }
        list.add(listAsList);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPartnerData(String str, Map<String, Object> map) {
        if (this.setOutOfStore == null) {
            this.setOutOfStore = new bb();
        }
        bb bbVar = this.setOutOfStore;
        if (str == null || str.isEmpty()) {
            AFLogger.init("Partner ID is missing or `null`");
            return;
        }
        if (map == null || map.isEmpty()) {
            AFLogger.init(bbVar.values.remove(str) == null ? "Partner data is missing or `null`" : "Cleared partner data for ".concat(String.valueOf(str)));
            return;
        }
        StringBuilder sb = new StringBuilder("Setting partner data for ");
        sb.append(str);
        sb.append(": ");
        sb.append(map);
        AFLogger.AFInAppEventType(sb.toString());
        int length = new JSONObject(map).toString().length();
        if (length > 1000) {
            AFLogger.init("Partner data 1000 characters limit exceeded");
            HashMap map2 = new HashMap();
            map2.put("error", "limit exceeded: ".concat(String.valueOf(length)));
            bbVar.valueOf.put(str, map2);
            return;
        }
        bbVar.values.put(str, map);
        bbVar.valueOf.remove(str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDisableAdvertisingIdentifiers(boolean z) {
        AFLogger.AFInAppEventType("setDisableAdvertisingIdentifiers: ".concat(String.valueOf(z)));
        z.AFInAppEventType = Boolean.valueOf(!z);
        AppsFlyerProperties.getInstance().remove("advertiserIdEnabled");
        AppsFlyerProperties.getInstance().remove("advertiserId");
    }

    public final void AFInAppEventType(Context context, Intent intent) {
        if (intent.getStringExtra("appsflyer_preinstall") != null) {
            String stringExtra = intent.getStringExtra("appsflyer_preinstall");
            try {
                if (!new JSONObject(stringExtra).has(PushConsts.KEY_SERVICE_PIT)) {
                    AFLogger.init("Cannot set preinstall attribution data without a media source");
                } else {
                    AppsFlyerProperties.getInstance().set("preInstallName", stringExtra);
                }
            } catch (JSONException e2) {
                AFLogger.valueOf("Error parsing JSON for preinstall", e2);
            }
        }
        AFLogger.AFKeystoreWrapper("****** onReceive called *******");
        AppsFlyerProperties.getInstance();
        String stringExtra2 = intent.getStringExtra("referrer");
        AFLogger.AFKeystoreWrapper("Play store referrer: ".concat(String.valueOf(stringExtra2)));
        if (stringExtra2 != null) {
            SharedPreferences.Editor editorEdit = AFKeystoreWrapper(context).edit();
            editorEdit.putString("referrer", stringExtra2);
            editorEdit.apply();
            AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
            appsFlyerProperties.set("AF_REFERRER", stringExtra2);
            appsFlyerProperties.valueOf = stringExtra2;
            if (AppsFlyerProperties.getInstance().AFKeystoreWrapper()) {
                AFLogger.AFKeystoreWrapper("onReceive: isLaunchCalled");
                bx bxVar = new bx();
                if (context != null) {
                    bxVar.values = (Application) context.getApplicationContext();
                }
                bxVar.getLevel = stringExtra2;
                if (stringExtra2 == null || stringExtra2.length() <= 5 || !AFInAppEventParameterName(bxVar, AFKeystoreWrapper(context))) {
                    return;
                }
                if (l.AFKeystoreWrapper == null) {
                    l.AFKeystoreWrapper = new l();
                }
                AFInAppEventType(l.AFKeystoreWrapper.AFInAppEventType(), new e(this, bxVar, (byte) 0), 5L, TimeUnit.MILLISECONDS);
            }
        }
    }

    private static void valueOf(JSONObject jSONObject) {
        String str;
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = jSONObject.keys();
        while (true) {
            if (!itKeys.hasNext()) {
                break;
            }
            try {
                JSONArray jSONArray = new JSONArray((String) jSONObject.get(itKeys.next()));
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(Long.valueOf(jSONArray.getLong(i)));
                }
            } catch (JSONException unused) {
            }
        }
        Collections.sort(arrayList);
        Iterator<String> itKeys2 = jSONObject.keys();
        loop2: while (true) {
            str = null;
            while (itKeys2.hasNext() && str == null) {
                String next = itKeys2.next();
                try {
                    JSONArray jSONArray2 = new JSONArray((String) jSONObject.get(next));
                    int i2 = 0;
                    while (i2 < jSONArray2.length()) {
                        if (jSONArray2.getLong(i2) == ((Long) arrayList.get(0)).longValue() || jSONArray2.getLong(i2) == ((Long) arrayList.get(1)).longValue() || jSONArray2.getLong(i2) == ((Long) arrayList.get(arrayList.size() - 1)).longValue()) {
                            break;
                        }
                        i2++;
                        str = next;
                    }
                } catch (JSONException unused2) {
                }
            }
        }
        if (str != null) {
            jSONObject.remove(str);
        }
    }

    public final void AFInAppEventParameterName(Context context, String str) {
        JSONArray jSONArray;
        JSONArray jSONArray2;
        JSONObject jSONObject;
        AFLogger.AFInAppEventType("received a new (extra) referrer: ".concat(String.valueOf(str)));
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String string = AFKeystoreWrapper(context).getString("extraReferrers", null);
            if (string == null) {
                jSONObject = new JSONObject();
                jSONArray2 = new JSONArray();
            } else {
                JSONObject jSONObject2 = new JSONObject(string);
                if (jSONObject2.has(str)) {
                    jSONArray = new JSONArray((String) jSONObject2.get(str));
                } else {
                    jSONArray = new JSONArray();
                }
                jSONArray2 = jSONArray;
                jSONObject = jSONObject2;
            }
            if (jSONArray2.length() < 5) {
                jSONArray2.put(jCurrentTimeMillis);
            }
            if (jSONObject.length() >= 4) {
                valueOf(jSONObject);
            }
            jSONObject.put(str, jSONArray2.toString());
            String string2 = jSONObject.toString();
            SharedPreferences.Editor editorEdit = AFKeystoreWrapper(context).edit();
            editorEdit.putString("extraReferrers", string2);
            editorEdit.apply();
        } catch (JSONException unused) {
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("Couldn't save referrer - ");
            sb.append(str);
            sb.append(": ");
            AFLogger.valueOf(sb.toString(), th);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void stop(boolean z, Context context) {
        this.setDebugLog = z;
        ah.values();
        try {
            File fileAFInAppEventType = ah.AFInAppEventType(context);
            if (!fileAFInAppEventType.exists()) {
                fileAFInAppEventType.mkdir();
            } else {
                for (File file : fileAFInAppEventType.listFiles()) {
                    StringBuilder sb = new StringBuilder("Found cached request");
                    sb.append(file.getName());
                    AFLogger.AFKeystoreWrapper(sb.toString());
                    ah.values(ah.valueOf(file).values, context);
                }
            }
        } catch (Exception e2) {
            AFLogger.valueOf("Could not cache request", e2);
        }
        if (this.setDebugLog) {
            SharedPreferences.Editor editorEdit = AFKeystoreWrapper(context).edit();
            editorEdit.putBoolean("is_stop_tracking_used", true);
            editorEdit.apply();
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void onPause(Context context) {
        if (ae.AFInAppEventType != null) {
            ae.AFInAppEventType.valueOf(context);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void updateServerUninstallToken(Context context, String str) {
        new bp(context).valueOf(str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDebugLog(boolean z) {
        setLogLevel(z ? AFLogger.LogLevel.DEBUG : AFLogger.LogLevel.NONE);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final AppsFlyerLib enableLocationCollection(boolean z) {
        this.updateServerUninstallToken = z;
        return this;
    }

    public static void AFInAppEventType(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = AFKeystoreWrapper(context).edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    public static void AFKeystoreWrapper(Context context, String str) {
        SharedPreferences.Editor editorEdit = AFKeystoreWrapper(context).edit();
        editorEdit.putBoolean(str, true);
        editorEdit.apply();
    }

    public final void valueOf(Context context, String str, long j) {
        SharedPreferences.Editor editorEdit = AFKeystoreWrapper(context).edit();
        editorEdit.putLong(str, j);
        editorEdit.apply();
    }

    public static String AFInAppEventParameterName(String str) {
        return AppsFlyerProperties.getInstance().getString(str);
    }

    private static boolean AFInAppEventParameterName(String str, boolean z) {
        return AppsFlyerProperties.getInstance().getBoolean(str, z);
    }

    public final boolean valueOf() {
        return AFInAppEventParameterName(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false) && AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID) == null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void waitForCustomerUserId(boolean z) {
        AFLogger.AFKeystoreWrapper("initAfterCustomerUserID: ".concat(String.valueOf(z)), true);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCustomerIdAndLogSession(String str, Context context) {
        if (context != null) {
            if (valueOf()) {
                setCustomerUserId(str);
                StringBuilder sb = new StringBuilder("CustomerUserId set: ");
                sb.append(str);
                sb.append(" - Initializing AppsFlyer Tacking");
                AFLogger.AFKeystoreWrapper(sb.toString(), true);
                String referrer = AppsFlyerProperties.getInstance().getReferrer(context);
                String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
                if (referrer == null) {
                    referrer = "";
                }
                if (context instanceof Activity) {
                    ((Activity) context).getIntent();
                }
                cb cbVar = new cb();
                if (context != null) {
                    cbVar.values = (Application) context.getApplicationContext();
                }
                cbVar.AFVersionDeclaration = null;
                cbVar.init = string;
                cbVar.AFInAppEventType = null;
                cbVar.getLevel = referrer;
                cbVar.AFInAppEventParameterName = null;
                valueOf(cbVar);
                return;
            }
            setCustomerUserId(str);
            AFLogger.AFKeystoreWrapper("waitForCustomerUserId is false; setting CustomerUserID: ".concat(String.valueOf(str)), true);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getOutOfStore(Context context) {
        String string = AppsFlyerProperties.getInstance().getString("api_store_value");
        if (string != null) {
            return string;
        }
        String strAFKeystoreWrapper = context == null ? null : AFKeystoreWrapper("AF_STORE", context.getPackageManager(), context.getPackageName());
        if (strAFKeystoreWrapper != null) {
            return strAFKeystoreWrapper;
        }
        AFLogger.AFKeystoreWrapper("No out-of-store value set");
        return null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOutOfStore(String str) {
        if (str != null) {
            String lowerCase = str.toLowerCase();
            AppsFlyerProperties.getInstance().set("api_store_value", lowerCase);
            AFLogger.AFKeystoreWrapper("Store API set with value: ".concat(String.valueOf(lowerCase)), true);
            return;
        }
        AFLogger.AFInAppEventParameterName("Cannot set setOutOfStore with null");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void sendPushNotificationData(Activity activity) {
        long jLongValue;
        if (activity != null && activity.getIntent() != null) {
            if (ak.valueOf == null) {
                ak.valueOf = new ak();
            }
            ak akVar = ak.valueOf;
            StringBuilder sb = new StringBuilder("activity_intent_");
            sb.append(activity.getIntent().toString());
            akVar.AFKeystoreWrapper("public_api_call", "sendPushNotificationData", activity.getLocalClassName(), sb.toString());
        } else if (activity != null) {
            if (ak.valueOf == null) {
                ak.valueOf = new ak();
            }
            ak.valueOf.AFKeystoreWrapper("public_api_call", "sendPushNotificationData", activity.getLocalClassName(), "activity_intent_null");
        } else {
            if (ak.valueOf == null) {
                ak.valueOf = new ak();
            }
            ak.valueOf.AFKeystoreWrapper("public_api_call", "sendPushNotificationData", "activity_null");
        }
        String strAFInAppEventType = AFInAppEventType(activity);
        this.getInstance = strAFInAppEventType;
        if (strAFInAppEventType != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.onPause == null) {
                AFLogger.AFKeystoreWrapper("pushes: initializing pushes history..");
                this.onPause = new ConcurrentHashMap();
                jLongValue = jCurrentTimeMillis;
            } else {
                try {
                    long j = AppsFlyerProperties.getInstance().getLong("pushPayloadMaxAging", 1800000L);
                    jLongValue = jCurrentTimeMillis;
                    for (Long l : this.onPause.keySet()) {
                        try {
                            JSONObject jSONObject = new JSONObject(this.getInstance);
                            JSONObject jSONObject2 = new JSONObject(this.onPause.get(l));
                            if (jSONObject.opt(PushConsts.KEY_SERVICE_PIT).equals(jSONObject2.opt(PushConsts.KEY_SERVICE_PIT)) && jSONObject.opt("c").equals(jSONObject2.opt("c"))) {
                                StringBuilder sb2 = new StringBuilder("PushNotificationMeasurement: A previous payload with same PID and campaign was already acknowledged! (old: ");
                                sb2.append(jSONObject2);
                                sb2.append(", new: ");
                                sb2.append(jSONObject);
                                sb2.append(Operators.BRACKET_END_STR);
                                AFLogger.AFKeystoreWrapper(sb2.toString());
                                this.getInstance = null;
                                return;
                            }
                            if (jCurrentTimeMillis - l.longValue() > j) {
                                this.onPause.remove(l);
                            }
                            if (l.longValue() <= jLongValue) {
                                jLongValue = l.longValue();
                            }
                        } catch (Throwable th) {
                            th = th;
                            StringBuilder sb3 = new StringBuilder("Error while handling push notification measurement: ");
                            sb3.append(th.getClass().getSimpleName());
                            AFLogger.valueOf(sb3.toString(), th);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    jLongValue = jCurrentTimeMillis;
                }
            }
            if (this.onPause.size() == AppsFlyerProperties.getInstance().getInt("pushPayloadHistorySize", 2)) {
                StringBuilder sb4 = new StringBuilder("pushes: removing oldest overflowing push (oldest push:");
                sb4.append(jLongValue);
                sb4.append(Operators.BRACKET_END_STR);
                AFLogger.AFKeystoreWrapper(sb4.toString());
                this.onPause.remove(Long.valueOf(jLongValue));
            }
            this.onPause.put(Long.valueOf(jCurrentTimeMillis), this.getInstance);
            start(activity);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserEmails(AppsFlyerProperties.EmailsCryptType emailsCryptType, String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length + 1);
        arrayList.add(emailsCryptType.toString());
        arrayList.addAll(Arrays.asList(strArr));
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setUserEmails", (String[]) arrayList.toArray(new String[strArr.length + 1]));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EMAIL_CRYPT_TYPE, emailsCryptType.getValue());
        HashMap map = new HashMap();
        String str = null;
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : strArr) {
            if (AnonymousClass8.valueOf[emailsCryptType.ordinal()] != 2) {
                arrayList2.add(af.AFKeystoreWrapper(str2));
                str = "sha256_el_arr";
            } else {
                arrayList2.add(str2);
                str = "plain_el_arr";
            }
        }
        map.put(str, arrayList2);
        AppsFlyerProperties.getInstance().setUserEmails(new JSONObject(map).toString());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setResolveDeepLinkURLs(String... strArr) {
        AFLogger.AFInAppEventType(String.format("setResolveDeepLinkURLs %s", Arrays.toString(strArr)));
        j.valueOf = strArr;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOneLinkCustomDomain(String... strArr) {
        AFLogger.AFInAppEventType(String.format("setOneLinkCustomDomain %s", Arrays.toString(strArr)));
        j.AFLogger$LogLevel = strArr;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener, Context context) {
        if (this.enableLocationCollection) {
            return this;
        }
        this.enableLocationCollection = true;
        if (context == null) {
            AFLogger.init("context is null, Google Install Referrer will be not initialized");
        } else {
            if (this.AFLogger$LogLevel == null) {
                this.AFLogger$LogLevel = new au(context);
            }
            au auVar = this.AFLogger$LogLevel;
            if (auVar.AFKeystoreWrapper()) {
                auVar.valueOf.edit().putLong("init_ts", System.currentTimeMillis()).apply();
            }
            this.setPhoneNumber = (Application) context.getApplicationContext();
            this.onAppOpenAttributionNative.values = context.getApplicationContext();
            final cg cgVar = new cg(new Runnable() { // from class: com.appsflyer.internal.ag.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (l.AFKeystoreWrapper == null) {
                        l.AFKeystoreWrapper = new l();
                    }
                    ag.AFInAppEventType(l.AFKeystoreWrapper.AFInAppEventType(), new Runnable() { // from class: com.appsflyer.internal.ag.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                bt btVar = new bt();
                                Application application = ag.this.setPhoneNumber;
                                if (application != null) {
                                    btVar.values = (Application) application.getApplicationContext();
                                }
                                if (ag.this.AFInAppEventParameterName(btVar, ag.AFKeystoreWrapper(ag.this.setPhoneNumber))) {
                                    ag.values(ag.this, btVar);
                                }
                            } catch (Throwable th) {
                                AFLogger.valueOf(th.getMessage(), th);
                            }
                        }
                    }, 0L, TimeUnit.MILLISECONDS);
                }
            });
            Runnable runnable = new Runnable() { // from class: com.appsflyer.internal.ag.1
                @Override // java.lang.Runnable
                public final void run() {
                    SharedPreferences sharedPreferencesAFKeystoreWrapper = ag.AFKeystoreWrapper(ag.this.setPhoneNumber);
                    int iValueOf = ag.valueOf(sharedPreferencesAFKeystoreWrapper, "appsFlyerCount", false);
                    boolean z = sharedPreferencesAFKeystoreWrapper.getBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, false);
                    boolean z2 = cgVar.valueOf == cj.e.NOT_STARTED;
                    if (iValueOf == 1) {
                        if (z2 || z) {
                            ag agVar = ag.this;
                            bt btVar = new bt();
                            Application application = ag.this.setPhoneNumber;
                            if (application != null) {
                                btVar.values = (Application) application.getApplicationContext();
                            }
                            ag.values(agVar, btVar);
                        }
                    }
                }
            };
            cj[] cjVarArr = {cgVar, new cl(runnable), new ck(runnable)};
            this.AFVersionDeclaration = cjVarArr;
            for (cj cjVar : cjVarArr) {
                cjVar.AFKeystoreWrapper(this.setPhoneNumber);
            }
            this.waitForCustomerUserId = AFInAppEventType(context);
            bc.values = this.setPhoneNumber;
            if (valueOf(AFKeystoreWrapper(context), "appsFlyerCount", false) == 0 && Build.VERSION.SDK_INT >= 29) {
                ch chVar = new ch(context);
                this.setAppInviteOneLink = chVar;
                new Thread(chVar.AFKeystoreWrapper).start();
            }
        }
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak akVar = ak.valueOf;
        String[] strArr = new String[2];
        strArr[0] = str;
        strArr[1] = appsFlyerConversionListener == null ? "null" : "conversionDataListener";
        akVar.AFKeystoreWrapper("public_api_call", "init", strArr);
        AFLogger.valueOf(String.format("Initializing AppsFlyer SDK: (v%s.%s)", "6.4.2", AFInAppEventType));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_KEY, str);
        am.valueOf(str);
        AFInAppEventParameterName = appsFlyerConversionListener;
        return this;
    }

    private boolean AFInAppEventType(Context context) {
        try {
            Class.forName("com.appsflyer.lvl.AppsFlyerLVL");
            final long jCurrentTimeMillis = System.currentTimeMillis();
            this.setCustomerUserId = new ConcurrentHashMap();
            final u.e eVar = new u.e() { // from class: com.appsflyer.internal.ag.3
                @Override // com.appsflyer.internal.u.e
                public final void AFInAppEventParameterName(String str, String str2) {
                    ag.this.setCustomerUserId.put("signedData", str);
                    ag.this.setCustomerUserId.put("signature", str2);
                    ag.this.setCustomerUserId.put("ttr", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                    AFLogger.AFKeystoreWrapper("Successfully retrieved Google LVL data.");
                }

                @Override // com.appsflyer.internal.u.e
                public final void AFInAppEventType(String str, Exception exc) {
                    String message = exc.getMessage();
                    if (message == null) {
                        message = "unknown";
                    }
                    ag.this.setCustomerUserId.put("error", message);
                    AFLogger.values(str, exc);
                }
            };
            try {
                try {
                    Class<?> cls = Class.forName("com.appsflyer.lvl.AppsFlyerLVL");
                    Class<?> cls2 = Class.forName("com.appsflyer.lvl.AppsFlyerLVL$resultListener");
                    cls.getMethod("checkLicense", Long.TYPE, Context.class, cls2).invoke(null, Long.valueOf(jCurrentTimeMillis), context, Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: com.appsflyer.internal.u.3
                        AnonymousClass3() {
                        }

                        @Override // java.lang.reflect.InvocationHandler
                        public final Object invoke(Object obj, Method method, Object[] objArr) {
                            if (method.getName().equals("onLvlResult")) {
                                String str = objArr[0] != null ? (String) objArr[0] : null;
                                String str2 = objArr[1] != null ? (String) objArr[1] : null;
                                e eVar2 = eVar;
                                if (eVar2 == null) {
                                    AFLogger.AFInAppEventType("onLvlResult invocation succeeded, but listener is null");
                                } else if (str != null && str2 != null) {
                                    eVar2.AFInAppEventParameterName(str, str2);
                                } else if (str2 == null) {
                                    eVar2.AFInAppEventType("onLvlResult with error", new Exception("AFLVL Invalid signature"));
                                } else {
                                    eVar2.AFInAppEventType("onLvlResult with error", new Exception("AFLVL Invalid signedData"));
                                }
                            } else if (method.getName().equals("onLvlFailure")) {
                                e eVar3 = eVar;
                                if (eVar3 != null) {
                                    if (objArr[0] != null) {
                                        eVar3.AFInAppEventType("onLvlFailure with exception", (Exception) objArr[0]);
                                    } else {
                                        eVar3.AFInAppEventType("onLvlFailure", new Exception("unknown"));
                                    }
                                } else {
                                    AFLogger.AFInAppEventType("onLvlFailure: listener is null");
                                }
                            } else {
                                e eVar4 = eVar;
                                if (eVar4 != null) {
                                    eVar4.AFInAppEventType("lvlInvocation failed", new Exception("com.appsflyer.lvl.AppsFlyerLVL$resultListener invocation failed"));
                                }
                            }
                            return null;
                        }
                    }));
                } catch (ClassNotFoundException e2) {
                    eVar.AFInAppEventType(e2.getClass().getSimpleName(), e2);
                } catch (IllegalAccessException e3) {
                    eVar.AFInAppEventType(e3.getClass().getSimpleName(), e3);
                }
            } catch (NoSuchMethodException e4) {
                eVar.AFInAppEventType(e4.getClass().getSimpleName(), e4);
            } catch (InvocationTargetException e5) {
                eVar.AFInAppEventType(e5.getClass().getSimpleName(), e5);
            }
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void enableFacebookDeferredApplinks(boolean z) {
        this.setCustomerIdAndLogSession = z;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start(Context context) {
        start(context, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start(Context context, String str) {
        start(context, str, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start(Context context, final String str, final AppsFlyerRequestListener appsFlyerRequestListener) {
        String str2;
        if (ae.AFInAppEventType != null) {
            return;
        }
        if (!this.enableLocationCollection) {
            AFLogger.init("ERROR: AppsFlyer SDK is not initialized! The API call 'start()' must be called after the 'init(String, AppsFlyerConversionListener)' API method, which should be called on the Application's onCreate.");
            if (str == null) {
                if (appsFlyerRequestListener != null) {
                    appsFlyerRequestListener.onError(RequestError.NO_DEV_KEY, ay.AFKeystoreWrapper);
                    return;
                }
                return;
            }
        }
        this.onAppOpenAttributionNative.values = context.getApplicationContext();
        if (this.AFLogger$LogLevel == null) {
            this.AFLogger$LogLevel = new au(context);
        }
        final au auVar = this.AFLogger$LogLevel;
        if (context instanceof Activity) {
            str2 = "activity";
        } else {
            str2 = context instanceof Application ? "application" : "other";
        }
        auVar.values.put("start_with", str2);
        this.setPhoneNumber = (Application) context.getApplicationContext();
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "start", str);
        String str3 = AFInAppEventType;
        AFLogger.AFKeystoreWrapper(String.format("Starting AppsFlyer: (v%s.%s)", "6.4.2", str3));
        StringBuilder sb = new StringBuilder("Build Number: ");
        sb.append(str3);
        AFLogger.AFKeystoreWrapper(sb.toString());
        AppsFlyerProperties.getInstance().loadProperties(this.setPhoneNumber.getApplicationContext());
        if (TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY))) {
                AFLogger.init("ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the 'init' API method (should be called on Application's onCreate),or in the start() API (should be called on Activity's onCreate).");
                if (appsFlyerRequestListener != null) {
                    appsFlyerRequestListener.onError(RequestError.NO_DEV_KEY, ay.AFKeystoreWrapper);
                    return;
                }
                return;
            }
        } else {
            AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_KEY, str);
            am.valueOf(str);
        }
        Context baseContext = this.setPhoneNumber.getBaseContext();
        try {
            if ((baseContext.getPackageManager().getPackageInfo(baseContext.getPackageName(), 0).applicationInfo.flags & 32768) != 0) {
                if (baseContext.getResources().getIdentifier("appsflyer_backup_rules", "xml", baseContext.getPackageName()) != 0) {
                    AFLogger.AFKeystoreWrapper("appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data", true);
                } else {
                    AFLogger.AFInAppEventParameterName("'allowBackup' is set to true; appsflyer_backup_rules.xml not detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application's <full-backup-content> rules");
                }
            }
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder("checkBackupRules Exception: ");
            sb2.append(e2.toString());
            AFLogger.values(sb2.toString());
        }
        if (this.setCustomerIdAndLogSession) {
            Context applicationContext = this.setPhoneNumber.getApplicationContext();
            this.getOutOfStore = new HashMap();
            final long jCurrentTimeMillis = System.currentTimeMillis();
            final o.d dVar = new o.d() { // from class: com.appsflyer.internal.ag.4
                @Override // com.appsflyer.internal.o.d
                public final void AFInAppEventType(String str4, String str5, String str6) {
                    if (str4 == null) {
                        ag.this.getOutOfStore.put(AbsURIAdapter.LINK, "");
                    } else {
                        AFLogger.AFKeystoreWrapper("Facebook Deferred AppLink data received: ".concat(String.valueOf(str4)));
                        ag.this.getOutOfStore.put(AbsURIAdapter.LINK, str4);
                        if (str5 != null) {
                            ag.this.getOutOfStore.put("target_url", str5);
                        }
                        if (str6 != null) {
                            HashMap map = new HashMap();
                            HashMap map2 = new HashMap();
                            map2.put("promo_code", str6);
                            map.put("deeplink_context", map2);
                            ag.this.getOutOfStore.put("extras", map);
                        }
                    }
                    ag.this.getOutOfStore.put("ttr", String.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                }

                @Override // com.appsflyer.internal.o.d
                public final void AFInAppEventParameterName(String str4) {
                    ag.this.getOutOfStore.put("error", str4);
                }
            };
            try {
                Class.forName("com.facebook.FacebookSdk").getMethod("sdkInitialize", Context.class).invoke(null, applicationContext);
                final Class<?> cls = Class.forName("com.facebook.applinks.AppLinkData");
                Class<?> cls2 = Class.forName("com.facebook.applinks.AppLinkData$CompletionHandler");
                Method method = cls.getMethod("fetchDeferredAppLinkData", Context.class, String.class, cls2);
                Object objNewProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: com.appsflyer.internal.o.2
                    private /* synthetic */ Class AFInAppEventType;
                    private /* synthetic */ d AFKeystoreWrapper;

                    AnonymousClass2(final Class cls3, final d dVar2) {
                        cls = cls3;
                        dVar = dVar2;
                    }

                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj, Method method2, Object[] objArr) throws Throwable {
                        String string;
                        String string2;
                        String string3;
                        Bundle bundle;
                        if (method2.getName().equals("onDeferredAppLinkDataFetched")) {
                            if (objArr[0] != null) {
                                Bundle bundle2 = (Bundle) Bundle.class.cast(cls.getMethod("getArgumentBundle", new Class[0]).invoke(cls.cast(objArr[0]), new Object[0]));
                                if (bundle2 != null) {
                                    string2 = bundle2.getString("com.facebook.platform.APPLINK_NATIVE_URL");
                                    string3 = bundle2.getString("target_url");
                                    Bundle bundle3 = bundle2.getBundle("extras");
                                    string = (bundle3 == null || (bundle = bundle3.getBundle("deeplink_context")) == null) ? null : bundle.getString("promo_code");
                                } else {
                                    string = null;
                                    string2 = null;
                                    string3 = null;
                                }
                                d dVar2 = dVar;
                                if (dVar2 != null) {
                                    dVar2.AFInAppEventType(string2, string3, string);
                                }
                            } else {
                                d dVar3 = dVar;
                                if (dVar3 != null) {
                                    dVar3.AFInAppEventType(null, null, null);
                                }
                            }
                            return null;
                        }
                        d dVar4 = dVar;
                        if (dVar4 != null) {
                            dVar4.AFInAppEventParameterName("onDeferredAppLinkDataFetched invocation failed");
                        }
                        return null;
                    }
                });
                String string = applicationContext.getString(applicationContext.getResources().getIdentifier("facebook_app_id", "string", applicationContext.getPackageName()));
                if (TextUtils.isEmpty(string)) {
                    dVar2.AFInAppEventParameterName("Facebook app id not defined in resources");
                } else {
                    method.invoke(null, applicationContext, string, objNewProxyInstance);
                }
            } catch (ClassNotFoundException e3) {
                dVar2.AFInAppEventParameterName(e3.toString());
            } catch (IllegalAccessException e4) {
                dVar2.AFInAppEventParameterName(e4.toString());
            } catch (NoSuchMethodException e5) {
                dVar2.AFInAppEventParameterName(e5.toString());
            } catch (InvocationTargetException e6) {
                dVar2.AFInAppEventParameterName(e6.toString());
            }
        }
        ae.valueOf(context, new ae.c() { // from class: com.appsflyer.internal.ag.10
            @Override // com.appsflyer.internal.ae.c
            public final void AFInAppEventParameterName(Activity activity) {
                ag.this.getSdkVersion = System.currentTimeMillis();
                au auVar2 = auVar;
                if (auVar2.AFKeystoreWrapper()) {
                    auVar2.valueOf.edit().putLong("fg_ts", System.currentTimeMillis()).apply();
                }
                int iValueOf = ag.valueOf(ag.AFKeystoreWrapper(activity), "appsFlyerCount", false);
                if (iValueOf == 0) {
                    au auVar3 = auVar;
                    auVar3.values.put("init_to_fg", Long.valueOf(ag.this.getSdkVersion - auVar.valueOf.getLong("init_ts", 0L)));
                }
                AFLogger.AFKeystoreWrapper("onBecameForeground");
                if (iValueOf < 2) {
                    ab abVarValueOf = ab.valueOf(activity);
                    abVarValueOf.AFInAppEventParameterName.post(abVarValueOf.AFVersionDeclaration);
                    abVarValueOf.AFInAppEventParameterName.post(abVarValueOf.valueOf);
                }
                cb cbVar = new cb();
                j.AFInAppEventType().values(cbVar.AFInAppEventParameterName(), auVar, activity.getIntent(), activity.getApplication());
                ag agVar = ag.this;
                if (activity != null) {
                    cbVar.values = (Application) activity.getApplicationContext();
                }
                cbVar.init = str;
                cbVar.valueOf = appsFlyerRequestListener;
                agVar.AFKeystoreWrapper(cbVar, activity);
            }

            @Override // com.appsflyer.internal.ae.c
            public final void valueOf(Context context2) {
                AFLogger.AFKeystoreWrapper("onBecameBackground");
                ag.this.stop = System.currentTimeMillis();
                long j = ag.this.stop - ag.this.getSdkVersion;
                if (j > 0 && j < 1000) {
                    j = 1000;
                }
                ag agVar = ag.this;
                if (agVar.AFLogger$LogLevel == null) {
                    agVar.AFLogger$LogLevel = new au(context2);
                }
                agVar.AFLogger$LogLevel.valueOf.edit().putLong("prev_session_dur", TimeUnit.MILLISECONDS.toSeconds(j)).apply();
                AFLogger.AFKeystoreWrapper("callStatsBackground background call");
                ag.this.valueOf(new WeakReference<>(context2));
                if (ak.valueOf == null) {
                    ak.valueOf = new ak();
                }
                ak akVar = ak.valueOf;
                if (akVar.AppsFlyer2dXConversionCallback()) {
                    akVar.AFInAppEventParameterName();
                    if (context2 != null && !AppsFlyerLib.getInstance().isStopped()) {
                        try {
                            akVar.values(context2.getPackageName(), context2.getPackageManager());
                            Map<String, Object> mapAFKeystoreWrapper = akVar.AFKeystoreWrapper();
                            bh bhVarAFInAppEventParameterName = ag.AFInAppEventType().onAppOpenAttributionNative.AFInAppEventParameterName();
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(String.format(bh.AFKeystoreWrapper, AppsFlyerLib.getInstance().getHostPrefix(), ag.AFInAppEventType().getHostName()));
                            sb3.append(bhVarAFInAppEventParameterName.AFInAppEventParameterName.values.getPackageName());
                            v vVar = new v(sb3.toString(), new JSONObject(mapAFKeystoreWrapper).toString().getBytes(), "POST", Collections.emptyMap());
                            u uVar = bhVarAFInAppEventParameterName.values;
                            bm bmVar = new bm(vVar, uVar.values, uVar.AFInAppEventParameterName, new bk());
                            if (!bmVar.AFInAppEventParameterName.getAndSet(true)) {
                                bmVar.values.submit(new bm.AnonymousClass3(null));
                            } else {
                                throw new IllegalStateException("Http call is already executed");
                            }
                        } catch (Throwable th) {
                            AFLogger.AFKeystoreWrapper(th);
                        }
                    }
                    akVar.values();
                } else {
                    AFLogger.AFInAppEventType("RD status is OFF");
                }
                if (l.AFKeystoreWrapper == null) {
                    l.AFKeystoreWrapper = new l();
                }
                l lVar = l.AFKeystoreWrapper;
                try {
                    l.valueOf(lVar.valueOf);
                    if (lVar.AFInAppEventType instanceof ThreadPoolExecutor) {
                        l.valueOf((ThreadPoolExecutor) lVar.AFInAppEventType);
                    }
                } catch (Throwable th2) {
                    AFLogger.valueOf("failed to stop Executors", th2);
                }
                ab abVarValueOf = ab.valueOf(context2);
                abVarValueOf.AFInAppEventParameterName.post(abVarValueOf.AFVersionDeclaration);
            }
        }, this.setAdditionalData);
    }

    private static void values(Context context) {
        int i;
        if (aa.AFKeystoreWrapper()) {
            i = 23;
            AFLogger.values("OPPO device found");
        } else {
            i = 18;
        }
        if (Build.VERSION.SDK_INT >= i && !AFInAppEventParameterName(AppsFlyerProperties.DISABLE_KEYSTORE, true)) {
            StringBuilder sb = new StringBuilder("OS SDK is=");
            sb.append(Build.VERSION.SDK_INT);
            sb.append("; use KeyStore");
            AFLogger.values(sb.toString());
            AFKeystoreWrapper aFKeystoreWrapper = new AFKeystoreWrapper(context);
            if (!aFKeystoreWrapper.AFInAppEventType()) {
                aFKeystoreWrapper.AFInAppEventType = al.AFInAppEventParameterName(new WeakReference(context));
                aFKeystoreWrapper.AFKeystoreWrapper = 0;
                aFKeystoreWrapper.AFInAppEventParameterName(aFKeystoreWrapper.AFKeystoreWrapper());
            } else {
                String strAFKeystoreWrapper = aFKeystoreWrapper.AFKeystoreWrapper();
                synchronized (aFKeystoreWrapper.AFInAppEventParameterName) {
                    aFKeystoreWrapper.AFKeystoreWrapper++;
                    AFLogger.AFKeystoreWrapper("Deleting key with alias: ".concat(String.valueOf(strAFKeystoreWrapper)));
                    try {
                        synchronized (aFKeystoreWrapper.AFInAppEventParameterName) {
                            aFKeystoreWrapper.values.deleteEntry(strAFKeystoreWrapper);
                        }
                    } catch (KeyStoreException e2) {
                        StringBuilder sb2 = new StringBuilder("Exception ");
                        sb2.append(e2.getMessage());
                        sb2.append(" occurred");
                        AFLogger.valueOf(sb2.toString(), e2);
                    }
                }
                aFKeystoreWrapper.AFInAppEventParameterName(aFKeystoreWrapper.AFKeystoreWrapper());
            }
            AppsFlyerProperties.getInstance().set("KSAppsFlyerId", aFKeystoreWrapper.AFInAppEventParameterName());
            AppsFlyerProperties.getInstance().set("KSAppsFlyerRICounter", String.valueOf(aFKeystoreWrapper.values()));
            return;
        }
        StringBuilder sb3 = new StringBuilder("OS SDK is=");
        sb3.append(Build.VERSION.SDK_INT);
        sb3.append("; no KeyStore usage");
        AFLogger.values(sb3.toString());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPhoneNumber(String str) {
        this.sendPushNotificationData = af.AFKeystoreWrapper(str);
    }

    final void valueOf(WeakReference<Context> weakReference) {
        if (weakReference.get() == null) {
            return;
        }
        AFLogger.AFKeystoreWrapper("app went to background");
        SharedPreferences sharedPreferencesAFKeystoreWrapper = AFKeystoreWrapper(weakReference.get());
        AppsFlyerProperties.getInstance().saveProperties(sharedPreferencesAFKeystoreWrapper);
        long j = this.stop - this.getSdkVersion;
        HashMap map = new HashMap();
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
        if (string == null) {
            AFLogger.init("[callStats] AppsFlyer's SDK cannot send any event without providing DevKey.");
            return;
        }
        String string2 = AppsFlyerProperties.getInstance().getString("KSAppsFlyerId");
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
            map.put(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, AbsoluteConst.TRUE);
        }
        b.e.a aVarValueOf = z.valueOf(weakReference.get().getContentResolver());
        if (aVarValueOf != null) {
            map.put("amazon_aid", aVarValueOf.valueOf);
            map.put("amazon_aid_limit", String.valueOf(aVarValueOf.AFInAppEventParameterName));
        }
        String string3 = AppsFlyerProperties.getInstance().getString("advertiserId");
        if (string3 != null) {
            map.put("advertiserId", string3);
        }
        map.put("app_id", weakReference.get().getPackageName());
        map.put("devkey", string);
        map.put("uid", al.AFInAppEventParameterName(weakReference));
        map.put("time_in_app", String.valueOf(j / 1000));
        map.put("statType", "user_closed_app");
        map.put(RenderTypes.RENDER_TYPE_NATIVE, TimeCalculator.PLATFORM_ANDROID);
        map.put("launch_counter", Integer.toString(valueOf(sharedPreferencesAFKeystoreWrapper, "appsFlyerCount", false)));
        map.put("channel", AFInAppEventParameterName(weakReference.get()));
        if (string2 == null) {
            string2 = "";
        }
        map.put("originalAppsflyerId", string2);
        if (this.setAndroidIdData) {
            try {
                AFLogger.AFInAppEventType("Running callStats task");
                cd cdVar = new cd();
                cdVar.onConversionDataFail = isStopped();
                new Thread(new af((bv) cdVar.AFInAppEventParameterName(map).values(String.format(onDeepLinkingNative, AppsFlyerLib.getInstance().getHostPrefix(), onAppOpenAttribution.getHostName())))).start();
                return;
            } catch (Throwable th) {
                AFLogger.valueOf("Could not send callStats request", th);
                return;
            }
        }
        AFLogger.AFInAppEventType("Stats call is disabled, ignore ...");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logEvent(Context context, String str, Map<String, Object> map, AppsFlyerRequestListener appsFlyerRequestListener) {
        ca caVar = new ca();
        if (context != null) {
            caVar.values = (Application) context.getApplicationContext();
        }
        caVar.AFVersionDeclaration = str;
        caVar.AFInAppEventType = map == null ? null : new HashMap(map);
        caVar.valueOf = appsFlyerRequestListener;
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak akVar = ak.valueOf;
        String[] strArr = new String[2];
        strArr[0] = str;
        strArr[1] = new JSONObject(caVar.AFInAppEventType == null ? new HashMap() : caVar.AFInAppEventType).toString();
        akVar.AFKeystoreWrapper("public_api_call", "logEvent", strArr);
        if (str != null) {
            ab.valueOf(context).AFKeystoreWrapper();
        }
        AFKeystoreWrapper(caVar, context instanceof Activity ? (Activity) context : null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void sendAdRevenue(Context context, Map<String, Object> map) {
        bw bwVar = new bw();
        if (context != null) {
            bwVar.values = (Application) context.getApplicationContext();
        }
        bwVar.AFInAppEventType = map;
        Application application = bwVar.values;
        byte b = 0;
        String str = String.format(onInstallConversionFailureNative, AppsFlyerLib.getInstance().getHostPrefix(), onAppOpenAttribution.getHostName());
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(application.getPackageName());
        String string = sb.toString();
        SharedPreferences sharedPreferencesAFKeystoreWrapper = AFKeystoreWrapper(application);
        int iValueOf = valueOf(sharedPreferencesAFKeystoreWrapper, "appsFlyerCount", false);
        int iValueOf2 = valueOf(sharedPreferencesAFKeystoreWrapper, "appsFlyerAdRevenueCount", true);
        HashMap map2 = new HashMap();
        map2.put("ad_network", bwVar.AFInAppEventType);
        map2.put("adrevenue_counter", Integer.valueOf(iValueOf2));
        String string2 = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
        map2.put("af_key", string2);
        map2.put("launch_counter", Integer.valueOf(iValueOf));
        map2.put("af_timestamp", Long.toString(new Date().getTime()));
        map2.put("uid", al.AFInAppEventParameterName(new WeakReference(application)));
        String string3 = AppsFlyerProperties.getInstance().getString("advertiserId");
        String string4 = AppsFlyerProperties.getInstance().getString("advertiserIdEnabled");
        if (string4 != null) {
            map2.put("advertiserIdEnabled", string4);
        }
        if (string3 != null) {
            map2.put("advertiserId", string3);
        }
        map2.put("device", Build.DEVICE);
        AFInAppEventType(application, map2);
        try {
            PackageInfo packageInfo = application.getPackageManager().getPackageInfo(application.getPackageName(), 0);
            map2.put("app_version_code", Integer.toString(packageInfo.versionCode));
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
            long j = packageInfo.firstInstallTime;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            map2.put("install_date", simpleDateFormat.format(new Date(j)));
            String string5 = sharedPreferencesAFKeystoreWrapper.getString("appsFlyerFirstInstall", null);
            if (string5 == null) {
                string5 = valueOf(simpleDateFormat, application);
            }
            map2.put("first_launch_date", string5);
        } catch (Throwable th) {
            AFLogger.valueOf("AdRevenue - Exception while collecting app version data ", th);
        }
        f fVarAFInAppEventParameterName = bwVar.values(string).AFInAppEventParameterName(map2);
        fVarAFInAppEventParameterName.onAppOpenAttributionNative = iValueOf;
        fVarAFInAppEventParameterName.init = string2;
        a aVar = new a(this, fVarAFInAppEventParameterName, b);
        if (l.AFKeystoreWrapper == null) {
            l.AFKeystoreWrapper = new l();
        }
        AFInAppEventType(l.AFKeystoreWrapper.AFInAppEventType(), aVar, 1L, TimeUnit.MILLISECONDS);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logEvent(Context context, String str, Map<String, Object> map) {
        logEvent(context, str, map, null);
    }

    private void AFInAppEventParameterName(Context context, String str, Map<String, Object> map) {
        ca caVar = new ca();
        if (context != null) {
            caVar.values = (Application) context.getApplicationContext();
        }
        caVar.AFVersionDeclaration = str;
        caVar.AFInAppEventType = map;
        AFKeystoreWrapper(caVar, context instanceof Activity ? (Activity) context : null);
    }

    public static String AFKeystoreWrapper(SimpleDateFormat simpleDateFormat, long j) {
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(new Date(j));
    }

    private boolean AFInAppEventParameterName() {
        if (this.AppsFlyerInAppPurchaseValidatorListener > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.AppsFlyerInAppPurchaseValidatorListener;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS Z", Locale.US);
            long j = this.AppsFlyerInAppPurchaseValidatorListener;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String str = simpleDateFormat.format(new Date(j));
            long j2 = this.onValidateInApp;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String str2 = simpleDateFormat.format(new Date(j2));
            if (jCurrentTimeMillis < this.AppsFlyerConversionListener && !isStopped()) {
                AFLogger.AFKeystoreWrapper(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms", str, str2, Long.valueOf(jCurrentTimeMillis), Long.valueOf(this.AppsFlyerConversionListener)));
                return true;
            }
            if (!isStopped()) {
                AFLogger.AFKeystoreWrapper(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)", str, str2, Long.valueOf(jCurrentTimeMillis)));
            }
        } else if (!isStopped()) {
            AFLogger.AFKeystoreWrapper("Sending first launch for this session!");
        }
        return false;
    }

    private boolean AFKeystoreWrapper() {
        Map<String, Object> map = this.getOutOfStore;
        return (map == null || map.isEmpty()) ? false : true;
    }

    private boolean AFVersionDeclaration() {
        Map<String, Object> map = this.setCustomerUserId;
        return (map == null || map.isEmpty()) ? false : true;
    }

    public static Map<String, Object> values(Map<String, Object> map) {
        if (map.containsKey("meta")) {
            return (Map) map.get("meta");
        }
        HashMap map2 = new HashMap();
        map.put("meta", map2);
        return map2;
    }

    public static boolean AFInAppEventParameterName(SharedPreferences sharedPreferences) {
        return Boolean.parseBoolean(sharedPreferences.getString("sentSuccessfully", null));
    }

    private static void AFInAppEventType(Context context, Map<String, Object> map) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            int rotation = windowManager.getDefaultDisplay().getRotation();
            map.put("sc_o", rotation != 0 ? rotation != 1 ? rotation != 2 ? rotation != 3 ? "" : "lr" : "pr" : "l" : ContextChain.TAG_PRODUCT);
        }
    }

    private static String AFInAppEventType(Activity activity) {
        Intent intent;
        String string = null;
        if (activity != null && (intent = activity.getIntent()) != null) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null && (string = extras.getString("af")) != null) {
                    AFLogger.AFKeystoreWrapper("Push Notification received af payload = ".concat(String.valueOf(string)));
                    extras.remove("af");
                    activity.setIntent(intent.putExtras(extras));
                }
            } catch (Throwable th) {
                AFLogger.valueOf(th.getMessage(), th);
            }
        }
        return string;
    }

    protected final void AFKeystoreWrapper(Context context, Map<String, Object> map, Uri uri) {
        if (!map.containsKey("af_deeplink")) {
            String strValueOf = valueOf(uri.toString());
            j jVarAFInAppEventType = j.AFInAppEventType();
            if (jVarAFInAppEventType.AppsFlyer2dXConversionCallback != null && jVarAFInAppEventType.AFVersionDeclaration != null && strValueOf.contains(jVarAFInAppEventType.AppsFlyer2dXConversionCallback)) {
                Uri.Builder builderBuildUpon = Uri.parse(strValueOf).buildUpon();
                Uri.Builder builderBuildUpon2 = Uri.EMPTY.buildUpon();
                for (Map.Entry<String, String> entry : jVarAFInAppEventType.AFVersionDeclaration.entrySet()) {
                    builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
                    builderBuildUpon2.appendQueryParameter(entry.getKey(), entry.getValue());
                }
                strValueOf = builderBuildUpon.build().toString();
                map.put("appended_query_params", builderBuildUpon2.build().getEncodedQuery());
            }
            map.put("af_deeplink", strValueOf);
        }
        final HashMap map2 = new HashMap();
        map2.put(AbsURIAdapter.LINK, uri.toString());
        as asVar = new as(uri, this, context);
        if (asVar.valueOf) {
            map.put("isBrandedDomain", Boolean.TRUE);
        }
        aa.values(context, map2, uri);
        if (!asVar.valueOf()) {
            aq.AFInAppEventParameterName(map2);
            return;
        }
        asVar.AFInAppEventParameterName = new as.a() { // from class: com.appsflyer.internal.ag.7
            @Override // com.appsflyer.internal.as.a
            public final void AFInAppEventType(Map<String, String> map3) {
                for (String str : map3.keySet()) {
                    map2.put(str, map3.get(str));
                }
                aq.AFInAppEventParameterName(map2);
            }

            @Override // com.appsflyer.internal.as.a
            public final void valueOf(String str) {
                aq.valueOf(str, DeepLinkResult.Error.NETWORK);
            }
        };
        if (l.AFKeystoreWrapper == null) {
            l.AFKeystoreWrapper = new l();
        }
        l.AFKeystoreWrapper.AFInAppEventParameterName().execute(asVar);
    }

    private static String valueOf(String str) {
        if (str == null) {
            return null;
        }
        if (!str.matches("fb\\d*?://authorize.*") || !str.contains("access_token")) {
            return str;
        }
        int iIndexOf = str.indexOf(63);
        String strSubstring = iIndexOf == -1 ? "" : str.substring(iIndexOf);
        if (strSubstring.length() == 0) {
            return str;
        }
        ArrayList arrayList = new ArrayList();
        if (strSubstring.contains("&")) {
            arrayList = new ArrayList(Arrays.asList(strSubstring.split("&")));
        } else {
            arrayList.add(strSubstring);
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (str2.contains("access_token")) {
                it.remove();
            } else {
                if (sb.length() != 0) {
                    sb.append("&");
                } else if (!str2.startsWith(Operators.CONDITION_IF_STRING)) {
                    sb.append(Operators.CONDITION_IF_STRING);
                }
                sb.append(str2);
            }
        }
        return str.replace(strSubstring, sb.toString());
    }

    private static boolean getLevel(Context context) {
        try {
            if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context) == 0) {
                return true;
            }
        } catch (Throwable th) {
            AFLogger.valueOf("WARNING:  Google play services is unavailable. ", th);
        }
        try {
            context.getPackageManager().getPackageInfo("com.google.android.gms", 0);
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            AFLogger.valueOf("WARNING:  Google Play Services is unavailable. ", e2);
            return false;
        }
    }

    private static boolean AppsFlyer2dXConversionCallback(Context context) {
        return (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) || AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) || !getLevel(context);
    }

    public static boolean valueOf(Context context) {
        return !AFKeystoreWrapper(context).contains("appsFlyerCount");
    }

    private static String AFInAppEventType(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Throwable th) {
            AFLogger.valueOf(th.getMessage(), th);
            return null;
        }
    }

    private static String AFKeystoreWrapper(String str, PackageManager packageManager, String str2) {
        Object obj;
        try {
            Bundle bundle = ((PackageItemInfo) packageManager.getApplicationInfo(str2, 128)).metaData;
            if (bundle == null || (obj = bundle.get(str)) == null) {
                return null;
            }
            return obj.toString();
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("Could not find ");
            sb.append(str);
            sb.append(" value in the manifest");
            AFLogger.valueOf(sb.toString(), th);
            return null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPreinstallAttribution(String str, String str2, String str3) {
        AFLogger.AFInAppEventType("setPreinstallAttribution API called");
        JSONObject jSONObject = new JSONObject();
        if (str != null) {
            try {
                jSONObject.put(PushConsts.KEY_SERVICE_PIT, str);
            } catch (JSONException e2) {
                AFLogger.valueOf(e2.getMessage(), e2);
            }
        }
        if (str2 != null) {
            jSONObject.put("c", str2);
        }
        if (str3 != null) {
            jSONObject.put("af_siteid", str3);
        }
        if (jSONObject.has(PushConsts.KEY_SERVICE_PIT)) {
            AppsFlyerProperties.getInstance().set("preInstallName", jSONObject.toString());
        } else {
            AFLogger.init("Cannot set preinstall attribution data without a media source");
        }
    }

    private static String valueOf(File file, String str) {
        FileReader fileReader;
        Properties properties;
        try {
            try {
                try {
                    properties = new Properties();
                    fileReader = new FileReader(file);
                } catch (Throwable th) {
                    AFLogger.valueOf(th.getMessage(), th);
                    return null;
                }
            } catch (FileNotFoundException unused) {
                fileReader = null;
            } catch (Throwable th2) {
                th = th2;
                fileReader = null;
            }
            try {
                properties.load(fileReader);
                AFLogger.AFKeystoreWrapper("Found PreInstall property!");
                String property = properties.getProperty(str);
                try {
                    fileReader.close();
                } catch (Throwable th3) {
                    AFLogger.valueOf(th3.getMessage(), th3);
                }
                return property;
            } catch (FileNotFoundException unused2) {
                StringBuilder sb = new StringBuilder("PreInstall file wasn't found: ");
                sb.append(file.getAbsolutePath());
                AFLogger.AFInAppEventType(sb.toString());
                if (fileReader != null) {
                    fileReader.close();
                }
                return null;
            } catch (Throwable th4) {
                th = th4;
                AFLogger.valueOf(th.getMessage(), th);
                if (fileReader != null) {
                    fileReader.close();
                }
                return null;
            }
        } catch (Throwable th5) {
            if (fileReader != null) {
                try {
                    fileReader.close();
                } catch (Throwable th6) {
                    AFLogger.valueOf(th6.getMessage(), th6);
                }
            }
            throw th5;
        }
    }

    private static boolean AFInAppEventParameterName(File file) {
        return file == null || !file.exists();
    }

    private static File AFKeystoreWrapper(String str) {
        if (str == null) {
            return null;
        }
        try {
            if (str.trim().length() > 0) {
                return new File(str.trim());
            }
            return null;
        } catch (Throwable th) {
            AFLogger.valueOf(th.getMessage(), th);
            return null;
        }
    }

    public final String AFInAppEventParameterName(Context context) {
        String string = AppsFlyerProperties.getInstance().getString("channel");
        if (string == null) {
            string = context == null ? null : AFKeystoreWrapper("CHANNEL", context.getPackageManager(), context.getPackageName());
        }
        if (string == null || !string.equals("")) {
            return string;
        }
        return null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final boolean isPreInstalledApp(Context context) {
        try {
        } catch (PackageManager.NameNotFoundException e2) {
            AFLogger.valueOf("Could not check if app is pre installed", e2);
        }
        return (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 1) != 0;
    }

    public final String AFInAppEventType(Context context, String str) {
        SharedPreferences sharedPreferencesAFKeystoreWrapper = AFKeystoreWrapper(context);
        if (sharedPreferencesAFKeystoreWrapper.contains("CACHED_CHANNEL")) {
            return sharedPreferencesAFKeystoreWrapper.getString("CACHED_CHANNEL", null);
        }
        SharedPreferences.Editor editorEdit = AFKeystoreWrapper(context).edit();
        editorEdit.putString("CACHED_CHANNEL", str);
        editorEdit.apply();
        return str;
    }

    private String valueOf(SimpleDateFormat simpleDateFormat, Context context) {
        String str;
        String string = AFKeystoreWrapper(context).getString("appsFlyerFirstInstall", null);
        if (string == null) {
            if (valueOf(context)) {
                AFLogger.AFInAppEventType("AppsFlyer: first launch detected");
                str = simpleDateFormat.format(new Date());
            } else {
                str = "";
            }
            string = str;
            SharedPreferences.Editor editorEdit = AFKeystoreWrapper(context).edit();
            editorEdit.putString("appsFlyerFirstInstall", string);
            editorEdit.apply();
        }
        AFLogger.AFKeystoreWrapper("AppsFlyer: first launch date: ".concat(String.valueOf(string)));
        return string;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getAttributionId(Context context) {
        try {
            return new ai(context).values();
        } catch (Throwable th) {
            AFLogger.valueOf("Could not collect facebook attribution id. ", th);
            return null;
        }
    }

    public static int valueOf(SharedPreferences sharedPreferences, String str, boolean z) {
        int i = sharedPreferences.getInt(str, 0);
        if (z) {
            i++;
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putInt(str, i);
            editorEdit.apply();
        }
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        if (ak.valueOf.AppsFlyer2dXConversionCallback()) {
            if (ak.valueOf == null) {
                ak.valueOf = new ak();
            }
            ak.valueOf.valueOf(String.valueOf(i));
        }
        return i;
    }

    public static void AFInAppEventType(ScheduledExecutorService scheduledExecutorService, Runnable runnable, long j, TimeUnit timeUnit) {
        if (scheduledExecutorService != null) {
            try {
                if (!scheduledExecutorService.isShutdown() && !scheduledExecutorService.isTerminated()) {
                    scheduledExecutorService.schedule(runnable, j, timeUnit);
                    return;
                }
            } catch (RejectedExecutionException e2) {
                AFLogger.valueOf("scheduleJob failed with RejectedExecutionException Exception", e2);
                return;
            } catch (Throwable th) {
                AFLogger.valueOf("scheduleJob failed with Exception", th);
                return;
            }
        }
        AFLogger.init("scheduler is null, shut downed or terminated");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final boolean isStopped() {
        return this.setDebugLog;
    }

    public static String valueOf(HttpURLConnection httpURLConnection) {
        InputStreamReader inputStreamReader;
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                InputStream errorStream = httpURLConnection.getErrorStream();
                if (errorStream == null) {
                    errorStream = httpURLConnection.getInputStream();
                }
                inputStreamReader = new InputStreamReader(errorStream);
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                    boolean z = false;
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            sb.append(z ? '\n' : "");
                            sb.append(line);
                            z = true;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            try {
                                StringBuilder sb2 = new StringBuilder("Could not read connection response from: ");
                                sb2.append(httpURLConnection.getURL().toString());
                                AFLogger.valueOf(sb2.toString(), th);
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                            } catch (Throwable th2) {
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Throwable th3) {
                                        AFLogger.AFKeystoreWrapper(th3);
                                        throw th2;
                                    }
                                }
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                throw th2;
                            }
                        }
                    }
                    bufferedReader2.close();
                    inputStreamReader.close();
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
                inputStreamReader = null;
            }
        } catch (Throwable th6) {
            AFLogger.AFKeystoreWrapper(th6);
        }
        String string = sb.toString();
        try {
            new JSONObject(string);
            return string;
        } catch (JSONException unused) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("string_response", string);
                return jSONObject.toString();
            } catch (JSONException unused2) {
                return new JSONObject().toString();
            }
        }
    }

    private static float AFLogger$LogLevel(Context context) {
        try {
            Intent intentRegisterReceiver = context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int intExtra = intentRegisterReceiver.getIntExtra("level", -1);
            int intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
            if (intExtra == -1 || intExtra2 == -1) {
                return 50.0f;
            }
            return (intExtra / intExtra2) * 100.0f;
        } catch (Throwable th) {
            AFLogger.valueOf(th.getMessage(), th);
            return 1.0f;
        }
    }

    private static boolean init(Context context) {
        if (context != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                    for (Network network : connectivityManager.getAllNetworks()) {
                        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
                        if (networkCapabilities.hasTransport(4) && !networkCapabilities.hasCapability(15)) {
                            return true;
                        }
                    }
                    return false;
                } catch (Exception e2) {
                    AFLogger.valueOf("Failed collecting ivc data", e2);
                }
            } else if (Build.VERSION.SDK_INT >= 16) {
                ArrayList arrayList = new ArrayList();
                try {
                    for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                        if (networkInterface.isUp()) {
                            arrayList.add(networkInterface.getName());
                        }
                    }
                    return arrayList.contains("tun0");
                } catch (Exception e3) {
                    AFLogger.valueOf("Failed collecting ivc data", e3);
                }
            }
        }
        return false;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setLogLevel(AFLogger.LogLevel logLevel) {
        boolean z = logLevel.getLevel() > AFLogger.LogLevel.NONE.getLevel();
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "log", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(WXConfig.logLevel, logLevel.getLevel());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setMinTimeBetweenSessions(int i) {
        this.AppsFlyerConversionListener = TimeUnit.SECONDS.toMillis(i);
    }

    class e implements Runnable {
        private final f values;

        /* synthetic */ e(ag agVar, f fVar, byte b) {
            this(fVar);
        }

        private e(f fVar) {
            this.values = fVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ag.values(ag.this, this.values);
        }
    }

    class a implements Runnable {
        private final f values;

        /* synthetic */ a(ag agVar, f fVar, byte b) {
            this(fVar);
        }

        private a(f fVar) {
            this.values = fVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:116:0x0272  */
        /* JADX WARN: Type inference failed for: r4v10 */
        /* JADX WARN: Type inference failed for: r4v11 */
        /* JADX WARN: Type inference failed for: r4v14, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v22 */
        /* JADX WARN: Type inference failed for: r4v23 */
        /* JADX WARN: Type inference failed for: r4v24 */
        /* JADX WARN: Type inference failed for: r4v25 */
        /* JADX WARN: Type inference failed for: r4v26 */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4 */
        /* JADX WARN: Type inference failed for: r4v5 */
        /* JADX WARN: Type inference failed for: r4v6, types: [java.io.Writer] */
        /* JADX WARN: Type inference failed for: r4v7, types: [java.io.Writer] */
        /* JADX WARN: Type inference failed for: r4v8 */
        /* JADX WARN: Type inference failed for: r4v9 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x0254 -> B:129:0x0258). Please report as a decompilation issue!!! */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 650
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.ag.a.run():void");
        }
    }

    /* JADX INFO: renamed from: com.appsflyer.internal.ag$8, reason: invalid class name */
    static /* synthetic */ class AnonymousClass8 {
        static final /* synthetic */ int[] AFInAppEventType;
        static final /* synthetic */ int[] valueOf;

        static {
            int[] iArr = new int[cj.e.values().length];
            AFInAppEventType = iArr;
            try {
                iArr[cj.e.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                AFInAppEventType[cj.e.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[AppsFlyerProperties.EmailsCryptType.values().length];
            valueOf = iArr2;
            try {
                iArr2[AppsFlyerProperties.EmailsCryptType.SHA256.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                valueOf[AppsFlyerProperties.EmailsCryptType.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    final Map<String, Object> values() {
        HashMap map = new HashMap();
        if (AFVersionDeclaration()) {
            map.put("lvl", this.setCustomerUserId);
        } else if (this.waitForCustomerUserId) {
            HashMap map2 = new HashMap();
            this.setCustomerUserId = map2;
            map2.put("error", "operation timed out.");
            map.put("lvl", this.setCustomerUserId);
        }
        return map;
    }

    class c implements Runnable {
        private final Application AFInAppEventParameterName;

        public c(Context context) {
            this.AFInAppEventParameterName = (Application) context.getApplicationContext();
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (ag.this.onValidateInAppFailure) {
                return;
            }
            ag.this.AppsFlyer2dXConversionCallback = System.currentTimeMillis();
            ag.this.onValidateInAppFailure = true;
            try {
                try {
                    String strAFInAppEventParameterName = ag.AFInAppEventParameterName(AppsFlyerProperties.AF_KEY);
                    ah.values();
                    for (h hVar : ah.valueOf(this.AFInAppEventParameterName)) {
                        StringBuilder sb = new StringBuilder("resending request: ");
                        sb.append(hVar.AFKeystoreWrapper);
                        AFLogger.AFKeystoreWrapper(sb.toString());
                        try {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            long j = Long.parseLong(hVar.values, 10);
                            ag agVar = ag.this;
                            bz bzVar = new bz();
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(hVar.AFKeystoreWrapper);
                            sb2.append("&isCachedRequest=true&timeincache=");
                            sb2.append((jCurrentTimeMillis - j) / 1000);
                            f fVarValues = bzVar.values(sb2.toString());
                            fVarValues.AFLogger$LogLevel = hVar.AFKeystoreWrapper();
                            fVarValues.init = strAFInAppEventParameterName;
                            Application application = this.AFInAppEventParameterName;
                            if (application != null) {
                                fVarValues.values = (Application) application.getApplicationContext();
                            }
                            fVarValues.AppsFlyer2dXConversionCallback = hVar.values;
                            fVarValues.onInstallConversionDataLoadedNative = false;
                            ag.AFInAppEventParameterName(agVar, fVarValues);
                        } catch (Exception e) {
                            AFLogger.valueOf("Failed to resend cached request", e);
                        }
                    }
                } catch (Throwable th) {
                    ag.this.onValidateInAppFailure = false;
                    throw th;
                }
            } catch (Exception e2) {
                AFLogger.valueOf("failed to check cache. ", e2);
            }
            ag.this.onValidateInAppFailure = false;
            ag.this.AppsFlyerLib.shutdown();
            ag.init(ag.this);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getSdkVersion() {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "getSdkVersion", new String[0]);
        StringBuilder sb = new StringBuilder("version: 6.4.2 (build ");
        sb.append(AFInAppEventType);
        sb.append(Operators.BRACKET_END_STR);
        return sb.toString();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setImeiData(String str) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setImeiData", str);
        this.init = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOaidData(String str) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setOaidData", str);
        z.values = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAndroidIdData(String str) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setAndroidIdData", str);
        this.getLevel = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAppInviteOneLink(String str) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setAppInviteOneLink", str);
        AFLogger.AFKeystoreWrapper("setAppInviteOneLink = ".concat(String.valueOf(str)));
        if (str == null || !str.equals(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID))) {
            AppsFlyerProperties.getInstance().remove(AppsFlyerProperties.ONELINK_DOMAIN);
            AppsFlyerProperties.getInstance().remove("onelinkVersion");
            AppsFlyerProperties.getInstance().remove(AppsFlyerProperties.ONELINK_SCHEME);
        }
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_ID, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAdditionalData(Map<String, Object> map) {
        if (map != null) {
            if (ak.valueOf == null) {
                ak.valueOf = new ak();
            }
            ak.valueOf.AFKeystoreWrapper("public_api_call", "setAdditionalData", map.toString());
            AppsFlyerProperties.getInstance().setCustomData(new JSONObject(map).toString());
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserEmails(String... strArr) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setUserEmails", strArr);
        setUserEmails(AppsFlyerProperties.EmailsCryptType.NONE, strArr);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCollectAndroidID(boolean z) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setCollectAndroidID", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_ANDROID_ID, Boolean.toString(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCollectIMEI(boolean z) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setCollectIMEI", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_IMEI, Boolean.toString(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void setCollectOaid(boolean z) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setCollectOaid", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_OAID, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCustomerUserId(String str) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setCustomerUserId", str);
        AFLogger.AFKeystoreWrapper("setCustomerUserId = ".concat(String.valueOf(str)));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.APP_USER_ID, str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAppId(String str) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setAppId", str);
        AppsFlyerProperties.getInstance().set("appid", str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setExtension(String str) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setExtension", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EXTENSION, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setIsUpdate(boolean z) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setIsUpdate", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.IS_UPDATE, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCurrencyCode(String str) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "setCurrencyCode", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.CURRENCY_CODE, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logLocation(Context context, double d, double d2) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "logLocation", String.valueOf(d), String.valueOf(d2));
        HashMap map = new HashMap();
        map.put(AFInAppEventParameterName.LONGTITUDE, Double.toString(d2));
        map.put(AFInAppEventParameterName.LATITUDE, Double.toString(d));
        AFInAppEventParameterName(context, AFInAppEventType.LOCATION_COORDINATES, map);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logSession(Context context) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "logSession", new String[0]);
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFInAppEventType = false;
        AFInAppEventParameterName(context, null, null);
    }

    final void AFKeystoreWrapper(f fVar, Activity activity) {
        Uri uriAFInAppEventType;
        Application application = fVar.values;
        String string = (activity == null || activity.getIntent() == null || (uriAFInAppEventType = ar.AFInAppEventType(activity)) == null) ? "" : uriAFInAppEventType.toString();
        if (AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY) == null) {
            AFLogger.init("[LogEvent/Launch] AppsFlyer's SDK cannot send any event without providing DevKey.");
            AppsFlyerRequestListener appsFlyerRequestListener = fVar.valueOf;
            if (appsFlyerRequestListener != null) {
                appsFlyerRequestListener.onError(RequestError.NO_DEV_KEY, ay.AFKeystoreWrapper);
                return;
            }
            return;
        }
        String referrer = AppsFlyerProperties.getInstance().getReferrer(application);
        fVar.getLevel = referrer != null ? referrer : "";
        fVar.AFInAppEventParameterName = string;
        valueOf(fVar);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void anonymizeUser(boolean z) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "anonymizeUser", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void registerConversionListener(Context context, AppsFlyerConversionListener appsFlyerConversionListener) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "registerConversionListener", new String[0]);
        if (appsFlyerConversionListener != null) {
            AFInAppEventParameterName = appsFlyerConversionListener;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void unregisterConversionListener() {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "unregisterConversionListener", new String[0]);
        AFInAppEventParameterName = null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void registerValidatorListener(Context context, AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "registerValidatorListener", new String[0]);
        AFLogger.AFInAppEventType("registerValidatorListener called");
        if (appsFlyerInAppPurchaseValidatorListener == null) {
            AFLogger.AFInAppEventType("registerValidatorListener null listener");
        } else {
            AFKeystoreWrapper = appsFlyerInAppPurchaseValidatorListener;
        }
    }

    private void valueOf(f fVar) {
        byte b = 0;
        boolean z = fVar.AFVersionDeclaration == null;
        if (valueOf()) {
            AFLogger.AFKeystoreWrapper("CustomerUserId not set, reporting is disabled", true);
            return;
        }
        if (z) {
            if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.LAUNCH_PROTECT_ENABLED, true)) {
                if (AFInAppEventParameterName()) {
                    AppsFlyerRequestListener appsFlyerRequestListener = fVar.valueOf;
                    if (appsFlyerRequestListener != null) {
                        appsFlyerRequestListener.onError(RequestError.EVENT_TIMEOUT, ay.values);
                        return;
                    }
                    return;
                }
            } else {
                AFLogger.AFKeystoreWrapper("Allowing multiple launches within a 5 second time window.");
            }
            this.AppsFlyerInAppPurchaseValidatorListener = System.currentTimeMillis();
        }
        if (l.AFKeystoreWrapper == null) {
            l.AFKeystoreWrapper = new l();
        }
        AFInAppEventType(l.AFKeystoreWrapper.AFInAppEventType(), new e(this, fVar, b), 0L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean AFInAppEventParameterName(f fVar, SharedPreferences sharedPreferences) {
        int iValueOf = valueOf(sharedPreferences, "appsFlyerCount", false);
        return (!sharedPreferences.getBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, false) && iValueOf == 1) || (iValueOf == 1 && !(fVar instanceof bt));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(100:0|2|(1:4)(1:5)|6|(1:11)(1:10)|12|(1:14)|511|15|(3:17|(1:19)(1:20)|21)(1:22)|23|526|24|(1:26)|532|31|(1:33)|34|(1:36)|37|(1:39)|44|(1:46)|47|48|(25:50|(7:52|(1:54)|55|(1:57)(1:58)|(1:62)|63|(1:65))|66|(1:68)(1:69)|70|(1:72)|(1:74)|75|(3:507|77|(1:79))|80|(1:82)|83|84|(1:86)|87|(1:89)|90|(1:94)|95|(1:97)|98|(1:100)(1:101)|102|(4:104|(1:106)|107|(1:109))|110)(9:111|112|518|113|114|(5:528|116|117|542|118)(1:125)|126|522|127)|135|(1:140)|141|(1:143)|(3:546|144|(1:146))|151|(1:155)|156|(1:162)|163|(1:165)(3:166|(2:174|175)(3:168|(2:171|(1:173)(0))(1:170)|175)|503)|(1:177)|178|(3:180|(1:182)(3:183|(10:185|(1:187)|188|(1:190)|191|(1:193)|194|(1:196)(1:197)|(2:200|(1:202)(1:203))(1:199)|204)|(1:206))|(1:208))|(1:210)|211|(2:214|(1:216)(1:217))(1:213)|(1:219)|220|(2:225|(2:498|499)(1:229))(1:224)|230|(1:232)|233|(1:235)(2:236|(1:238))|(1:240)|241|(1:243)|244|(3:246|(1:248)|249)|250|(1:252)|253|254|(3:516|256|(1:264))|265|(1:267)(6:268|(2:310|(1:312)(1:313))(3:272|(10:274|552|275|276|550|277|(2:279|312)(1:(4:281|282|548|283))|304|(1:306)(1:307)|308)(1:309)|313)|(1:315)(1:316)|317|(5:337|(1:339)(1:340)|(1:342)(1:343)|344|(3:346|(1:348)|349))(5:321|(4:540|323|(1:(1:327)(1:329))(1:325)|336)(0)|(0)(0)|344|(0))|503)|509|350|351|(2:512|353)|514|361|505|366|544|371|376|530|377|538|382|(2:520|384)|388|389|536|390|391|534|392|402|(1:404)|(3:406|(2:408|(1:410)(1:411))|412)|413|(4:524|415|(1:417)(1:418)|419)|424|(3:426|(1:428)(1:429)|430)|431|(1:433)|434|(1:436)(1:437)|438|(11:459|460|(1:462)(1:463)|464|(6:466|(4:468|(1:470)|471|(1:473))|474|(1:476)|477|(3:479|(1:481)(2:482|(1:484))|485))|486|(1:488)|489|(1:491)(1:492)|493|(1:497))(2:440|(13:442|(1:444)(2:445|(1:447))|459|460|(0)(0)|464|(0)|486|(0)|489|(0)(0)|493|(2:495|497))(16:448|(1:450)|451|(2:453|(1:455))|456|(1:458)|460|(0)(0)|464|(0)|486|(0)|489|(0)(0)|493|(0)))|503|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(72:0|2|(1:4)(1:5)|6|(1:11)(1:10)|12|(1:14)|(21:511|15|(3:17|(1:19)(1:20)|21)(1:22)|23|(3:526|24|(1:26))|(7:532|31|(1:33)|34|(1:36)|37|(1:39))|44|(1:46)|47|48|(25:50|(7:52|(1:54)|55|(1:57)(1:58)|(1:62)|63|(1:65))|66|(1:68)(1:69)|70|(1:72)|(1:74)|75|(3:507|77|(1:79))|80|(1:82)|83|84|(1:86)|87|(1:89)|90|(1:94)|95|(1:97)|98|(1:100)(1:101)|102|(4:104|(1:106)|107|(1:109))|110)(9:111|112|518|113|114|(5:528|116|117|542|118)(1:125)|126|522|127)|135|(1:140)|141|(1:143)|(3:546|144|(1:146))|151|(1:155)|156|(1:162)|163)|(1:165)(3:166|(2:174|175)(3:168|(2:171|(1:173)(0))(1:170)|175)|503)|(1:177)|178|(3:180|(1:182)(3:183|(10:185|(1:187)|188|(1:190)|191|(1:193)|194|(1:196)(1:197)|(2:200|(1:202)(1:203))(1:199)|204)|(1:206))|(1:208))|(1:210)|211|(2:214|(1:216)(1:217))(1:213)|(1:219)|220|(2:225|(2:498|499)(1:229))(1:224)|230|(1:232)|233|(1:235)(2:236|(1:238))|(1:240)|241|(1:243)|244|(3:246|(1:248)|249)|250|(1:252)|253|254|(3:516|256|(1:264))|265|(1:267)(6:268|(2:310|(1:312)(1:313))(3:272|(10:274|552|275|276|550|277|(2:279|312)(1:(4:281|282|548|283))|304|(1:306)(1:307)|308)(1:309)|313)|(1:315)(1:316)|317|(5:337|(1:339)(1:340)|(1:342)(1:343)|344|(3:346|(1:348)|349))(5:321|(4:540|323|(1:(1:327)(1:329))(1:325)|336)(0)|(0)(0)|344|(0))|503)|509|350|351|(2:512|353)|514|361|505|366|544|371|376|530|377|538|382|(2:520|384)|388|389|536|390|391|534|392|402|(1:404)|(3:406|(2:408|(1:410)(1:411))|412)|413|(4:524|415|(1:417)(1:418)|419)|424|(3:426|(1:428)(1:429)|430)|431|(1:433)|434|(1:436)(1:437)|438|(11:459|460|(1:462)(1:463)|464|(6:466|(4:468|(1:470)|471|(1:473))|474|(1:476)|477|(3:479|(1:481)(2:482|(1:484))|485))|486|(1:488)|489|(1:491)(1:492)|493|(1:497))(2:440|(13:442|(1:444)(2:445|(1:447))|459|460|(0)(0)|464|(0)|486|(0)|489|(0)(0)|493|(2:495|497))(16:448|(1:450)|451|(2:453|(1:455))|456|(1:458)|460|(0)(0)|464|(0)|486|(0)|489|(0)(0)|493|(0)))|503|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(92:0|2|(1:4)(1:5)|6|(1:11)(1:10)|12|(1:14)|511|15|(3:17|(1:19)(1:20)|21)(1:22)|23|(3:526|24|(1:26))|(7:532|31|(1:33)|34|(1:36)|37|(1:39))|44|(1:46)|47|48|(25:50|(7:52|(1:54)|55|(1:57)(1:58)|(1:62)|63|(1:65))|66|(1:68)(1:69)|70|(1:72)|(1:74)|75|(3:507|77|(1:79))|80|(1:82)|83|84|(1:86)|87|(1:89)|90|(1:94)|95|(1:97)|98|(1:100)(1:101)|102|(4:104|(1:106)|107|(1:109))|110)(9:111|112|518|113|114|(5:528|116|117|542|118)(1:125)|126|522|127)|135|(1:140)|141|(1:143)|(3:546|144|(1:146))|151|(1:155)|156|(1:162)|163|(1:165)(3:166|(2:174|175)(3:168|(2:171|(1:173)(0))(1:170)|175)|503)|(1:177)|178|(3:180|(1:182)(3:183|(10:185|(1:187)|188|(1:190)|191|(1:193)|194|(1:196)(1:197)|(2:200|(1:202)(1:203))(1:199)|204)|(1:206))|(1:208))|(1:210)|211|(2:214|(1:216)(1:217))(1:213)|(1:219)|220|(2:225|(2:498|499)(1:229))(1:224)|230|(1:232)|233|(1:235)(2:236|(1:238))|(1:240)|241|(1:243)|244|(3:246|(1:248)|249)|250|(1:252)|253|254|(3:516|256|(1:264))|265|(1:267)(6:268|(2:310|(1:312)(1:313))(3:272|(10:274|552|275|276|550|277|(2:279|312)(1:(4:281|282|548|283))|304|(1:306)(1:307)|308)(1:309)|313)|(1:315)(1:316)|317|(5:337|(1:339)(1:340)|(1:342)(1:343)|344|(3:346|(1:348)|349))(5:321|(4:540|323|(1:(1:327)(1:329))(1:325)|336)(0)|(0)(0)|344|(0))|503)|509|350|351|(2:512|353)|514|361|505|366|544|371|376|530|377|538|382|(2:520|384)|388|389|536|390|391|534|392|402|(1:404)|(3:406|(2:408|(1:410)(1:411))|412)|413|(4:524|415|(1:417)(1:418)|419)|424|(3:426|(1:428)(1:429)|430)|431|(1:433)|434|(1:436)(1:437)|438|(11:459|460|(1:462)(1:463)|464|(6:466|(4:468|(1:470)|471|(1:473))|474|(1:476)|477|(3:479|(1:481)(2:482|(1:484))|485))|486|(1:488)|489|(1:491)(1:492)|493|(1:497))(2:440|(13:442|(1:444)(2:445|(1:447))|459|460|(0)(0)|464|(0)|486|(0)|489|(0)(0)|493|(2:495|497))(16:448|(1:450)|451|(2:453|(1:455))|456|(1:458)|460|(0)(0)|464|(0)|486|(0)|489|(0)(0)|493|(0)))|503|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(94:0|2|(1:4)(1:5)|6|(1:11)(1:10)|12|(1:14)|511|15|(3:17|(1:19)(1:20)|21)(1:22)|23|526|24|(1:26)|(7:532|31|(1:33)|34|(1:36)|37|(1:39))|44|(1:46)|47|48|(25:50|(7:52|(1:54)|55|(1:57)(1:58)|(1:62)|63|(1:65))|66|(1:68)(1:69)|70|(1:72)|(1:74)|75|(3:507|77|(1:79))|80|(1:82)|83|84|(1:86)|87|(1:89)|90|(1:94)|95|(1:97)|98|(1:100)(1:101)|102|(4:104|(1:106)|107|(1:109))|110)(9:111|112|518|113|114|(5:528|116|117|542|118)(1:125)|126|522|127)|135|(1:140)|141|(1:143)|(3:546|144|(1:146))|151|(1:155)|156|(1:162)|163|(1:165)(3:166|(2:174|175)(3:168|(2:171|(1:173)(0))(1:170)|175)|503)|(1:177)|178|(3:180|(1:182)(3:183|(10:185|(1:187)|188|(1:190)|191|(1:193)|194|(1:196)(1:197)|(2:200|(1:202)(1:203))(1:199)|204)|(1:206))|(1:208))|(1:210)|211|(2:214|(1:216)(1:217))(1:213)|(1:219)|220|(2:225|(2:498|499)(1:229))(1:224)|230|(1:232)|233|(1:235)(2:236|(1:238))|(1:240)|241|(1:243)|244|(3:246|(1:248)|249)|250|(1:252)|253|254|(3:516|256|(1:264))|265|(1:267)(6:268|(2:310|(1:312)(1:313))(3:272|(10:274|552|275|276|550|277|(2:279|312)(1:(4:281|282|548|283))|304|(1:306)(1:307)|308)(1:309)|313)|(1:315)(1:316)|317|(5:337|(1:339)(1:340)|(1:342)(1:343)|344|(3:346|(1:348)|349))(5:321|(4:540|323|(1:(1:327)(1:329))(1:325)|336)(0)|(0)(0)|344|(0))|503)|509|350|351|(2:512|353)|514|361|505|366|544|371|376|530|377|538|382|(2:520|384)|388|389|536|390|391|534|392|402|(1:404)|(3:406|(2:408|(1:410)(1:411))|412)|413|(4:524|415|(1:417)(1:418)|419)|424|(3:426|(1:428)(1:429)|430)|431|(1:433)|434|(1:436)(1:437)|438|(11:459|460|(1:462)(1:463)|464|(6:466|(4:468|(1:470)|471|(1:473))|474|(1:476)|477|(3:479|(1:481)(2:482|(1:484))|485))|486|(1:488)|489|(1:491)(1:492)|493|(1:497))(2:440|(13:442|(1:444)(2:445|(1:447))|459|460|(0)(0)|464|(0)|486|(0)|489|(0)(0)|493|(2:495|497))(16:448|(1:450)|451|(2:453|(1:455))|456|(1:458)|460|(0)(0)|464|(0)|486|(0)|489|(0)(0)|493|(0)))|503|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x0774, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0775, code lost:
    
        r7 = "uid";
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x079b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x079d, code lost:
    
        com.appsflyer.AFLogger.valueOf("Exception while collecting display language name. ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x07b0, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x07b2, code lost:
    
        com.appsflyer.AFLogger.valueOf("Exception while collecting display language code. ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x07c5, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x07c7, code lost:
    
        com.appsflyer.AFLogger.valueOf("Exception while collecting country name. ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x0809, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x080b, code lost:
    
        com.appsflyer.AFLogger.valueOf("Exception while collecting install date. ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x088e, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x0890, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0891, code lost:
    
        r18 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x0894, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x0895, code lost:
    
        r18 = r5;
        r17 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x0899, code lost:
    
        r3 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:174:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x05c8 A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x05d9 A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x05e4 A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0648 A[Catch: all -> 0x0cac, TRY_ENTER, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0654  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x0673 A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:307:0x067f  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x06a4 A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x06ba A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:337:0x0717 A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:339:0x071b  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x071c  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x071f A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0735 A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0740 A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:404:0x08bc A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:406:0x08c5 A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:426:0x0948 A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:433:0x096d A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:436:0x09a1  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x09a3  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x09b3  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0a1e  */
    /* JADX WARN: Removed duplicated region for block: B:462:0x0a27  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0a28  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x0a63 A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0bce A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0c4a A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:492:0x0c5b A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0c96 A[Catch: all -> 0x0cac, TryCatch #5 {all -> 0x0cac, blocks: (B:15:0x0098, B:17:0x009e, B:21:0x00ab, B:23:0x00bb, B:24:0x00be, B:26:0x00c8, B:31:0x00d7, B:33:0x00f3, B:34:0x00f8, B:36:0x0100, B:37:0x0105, B:39:0x010d, B:44:0x011a, B:46:0x015a, B:47:0x0161, B:50:0x016b, B:52:0x0171, B:54:0x0177, B:55:0x0184, B:57:0x018d, B:60:0x01a0, B:62:0x01a7, B:63:0x01ae, B:65:0x01b4, B:58:0x0196, B:66:0x01bb, B:68:0x01d8, B:70:0x01e1, B:72:0x01fe, B:74:0x0205, B:75:0x020a, B:77:0x0215, B:79:0x0224, B:80:0x023b, B:82:0x023f, B:83:0x0242, B:86:0x024a, B:87:0x024d, B:89:0x0256, B:90:0x025b, B:92:0x0265, B:94:0x026b, B:95:0x026e, B:97:0x027c, B:98:0x0285, B:102:0x029c, B:104:0x02a7, B:106:0x02af, B:107:0x02b6, B:109:0x02be, B:135:0x0333, B:138:0x034b, B:140:0x0355, B:141:0x035f, B:143:0x036b, B:144:0x0370, B:146:0x037e, B:151:0x038b, B:153:0x0391, B:155:0x0397, B:156:0x039a, B:158:0x03a4, B:162:0x03ae, B:163:0x03b3, B:165:0x03bf, B:177:0x03fa, B:178:0x0403, B:180:0x0413, B:182:0x0419, B:208:0x0499, B:183:0x0421, B:185:0x0427, B:187:0x0437, B:188:0x0449, B:190:0x044f, B:191:0x0455, B:193:0x045b, B:194:0x0461, B:203:0x047a, B:197:0x0469, B:206:0x0489, B:210:0x04a2, B:211:0x04ab, B:219:0x04cc, B:222:0x04d9, B:224:0x04df, B:230:0x04fa, B:232:0x0506, B:233:0x050b, B:235:0x0513, B:240:0x0530, B:241:0x053c, B:243:0x0548, B:244:0x0553, B:246:0x055f, B:248:0x0566, B:249:0x057c, B:250:0x0581, B:252:0x058d, B:253:0x0592, B:264:0x05c8, B:265:0x05cd, B:267:0x05d9, B:350:0x0761, B:353:0x076e, B:361:0x078d, B:366:0x07a2, B:371:0x07b7, B:376:0x07cc, B:377:0x07e3, B:402:0x089f, B:404:0x08bc, B:406:0x08c5, B:408:0x08c9, B:410:0x08d1, B:411:0x08d7, B:412:0x08ee, B:415:0x08fc, B:417:0x090f, B:419:0x0921, B:418:0x091c, B:424:0x093c, B:426:0x0948, B:430:0x095c, B:431:0x0963, B:433:0x096d, B:434:0x097f, B:438:0x09a4, B:445:0x09ba, B:447:0x09cb, B:448:0x09d1, B:450:0x09df, B:451:0x09e8, B:453:0x09f7, B:455:0x0a06, B:456:0x0a0b, B:458:0x0a18, B:460:0x0a1f, B:464:0x0a29, B:466:0x0a63, B:468:0x0a67, B:470:0x0a75, B:471:0x0a9c, B:473:0x0aa2, B:474:0x0aa7, B:476:0x0abc, B:479:0x0ac6, B:481:0x0ad9, B:485:0x0aea, B:482:0x0add, B:484:0x0ae7, B:486:0x0aed, B:488:0x0bce, B:489:0x0bde, B:491:0x0c4a, B:493:0x0c6d, B:495:0x0c96, B:497:0x0c9a, B:492:0x0c5b, B:423:0x0927, B:401:0x089a, B:381:0x080b, B:375:0x07c7, B:370:0x07b2, B:365:0x079d, B:360:0x0778, B:268:0x05e4, B:270:0x05f7, B:272:0x05ff, B:275:0x0607, B:277:0x0615, B:315:0x06a4, B:317:0x06bf, B:319:0x06ce, B:321:0x06d6, B:323:0x06dc, B:342:0x071f, B:344:0x073a, B:346:0x0740, B:348:0x0757, B:349:0x075c, B:343:0x0735, B:327:0x06eb, B:333:0x06ff, B:335:0x070e, B:337:0x0717, B:316:0x06ba, B:281:0x0629, B:283:0x062f, B:298:0x0648, B:300:0x0655, B:306:0x0673, B:308:0x0680, B:310:0x0699, B:260:0x05b9, B:262:0x05c0, B:236:0x0519, B:238:0x0525, B:225:0x04e5, B:227:0x04f1, B:229:0x04f7, B:498:0x0ca0, B:217:0x04be, B:166:0x03c5, B:168:0x03cb, B:175:0x03ea, B:173:0x03dc, B:150:0x0386, B:101:0x028e, B:111:0x02d7, B:113:0x02e6, B:116:0x02ee, B:118:0x02f8, B:127:0x0317, B:134:0x032e, B:43:0x0115, B:30:0x00d2, B:22:0x00b6, B:256:0x05a9), top: B:511:0x0098, inners: #0, #8, #9, #14, #15, #17, #18, #24, #26, #27, #28 }] */
    /* JADX WARN: Removed duplicated region for block: B:512:0x076e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:520:0x0826 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:524:0x08fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.Map<java.lang.String, java.lang.Object> values(com.appsflyer.internal.f r34) {
        /*
            Method dump skipped, instruction units count: 3254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.ag.values(com.appsflyer.internal.f):java.util.Map");
    }

    public static void AFInAppEventParameterName(Context context, Map<String, ? super String> map) {
        y yVar = y.c.valueOf;
        y.e eVarAFKeystoreWrapper = y.AFKeystoreWrapper(context);
        map.put("network", eVarAFKeystoreWrapper.values);
        if (eVarAFKeystoreWrapper.AFKeystoreWrapper != null) {
            map.put("operator", eVarAFKeystoreWrapper.AFKeystoreWrapper);
        }
        if (eVarAFKeystoreWrapper.AFInAppEventParameterName != null) {
            map.put("carrier", eVarAFKeystoreWrapper.AFInAppEventParameterName);
        }
    }

    public static SharedPreferences AFKeystoreWrapper(Context context) {
        ag agVar = onAppOpenAttribution;
        if (agVar.setUserEmails == null) {
            agVar.setUserEmails = context.getApplicationContext().getSharedPreferences("appsflyer-data", 0);
        }
        return onAppOpenAttribution.setUserEmails;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getAppsFlyerUID(Context context) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("public_api_call", "getAppsFlyerUID", new String[0]);
        if (context == null) {
            return null;
        }
        return al.AFInAppEventParameterName(new WeakReference(new n(context).values));
    }

    private void AFKeystoreWrapper(f fVar) throws Throwable {
        long jCurrentTimeMillis;
        HttpURLConnection httpURLConnection;
        DataOutputStream dataOutputStream;
        URL url = new URL(fVar.onAttributionFailureNative);
        byte[] bArrAFKeystoreWrapper = fVar.AFKeystoreWrapper();
        String str = fVar.init;
        String str2 = fVar.AppsFlyer2dXConversionCallback;
        boolean zAFInAppEventType = fVar.AFInAppEventType();
        Application application = fVar.values;
        AppsFlyerRequestListener appsFlyerRequestListener = fVar.valueOf;
        boolean z = zAFInAppEventType && fVar.onAppOpenAttributionNative == 1;
        if (this.AFLogger$LogLevel == null) {
            this.AFLogger$LogLevel = new au(application);
        }
        au auVar = this.AFLogger$LogLevel;
        if (z) {
            auVar.values.put("from_fg", Long.valueOf(System.currentTimeMillis() - this.getSdkVersion));
            jCurrentTimeMillis = System.currentTimeMillis();
        } else {
            jCurrentTimeMillis = 0;
        }
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
            try {
                httpURLConnection2.setRequestMethod("POST");
                httpURLConnection2.setRequestProperty("Content-Length", String.valueOf(bArrAFKeystoreWrapper.length));
                httpURLConnection2.setRequestProperty(NetWork.CONTENT_TYPE, fVar.valueOf() ? "application/octet-stream" : "application/json");
                httpURLConnection2.setConnectTimeout(ADSim.INTISPLSH);
                httpURLConnection2.setDoOutput(true);
                if (!AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.HTTP_CACHE, true)) {
                    httpURLConnection2.setUseCaches(false);
                }
                try {
                    dataOutputStream = new DataOutputStream(httpURLConnection2.getOutputStream());
                    try {
                        dataOutputStream.write(bArrAFKeystoreWrapper);
                        dataOutputStream.close();
                        int responseCode = httpURLConnection2.getResponseCode();
                        if (z) {
                            auVar.values.put("net", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                        }
                        String strValueOf = valueOf(httpURLConnection2);
                        if (ak.valueOf == null) {
                            ak.valueOf = new ak();
                        }
                        ak.valueOf.AFKeystoreWrapper("server_response", url.toString(), String.valueOf(responseCode), strValueOf);
                        AFLogger.AFKeystoreWrapper("response code: ".concat(String.valueOf(responseCode)));
                        SharedPreferences sharedPreferencesAFKeystoreWrapper = AFKeystoreWrapper(application);
                        if (responseCode == 200) {
                            if (application != null && zAFInAppEventType) {
                                this.onValidateInApp = System.currentTimeMillis();
                                this.onAppOpenAttributionNative.values();
                            }
                            if (appsFlyerRequestListener != null) {
                                appsFlyerRequestListener.onSuccess();
                            }
                            if (str2 != null) {
                                ah.values();
                                ah.values(str2, application);
                            } else {
                                SharedPreferences.Editor editorEdit = AFKeystoreWrapper(application).edit();
                                editorEdit.putString("sentSuccessfully", AbsoluteConst.TRUE);
                                editorEdit.apply();
                                if (!this.onValidateInAppFailure && System.currentTimeMillis() - this.AppsFlyer2dXConversionCallback >= 15000 && this.AppsFlyerLib == null) {
                                    if (l.AFKeystoreWrapper == null) {
                                        l.AFKeystoreWrapper = new l();
                                    }
                                    this.AppsFlyerLib = l.AFKeystoreWrapper.AFInAppEventType();
                                    AFInAppEventType(this.AppsFlyerLib, new c(application), 1L, TimeUnit.SECONDS);
                                }
                            }
                            bp bpVar = new bp(application);
                            ac acVarValues = bpVar.values();
                            if (acVarValues != null && acVarValues.AFInAppEventType()) {
                                String str3 = acVarValues.values;
                                AFLogger.AFInAppEventType("Resending Uninstall token to AF servers: ".concat(String.valueOf(str3)));
                                bpVar.AFKeystoreWrapper(str3);
                            }
                            this.setAndroidIdData = ap.valueOf(strValueOf).optBoolean("send_background", false);
                        } else if (appsFlyerRequestListener != null) {
                            int i = RequestError.RESPONSE_CODE_FAILURE;
                            StringBuilder sb = new StringBuilder();
                            sb.append(ay.AFInAppEventType);
                            sb.append(Operators.SPACE_STR);
                            sb.append(responseCode);
                            appsFlyerRequestListener.onError(i, sb.toString());
                        }
                        bn.AFInAppEventParameterName(this, fVar, str, application, sharedPreferencesAFKeystoreWrapper, Integer.valueOf(responseCode), null);
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (dataOutputStream != null) {
                            dataOutputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    dataOutputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection = httpURLConnection2;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            httpURLConnection = null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void validateAndLogInAppPurchase(Context context, String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak akVar = ak.valueOf;
        String[] strArr = new String[6];
        strArr[0] = str;
        strArr[1] = str2;
        strArr[2] = str3;
        strArr[3] = str4;
        strArr[4] = str5;
        strArr[5] = map == null ? "" : map.toString();
        akVar.AFKeystoreWrapper("public_api_call", "validateAndTrackInAppPurchase", strArr);
        if (!isStopped()) {
            StringBuilder sb = new StringBuilder("Validate in app called with parameters: ");
            sb.append(str3);
            sb.append(Operators.SPACE_STR);
            sb.append(str4);
            sb.append(Operators.SPACE_STR);
            sb.append(str5);
            AFLogger.AFKeystoreWrapper(sb.toString());
        }
        if (str == null || str4 == null || str2 == null || str5 == null || str3 == null) {
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = AFKeystoreWrapper;
            if (appsFlyerInAppPurchaseValidatorListener != null) {
                appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure("Please provide purchase parameters");
                return;
            }
            return;
        }
        Context applicationContext = context.getApplicationContext();
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
        if (context instanceof Activity) {
            ((Activity) context).getIntent();
        }
        new Thread(new ad(applicationContext, string, str, str2, str3, str4, str5, map)).start();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setHost(String str, String str2) {
        if (str != null) {
            AppsFlyerProperties.getInstance().set("custom_host_prefix", str);
        }
        if (str2 == null || str2.isEmpty()) {
            AFLogger.init("hostName cannot be null or empty");
        } else {
            AppsFlyerProperties.getInstance().set("custom_host", str2);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getHostName() {
        String string = AppsFlyerProperties.getInstance().getString("custom_host");
        return string != null ? string : "appsflyer.com";
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getHostPrefix() {
        String string = AppsFlyerProperties.getInstance().getString("custom_host_prefix");
        return string != null ? string : "";
    }

    static /* synthetic */ void values(ag agVar, f fVar) {
        String str;
        ScheduledExecutorService scheduledExecutorServiceAFInAppEventType;
        Application application = fVar.values;
        String str2 = fVar.AFVersionDeclaration;
        if (application == null) {
            AFLogger.AFInAppEventType("sendWithEvent - got null context. skipping event/launch.");
            return;
        }
        SharedPreferences sharedPreferencesAFKeystoreWrapper = AFKeystoreWrapper(application);
        AppsFlyerProperties.getInstance().saveProperties(sharedPreferencesAFKeystoreWrapper);
        if (!agVar.isStopped()) {
            StringBuilder sb = new StringBuilder("sendWithEvent from activity: ");
            sb.append(application.getClass().getName());
            AFLogger.AFKeystoreWrapper(sb.toString());
        }
        boolean z = true;
        boolean z2 = false;
        boolean z3 = str2 == null;
        boolean z4 = fVar instanceof bx;
        boolean z5 = fVar instanceof bt;
        fVar.onInstallConversionDataLoadedNative = z3;
        Map<String, ?> mapValues = agVar.values(fVar);
        String str3 = (String) mapValues.get("appsflyerKey");
        if (str3 == null || str3.length() == 0) {
            AFLogger.AFInAppEventType("Not sending data yet, waiting for dev key");
            AppsFlyerRequestListener appsFlyerRequestListener = fVar.valueOf;
            if (appsFlyerRequestListener != null) {
                appsFlyerRequestListener.onError(RequestError.NO_DEV_KEY, ay.AFKeystoreWrapper);
                return;
            }
            return;
        }
        if (!agVar.isStopped()) {
            AFLogger.AFKeystoreWrapper("AppsFlyerLib.sendWithEvent");
        }
        int iValueOf = valueOf(sharedPreferencesAFKeystoreWrapper, "appsFlyerCount", false);
        if (z5 || z4) {
            str = String.format(onDeepLinking, AppsFlyerLib.getInstance().getHostPrefix(), onAppOpenAttribution.getHostName());
        } else if (!z3) {
            str = String.format(onConversionDataSuccess, AppsFlyerLib.getInstance().getHostPrefix(), onAppOpenAttribution.getHostName());
        } else if (iValueOf < 2) {
            str = String.format(onConversionDataFail, AppsFlyerLib.getInstance().getHostPrefix(), onAppOpenAttribution.getHostName());
        } else {
            str = String.format(onAttributionFailure, AppsFlyerLib.getInstance().getHostPrefix(), onAppOpenAttribution.getHostName());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(application.getPackageName());
        String string = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(string);
        sb3.append("&buildnumber=6.4.2");
        String string2 = sb3.toString();
        String strAFInAppEventParameterName = agVar.AFInAppEventParameterName(application);
        if (strAFInAppEventParameterName != null) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(string2);
            sb4.append("&channel=");
            sb4.append(strAFInAppEventParameterName);
            string2 = sb4.toString();
        }
        if (!(AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) || AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) && mapValues.get("advertiserId") != null) {
            try {
                if (TextUtils.isEmpty(agVar.getLevel) && mapValues.remove("android_id") != null) {
                    AFLogger.AFKeystoreWrapper("validateGaidAndIMEI :: removing: android_id");
                }
                if (TextUtils.isEmpty(agVar.init) && mapValues.remove("imei") != null) {
                    AFLogger.AFKeystoreWrapper("validateGaidAndIMEI :: removing: imei");
                }
            } catch (Exception e2) {
                AFLogger.valueOf("failed to remove IMEI or AndroidID key from params; ", e2);
            }
        }
        f fVarAFInAppEventParameterName = fVar.values(string2).AFInAppEventParameterName(mapValues);
        fVarAFInAppEventParameterName.onAppOpenAttributionNative = iValueOf;
        a aVar = new a(agVar, fVarAFInAppEventParameterName, z2 ? (byte) 1 : (byte) 0);
        if (z3) {
            cj[] cjVarArr = agVar.AFVersionDeclaration;
            if (cjVarArr != null) {
                boolean z6 = false;
                for (cj cjVar : cjVarArr) {
                    if (cjVar.valueOf == cj.e.STARTED) {
                        StringBuilder sb5 = new StringBuilder("Failed to get ");
                        sb5.append(cjVar.values);
                        sb5.append(" referrer, wait ...");
                        AFLogger.AFInAppEventType(sb5.toString());
                        z6 = true;
                    }
                }
                z2 = z6;
            }
            if (agVar.setCustomerIdAndLogSession && !agVar.AFKeystoreWrapper()) {
                AFLogger.AFInAppEventType("fetching Facebook deferred AppLink data, wait ...");
                z2 = true;
            }
            if (!agVar.waitForCustomerUserId || agVar.AFVersionDeclaration()) {
                z = z2;
            }
        } else {
            z = false;
        }
        if (j.values) {
            AFLogger.values("ESP deeplink: execute launch on SerialExecutor");
            if (l.AFKeystoreWrapper == null) {
                l.AFKeystoreWrapper = new l();
            }
            l lVar = l.AFKeystoreWrapper;
            if (lVar.values == null) {
                lVar.values = Executors.newSingleThreadScheduledExecutor(lVar.AFInAppEventParameterName);
            }
            scheduledExecutorServiceAFInAppEventType = lVar.values;
        } else {
            if (l.AFKeystoreWrapper == null) {
                l.AFKeystoreWrapper = new l();
            }
            scheduledExecutorServiceAFInAppEventType = l.AFKeystoreWrapper.AFInAppEventType();
        }
        AFInAppEventType(scheduledExecutorServiceAFInAppEventType, aVar, z ? 500L : 0L, TimeUnit.MILLISECONDS);
    }

    static /* synthetic */ void AFInAppEventParameterName(ag agVar, f fVar) throws Throwable {
        String string;
        StringBuilder sb = new StringBuilder("url: ");
        sb.append(fVar.onAttributionFailureNative);
        AFLogger.AFKeystoreWrapper(sb.toString());
        if (fVar.AppsFlyer2dXConversionCallback != null) {
            string = Base64.encodeToString(fVar.AFKeystoreWrapper(), 2);
            AFLogger.AFKeystoreWrapper("cached data: ".concat(String.valueOf(string)));
        } else {
            string = new JSONObject(fVar.AFInAppEventParameterName()).toString();
            String strReplaceAll = string.replaceAll("\\p{C}", "*Non-printing character*");
            if (!strReplaceAll.equals(string)) {
                AFLogger.init("Payload contains non-printing characters");
                string = strReplaceAll;
            }
            am.AFInAppEventParameterName("data: ".concat(String.valueOf(string)));
        }
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper("server_request", fVar.onAttributionFailureNative, string);
        try {
            agVar.AFKeystoreWrapper(fVar);
        } catch (IOException e2) {
            AFLogger.valueOf("Exception in sendRequestToServer. ", e2);
            if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.USE_HTTP_FALLBACK, false)) {
                agVar.AFKeystoreWrapper(fVar.values(fVar.onAttributionFailureNative.replace("https:", "http:")));
                return;
            }
            StringBuilder sb2 = new StringBuilder("failed to send request to server. ");
            sb2.append(e2.getLocalizedMessage());
            AFLogger.AFKeystoreWrapper(sb2.toString());
            throw e2;
        }
    }
}
