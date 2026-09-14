package com.appsflyer.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.taobao.weex.adapter.IWXUserTrackAdapter;
import com.taobao.weex.el.parse.Operators;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public abstract class aj implements Runnable {
    protected static String AFKeystoreWrapper = null;
    private static char[] AFVersionDeclaration = null;
    private static long getLevel = 0;
    private static int onAppOpenAttributionNative = 1;
    private static int onAttributionFailureNative;
    private static String valueOf;
    private final ag AFInAppEventParameterName;
    public String AFInAppEventType;
    private final Context init;
    public final String values;
    public final String AppsFlyer2dXConversionCallback = UUID.randomUUID().toString();
    public final Map<String, Object> AFLogger$LogLevel = AFInAppEventType();

    static void AFKeystoreWrapper() {
        AFVersionDeclaration = new char[]{'A', 2614, 5261, 7843, 10537, 13303, 15758, 18513, 21236, 23717, 26450, 28949};
        getLevel = -6360653961166648752L;
    }

    protected abstract void AFInAppEventParameterName();

    protected abstract void AFKeystoreWrapper(HttpsURLConnection httpsURLConnection) throws JSONException, IOException;

    protected abstract String values();

    protected abstract void values(String str);

    static {
        AFKeystoreWrapper();
        valueOf = "v2";
        StringBuilder sb = new StringBuilder("https://%sonelink.%s/shortlink-sdk/");
        sb.append(valueOf);
        AFKeystoreWrapper = sb.toString();
        int i = onAppOpenAttributionNative + 87;
        onAttributionFailureNative = i % 128;
        int i2 = i % 2;
    }

    public aj(ag agVar, Context context, String str) {
        this.AFInAppEventParameterName = agVar;
        this.init = context;
        this.values = str;
    }

    protected final void values(HttpsURLConnection httpsURLConnection, String... strArr) {
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        arrayList.add(1, valueOf);
        String strJoin = TextUtils.join("\u2063", arrayList.toArray());
        StringBuilder sb = new StringBuilder();
        sb.append(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY));
        sb.append(this.AppsFlyer2dXConversionCallback);
        sb.append(valueOf);
        httpsURLConnection.setRequestProperty(AFKeystoreWrapper(ViewConfiguration.getJumpTapTimeout() >> 16, (char) ExpandableListView.getPackedPositionType(0L), 12 - (KeyEvent.getMaxKeyCode() >> 16)).intern(), af.values(strJoin, sb.toString()));
        int i = onAppOpenAttributionNative + 67;
        onAttributionFailureNative = i % 128;
        if ((i % 2 != 0 ? (char) 0 : Operators.ARRAY_START) != 0) {
            return;
        }
        int i2 = 56 / 0;
    }

    private Map<String, Object> AFInAppEventType() {
        HashMap map = new HashMap();
        map.put("build_number", "6.4.2");
        map.put(IWXUserTrackAdapter.COUNTER, Integer.valueOf(ag.valueOf(ag.AFKeystoreWrapper(this.init), "appsFlyerCount", false)));
        map.put("model", Build.MODEL);
        map.put("brand", Build.BRAND);
        map.put("sdk", Integer.toString(Build.VERSION.SDK_INT));
        try {
            map.put("app_version_name", this.init.getPackageManager().getPackageInfo(this.init.getPackageName(), 0).versionName);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        map.put("app_id", this.init.getPackageName());
        map.put("platformextension", new an().AFInAppEventType());
        int i = onAttributionFailureNative + 111;
        onAppOpenAttributionNative = i % 128;
        if (i % 2 != 0) {
            return map;
        }
        Object[] objArr = null;
        int length = objArr.length;
        return map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public void run() {
        String strValueOf;
        Throwable th;
        int responseCode;
        String string = "";
        String strValues = values();
        AFLogger.values("oneLinkUrl: ".concat(String.valueOf(strValues)));
        try {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(strValues).openConnection();
            httpsURLConnection.setRequestProperty("content-type", "application/json");
            httpsURLConnection.setReadTimeout(PathInterpolatorCompat.MAX_NUM_POINTS);
            httpsURLConnection.setConnectTimeout(PathInterpolatorCompat.MAX_NUM_POINTS);
            httpsURLConnection.setRequestMethod(this.values);
            AFKeystoreWrapper(httpsURLConnection);
            responseCode = httpsURLConnection.getResponseCode();
            strValueOf = ag.valueOf(httpsURLConnection);
        } catch (Throwable th2) {
            strValueOf = "";
            th = th2;
        }
        try {
            if (!(responseCode != 200)) {
                int i = onAppOpenAttributionNative + 39;
                onAttributionFailureNative = i % 128;
                int i2 = i % 2;
                AFLogger.AFKeystoreWrapper("Status 200 ok");
            } else {
                StringBuilder sb = new StringBuilder("Response code = ");
                sb.append(responseCode);
                sb.append(" content = ");
                sb.append(strValueOf);
                string = sb.toString();
            }
        } catch (Throwable th3) {
            th = th3;
            AFLogger.valueOf("Error while calling ".concat(String.valueOf(strValues)), th);
            StringBuilder sb2 = new StringBuilder("Error while calling ");
            sb2.append(strValues);
            sb2.append(" stacktrace: ");
            sb2.append(th.toString());
            string = sb2.toString();
        }
        if ((TextUtils.isEmpty(string) ? (char) 22 : 'N') == 'N') {
            AFLogger.init("Connection error: ".concat(String.valueOf(string)));
            AFInAppEventParameterName();
            int i3 = onAttributionFailureNative + 67;
            onAppOpenAttributionNative = i3 % 128;
            int i4 = i3 % 2;
            return;
        }
        int i5 = onAttributionFailureNative + 99;
        onAppOpenAttributionNative = i5 % 128;
        boolean z = i5 % 2 == 0;
        Object obj = null;
        Object[] objArr = 0;
        if (z) {
            AFLogger.AFKeystoreWrapper("Connection call succeeded: ".concat(String.valueOf(strValueOf)));
            values(strValueOf);
            int length = (objArr == true ? 1 : 0).length;
        } else {
            AFLogger.AFKeystoreWrapper("Connection call succeeded: ".concat(String.valueOf(strValueOf)));
            values(strValueOf);
        }
        int i6 = onAttributionFailureNative + 21;
        onAppOpenAttributionNative = i6 % 128;
        if (i6 % 2 == 0) {
            super.hashCode();
        }
    }

    private static String AFKeystoreWrapper(int i, char c, int i2) {
        char[] cArr = new char[i2];
        int i3 = 0;
        while (true) {
            if ((i3 < i2 ? Operators.CONDITION_IF : 'K') != '?') {
                String str = new String(cArr);
                int i4 = onAppOpenAttributionNative + 57;
                onAttributionFailureNative = i4 % 128;
                int i5 = i4 % 2;
                return str;
            }
            int i6 = onAppOpenAttributionNative + 25;
            onAttributionFailureNative = i6 % 128;
            if (!(i6 % 2 != 0)) {
                cArr[i3] = (char) ((((long) AFVersionDeclaration[i + i3]) ^ (((long) i3) * getLevel)) ^ ((long) c));
                i3++;
            } else {
                cArr[i3] = (char) ((((long) AFVersionDeclaration[i / i3]) * (((long) i3) + getLevel)) / ((long) c));
                i3 += 35;
            }
        }
    }
}
