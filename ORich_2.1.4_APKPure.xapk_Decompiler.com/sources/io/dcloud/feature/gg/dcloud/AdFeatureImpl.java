package io.dcloud.feature.gg.dcloud;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import com.igexin.assist.sdk.AssistPushConsts;
import com.taobao.weex.common.WXRequest;
import io.dcloud.WebAppActivity;
import io.dcloud.a;
import io.dcloud.common.DHInterface.ICallBack;
import io.dcloud.common.adapter.util.AndroidResources;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.common.adapter.util.SP;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.common.util.hostpicker.HostPicker;
import io.dcloud.feature.gg.AdSplashUtil;
import io.dcloud.feature.gg.dcloud.ADHandler;
import io.dcloud.feature.gg.dcloud.ADResult;
import io.dcloud.feature.gg.dcloud.mgr.SplashAd;
import io.dcloud.feature.gg.dcloud.mgr.SplashAdManager;
import io.dcloud.g.e.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AdFeatureImpl {
    private static volatile SplashAd mSplashAd;
    private static final Map<String, String> splashHandler = new HashMap<String, String>() { // from class: io.dcloud.feature.gg.dcloud.AdFeatureImpl.1
        {
            put("360", "io.dcloud.feature.ad.juhe360.Ad360Handler");
            put("dcloud", "io.dcloud.feature.gg.dcloud.DcloudHandler");
            put("gdt", "io.dcloud.feature.ad.gdt.AdGdtHandler");
            put("csj", "io.dcloud.feature.ad.csj.AdCsjHandler");
            put("ks", "io.dcloud.feature.ad.ks.AdKsHandler");
            put("sgm", "io.dcloud.feature.ad.sigmob.ADSMHandler");
        }
    };
    private static volatile boolean isRequestSuccess = false;
    private static boolean isSplashClose = false;
    private static Handler mHandler = new MyHandler();
    private static int retryCount = 0;

    protected static class AdReceiver implements IADReceiver {
        private Object[] _args;
        private String appid;
        private Context context;

        public AdReceiver(Context context, Object[] objArr, String str) {
            this.context = context;
            this._args = objArr;
            this.appid = str;
        }

        public List<String> getActivities() {
            ArrayList arrayList = new ArrayList();
            try {
                ActivityInfo[] activityInfoArr = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 1).activities;
                if (activityInfoArr != null) {
                    for (ActivityInfo activityInfo : activityInfoArr) {
                        arrayList.add(activityInfo.name);
                    }
                }
                ServiceInfo[] serviceInfoArr = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 4).services;
                if (serviceInfoArr != null) {
                    for (ServiceInfo serviceInfo : serviceInfoArr) {
                        arrayList.add(serviceInfo.name);
                    }
                }
                ProviderInfo[] providerInfoArr = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 8).providers;
                if (providerInfoArr != null) {
                    for (ProviderInfo providerInfo : providerInfoArr) {
                        arrayList.add(providerInfo.name);
                    }
                }
                ActivityInfo[] activityInfoArr2 = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 2).receivers;
                if (activityInfoArr2 != null) {
                    for (ActivityInfo activityInfo2 : activityInfoArr2) {
                        arrayList.add(activityInfo2.name);
                    }
                }
            } catch (Exception unused) {
            }
            return arrayList;
        }

        @Override // io.dcloud.feature.gg.dcloud.IADReceiver
        public void onError(String str, String str2) {
            int i;
            boolean unused = AdFeatureImpl.isRequestSuccess = false;
            SP.setsBundleData(ADHandler.AdTag, "uniad", "");
            Logger.p("request Fail", "type:" + str + ";message:" + str2);
            if (AdFeatureImpl.retryCount < 3) {
                AdFeatureImpl.access$508();
                Message message = new Message();
                message.what = 1;
                message.obj = new Runnable() { // from class: io.dcloud.feature.gg.dcloud.AdFeatureImpl.AdReceiver.2
                    @Override // java.lang.Runnable
                    public void run() {
                        a.a(AdReceiver.this.context, AdReceiver.this.appid, "pull", "RETRY");
                    }
                };
                AdFeatureImpl.mHandler.sendMessageDelayed(message, AdFeatureImpl.retryCount * WXRequest.DEFAULT_TIMEOUT_MS);
            }
            if (this._args[2] == null) {
                try {
                    i = Integer.parseInt(str2);
                } catch (Exception unused2) {
                    i = -1;
                }
                Context context = this.context;
                if (i != -1) {
                    str2 = "http:" + str2;
                }
                AdFeatureImpl.setRequest(context, "-8001", str2);
            }
        }

        @Override // io.dcloud.feature.gg.dcloud.IADReceiver
        public void onReceiver(JSONObject jSONObject) {
            JSONObject jSONObject2;
            Logger.p("doForFeature", "success when request");
            if (AdFeatureImpl.isSplashClose && this._args[2] == null && ADHandler.SplashAdIsEnable(this.context).booleanValue()) {
                AdFeatureImpl.setRequest(this.context, "-8002", "广告关闭时未请求成功");
            }
            if (jSONObject.has("psp")) {
                HashMap map = new HashMap();
                map.put(AdSplashUtil.SP_AD_LIST_TYPE, jSONObject.optString("psp"));
                AdSplashUtil.saveOperate(map);
            } else {
                SP.removeBundleData(ADHandler.AdTag, AdSplashUtil.SP_AD_LIST_TYPE);
            }
            boolean unused = AdFeatureImpl.isRequestSuccess = true;
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
                HashMap map2 = new HashMap();
                JSONObject jSONObject3 = new JSONObject();
                b bVar = SP.getsOrCreateBundle(this.context, ADHandler.AdTag);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.has("uniad") ? jSONObjectOptJSONObject.optString("uniad") : "";
                    if (jSONObjectOptJSONObject.has("al")) {
                        bVar.b("al", jSONObjectOptJSONObject.optString("al"));
                    }
                    if (jSONObjectOptJSONObject.has("cad")) {
                        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("cad");
                        if (jSONObjectOptJSONObject2 != null) {
                            List<String> activities = getActivities();
                            Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
                            while (itKeys.hasNext()) {
                                String next = itKeys.next();
                                JSONObject jSONObject4 = jSONObjectOptJSONObject2.getJSONObject(next);
                                JSONArray jSONArrayOptJSONArray = jSONObject4.optJSONArray("mf-a");
                                if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                                    jSONObject2 = jSONObjectOptJSONObject2;
                                    JSONArray jSONArray = jSONObject4.getJSONArray("cls-a");
                                    for (int i = 0; i < jSONArray.length(); i++) {
                                        try {
                                            Class.forName(jSONArray.getString(i));
                                            JSONObject jSONObject5 = new JSONObject();
                                            jSONObject5.put("r", AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
                                            jSONObject3.put(next, jSONObject5);
                                            break;
                                        } catch (Exception unused2) {
                                        }
                                    }
                                } else {
                                    jSONObject2 = jSONObjectOptJSONObject2;
                                    int i2 = 0;
                                    while (true) {
                                        if (i2 >= jSONArrayOptJSONArray.length()) {
                                            break;
                                        }
                                        if (activities.contains(jSONArrayOptJSONArray.getString(i2))) {
                                            JSONObject jSONObject6 = new JSONObject();
                                            jSONObject6.put("r", AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
                                            jSONObject3.put(next, jSONObject6);
                                            break;
                                        }
                                        i2++;
                                    }
                                }
                                jSONObjectOptJSONObject2 = jSONObject2;
                            }
                            map2.put("cad", jSONObject3.length() > 0 ? jSONObject3.toString() : "");
                        }
                    } else {
                        map2.put("cad", "");
                    }
                    bVar.b("uniad", strOptString);
                    bVar.b("cgk", strOptString);
                } else {
                    bVar.b("uniad", "");
                    map2.put("cad", "");
                }
                AdSplashUtil.saveOperate(map2);
                if (jSONObject3.length() > 0) {
                    HashMap map3 = new HashMap();
                    map3.put("rad", jSONObject3.toString());
                    Context context = this.context;
                    ADHandler.pullRad(context, map3, new ADHandler.ADReceiver(context), new ADResult.CADReceiver(this.context));
                }
            } catch (Exception unused3) {
            }
            if (this.context instanceof WebAppActivity) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.dcloud.feature.gg.dcloud.AdFeatureImpl.AdReceiver.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ((WebAppActivity) AdReceiver.this.context).onCreateAdSplash(AdReceiver.this.context);
                        ((WebAppActivity) AdReceiver.this.context).initBackToFrontSplashAd();
                    }
                });
            }
        }
    }

    private static class MyHandler extends Handler {
        private MyHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 1) {
                ((Runnable) message.obj).run();
            }
        }
    }

    static /* synthetic */ int access$508() {
        int i = retryCount;
        retryCount = i + 1;
        return i;
    }

    public static Object doForFeature(String str, Object obj) {
        Object obj2;
        String str2;
        JSONObject jSONObject;
        JSONObject jSONObjectOptJSONObject;
        String strOptString;
        JSONObject jSONObjectOptJSONObject2;
        JSONObject jSONObjectOptJSONObject3;
        String str3;
        String str4 = "_adpid_";
        if ("onAppCreate".equals(str)) {
            Context context = (Context) obj;
            Logger.p("doForFeature", "AdFeatureImpl onAppCreate");
            String str5 = ADHandler.get("uniad");
            if (!TextUtils.isEmpty(str5)) {
                SP.setsBundleData(context, ADHandler.AdTag, "uniad", str5);
                SP.setsBundleData(context, ADHandler.AdTag, "cgk", str5);
                SP.removeBundleData(context, ADHandler.AdTag, "uniad");
                SP.removeBundleData(context, ADHandler.AdTag, "cgk");
            }
            return null;
        }
        if (!"pull".equals(str)) {
            if ("save".equals(str)) {
                Object[] objArr = (Object[]) obj;
                Context context2 = (Context) objArr[0];
                String str6 = (String) objArr[1];
                HashMap map = (HashMap) objArr[2];
                Logger.p("doForFeature", "AdFeatureImpl save");
                AdSplashUtil.saveOperate(context2, str6, map);
            } else {
                if ("formatUrl_wanka".equals(str)) {
                    Object[] objArr2 = (Object[]) ((Object[]) obj)[2];
                    return ADHandler.formatUrl((String) objArr2[0], (JSONObject) objArr2[1]);
                }
                if ("handleArgs_wanka".equals(str)) {
                    return ADHandler.getArgsJsonData((JSONObject) ((Object[]) obj)[2]);
                }
                if ("onWillCloseSplash".equals(str)) {
                    isSplashClose = true;
                    isRequestSuccess = false;
                    Object[] objArr3 = (Object[]) obj;
                    Context context3 = (Context) objArr3[0];
                    Logger.p("doForFeature", "AdFeatureImpl onWillCloseSplash");
                    if (!(context3 instanceof Activity)) {
                        return null;
                    }
                    Activity activity = (Activity) context3;
                    if (activity.isDestroyed() || activity.isFinishing()) {
                        return null;
                    }
                    if (objArr3[2] != null && (objArr3[2] instanceof View) && mSplashAd != null) {
                        mSplashAd.onSplashClose((View) objArr3[2]);
                    }
                    if (mSplashAd != null) {
                        String errorMsg = mSplashAd.getErrorMsg();
                        if (errorMsg.length() > 0) {
                            setRequest(context3, "-8003", errorMsg);
                        }
                    }
                    obj2 = null;
                    mSplashAd = null;
                } else if ("onCloseSplashNoAd".equals(str)) {
                    isSplashClose = true;
                    Context context4 = (Context) ((Object[]) obj)[0];
                    if (!(context4 instanceof Activity)) {
                        return null;
                    }
                    Activity activity2 = (Activity) context4;
                    if (activity2.isDestroyed() || activity2.isFinishing()) {
                        return null;
                    }
                    Logger.p("doForFeature", "AdFeatureImpl onCloseSplashNoAd");
                    if (!ADHandler.SplashAdIsEnable(context4).booleanValue() || mSplashAd == null) {
                        return null;
                    }
                    String errorMsg2 = mSplashAd.getErrorMsg();
                    if (errorMsg2.length() > 0 && isRequestSuccess && mSplashAd.getSplash() == null) {
                        setRequest(context4, errorMsg2.contains("(-1)") ? "-8005" : "-8004", errorMsg2);
                    }
                } else {
                    if (!"onCreateAdSplash".equals(str)) {
                        if (!"onAppAttachBaseContext".equals(str)) {
                            return null;
                        }
                        Logger.p("doForFeature", "AdFeatureImpl onAppAttachBaseContext");
                        return null;
                    }
                    if (!isRequestSuccess || mSplashAd == null || isSplashClose) {
                        return null;
                    }
                    Object[] objArr4 = (Object[]) obj;
                    final Context context5 = (Context) objArr4[0];
                    if (!(context5 instanceof Activity)) {
                        return null;
                    }
                    Activity activity3 = (Activity) context5;
                    if (activity3.isDestroyed() || activity3.isFinishing() || !ADHandler.SplashAdIsEnable(context5).booleanValue()) {
                        return null;
                    }
                    ICallBack iCallBack = (ICallBack) objArr4[1];
                    Logger.p("doForFeature", "AdFeatureImpl onCreateAdSplash");
                    if (mSplashAd != null) {
                        return mSplashAd.onCreateSplash(iCallBack, new SplashAdManager.OnGetBestAdsListener() { // from class: io.dcloud.feature.gg.dcloud.AdFeatureImpl.2
                            @Override // io.dcloud.feature.gg.dcloud.mgr.SplashAdManager.OnGetBestAdsListener
                            public void onFail() {
                            }

                            @Override // io.dcloud.feature.gg.dcloud.mgr.SplashAdManager.OnGetBestAdsListener
                            public void onSuccess() {
                                Context context6 = context5;
                                if (context6 instanceof WebAppActivity) {
                                    ((WebAppActivity) context6).onCreateAdSplash(context6);
                                }
                            }
                        });
                    }
                }
            }
            return null;
        }
        Object[] objArr5 = (Object[]) obj;
        Context context6 = (Context) objArr5[0];
        String str7 = (String) objArr5[1];
        Logger.p("doForFeature", "AdFeatureImpl pull");
        b.a(context6, ADHandler.AdTag);
        if ((PdrUtil.isEmpty(objArr5[2]) || !"RETRY".equals(objArr5[2])) && ADHandler.SplashAdIsEnable(context6).booleanValue()) {
            mSplashAd = null;
            isSplashClose = false;
            isRequestSuccess = false;
            mHandler.removeMessages(1);
            retryCount = 0;
            List<String> arrayList = new ArrayList<>();
            String str8 = SP.getsBundleData(context6, ADHandler.AdTag, "uniad");
            try {
                JSONObject jSONObject2 = new JSONObject(str8);
                if (jSONObject2.has("splash")) {
                    jSONObject = jSONObject2.getJSONObject("splash");
                    try {
                        ArrayList arrayList2 = new ArrayList(Arrays.asList(jSONObject.optString("_psp_").split(",")));
                        try {
                            arrayList2.remove("");
                            String strOptString2 = jSONObject.optString("_adpid_");
                            strOptString = jSONObject.optString("_ord_", "0");
                            try {
                                if (arrayList2.size() > 1) {
                                    str2 = "";
                                    try {
                                        arrayList = AdSplashUtil.reorderList(arrayList2, strOptString2, jSONObject.optJSONObject("_w_"), jSONObject.optJSONObject("_m_"), true);
                                    } catch (Exception unused) {
                                        arrayList = arrayList2;
                                    }
                                } else {
                                    str2 = "";
                                    arrayList = arrayList2;
                                }
                            } catch (Exception unused2) {
                                str2 = "";
                            }
                        } catch (Exception unused3) {
                            str2 = "";
                            arrayList = arrayList2;
                            strOptString = null;
                        }
                    } catch (Exception unused4) {
                        str2 = "";
                        jSONObjectOptJSONObject = null;
                        strOptString = null;
                    }
                } else {
                    str2 = "";
                    strOptString = null;
                    jSONObject = null;
                }
                jSONObjectOptJSONObject = jSONObject2.has("sp") ? jSONObject2.optJSONObject("sp") : null;
            } catch (Exception unused5) {
                str2 = "";
                jSONObject = null;
            }
            if (arrayList.size() == 0) {
                arrayList = AdSplashUtil.getAdOrder();
            }
            if (PdrUtil.isEmpty(str8) && arrayList.isEmpty()) {
                arrayList.addAll(splashHandler.keySet());
            }
            String strValueOf = strOptString == null ? String.valueOf(Boolean.parseBoolean(AndroidResources.getMetaValue("UNIAD_SPLASH_DEFAULT_ORDER")) ? 1 : 0) : strOptString;
            ArrayList arrayList3 = new ArrayList();
            for (String str9 : arrayList) {
                try {
                    arrayList3.add((ADBaseHandler) Class.forName(splashHandler.get(str9)).newInstance());
                    str3 = str4;
                } catch (Exception unused6) {
                    if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has(str9) && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(str9)) != null && (jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject("splash")) != null) {
                        try {
                            jSONObjectOptJSONObject3.put("did", SP.getBundleData(ADHandler.AdTag, "appid"));
                            jSONObjectOptJSONObject3.put("adid", jSONObject != null ? jSONObject.optString(str4) : str2);
                            str3 = str4;
                            try {
                                arrayList3.add(new CommonSplashHandler(jSONObjectOptJSONObject3.toString(), str9, jSONObjectOptJSONObject2.optString("er"), jSONObjectOptJSONObject2.optString("ec")));
                            } catch (Exception unused7) {
                            }
                        } catch (Exception unused8) {
                            str3 = str4;
                        }
                        str4 = str3;
                    }
                }
                str4 = str3;
            }
            mSplashAd = SplashAdManager.getInstance().pullSplash(strValueOf, str7, (Activity) context6, arrayList3, 1);
        }
        IADReceiver[] iADReceiverArr = {new ADHandler.ADReceiver(context6), new ADResult.CADReceiver(context6), new AdReceiver(context6, objArr5, str7)};
        obj2 = null;
        ADHandler.pull(context6, str7, false, (List<HostPicker.Host>) null, iADReceiverArr);
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setRequest(Context context, String str, String str2) {
        if (context.getPackageName().equals("io.dcloud.HBuilder")) {
            return;
        }
        ADHandler.postSplashError(context, str, str2);
    }
}
