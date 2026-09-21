package io.dcloud.feature.gg.dcloud;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.common.callercontext.ContextChain;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.sdk.PushConsts;
import com.taobao.weex.common.Constants;
import com.taobao.weex.common.WXConfig;
import com.taobao.weex.el.parse.Operators;
import com.taobao.weex.ui.component.WXBasicComponentType;
import com.taobao.weex.ui.component.WXComponent;
import io.dcloud.application.DCLoudApplicationImpl;
import io.dcloud.common.DHInterface.DAI;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.adapter.io.DHFile;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.common.adapter.util.PlatformUtil;
import io.dcloud.common.adapter.util.SP;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.ADUtils;
import io.dcloud.common.util.AESUtil;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.CreateShortResultReceiver;
import io.dcloud.common.util.JSUtil;
import io.dcloud.common.util.NetTool;
import io.dcloud.common.util.NetworkTypeUtil;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.common.util.TelephonyUtil;
import io.dcloud.common.util.TestUtil;
import io.dcloud.common.util.ThreadPool;
import io.dcloud.common.util.ZipUtils;
import io.dcloud.common.util.hostpicker.HostPicker;
import io.dcloud.feature.gg.AdSplashUtil;
import io.dcloud.feature.uniapp.adapter.AbsURIAdapter;
import io.dcloud.h.a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ADHandler {
    public static final String AdTag = "_adio.dcloud.feature.ad.dcloud.ADHandler";
    private static final String File_Data = "data.json";
    private static final String File_Gif = "img.gif";
    private static final String File_Img = "img.png";
    private static final String File_S = "s.txt";
    private static final String File_Tid = "tid.txt";
    private static LinkedList<File> expiresFileList = null;
    static boolean isPullFor360 = false;
    static boolean sNeedShowSkipView = false;
    static long sPullBeginTime;

    public static class ADReceiver implements IADReceiver {
        Context mContext;
        long mStartTime = System.currentTimeMillis();

        public ADReceiver(Context context) {
            this.mContext = null;
            this.mContext = context;
        }

        private void broadcastADReceive() {
            Intent intent = new Intent();
            intent.setAction("ad_receive");
            intent.putExtra("begin", this.mStartTime);
            intent.putExtra("end", System.currentTimeMillis());
            this.mContext.sendBroadcast(intent);
            ADHandler.log("ADReceive", "broadcastADReceive");
        }

        private Boolean pap(JSONObject jSONObject) {
            if (jSONObject != null && Boolean.valueOf(jSONObject.has("pap")).booleanValue()) {
                ADHandler.handleSplashAdEnable(this.mContext, Boolean.valueOf(jSONObject.optInt("pap") == 1));
            }
            return Boolean.TRUE;
        }

        @Override // io.dcloud.feature.gg.dcloud.IADReceiver
        public void onError(String str, String str2) {
            broadcastADReceive();
        }

        @Override // io.dcloud.feature.gg.dcloud.IADReceiver
        public void onReceiver(JSONObject jSONObject) {
            pap(jSONObject);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("psas");
            boolean z = jSONObject.optInt("pap", 0) == 1;
            SP.setBundleData(this.mContext, ADHandler.AdTag, "dpap", jSONObject.optString("dpap", "0"));
            if (jSONArrayOptJSONArray == null || !z) {
                ADHandler.log("ADReceiver", "onReceiver no data = " + jSONObject);
            } else {
                long jCurrentTimeMillis = System.currentTimeMillis();
                int length = jSONArrayOptJSONArray.length();
                ADHandler.log("ADReceiver", "onReceiver psas.length = " + length + "; data=" + jSONObject);
                for (int i = 0; i < length; i++) {
                    ADHandler.handleAdData(this.mContext, jSONArrayOptJSONArray.optJSONObject(i), jCurrentTimeMillis);
                }
            }
            if (ADHandler.isPullFor360) {
                return;
            }
            broadcastADReceive();
        }
    }

    public static class AdData {
        public Object mImgData;
        String mImgPath;
        String mImgSrc;
        JSONObject mJsonData;
        MotionEvent mMotionEvent_down;
        MotionEvent mMotionEvent_up;
        String mOriginalAppid;
        String mProvider;
        int mEShow = 0;
        int mEClick = 0;

        boolean check() {
            return (this.mJsonData == null || this.mImgData == null) ? false : true;
        }

        JSONObject data() {
            return this.mJsonData.optJSONObject("data");
        }

        JSONObject full() {
            return this.mJsonData;
        }

        boolean isEClick() {
            return this.mEClick == 1;
        }

        boolean isEShow() {
            return this.mEShow == 1;
        }

        void listenADReceive(Context context, final IADReceiver iADReceiver) {
            if (iADReceiver != null) {
                BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: io.dcloud.feature.gg.dcloud.ADHandler.AdData.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context2, Intent intent) {
                        try {
                            long longExtra = intent.getLongExtra("end", 0L) - intent.getLongExtra("begin", 0L);
                            ADHandler.log("ADReceive", "useTime=" + longExtra);
                            if (longExtra <= 3000) {
                                iADReceiver.onReceiver(null);
                            }
                            ADHandler.log("ADReceive", "unregisterReceiver");
                            context2.unregisterReceiver(this);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                };
                try {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("ad_receive");
                    LocalBroadcastManager.getInstance(context).registerReceiver(broadcastReceiver, intentFilter);
                    ADHandler.log("ADReceive", "registerReceiver");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        JSONObject report() {
            return this.mJsonData.optJSONObject("report");
        }
    }

    interface AdDataWatcher<E> {
        boolean find();

        void operate(E e);
    }

    interface ThreadTask {
        void execute();
    }

    public static Boolean SplashAdIsEnable(Context context) {
        try {
            String strPapEnable = papEnable(context);
            return strPapEnable == null ? defAdConfig(context) : Boolean.valueOf(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT.equals(strPapEnable.replaceAll("\n", "")));
        } catch (Exception e) {
            e.printStackTrace();
            return Boolean.TRUE;
        }
    }

    private static void addThreadTask(final ThreadTask threadTask) {
        if (threadTask != null) {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                ThreadPool.self().addThreadTask(new Runnable() { // from class: io.dcloud.feature.gg.dcloud.ADHandler.2
                    @Override // java.lang.Runnable
                    public void run() {
                        threadTask.execute();
                    }
                });
            } else {
                threadTask.execute();
            }
        }
    }

    public static boolean allReady(Context context) {
        return !TextUtils.isEmpty(get(context, "appid"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void analysisPullData(byte[] bArr, IADReceiver... iADReceiverArr) throws JSONException {
        long j;
        if (bArr == null) {
            return;
        }
        String str = new String(bArr);
        log(AdTag, "pull data=" + str);
        JSONObject jSONObject = new JSONObject(str);
        int iOptInt = jSONObject.optInt("ret", -1);
        int i = 0;
        if (iOptInt != 0) {
            int length = iADReceiverArr.length;
            while (i < length) {
                iADReceiverArr[i].onError(String.valueOf(iOptInt), jSONObject.optString("desc"));
                i++;
            }
            return;
        }
        if (jSONObject.has(Constants.Value.TIME)) {
            try {
                j = Long.parseLong(get("servertime"));
            } catch (Exception unused) {
                j = 0;
            }
            long jOptLong = jSONObject.optLong(Constants.Value.TIME);
            SP.setBundleData(AdTag, "servertime", String.valueOf(jOptLong));
            if (j > 0 && jOptLong > 0 && !PdrUtil.isSameDay(j * 1000, jOptLong * 1000)) {
                SP.clearBundle(AdSplashUtil.showCountADReward);
            }
        }
        if (jSONObject.has("data")) {
            String strDecrypt = AESUtil.decrypt(a.b(), a.a(), Base64.decode(jSONObject.optString("data"), 2));
            if (strDecrypt != null) {
                try {
                    try {
                        jSONObject.put("data", new JSONObject(strDecrypt));
                    } catch (Exception unused2) {
                        jSONObject.put("data", new JSONArray(strDecrypt));
                    }
                } catch (Exception unused3) {
                }
            }
        }
        int length2 = iADReceiverArr.length;
        while (i < length2) {
            iADReceiverArr[i].onReceiver(jSONObject);
            i++;
        }
    }

    static String appid(Context context) {
        return get(context, "appid");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static String bd(Context context, Boolean bool, Boolean bool2) {
        String str;
        HashMap map = new HashMap();
        map.put(ContextChain.TAG_PRODUCT, "a");
        map.put(CreateShortResultReceiver.KEY_VERSIONNAME, get(context, CreateShortResultReceiver.KEY_VERSIONNAME));
        map.put("appid", BaseInfo.sDefaultBootApp);
        map.put("name", get(context, "name"));
        try {
            map.put("pname", context.getApplicationInfo().loadLabel(context.getPackageManager()));
        } catch (Exception unused) {
        }
        map.put("pn", context.getPackageName());
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 1).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            str = null;
        }
        map.put("pv", str);
        map.put("imei", TelephonyUtil.getIMEI(context, true, true));
        map.put("md", Build.MODEL);
        map.put("vd", Build.MANUFACTURER);
        map.put(WXConfig.os, Integer.valueOf(Build.VERSION.SDK_INT));
        map.put("vb", PdrUtil.isEmpty("1.9.9.81128") ? "" : "1.9.9.81128");
        map.put("net", Integer.valueOf(NetworkTypeUtil.getNetworkType(context)));
        map.put("mc", mc(context));
        map.put("paid", get(context, "adid"));
        map.put("dw", Integer.valueOf(AdSplashUtil.dw(context)));
        map.put("dh", Integer.valueOf(AdSplashUtil.dh(context)));
        map.put("psap", psap(context));
        map.put("psas", psas(context));
        map.put("ps", Integer.valueOf(BaseInfo.existsStreamEnv() ? 1 : 0));
        map.put("psd", Integer.valueOf(BaseInfo.ISDEBUG ? 1 : 0));
        map.put("data", d(context));
        map.put("pap", bool.booleanValue() ? AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT : "0");
        map.put("papi", bool2.booleanValue() ? AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT : 0);
        StringBuilder sb = new StringBuilder();
        sb.append("dcloud");
        get(sb, "ag&lkdg}l&nmi|}zm&il&ol|&IlOl|@ifldmz", "gdt");
        get(sb, "ag&lkdg}l&nmi|}zm&il&k{b&IlK{b@ifldmz", "csj");
        get(sb, "ag&lkdg}l&nmi|}zm&il&c{&IlC{@ifldmz", "ks");
        get(sb, "ag&lkdg}l&nmi|}zm&il&b}`m;>8&Il;>8@ifldmz", "360");
        get(sb, "ag&lkdg}l&nmi|}zm&il&{aoegj&IL[E@ifldmz", "sgm");
        get(sb, URLDecoder.decode("ag%26lkdg%7Dl%26nmi%7C%7Dzm%26il%26%60%7F%26Il%40%7F%40ifldmz"), "hw");
        map.put("psp", sb.toString());
        map.put("psaf", allReady(context) ? "0" : AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
        map.put("psdk", 0);
        String str2 = get("cad");
        if (!TextUtils.isEmpty(str2)) {
            map.put("rad", str2);
        }
        String strA = SP.getsOrCreateBundle(context, a.b("IlKgfnao")).a(a.b("[xdi{`IlMfijdm"), AbsoluteConst.TRUE);
        map.put("mpap", strA != null && strA.equalsIgnoreCase(AbsoluteConst.FALSE) ? "0" : AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
        map.put("lia", AdSplashUtil.getAL(context));
        map.put("dpsp", AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT);
        map.put("bm", getBId());
        map.put("um", getUT());
        while (map.values().remove(null)) {
        }
        while (map.values().remove("null")) {
        }
        return new JSONObject(map).toString();
    }

    static int bg(Context context) {
        int iStringToColor = PdrUtil.stringToColor(get(context, "bg"));
        if (iStringToColor != -1) {
            return iStringToColor;
        }
        return -1;
    }

    static void click(final Context context, final AdData adData, final String str) {
        final String strOptString = adData.data().optString("tid");
        ThreadPool.self().addThreadTask(new Runnable() { // from class: io.dcloud.feature.gg.dcloud.ADHandler.8
            @Override // java.lang.Runnable
            public void run() {
                JSONObject clickData;
                int i;
                if (adData.isEClick()) {
                    clickData = null;
                    i = 46;
                } else {
                    clickData = ADHandler.getClickData(adData);
                    i = 41;
                }
                JSONObject jSONObjectFull = adData.full();
                io.dcloud.g.b.h.a.a(context, adData.mOriginalAppid, strOptString, str, i, null, null, clickData, null, null, AdSplashUtil.getSplashAdpId("_adpid_", "UNIAD_SPLASH_ADPID"), (jSONObjectFull == null || !jSONObjectFull.has("ua")) ? "" : jSONObjectFull.optString("ua"), null);
            }
        });
        if ("wanka".equals(adData.mProvider)) {
            ADHandler_wanka.click_wanka(context, adData, str);
            return;
        }
        if ("youdao".equals(adData.mProvider)) {
            ADHandler_youdao.click_youdao(context, adData, str);
        } else if ("common".equals(adData.mProvider)) {
            ADhandler_common.click_common(context, adData, str);
        } else {
            click_base(context, adData, str);
        }
    }

    static void click_base(final Context context, final AdData adData, final String str) {
        JSONObject jSONObjectData = adData.data();
        final String strOptString = adData.data().optString("tid");
        if (jSONObjectData.has("dplk") && ADUtils.openDeepLink(context, jSONObjectData.optString("dplk"))) {
            if (adData.isEClick()) {
                return;
            }
            ThreadPool.self().addThreadTask(new Runnable() { // from class: io.dcloud.feature.gg.dcloud.ADHandler.7
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObjectFull = adData.full();
                    TestUtil.PointTime.commitTid(context, adData.mOriginalAppid, strOptString, str, 50, AdSplashUtil.getSplashAdpId("_adpid_", "UNIAD_SPLASH_ADPID"), false, (jSONObjectFull == null || !jSONObjectFull.has("ua")) ? "" : jSONObjectFull.optString("ua"));
                }
            });
            if ("wanka".equals(adData.mProvider)) {
                ADHandler_wanka.dplk_wanka(context, adData, str);
                return;
            } else if ("youdao".equals(adData.mProvider)) {
                ADHandler_youdao.dplk_youdao(context, adData, str);
                return;
            } else {
                if ("common".equals(adData.mProvider)) {
                    ADhandler_common.handletask_common(context, adData, str, "dptracker");
                    return;
                }
                return;
            }
        }
        String strOptString2 = jSONObjectData.optString(PushConsts.CMD_ACTION);
        if (TextUtils.equals("url", strOptString2)) {
            if (adData.isEClick()) {
                ADSim.openUrl(context, jSONObjectData.optString("url"));
                return;
            } else {
                ADUtils.openUrl(context, jSONObjectData.optString("url"));
                return;
            }
        }
        if (!TextUtils.equals(AbsoluteConst.SPNAME_DOWNLOAD, strOptString2)) {
            if (TextUtils.equals(AbsoluteConst.XML_STREAMAPP, strOptString2) && jSONObjectData.has("appid")) {
                if (adData.isEClick()) {
                    return;
                }
                ADUtils.openStreamApp(context, jSONObjectData.optString("appid"), jSONObjectData.optJSONObject("parameters"), -1, jSONObjectData.optString("streamapps"));
                return;
            } else {
                if (!TextUtils.equals("browser", strOptString2) || adData.isEClick()) {
                    return;
                }
                ADUtils.openBrowser(context, jSONObjectData.optString("url"));
                return;
            }
        }
        long time = 0;
        if (jSONObjectData.has("expires")) {
            try {
                time = new SimpleDateFormat("yy-MM-dd HH:mm:ss", Locale.ENGLISH).parse(jSONObjectData.optString("expires")).getTime();
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        long j = time;
        String strOptString3 = adData.full() != null ? adData.full().optString("ua") : "";
        if (adData.isEClick()) {
            ADSim.dwApp(context, adData.mOriginalAppid, strOptString, str, jSONObjectData.optString("url"), jSONObjectData.optString(AbsURIAdapter.BUNDLE), null, strOptString3);
        } else {
            ADUtils.dwApp(context, adData.mOriginalAppid, strOptString, str, jSONObjectData.optString("url"), jSONObjectData.optString("downloadAppName"), jSONObjectData.optString(AbsURIAdapter.BUNDLE), j, true, true, strOptString3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0245 A[Catch: Exception -> 0x027a, TRY_LEAVE, TryCatch #2 {Exception -> 0x027a, blocks: (B:107:0x0237, B:109:0x0245, B:111:0x0251, B:113:0x025c, B:115:0x0270), top: B:128:0x0237, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x013b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004c A[Catch: Exception -> 0x0283, TRY_ENTER, TRY_LEAVE, TryCatch #6 {Exception -> 0x0283, blocks: (B:3:0x0013, B:5:0x0035, B:10:0x003f, B:13:0x004c, B:61:0x00f9, B:63:0x011e, B:65:0x0125, B:67:0x012c, B:75:0x0165, B:77:0x0174, B:78:0x0197, B:80:0x019e, B:82:0x01a7, B:84:0x01be, B:86:0x01c9, B:88:0x01d8, B:90:0x01e8, B:92:0x01f5, B:94:0x0207, B:97:0x0216, B:100:0x021c, B:106:0x022d, B:119:0x027e, B:118:0x027b, B:105:0x022a, B:74:0x0162, B:69:0x013b, B:71:0x014c, B:107:0x0237, B:109:0x0245, B:111:0x0251, B:113:0x025c, B:115:0x0270, B:102:0x0221), top: B:136:0x0013, inners: #0, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f A[PHI: r2
      0x005f: PHI (r2v47 int) = (r2v1 int), (r2v33 int) binds: [B:18:0x005d, B:45:0x00c3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063 A[Catch: Exception -> 0x00f1, TryCatch #9 {Exception -> 0x00f1, blocks: (B:17:0x0059, B:20:0x0063, B:22:0x0073, B:25:0x007c, B:27:0x0084, B:30:0x008d, B:32:0x0095, B:34:0x009d, B:47:0x00c7, B:49:0x00cd), top: B:142:0x0059 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0174 A[Catch: Exception -> 0x0283, TryCatch #6 {Exception -> 0x0283, blocks: (B:3:0x0013, B:5:0x0035, B:10:0x003f, B:13:0x004c, B:61:0x00f9, B:63:0x011e, B:65:0x0125, B:67:0x012c, B:75:0x0165, B:77:0x0174, B:78:0x0197, B:80:0x019e, B:82:0x01a7, B:84:0x01be, B:86:0x01c9, B:88:0x01d8, B:90:0x01e8, B:92:0x01f5, B:94:0x0207, B:97:0x0216, B:100:0x021c, B:106:0x022d, B:119:0x027e, B:118:0x027b, B:105:0x022a, B:74:0x0162, B:69:0x013b, B:71:0x014c, B:107:0x0237, B:109:0x0245, B:111:0x0251, B:113:0x025c, B:115:0x0270, B:102:0x0221), top: B:136:0x0013, inners: #0, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01be A[Catch: Exception -> 0x0283, TRY_LEAVE, TryCatch #6 {Exception -> 0x0283, blocks: (B:3:0x0013, B:5:0x0035, B:10:0x003f, B:13:0x004c, B:61:0x00f9, B:63:0x011e, B:65:0x0125, B:67:0x012c, B:75:0x0165, B:77:0x0174, B:78:0x0197, B:80:0x019e, B:82:0x01a7, B:84:0x01be, B:86:0x01c9, B:88:0x01d8, B:90:0x01e8, B:92:0x01f5, B:94:0x0207, B:97:0x0216, B:100:0x021c, B:106:0x022d, B:119:0x027e, B:118:0x027b, B:105:0x022a, B:74:0x0162, B:69:0x013b, B:71:0x014c, B:107:0x0237, B:109:0x0245, B:111:0x0251, B:113:0x025c, B:115:0x0270, B:102:0x0221), top: B:136:0x0013, inners: #0, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0214  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String d(android.content.Context r18) {
        /*
            Method dump skipped, instruction units count: 648
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.feature.gg.dcloud.ADHandler.d(android.content.Context):java.lang.String");
    }

    private static Boolean defAdConfig(Context context) {
        try {
            return Boolean.valueOf(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("DCLOUD_AD_SPLASH", false));
        } catch (Exception e) {
            e.printStackTrace();
            return Boolean.FALSE;
        }
    }

    private static void exec5Plus(final List<HostPicker.Host> list, String str, final IADReceiver[] iADReceiverArr) {
        String strEncode;
        try {
            strEncode = URLEncoder.encode(Base64.encodeToString(AESUtil.encrypt(a.b(), a.a(), ZipUtils.zipString(str)), 2), "utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            strEncode = null;
        }
        final String str2 = "edata=" + strEncode;
        final boolean z = !hasOtherAd();
        addThreadTask(new ThreadTask() { // from class: io.dcloud.feature.gg.dcloud.ADHandler.1
            @Override // io.dcloud.feature.gg.dcloud.ADHandler.ThreadTask
            public void execute() {
                List list2 = list;
                if (list2 != null) {
                    ADHandler.pull((List<HostPicker.Host>) list2, "ThirdConfig", str2, z, iADReceiverArr);
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(new HostPicker.Host("YHx8eHsyJydpazkmbGtkZ31sJmZtfCZrZidpbH5tenwne3hkaXtg", HostPicker.Host.PriorityEnum.FIRST));
                arrayList.add(new HostPicker.Host("YHx8eHsyJydpazombGtkZ31sJmZtfCZrZidpbH5tenwne3hkaXtg", HostPicker.Host.PriorityEnum.NORMAL));
                arrayList.add(new HostPicker.Host("YHx8eHsyJydpbjxqO24+PCUxbG45JTxqamwlMT45PSU9OmwxbGw7aztubGomant4aXh4JmtnZSdgfHx4J2l7", HostPicker.Host.PriorityEnum.BACKUP));
                ADHandler.pull(arrayList, "Splash", str2, z, iADReceiverArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fileAdData(Context context, File file, AdData adData) {
        try {
            JSONObject jSONObject = new JSONObject(new String(DHFile.readAll(file.getAbsolutePath() + Operators.DIV + File_Data)));
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                return;
            }
            adData.mProvider = jSONObject.optString("provider");
            adData.mJsonData = jSONObject;
            adData.mEShow = jSONObject.optInt("es", 0);
            adData.mEClick = jSONObject.optInt("ec", 0);
            String strOptString = jSONObjectOptJSONObject.optString("src");
            adData.mImgSrc = strOptString;
            boolean zEndsWith = strOptString.toLowerCase().endsWith(".gif");
            StringBuilder sb = new StringBuilder();
            sb.append(file.getAbsolutePath());
            sb.append(Operators.DIV);
            sb.append(zEndsWith ? File_Gif : File_Img);
            String string = sb.toString();
            String str = file.getAbsolutePath() + Operators.DIV + File_S;
            if (!new File(string).exists() || new File(str).exists()) {
                return;
            }
            if (zEndsWith) {
                adData.mImgData = PlatformUtil.newInstance("pl.droidsonroids.gif.GifDrawable", new Class[]{String.class}, new Object[]{jSONObject.optString("srcPath")});
            } else {
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(string);
                if (bitmapDecodeFile != null) {
                    adData.mImgData = bitmapDecodeFile;
                }
            }
            adData.mImgPath = string;
            new File(str).createNewFile();
            DHFile.delete(file.getAbsolutePath());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    static String formatUrl(String str, JSONObject jSONObject) {
        try {
            return str.replace("${User-Agent}", URLEncoder.encode(jSONObject.optString("u-a"), "utf-8")).replace("${click_id}", jSONObject.optString("click_id")).replace("${down_x}", String.valueOf(jSONObject.optInt("down_x", -999))).replace("${down_y}", String.valueOf(jSONObject.optInt("down_y", -999))).replace("${up_x}", String.valueOf(jSONObject.optInt("up_x", -999))).replace("${up_y}", String.valueOf(jSONObject.optInt("up_y", -999))).replace("${relative_down_x}", String.valueOf(jSONObject.optInt("relative_down_x", -999))).replace("${relative_down_y}", String.valueOf(jSONObject.optInt("relative_down_y", -999))).replace("${relative_up_x}", String.valueOf(jSONObject.optInt("relative_up_x", -999))).replace("${relative_up_y}", String.valueOf(jSONObject.optInt("relative_up_y", -999)));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return str;
        }
    }

    private static void get(StringBuilder sb, String str, String str2) {
        try {
            Class.forName(a.b(str));
            sb.append(",");
            sb.append(str2);
        } catch (Exception unused) {
        }
    }

    static JSONObject getArgsJsonData(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("ua", jSONObject.optString("ua"));
            jSONObject2.put("down_x", jSONObject.optInt("down_x"));
            jSONObject2.put("down_y", jSONObject.optInt("down_y"));
            jSONObject2.put("up_x", jSONObject.optInt("up_x"));
            jSONObject2.put("up_y", jSONObject.optInt("up_y"));
            jSONObject2.put("relative_down_x", jSONObject.optInt("relative_down_x"));
            jSONObject2.put("relative_down_y", jSONObject.optInt("relative_down_y"));
            jSONObject2.put("relative_up_x", jSONObject.optInt("relative_up_x"));
            jSONObject2.put("relative_up_y", jSONObject.optInt("relative_up_y"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject2;
    }

    private static String getBId() {
        try {
            File file = new File("/proc/sys/kernel/random/boot_id");
            if (file.exists()) {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[37];
                fileInputStream.read(bArr);
                String str = new String(bArr);
                try {
                    fileInputStream.close();
                    return str;
                } catch (Exception unused) {
                    return str;
                }
            }
        } catch (Exception unused2) {
        }
        return "";
    }

    public static AdData getBestAdData(Context context, String str) {
        return getBestAdData(context, str, new AdData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject getClickData(AdData adData) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(WXBasicComponentType.IMG, adData.mImgSrc);
            JSONObject jSONObjectFull = adData.full();
            jSONObject.put("dw", jSONObjectFull.optInt("dw"));
            jSONObject.put("dh", jSONObjectFull.optInt("dh"));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("dx", jSONObjectFull.optInt("down_x"));
            jSONObject2.put(Constants.Name.DISTANCE_Y, jSONObjectFull.optInt("down_y"));
            jSONObject2.put("ux", jSONObjectFull.optInt("up_x"));
            jSONObject2.put("uy", jSONObjectFull.optInt("up_y"));
            jSONObject2.put("rdx", jSONObjectFull.optInt("relative_down_x"));
            jSONObject2.put("rdy", jSONObjectFull.optInt("relative_down_y"));
            jSONObject2.put("rux", jSONObjectFull.optInt("relative_up_x"));
            jSONObject2.put("ruy", jSONObjectFull.optInt("relative_up_y"));
            jSONObject.put("click_coord", jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private static String getRootPath(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir != null) {
            return externalCacheDir.getAbsolutePath() + "/ad/";
        }
        return "/sdcard/Android/data/" + context.getPackageName() + "/cache/ad/";
    }

    private static String getUT() {
        try {
            Process processExec = Runtime.getRuntime().exec("stat -c \"%x\" /data/data");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
            StringBuffer stringBuffer = new StringBuffer();
            char[] cArr = new char[256];
            while (true) {
                int i = bufferedReader.read(cArr);
                if (i <= 0) {
                    break;
                }
                stringBuffer.append(cArr, 0, i);
            }
            bufferedReader.close();
            processExec.waitFor();
            String[] strArrSplit = stringBuffer.toString().replace(JSUtil.QUOTE, "").split("\\.");
            long time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(strArrSplit[0]).getTime();
            String strSubstring = strArrSplit[1];
            if (strSubstring.contains(Operators.PLUS)) {
                strSubstring = strSubstring.substring(0, strSubstring.indexOf(Operators.PLUS));
            }
            return (time / 1000) + Operators.DOT_STR + Long.parseLong(strSubstring.trim());
        } catch (Exception unused) {
            return Operators.DOT_STR;
        }
    }

    private static void handleAdBaseData(final Context context, final JSONObject jSONObject, String str, final String str2, String str3) throws Exception {
        if (jSONObject != null && jSONObject.has("es") && jSONObject.getInt("es") == 1) {
            new ADSim(context, jSONObject).start();
            return;
        }
        System.currentTimeMillis();
        DHFile.writeFile(str.getBytes(), 0, str3 + File_Tid);
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        sb.append(str2.endsWith(".gif") ? File_Gif : File_Img);
        final String string = sb.toString();
        jSONObject.put("srcPath", string);
        DHFile.writeFile(jSONObject.toString().getBytes(), 0, str3 + File_Data);
        addThreadTask(new ThreadTask() { // from class: io.dcloud.feature.gg.dcloud.ADHandler.11
            @Override // io.dcloud.feature.gg.dcloud.ADHandler.ThreadTask
            public void execute() {
                HashMap map;
                byte[] bArrHttpGet = null;
                if (jSONObject.has("ua") && jSONObject.optString("ua").equalsIgnoreCase("webview")) {
                    map = new HashMap();
                    map.put(IWebview.USER_AGENT, ADHandler.get("ua-webview"));
                } else {
                    map = null;
                }
                try {
                    bArrHttpGet = NetTool.httpGet(str2, (HashMap<String, String>) map, true);
                } catch (Exception unused) {
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("download file is nulll");
                sb2.append(bArrHttpGet == null);
                sb2.append("src=");
                sb2.append(str2);
                ADHandler.log("shutao", sb2.toString());
                if (bArrHttpGet != null) {
                    DHFile.writeFile(bArrHttpGet, 0, string);
                }
                if (ADHandler.isPullFor360) {
                    return;
                }
                Intent intent = new Intent();
                intent.setAction("ad_img_downlaod_receive");
                intent.putExtra("downloadImage", bArrHttpGet != null);
                intent.putExtra("src", str2);
                LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
                ADHandler.log("shutao", "handleAdBaseData--downloadC");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleAdData(Context context, JSONObject jSONObject, long j) {
        try {
            String strOptString = jSONObject.optString("provider");
            if ("dcloud".equals(strOptString)) {
                handleAdData_dcloud(context, jSONObject, j);
            } else if ("wanka".equals(strOptString)) {
                ADHandler_wanka.handleAdData_wanka(context, jSONObject, j);
            } else if ("youdao".equals(strOptString)) {
                ADHandler_youdao.handleAdData_youdao(context, jSONObject, j);
            } else if ("common".equals(strOptString)) {
                ADhandler_common.handleAdData_common(context, jSONObject, j);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    static void handleAdData_dcloud(Context context, JSONObject jSONObject, long j) throws Exception {
        String rootPath = getRootPath(context);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
        Date date = new SimpleDateFormat("yy-MM-dd HH:mm:ss", Locale.ENGLISH).parse(jSONObjectOptJSONObject.optString("expires"));
        if (date.getTime() > System.currentTimeMillis()) {
            String strOptString = jSONObjectOptJSONObject.optString("src");
            handleAdBaseData(context, jSONObject, jSONObjectOptJSONObject.optString("tid"), strOptString, rootPath + j + Operators.DIV + date.getTime() + Operators.DIV + URLEncoder.encode(strOptString, "utf-8").hashCode() + Operators.DIV);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleSplashAdEnable(Context context, Boolean bool) {
        try {
            DHFile.writeFile((bool.booleanValue() ? AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT : "0").getBytes(), 0, getRootPath(context).replaceAll("/ad/", Operators.DIV) + "AdEnable.dat");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static boolean hasOtherAd() {
        String bundleData = SP.getBundleData(AdTag, "pspType");
        if (TextUtils.isEmpty(bundleData)) {
            return false;
        }
        return bundleData.contains("360") || bundleData.contains("gdt") || bundleData.contains("csj");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static android.graphics.drawable.Drawable img(android.content.Context r2) {
        /*
            java.lang.String r0 = "img"
            java.lang.String r2 = get(r2, r0)
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            r1 = 0
            if (r0 != 0) goto L2d
            boolean r0 = io.dcloud.common.util.PdrUtil.isDeviceRootDir(r2)
            if (r0 == 0) goto L23
            java.io.File r0 = new java.io.File
            r0.<init>(r2)
            boolean r0 = r0.exists()
            if (r0 == 0) goto L2d
            android.graphics.Bitmap r2 = android.graphics.BitmapFactory.decodeFile(r2)
            goto L2e
        L23:
            r0 = 0
            java.io.InputStream r2 = io.dcloud.common.adapter.util.PlatformUtil.getInputStream(r2, r0)
            android.graphics.Bitmap r2 = android.graphics.BitmapFactory.decodeStream(r2)
            goto L2e
        L2d:
            r2 = r1
        L2e:
            if (r2 == 0) goto L36
            android.graphics.drawable.BitmapDrawable r0 = new android.graphics.drawable.BitmapDrawable
            r0.<init>(r2)
            return r0
        L36:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.feature.gg.dcloud.ADHandler.img(android.content.Context):android.graphics.drawable.Drawable");
    }

    private static void listExpiresAdData(Context context, AdDataWatcher<File> adDataWatcher) {
        File file = new File(getRootPath(context));
        if (!file.exists()) {
            file.mkdirs();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        sortDesc(fileArrListFiles);
        for (File file2 : fileArrListFiles) {
            if (adDataWatcher.find()) {
                DHFile.delete(file2);
            } else {
                for (File file3 : file2.listFiles()) {
                    if (Long.parseLong(file3.getName()) <= System.currentTimeMillis()) {
                        DHFile.delete(file3);
                    } else if (!adDataWatcher.find()) {
                        for (File file4 : file3.listFiles()) {
                            adDataWatcher.operate(file4);
                            if (adDataWatcher.find()) {
                                break;
                            }
                        }
                    }
                }
            }
        }
    }

    static void log(String str, String str2) {
    }

    static String mc(Context context) {
        if (TextUtils.isEmpty(BaseInfo.sChannel) || TextUtils.equals("default", BaseInfo.sChannel)) {
            try {
                return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("DCLOUD_STREAMAPP_CHANNEL", BaseInfo.sChannel);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        return BaseInfo.sChannel;
    }

    static String name(Context context) {
        return get(context, "name");
    }

    private static String papEnable(Context context) {
        String str = getRootPath(context).replaceAll("/ad/", Operators.DIV) + "AdEnable.dat";
        try {
            if (DHFile.isExist(str)) {
                return new String(DHFile.readAll(str));
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    static void postSplashError(Context context, String str, String str2) {
        String str3;
        HashMap map = new HashMap();
        map.put(ContextChain.TAG_PRODUCT, "a");
        map.put(CreateShortResultReceiver.KEY_VERSIONNAME, get(CreateShortResultReceiver.KEY_VERSIONNAME));
        map.put("appid", get("appid"));
        map.put("name", get(context, "name"));
        map.put("pn", context.getPackageName());
        try {
            str3 = context.getPackageManager().getPackageInfo(context.getPackageName(), 1).versionName;
        } catch (Exception unused) {
            str3 = null;
        }
        map.put("pv", str3);
        map.put(ContextChain.TAG_INFRA, Base64.encodeToString(AESUtil.encrypt(a.b(), a.a(), ZipUtils.zipString(TelephonyUtil.getIMEI(context, true, true))), 2));
        map.put("md", Build.MODEL);
        map.put("vd", Build.MANUFACTURER);
        map.put(WXConfig.os, Integer.valueOf(Build.VERSION.SDK_INT));
        map.put("vb", PdrUtil.isEmpty("1.9.9.81128") ? "" : "1.9.9.81128");
        map.put("net", Integer.valueOf(NetworkTypeUtil.getNetworkType(context)));
        map.put("mc", mc(context));
        map.put("paid", get(context, "adid"));
        map.put("dw", Integer.valueOf(AdSplashUtil.dw(context)));
        map.put("dh", Integer.valueOf(AdSplashUtil.dh(context)));
        map.put("c", str);
        map.put(WXComponent.PROP_FS_MATCH_PARENT, str2);
        final String string = new JSONObject(map).toString();
        addThreadTask(new ThreadTask() { // from class: io.dcloud.feature.gg.dcloud.ADHandler.5
            @Override // io.dcloud.feature.gg.dcloud.ADHandler.ThreadTask
            public void execute() {
                NetTool.httpPost("https://96f0e031-f37a-48ef-84c7-2023f6360c0a.bspapp.com/http/splash-screen/report", string, new HashMap());
            }
        });
    }

    public static void pr(Context context, Map<String, Object> map) {
        String str;
        map.put("name", get(context, "name"));
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 1).versionName;
        } catch (Exception unused) {
            str = null;
        }
        map.put("pv", str);
        map.put(WXConfig.os, Integer.valueOf(Build.VERSION.SDK_INT));
        map.put("vb", PdrUtil.isEmpty("1.9.9.81128") ? "" : "1.9.9.81128");
        pullRad(context, map, new ADReceiver(context));
    }

    private static String psap(Context context) {
        StringBuffer stringBuffer = new StringBuffer();
        for (String str : Support.Surpport) {
            stringBuffer.append(str);
            stringBuffer.append(",");
        }
        return stringBuffer.length() > 0 ? stringBuffer.substring(0, stringBuffer.length() - 1) : stringBuffer.toString();
    }

    private static String psas(Context context) {
        final StringBuffer stringBuffer = new StringBuffer();
        listExpiresAdData(context, new AdDataWatcher<File>() { // from class: io.dcloud.feature.gg.dcloud.ADHandler.9
            @Override // io.dcloud.feature.gg.dcloud.ADHandler.AdDataWatcher
            public boolean find() {
                return false;
            }

            @Override // io.dcloud.feature.gg.dcloud.ADHandler.AdDataWatcher
            public void operate(File file) throws Throwable {
                byte[] all = DHFile.readAll(file.getAbsolutePath() + Operators.DIV + ADHandler.File_Tid);
                if (all != null) {
                    String str = new String(all);
                    StringBuffer stringBuffer2 = stringBuffer;
                    stringBuffer2.append(str);
                    stringBuffer2.append(",");
                }
            }
        });
        return stringBuffer.length() > 0 ? stringBuffer.substring(0, stringBuffer.length() - 1) : stringBuffer.toString();
    }

    public static void pull(Context context, String str, boolean z, List<HostPicker.Host> list, IADReceiver... iADReceiverArr) {
        sPullBeginTime = System.currentTimeMillis();
        isPullFor360 = z;
        Boolean boolSplashAdIsEnable = SplashAdIsEnable(context);
        Boolean boolDefAdConfig = defAdConfig(context);
        if (TextUtils.isEmpty(BaseInfo.sDefaultBootApp)) {
            BaseInfo.parseControl();
        }
        boolean z2 = false;
        boolean zStartsWith = !TextUtils.isEmpty(BaseInfo.sDefaultBootApp) ? BaseInfo.sDefaultBootApp.startsWith("__UNI__") : false;
        String strBd = bd(context, boolSplashAdIsEnable, boolDefAdConfig);
        if (zStartsWith) {
            try {
                Object objInvokeMethod = PlatformUtil.invokeMethod("io.dcloud.common.cs.DA", "getInstance", null);
                if (objInvokeMethod != null && (objInvokeMethod instanceof DAI)) {
                    if (list != null) {
                        ((DAI) objInvokeMethod).act(strBd, new ADResult(iADReceiverArr));
                    } else {
                        ((DAI) objInvokeMethod).ar(strBd, new ADResult(iADReceiverArr));
                    }
                    z2 = true;
                }
            } catch (Exception e) {
                Logger.e("ADHANDLER", e.toString());
            }
        }
        if (z2) {
            return;
        }
        exec5Plus(list, strBd, iADReceiverArr);
    }

    static void pullRad(Context context, Map<String, Object> map, final IADReceiver... iADReceiverArr) {
        if (TextUtils.isEmpty(BaseInfo.sDefaultBootApp)) {
            BaseInfo.parseControl();
        }
        HashMap map2 = new HashMap();
        map2.put(ContextChain.TAG_PRODUCT, "a");
        map2.put(CreateShortResultReceiver.KEY_VERSIONNAME, get(CreateShortResultReceiver.KEY_VERSIONNAME));
        map2.put("appid", BaseInfo.sDefaultBootApp);
        map2.put("vb", PdrUtil.isEmpty("1.9.9.81128") ? "" : "1.9.9.81128");
        map2.put("imei", TelephonyUtil.getIMEI(context, true, true));
        if (map == null || !map.containsKey("rad") || PdrUtil.isEmpty(map.get("rad"))) {
            return;
        }
        map2.put("pn", context.getPackageName());
        map2.put("mc", mc(context));
        map2.put("paid", get(context, "adid"));
        map2.put("psdk", 0);
        if (map != null) {
            map2.putAll(map);
        }
        String strEncode = null;
        try {
            strEncode = URLEncoder.encode(Base64.encodeToString(AESUtil.encrypt(a.b(), a.a(), ZipUtils.zipString(new JSONObject(map2).toString())), 2), "utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        final String str = "edata=" + strEncode;
        final boolean z = !hasOtherAd();
        addThreadTask(new ThreadTask() { // from class: io.dcloud.feature.gg.dcloud.ADHandler.4
            @Override // io.dcloud.feature.gg.dcloud.ADHandler.ThreadTask
            public void execute() {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new HostPicker.Host("YHx8eHsyJydrOSZsa2RnfWwmZm18JmtmJ2tnZGRta3wneGR9e2l4eCdraWw=", HostPicker.Host.PriorityEnum.FIRST));
                ADHandler.pull(arrayList, "CAD", str, z, iADReceiverArr);
            }
        });
    }

    private static void sortDesc(File[] fileArr) {
        if (fileArr == null) {
            return;
        }
        for (int i = 0; i < fileArr.length - 1; i++) {
            int i2 = 0;
            while (i2 < (fileArr.length - 1) - i) {
                int i3 = i2 + 1;
                if (Long.parseLong(fileArr[i2].getName()) < Long.parseLong(fileArr[i3].getName())) {
                    File file = fileArr[i2];
                    fileArr[i2] = fileArr[i3];
                    fileArr[i3] = file;
                }
                i2 = i3;
            }
        }
    }

    static void view(final Context context, final AdData adData, final String str) {
        final String strOptString = adData.data().optString("tid");
        ThreadPool.self().addThreadTask(new Runnable() { // from class: io.dcloud.feature.gg.dcloud.ADHandler.6
            @Override // java.lang.Runnable
            public void run() {
                int i = adData.isEShow() ? 45 : 40;
                JSONObject jSONObjectFull = adData.full();
                TestUtil.PointTime.commitTid(context, adData.mOriginalAppid, strOptString, str, i, AdSplashUtil.getSplashAdpId("_adpid_", "UNIAD_SPLASH_ADPID"), false, (jSONObjectFull == null || !jSONObjectFull.has("ua")) ? "" : jSONObjectFull.optString("ua"));
            }
        });
        if ("wanka".equals(adData.mProvider)) {
            ADHandler_wanka.view_wanka(context, adData, str);
        } else if ("youdao".equals(adData.mProvider)) {
            ADHandler_youdao.view_youdao(context, adData, str);
        } else if ("common".equals(adData.mProvider)) {
            ADhandler_common.handletask_common(context, adData, str, "imptracker");
        }
    }

    static String get(Context context, String str) {
        return SP.getBundleData(context, AdTag, str);
    }

    static AdData getBestAdData(final Context context, String str, final AdData adData) {
        adData.mOriginalAppid = str;
        expiresFileList = new LinkedList<>();
        listExpiresAdData(context, new AdDataWatcher<File>() { // from class: io.dcloud.feature.gg.dcloud.ADHandler.10
            @Override // io.dcloud.feature.gg.dcloud.ADHandler.AdDataWatcher
            public boolean find() {
                return adData.check();
            }

            @Override // io.dcloud.feature.gg.dcloud.ADHandler.AdDataWatcher
            public void operate(File file) {
                ADHandler.expiresFileList.add(file);
                ADHandler.fileAdData(context, file, adData);
            }
        });
        if (!adData.check() && expiresFileList.size() != 0) {
            for (int i = 0; i < expiresFileList.size(); i++) {
                new File(expiresFileList.get(i).getAbsolutePath() + Operators.DIV + File_S).delete();
                if (i == 0) {
                    fileAdData(context, expiresFileList.get(i), adData);
                }
            }
        }
        return adData;
    }

    public static String get(String str) {
        return SP.getBundleData(AdTag, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void pull(List<HostPicker.Host> list, String str, final String str2, final boolean z, final IADReceiver... iADReceiverArr) {
        HostPicker.getInstance().pickSuitHost(DCLoudApplicationImpl.self().getContext(), list, str, new HostPicker.HostPickCallback() { // from class: io.dcloud.feature.gg.dcloud.ADHandler.3
            String[] message = new String[1];

            @Override // io.dcloud.common.util.hostpicker.HostPicker.HostPickCallback
            public boolean doRequest(HostPicker.Host host) {
                byte[] bArrHttpPost = NetTool.httpPost(host.getRealHost(), str2, new HashMap(), false, z, this.message);
                if (bArrHttpPost == null) {
                    return false;
                }
                try {
                    ADHandler.analysisPullData(bArrHttpPost, iADReceiverArr);
                    return true;
                } catch (Exception e) {
                    for (IADReceiver iADReceiver : iADReceiverArr) {
                        iADReceiver.onError("Exception", e.getMessage());
                    }
                    return true;
                }
            }

            @Override // io.dcloud.common.util.hostpicker.HostPicker.HostPickCallback
            public void onNoOnePicked() {
                for (IADReceiver iADReceiver : iADReceiverArr) {
                    String[] strArr = this.message;
                    iADReceiver.onError("NotFountDataError", strArr[0] == null ? "data invalid" : strArr[0]);
                }
            }

            @Override // io.dcloud.common.util.hostpicker.HostPicker.HostPickCallback
            public void onOneSelected(HostPicker.Host host) {
            }
        });
    }

    protected static String bd(Context context) {
        return bd(context, SplashAdIsEnable(context), defAdConfig(context));
    }
}
