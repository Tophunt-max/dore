package com.appsflyer.share;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.ag;
import com.appsflyer.internal.cp;
import com.appsflyer.internal.cq;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.feature.gg.dcloud.ADSim;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CrossPromotionHelper {
    private static String AFKeystoreWrapper = "https://%simpression.%s";

    public static void logAndOpenStore(Context context, String str, String str2) {
        logAndOpenStore(context, str, str2, null);
    }

    public static void logAndOpenStore(Context context, String str, String str2, Map<String, String> map) {
        LinkGenerator linkGeneratorAFKeystoreWrapper = AFKeystoreWrapper(context, str, str2, map, String.format(cp.valueOf, AppsFlyerLib.getInstance().getHostPrefix(), ag.AFInAppEventType().getHostName()));
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.AFKeystoreWrapper("CustomerUserId not set, track And Open Store is disabled", true);
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        map.put("af_campaign", str2);
        AppsFlyerLib.getInstance().logEvent(context, "af_cross_promotion", map);
        new Thread(new a(linkGeneratorAFKeystoreWrapper.generateLink(), new cq(), context, AppsFlyerLib.getInstance().isStopped())).start();
    }

    public static void logCrossPromoteImpression(Context context, String str, String str2) {
        logCrossPromoteImpression(context, str, str2, null);
    }

    public static void logCrossPromoteImpression(Context context, String str, String str2, Map<String, String> map) {
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.AFKeystoreWrapper("CustomerUserId not set, Promote Impression is disabled", true);
        } else {
            new Thread(new a(AFKeystoreWrapper(context, str, str2, map, String.format(AFKeystoreWrapper, AppsFlyerLib.getInstance().getHostPrefix(), ag.AFInAppEventType().getHostName())).generateLink(), null, null, AppsFlyerLib.getInstance().isStopped())).start();
        }
    }

    private static LinkGenerator AFKeystoreWrapper(Context context, String str, String str2, Map<String, String> map, String str3) {
        LinkGenerator linkGenerator = new LinkGenerator("af_cross_promotion");
        linkGenerator.valueOf = str3;
        linkGenerator.AFInAppEventParameterName = str;
        linkGenerator.addParameter("af_siteid", context.getPackageName());
        if (str2 != null) {
            linkGenerator.setCampaign(str2);
        }
        if (map != null) {
            linkGenerator.addParameters(map);
        }
        String string = AppsFlyerProperties.getInstance().getString("advertiserId");
        if (string != null) {
            linkGenerator.addParameter("advertising_id", string);
        }
        return linkGenerator;
    }

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            String key = entry.getKey();
            byte b = -1;
            int iHashCode = key.hashCode();
            if (iHashCode != 96801) {
                if (iHashCode == 120623625 && key.equals("impression")) {
                    b = 1;
                }
            } else if (key.equals(AbsoluteConst.XML_APP)) {
                b = 0;
            }
            if (b == 0) {
                cp.valueOf = value;
            } else if (b == 1) {
                AFKeystoreWrapper = value;
            }
        }
    }

    static class a implements Runnable {
        private final WeakReference<Context> AFInAppEventParameterName;
        private final cq AFInAppEventType;
        private final boolean AFKeystoreWrapper;
        private final String valueOf;

        a(String str, cq cqVar, Context context, boolean z) {
            this.valueOf = str;
            this.AFInAppEventType = cqVar;
            this.AFInAppEventParameterName = new WeakReference<>(context);
            this.AFKeystoreWrapper = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            HttpURLConnection httpURLConnection;
            Throwable th;
            if (this.AFKeystoreWrapper) {
                return;
            }
            try {
                httpURLConnection = (HttpURLConnection) new URL(this.valueOf).openConnection();
            } catch (Throwable th2) {
                httpURLConnection = null;
                th = th2;
            }
            try {
                httpURLConnection.setConnectTimeout(ADSim.INTISPLSH);
                httpURLConnection.setInstanceFollowRedirects(false);
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    StringBuilder sb = new StringBuilder("Cross promotion impressions success: ");
                    sb.append(this.valueOf);
                    AFLogger.AFKeystoreWrapper(sb.toString(), false);
                } else if (responseCode == 301 || responseCode == 302) {
                    StringBuilder sb2 = new StringBuilder("Cross promotion redirection success: ");
                    sb2.append(this.valueOf);
                    AFLogger.AFKeystoreWrapper(sb2.toString(), false);
                    if (this.AFInAppEventType != null && this.AFInAppEventParameterName.get() != null) {
                        this.AFInAppEventType.AFInAppEventParameterName = httpURLConnection.getHeaderField("Location");
                        cq cqVar = this.AFInAppEventType;
                        Context context = this.AFInAppEventParameterName.get();
                        if (cqVar.AFInAppEventParameterName != null) {
                            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(cqVar.AFInAppEventParameterName)).setFlags(268435456));
                        }
                    }
                } else {
                    StringBuilder sb3 = new StringBuilder("call to ");
                    sb3.append(this.valueOf);
                    sb3.append(" failed: ");
                    sb3.append(responseCode);
                    AFLogger.AFKeystoreWrapper(sb3.toString());
                }
            } catch (Throwable th3) {
                th = th3;
                try {
                    AFLogger.values(th.getMessage(), th);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } finally {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        }
    }
}
