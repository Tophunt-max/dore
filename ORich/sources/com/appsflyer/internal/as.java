package com.appsflyer.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.taobao.weex.adapter.IWXUserTrackAdapter;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.constant.AbsoluteConst;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class as extends aj {
    a AFInAppEventParameterName;
    private String getLevel;
    private String init;
    boolean valueOf;

    interface a {
        void AFInAppEventType(Map<String, String> map);

        void valueOf(String str);
    }

    as(Uri uri, ag agVar, Context context) {
        super(agVar, context, "GET");
        this.valueOf = false;
        if (TextUtils.isEmpty(uri.getHost()) || TextUtils.isEmpty(uri.getPath())) {
            return;
        }
        String[] strArr = {"onelink.me", "onelnk.com", "app.aflink.com"};
        boolean z = false;
        for (int i = 0; i < 3; i++) {
            if (uri.getHost().contains(strArr[i])) {
                z = true;
            }
        }
        if (j.AFLogger$LogLevel != null) {
            StringBuilder sb = new StringBuilder("Validate if link ");
            sb.append(uri);
            sb.append(" belongs to custom domains: ");
            sb.append(Arrays.asList(j.AFLogger$LogLevel));
            AFLogger.values(sb.toString());
            for (String str : j.AFLogger$LogLevel) {
                if (uri.getHost().contains(str) && !TextUtils.isEmpty(str)) {
                    AFLogger.AFInAppEventType("Link matches custom domain: ".concat(String.valueOf(str)));
                    this.valueOf = true;
                    z = true;
                }
            }
        }
        String[] strArrSplit = uri.getPath().split(Operators.DIV);
        if (z && strArrSplit.length == 3) {
            this.AFInAppEventType = strArrSplit[1];
            this.getLevel = strArrSplit[2];
            this.init = uri.toString();
        }
    }

    final boolean valueOf() {
        return (TextUtils.isEmpty(this.AFInAppEventType) || TextUtils.isEmpty(this.getLevel) || this.AFInAppEventType.equals(AbsoluteConst.XML_APP)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.appsflyer.internal.aj
    protected final void AFKeystoreWrapper(HttpsURLConnection httpsURLConnection) {
        httpsURLConnection.setRequestProperty("Af-UUID", this.AppsFlyer2dXConversionCallback);
        String strValueOf = String.valueOf(this.AFLogger$LogLevel.get("build_number"));
        httpsURLConnection.setRequestProperty("Af-Meta-Sdk-Ver", strValueOf);
        httpsURLConnection.setRequestProperty("Af-Meta-Counter", String.valueOf(this.AFLogger$LogLevel.get(IWXUserTrackAdapter.COUNTER)));
        httpsURLConnection.setRequestProperty("Af-Meta-Model", String.valueOf(this.AFLogger$LogLevel.get("model")));
        httpsURLConnection.setRequestProperty("Af-Meta-Platform", String.valueOf(this.AFLogger$LogLevel.get("platformextension")));
        httpsURLConnection.setRequestProperty("Af-Meta-System-Version", String.valueOf(this.AFLogger$LogLevel.get("sdk")));
        values(httpsURLConnection, this.values, this.AppsFlyer2dXConversionCallback, this.AFInAppEventType, this.getLevel, strValueOf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.appsflyer.internal.aj
    protected final String values() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format(AFKeystoreWrapper, AppsFlyerLib.getInstance().getHostPrefix(), ag.AFInAppEventType().getHostName()));
        sb.append(Operators.DIV);
        sb.append(this.AFInAppEventType);
        sb.append("?id=");
        sb.append(this.getLevel);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.appsflyer.internal.aj
    protected final void values(String str) {
        try {
            HashMap map = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.optString(next));
            }
            this.AFInAppEventParameterName.AFInAppEventType(map);
        } catch (JSONException e) {
            this.AFInAppEventParameterName.valueOf("Can't parse OneLink data");
            AFLogger.valueOf("Error while parsing to json ".concat(String.valueOf(str)), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.appsflyer.internal.aj
    protected final void AFInAppEventParameterName() {
        String str = this.init;
        if (str == null) {
            str = "Can't get OneLink data";
        }
        this.AFInAppEventParameterName.valueOf(str);
    }
}
