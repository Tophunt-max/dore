package io.dcloud.common.core.a;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.view.View;
import android.webkit.URLUtil;
import com.igexin.sdk.PushConsts;
import com.nostra13.dcloudimageloader.core.ImageLoader;
import com.nostra13.dcloudimageloader.core.assist.FailReason;
import com.nostra13.dcloudimageloader.core.assist.ImageLoadingListener;
import com.taobao.weex.ui.module.WXModalUIModule;
import io.dcloud.EntryProxy;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.IMgr;
import io.dcloud.common.adapter.io.DHFile;
import io.dcloud.common.adapter.util.DeviceInfo;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.common.adapter.util.MessageHandler;
import io.dcloud.common.adapter.util.MobilePhoneModel;
import io.dcloud.common.adapter.util.PlatformUtil;
import io.dcloud.common.adapter.util.SP;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.NetTool;
import io.dcloud.common.util.NotificationUtil;
import io.dcloud.common.util.TestUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: io.dcloud.common.core.a.a$a, reason: collision with other inner class name */
    static class RunnableC0027a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ JSONObject f524a;

        RunnableC0027a(JSONObject jSONObject) {
            this.f524a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.d(this.f524a);
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ JSONObject f525a;

        b(JSONObject jSONObject) {
            this.f525a = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.e(this.f525a);
        }
    }

    static class c implements ImageLoadingListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ JSONObject f526a;
        final /* synthetic */ IApp b;

        c(JSONObject jSONObject, IApp iApp) {
            this.f526a = jSONObject;
            this.b = iApp;
        }

        @Override // com.nostra13.dcloudimageloader.core.assist.ImageLoadingListener
        public void onLoadingCancelled(String str, View view) {
            System.out.print(str);
        }

        @Override // com.nostra13.dcloudimageloader.core.assist.ImageLoadingListener
        public void onLoadingComplete(String str, View view, Bitmap bitmap) {
            if (bitmap != null) {
                String strOptString = this.f526a.optString(AbsoluteConst.JSON_KEY_TITLE);
                String strOptString2 = this.f526a.optString("content");
                Intent intent = new Intent();
                intent.putExtra("dcloud.push.broswer", AbsoluteConst.TRUE);
                intent.setClassName(this.b.getActivity(), "io.dcloud.PandoraEntry");
                intent.putExtra("__json__", this.f526a.toString());
                intent.putExtra("appid", this.b.obtainAppId());
                intent.putExtra("adid", this.b.obtainConfigProperty("adid"));
                NotificationUtil.createCustomNotification(this.b.getActivity(), strOptString, bitmap, strOptString, strOptString2, this.f526a.hashCode(), PendingIntent.getActivity(this.b.getActivity(), intent.hashCode(), intent, 1073741824));
            }
        }

        @Override // com.nostra13.dcloudimageloader.core.assist.ImageLoadingListener
        public void onLoadingFailed(String str, View view, FailReason failReason) {
            System.out.print(str);
        }

        @Override // com.nostra13.dcloudimageloader.core.assist.ImageLoadingListener
        public void onLoadingStarted(String str, View view) {
            System.out.print(str);
        }
    }

    public static void bc(String str) {
        SP.setBundleData("pdr", SP.REPORT_UNI_VERIFY_GYUID, "");
        SharedPreferences orCreateBundle = SP.getOrCreateBundle(AbsoluteConst.START_STATISTICS_DATA);
        if ((System.currentTimeMillis() - orCreateBundle.getLong(AbsoluteConst.COMMIT_APP_LIST_TIME, 0L)) / 100000 >= 26000 && !BaseInfo.isChannelGooglePlay() && ((!Build.MANUFACTURER.equalsIgnoreCase(MobilePhoneModel.HUAWEI) || Build.VERSION.SDK_INT < 23 || PlatformUtil.checkGTAndYoumeng()) && (TextUtils.isEmpty(BaseInfo.sChannel) || !BaseInfo.sChannel.endsWith("|xiaomi")))) {
            orCreateBundle.edit().putLong(AbsoluteConst.COMMIT_APP_LIST_TIME, System.currentTimeMillis()).commit();
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull("ret") && jSONObject.optInt("ret") == 0 && WXModalUIModule.OK.equals(jSONObject.opt("desc")) && !jSONObject.isNull("did")) {
                SP.setBundleData(SP.getOrCreateBundle("pdr"), SP.STARTUP_DEVICE_ID, jSONObject.optString("did"));
            }
            if (BaseInfo.ISDEBUG) {
                return;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("data");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                String strOptString = jSONObjectOptJSONObject.optString(PushConsts.CMD_ACTION);
                if ("webview".equals(strOptString)) {
                    MessageHandler.postDelayed(new RunnableC0027a(jSONObjectOptJSONObject), jSONObjectOptJSONObject.optInt(IApp.ConfigProperty.CONFIG_DELAY, 0));
                } else if ("push".equals(strOptString)) {
                    MessageHandler.postDelayed(new b(jSONObjectOptJSONObject), jSONObjectOptJSONObject.optInt(IApp.ConfigProperty.CONFIG_DELAY, 0));
                } else if ("apk".equals(strOptString)) {
                    c(jSONObjectOptJSONObject);
                }
            }
            if (jSONObject.has("urd")) {
                String strOptString2 = jSONObject.optString("urd");
                if (URLUtil.isNetworkUrl(strOptString2)) {
                    DHFile.writeFile(NetTool.httpGet(strOptString2, false), 0, BaseInfo.sURDFilePath);
                }
            }
        } catch (JSONException e) {
            Logger.p("IDBridge", e.getMessage());
        }
    }

    private static void c(JSONObject jSONObject) {
        IApp iAppA = a();
        if (iAppA == null) {
            return;
        }
        try {
            String strOptString = jSONObject.optString("url");
            String strOptString2 = jSONObject.optString("tid");
            String strOptString3 = jSONObject.optString("name");
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(strOptString).openConnection();
            long contentLength = httpURLConnection.getContentLength();
            if (contentLength < 1) {
                return;
            }
            File file = new File(DeviceInfo.sDeviceRootDir + "/.system/apks/" + strOptString3);
            InputStream inputStream = httpURLConnection.getInputStream();
            if (file.exists() && file.length() < contentLength) {
                file.delete();
            } else if (file.exists() && file.length() == contentLength) {
                return;
            }
            TestUtil.PointTime.commitTid(iAppA.getActivity(), iAppA.obtainAppId(), strOptString2, iAppA.obtainConfigProperty("adid"), 29);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[(int) Math.min(contentLength, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM)];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    fileOutputStream.flush();
                    TestUtil.PointTime.commitTid(iAppA.getActivity(), iAppA.obtainAppId(), strOptString2, iAppA.obtainConfigProperty("adid"), 30);
                    return;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(JSONObject jSONObject) {
        IApp iAppA = a();
        if (iAppA == null) {
            return;
        }
        iAppA.obtainMgrData(IMgr.MgrType.WindowMgr, 52, new Object[]{iAppA, jSONObject});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(JSONObject jSONObject) {
        IApp iAppA = a();
        if (iAppA == null) {
            return;
        }
        String strOptString = jSONObject.optString(AbsoluteConst.JSON_KEY_ICON);
        if (TextUtils.isEmpty(strOptString) || !URLUtil.isNetworkUrl(strOptString)) {
            return;
        }
        ImageLoader.getInstance().loadImage(strOptString, new c(jSONObject, iAppA));
    }

    public static String gd() {
        IApp iAppA = a();
        if (iAppA == null) {
            return "";
        }
        HashMap map = new HashMap(io.dcloud.g.b.h.a.a(iAppA, SP.getOrCreateBundle(iAppA.getActivity(), AbsoluteConst.START_STATISTICS_DATA)));
        try {
            map.put("ps", Integer.valueOf(BaseInfo.existsStreamEnv() ? 1 : 0));
            map.put("psd", Integer.valueOf(BaseInfo.ISDEBUG ? 1 : 0));
            map.put("paid", iAppA.obtainConfigProperty("adid"));
            JSONObject jSONObjectObtainThridInfo = iAppA.obtainThridInfo(IApp.ConfigProperty.ThridInfo.URDJsonData);
            map.put("urv", jSONObjectObtainThridInfo != null ? jSONObjectObtainThridInfo.optString("version") : "0.1");
        } catch (Exception unused) {
        }
        while (map.values().remove(null)) {
        }
        while (map.values().remove("null")) {
        }
        return new JSONObject(map).toString();
    }

    private static IApp a() {
        return (IApp) EntryProxy.getInstnace().getCoreHandler().dispatchEvent(IMgr.MgrType.AppMgr, 28, BaseInfo.sDefaultBootApp);
    }
}
