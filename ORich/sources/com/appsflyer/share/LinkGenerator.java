package com.appsflyer.share;

import android.content.Context;
import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.CreateOneLinkHttpTask;
import com.appsflyer.internal.ag;
import com.appsflyer.internal.cp;
import com.appsflyer.internal.l;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.igexin.sdk.PushConsts;
import com.taobao.weex.el.parse.Operators;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public class LinkGenerator {
    String AFInAppEventParameterName;
    private String AFInAppEventType;
    private String AFKeystoreWrapper;
    private String AFLogger$LogLevel;
    private String AFVersionDeclaration;
    private String AppsFlyer2dXConversionCallback;
    private String getLevel;
    private String init;
    private String onAttributionFailureNative;
    private String onDeepLinkingNative;
    String valueOf;
    private final String values;
    private final Map<String, String> onInstallConversionFailureNative = new HashMap();
    private final Map<String, String> onAppOpenAttributionNative = new HashMap();

    public LinkGenerator(String str) {
        this.values = str;
    }

    public LinkGenerator setBrandDomain(String str) {
        this.onDeepLinkingNative = str;
        return this;
    }

    public String getBrandDomain() {
        return this.onDeepLinkingNative;
    }

    public LinkGenerator setDeeplinkPath(String str) {
        this.AFLogger$LogLevel = str;
        return this;
    }

    public LinkGenerator setBaseDeeplink(String str) {
        this.onAttributionFailureNative = str;
        return this;
    }

    public String getChannel() {
        return this.AFInAppEventType;
    }

    public LinkGenerator setChannel(String str) {
        this.AFInAppEventType = str;
        return this;
    }

    public LinkGenerator setReferrerCustomerId(String str) {
        this.AppsFlyer2dXConversionCallback = str;
        return this;
    }

    public String getMediaSource() {
        return this.values;
    }

    public Map<String, String> getUserParams() {
        return new HashMap(this.onInstallConversionFailureNative);
    }

    public String getCampaign() {
        return this.AFKeystoreWrapper;
    }

    public LinkGenerator setCampaign(String str) {
        this.AFKeystoreWrapper = str;
        return this;
    }

    public LinkGenerator addParameter(String str, String str2) {
        this.onInstallConversionFailureNative.put(str, str2);
        return this;
    }

    public LinkGenerator addParameters(Map<String, String> map) {
        if (map != null) {
            this.onInstallConversionFailureNative.putAll(map);
        }
        return this;
    }

    public LinkGenerator setReferrerUID(String str) {
        this.init = str;
        return this;
    }

    public LinkGenerator setReferrerName(String str) {
        this.AFVersionDeclaration = str;
        return this;
    }

    public LinkGenerator setReferrerImageURL(String str) {
        this.getLevel = str;
        return this;
    }

    public LinkGenerator setBaseURL(String str, String str2, String str3) {
        if (str == null || str.length() <= 0) {
            this.valueOf = String.format("https://%s/%s", String.format("%sapp.%s", AppsFlyerLib.getInstance().getHostPrefix(), ag.AFInAppEventType().getHostName()), str3);
        } else {
            if (str2 == null || str2.length() < 5) {
                str2 = "go.onelink.me";
            }
            this.valueOf = String.format("https://%s/%s", str2, str);
        }
        return this;
    }

    private Map<String, String> values() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.onAppOpenAttributionNative.clear();
        this.onAppOpenAttributionNative.put(PushConsts.KEY_SERVICE_PIT, this.values);
        linkedHashMap.put(PushConsts.KEY_SERVICE_PIT, AFInAppEventType(this.values, "media source"));
        String str = this.init;
        if (str != null) {
            this.onAppOpenAttributionNative.put("af_referrer_uid", str);
            linkedHashMap.put("af_referrer_uid", AFInAppEventType(this.init, "referrerUID"));
        }
        String str2 = this.AFInAppEventType;
        if (str2 != null) {
            this.onAppOpenAttributionNative.put(AFInAppEventParameterName.AF_CHANNEL, str2);
            linkedHashMap.put(AFInAppEventParameterName.AF_CHANNEL, AFInAppEventType(this.AFInAppEventType, "channel"));
        }
        String str3 = this.AppsFlyer2dXConversionCallback;
        if (str3 != null) {
            this.onAppOpenAttributionNative.put("af_referrer_customer_id", str3);
            linkedHashMap.put("af_referrer_customer_id", AFInAppEventType(this.AppsFlyer2dXConversionCallback, "referrerCustomerId"));
        }
        String str4 = this.AFKeystoreWrapper;
        if (str4 != null) {
            this.onAppOpenAttributionNative.put("c", str4);
            linkedHashMap.put("c", AFInAppEventType(this.AFKeystoreWrapper, FirebaseAnalytics.Param.CAMPAIGN));
        }
        String str5 = this.AFVersionDeclaration;
        if (str5 != null) {
            this.onAppOpenAttributionNative.put("af_referrer_name", str5);
            linkedHashMap.put("af_referrer_name", AFInAppEventType(this.AFVersionDeclaration, "referrerName"));
        }
        String str6 = this.getLevel;
        if (str6 != null) {
            this.onAppOpenAttributionNative.put("af_referrer_image_url", str6);
            linkedHashMap.put("af_referrer_image_url", AFInAppEventType(this.getLevel, "referrerImageURL"));
        }
        if (this.onAttributionFailureNative != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.onAttributionFailureNative);
            String str7 = this.AFLogger$LogLevel;
            if (str7 != null) {
                this.AFLogger$LogLevel = str7.replaceFirst("^[/]", "");
                sb.append(this.onAttributionFailureNative.endsWith(Operators.DIV) ? "" : Operators.DIV);
                sb.append(this.AFLogger$LogLevel);
            }
            String string = sb.toString();
            this.onAppOpenAttributionNative.put("af_dp", string);
            linkedHashMap.put("af_dp", AFInAppEventType(string, "deepLink"));
        }
        for (Map.Entry<String, String> entry : this.onInstallConversionFailureNative.entrySet()) {
            linkedHashMap.put(entry.getKey(), AFInAppEventType(entry.getValue(), entry.getKey()));
        }
        return linkedHashMap;
    }

    private static String AFInAppEventType(String str, String str2) {
        try {
            return URLEncoder.encode(str, "utf8");
        } catch (UnsupportedEncodingException e) {
            StringBuilder sb = new StringBuilder("Illegal ");
            sb.append(str2);
            sb.append(": ");
            sb.append(str);
            AFLogger.valueOf(sb.toString(), e);
            return "";
        } catch (Throwable th) {
            AFLogger.AFKeystoreWrapper(th);
            return "";
        }
    }

    private static String AFInAppEventType(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb.length() == 0) {
                sb.append(Operators.CONDITION_IF);
            } else {
                sb.append(Typography.amp);
            }
            sb.append(AFInAppEventType(entry.getKey(), entry.getKey()));
            sb.append('=');
            sb.append(entry.getValue());
        }
        return sb.toString();
    }

    public String generateLink() {
        StringBuilder sb = new StringBuilder();
        String str = this.valueOf;
        if (str != null && str.startsWith("http")) {
            sb.append(this.valueOf);
        } else {
            sb.append(String.format(cp.valueOf, AppsFlyerLib.getInstance().getHostPrefix(), ag.AFInAppEventType().getHostName()));
        }
        if (this.AFInAppEventParameterName != null) {
            sb.append('/');
            sb.append(this.AFInAppEventParameterName);
        }
        sb.append(AFInAppEventType(values()));
        return sb.toString();
    }

    public void generateLink(Context context, CreateOneLinkHttpTask.ResponseListener responseListener) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID);
        if (!this.onInstallConversionFailureNative.isEmpty()) {
            for (Map.Entry<String, String> entry : this.onInstallConversionFailureNative.entrySet()) {
                this.onAppOpenAttributionNative.put(entry.getKey(), entry.getValue());
            }
        }
        values();
        String str = this.onDeepLinkingNative;
        Map<String, String> map = this.onAppOpenAttributionNative;
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.AFKeystoreWrapper("CustomerUserId not set, generate User Invite Link is disabled", true);
            return;
        }
        CreateOneLinkHttpTask createOneLinkHttpTask = new CreateOneLinkHttpTask(string, map, ag.AFInAppEventType(), context);
        createOneLinkHttpTask.AFInAppEventParameterName = responseListener;
        createOneLinkHttpTask.valueOf = str;
        if (l.AFKeystoreWrapper == null) {
            l.AFKeystoreWrapper = new l();
        }
        l.AFKeystoreWrapper.AFInAppEventParameterName().execute(createOneLinkHttpTask);
    }
}
