package io.dcloud.g.d;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.webkit.URLUtil;
import com.igexin.sdk.PushConsts;
import com.nostra13.dcloudimageloader.core.ImageLoader;
import com.nostra13.dcloudimageloader.core.assist.FailReason;
import com.nostra13.dcloudimageloader.core.assist.ImageLoadingListener;
import com.taobao.weex.ui.module.WXModalUIModule;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.IMgr;
import io.dcloud.common.DHInterface.IPdrModule;
import io.dcloud.common.adapter.io.DHFile;
import io.dcloud.common.adapter.util.DeviceInfo;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.common.adapter.util.MessageHandler;
import io.dcloud.common.adapter.util.SP;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.AESUtil;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.NetTool;
import io.dcloud.common.util.NotificationUtil;
import io.dcloud.common.util.TestUtil;
import io.dcloud.common.util.ThreadPool;
import io.dcloud.common.util.ZipUtils;
import io.dcloud.common.util.hostpicker.HostPicker;
import io.dcloud.common.util.net.NetWork;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a implements IPdrModule {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f785a = "CommitModule";

    /* JADX INFO: renamed from: io.dcloud.g.d.a$a, reason: collision with other inner class name */
    class RunnableC0067a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IApp f786a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: io.dcloud.g.d.a$a$a, reason: collision with other inner class name */
        class C0068a implements HostPicker.HostPickCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f787a;
            final /* synthetic */ HashMap b;
            final /* synthetic */ HashMap c;
            final /* synthetic */ SharedPreferences d;

            C0068a(String str, HashMap map, HashMap map2, SharedPreferences sharedPreferences) {
                this.f787a = str;
                this.b = map;
                this.c = map2;
                this.d = sharedPreferences;
            }

            @Override // io.dcloud.common.util.hostpicker.HostPicker.HostPickCallback
            public boolean doRequest(HostPicker.Host host) {
                byte[] bArrHttpPost = NetTool.httpPost(host.getRealHost(), this.f787a, (HashMap<String, String>) this.b, false, true);
                if (bArrHttpPost == null) {
                    return false;
                }
                if (bArrHttpPost != null) {
                    SP.setBundleData(RunnableC0067a.this.f786a.getActivity(), "pdr", SP.REPORT_UNI_VERIFY_GYUID, "");
                    if (this.c.containsKey(AbsoluteConst.XML_APPS)) {
                        this.d.edit().putLong(AbsoluteConst.COMMIT_APP_LIST_TIME, System.currentTimeMillis()).commit();
                    }
                    RunnableC0067a runnableC0067a = RunnableC0067a.this;
                    a.this.a(runnableC0067a.f786a, runnableC0067a.b, bArrHttpPost);
                }
                return true;
            }

            @Override // io.dcloud.common.util.hostpicker.HostPicker.HostPickCallback
            public void onNoOnePicked() {
            }

            @Override // io.dcloud.common.util.hostpicker.HostPicker.HostPickCallback
            public void onOneSelected(HostPicker.Host host) {
            }
        }

        RunnableC0067a(IApp iApp, String str, String str2) {
            this.f786a = iApp;
            this.b = str;
            this.c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            String strEncode;
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            map2.put(NetWork.CONTENT_TYPE, "application/x-www-form-urlencoded;charset=utf-8");
            SharedPreferences orCreateBundle = SP.getOrCreateBundle(this.f786a.getActivity(), AbsoluteConst.START_STATISTICS_DATA);
            map.putAll(io.dcloud.g.b.h.a.a(this.f786a, orCreateBundle));
            try {
                map.put("ps", Integer.valueOf(BaseInfo.existsStreamEnv() ? 1 : 0));
                map.put("psd", Integer.valueOf(BaseInfo.ISDEBUG ? 1 : 0));
                map.put("paid", this.b);
                map.put("urv", this.c);
            } catch (Exception e) {
                Logger.p(a.this.f785a, e.getMessage());
            }
            if (map.size() != 0) {
                do {
                    strEncode = null;
                } while (map.values().remove(null));
                while (map.values().remove("null")) {
                }
                try {
                    strEncode = URLEncoder.encode(Base64.encodeToString(AESUtil.encrypt(this.f786a.getConfusionMgr().getSK(), this.f786a.getConfusionMgr().getSIV(), ZipUtils.zipString(new JSONObject(map).toString())), 2), "utf-8");
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(new HostPicker.Host("YHx8eHsyJyd7OSZsa2RnfWwmZm18JmtmJ2tnZGRta3wneGR9e2l4eCd7fGl6fH14", HostPicker.Host.PriorityEnum.FIRST));
                arrayList.add(new HostPicker.Host("YHx8eHsyJyd7OiZsa2RnfWwmZm18JmtmJ2tnZGRta3wneGR9e2l4eCd7fGl6fH14", HostPicker.Host.PriorityEnum.NORMAL));
                arrayList.add(new HostPicker.Host("YHx8eHsyJydrO2k/Pzs7OCU7a207JTw5Pm0lMWowOSU9Pzk4aT9tbjhtaj8mant4aXh4JmtnZSdgfHx4J2tpew==", HostPicker.Host.PriorityEnum.BACKUP));
                HostPicker.getInstance().pickSuitHost(this.f786a.getActivity(), arrayList, "StartUp", new C0068a("edata=" + strEncode, map2, map, orCreateBundle));
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IApp f788a;
        final /* synthetic */ JSONObject b;

        b(IApp iApp, JSONObject jSONObject) {
            this.f788a = iApp;
            this.b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a(this.f788a, this.b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IApp f789a;
        final /* synthetic */ String b;
        final /* synthetic */ JSONObject c;

        c(IApp iApp, String str, JSONObject jSONObject) {
            this.f789a = iApp;
            this.b = str;
            this.c = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.b(this.f789a, this.b, this.c);
        }
    }

    class d implements ImageLoadingListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ JSONObject f790a;
        final /* synthetic */ IApp b;
        final /* synthetic */ String c;

        d(a aVar, JSONObject jSONObject, IApp iApp, String str) {
            this.f790a = jSONObject;
            this.b = iApp;
            this.c = str;
        }

        @Override // com.nostra13.dcloudimageloader.core.assist.ImageLoadingListener
        public void onLoadingCancelled(String str, View view) {
            System.out.print(str);
        }

        @Override // com.nostra13.dcloudimageloader.core.assist.ImageLoadingListener
        public void onLoadingComplete(String str, View view, Bitmap bitmap) {
            if (bitmap != null) {
                String strOptString = this.f790a.optString(AbsoluteConst.JSON_KEY_TITLE);
                String strOptString2 = this.f790a.optString("content");
                Intent intent = new Intent();
                intent.setClassName(this.b.getActivity(), "io.dcloud.PandoraEntry");
                intent.putExtra("__json__", this.f790a.toString());
                intent.putExtra("appid", this.b.obtainAppId());
                intent.putExtra("adid", this.c);
                intent.putExtra("dcloud.push.broswer", AbsoluteConst.TRUE);
                NotificationUtil.createCustomNotification(this.b.getActivity(), strOptString, bitmap, strOptString, strOptString2, this.f790a.hashCode(), PendingIntent.getActivity(this.b.getActivity(), intent.hashCode(), intent, Build.VERSION.SDK_INT >= 23 ? 1140850688 : 1073741824));
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

    /* JADX INFO: Access modifiers changed from: private */
    public void b(IApp iApp, String str, JSONObject jSONObject) {
        String strOptString = jSONObject.optString(AbsoluteConst.JSON_KEY_ICON);
        if (TextUtils.isEmpty(strOptString) || !URLUtil.isNetworkUrl(strOptString)) {
            return;
        }
        ImageLoader.getInstance().loadImage(strOptString, new d(this, jSONObject, iApp, str));
    }

    @Override // io.dcloud.common.DHInterface.IPdrModule
    public String execute(String str, Object obj) {
        str.hashCode();
        if (!str.equals("start_up") || !(obj instanceof Object[])) {
            return null;
        }
        Object[] objArr = (Object[]) obj;
        a((IApp) objArr[0], (String) objArr[1], (String) objArr[2]);
        return null;
    }

    @Override // io.dcloud.common.DHInterface.IPdrModule
    public void onDestroy() {
    }

    private void a(IApp iApp, String str, String str2) {
        ThreadPool.self().addThreadTask(new RunnableC0067a(iApp, str, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(IApp iApp, String str, byte[] bArr) {
        if (bArr != null) {
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                if (!jSONObject.isNull("ret") && jSONObject.optInt("ret") == 0 && WXModalUIModule.OK.equals(jSONObject.opt("desc")) && !jSONObject.isNull("did")) {
                    SP.setBundleData(SP.getOrCreateBundle(iApp.getActivity(), "pdr"), SP.STARTUP_DEVICE_ID, jSONObject.optString("did"));
                }
                if (BaseInfo.ISDEBUG || jSONObject.isNull("ret") || jSONObject.optInt("ret") != 0 || !WXModalUIModule.OK.equals(jSONObject.opt("desc"))) {
                    return;
                }
                JSONArray jSONArray = new JSONArray(AESUtil.decrypt(iApp.getConfusionMgr().getSK(), iApp.getConfusionMgr().getSIV(), Base64.decode(jSONObject.optString("data"), 2)));
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                    String strOptString = jSONObjectOptJSONObject.optString(PushConsts.CMD_ACTION);
                    if ("webview".equals(strOptString)) {
                        MessageHandler.postDelayed(new b(iApp, jSONObjectOptJSONObject), jSONObjectOptJSONObject.optInt(IApp.ConfigProperty.CONFIG_DELAY, 0));
                    } else if ("push".equals(strOptString)) {
                        MessageHandler.postDelayed(new c(iApp, str, jSONObjectOptJSONObject), jSONObjectOptJSONObject.optInt(IApp.ConfigProperty.CONFIG_DELAY, 0));
                    } else if ("apk".equals(strOptString)) {
                        a(iApp, str, jSONObjectOptJSONObject);
                    }
                }
                if (jSONObject.has("urd")) {
                    String strOptString2 = jSONObject.optString("urd");
                    if (URLUtil.isNetworkUrl(strOptString2)) {
                        DHFile.writeFile(NetTool.httpGet(strOptString2, false), 0, BaseInfo.sURDFilePath);
                    }
                }
            } catch (Exception e) {
                Logger.p(this.f785a, e.getMessage());
            }
        }
    }

    private void a(IApp iApp, String str, JSONObject jSONObject) {
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
            TestUtil.PointTime.commitTid(iApp.getActivity(), iApp.obtainAppId(), strOptString2, str, 29);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[(int) Math.min(contentLength, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM)];
            while (true) {
                int i = inputStream.read(bArr);
                if (i != -1) {
                    fileOutputStream.write(bArr, 0, i);
                } else {
                    fileOutputStream.flush();
                    TestUtil.PointTime.commitTid(iApp.getActivity(), iApp.obtainAppId(), strOptString2, str, 30);
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(IApp iApp, JSONObject jSONObject) {
        iApp.obtainMgrData(IMgr.MgrType.WindowMgr, 52, new Object[]{this, jSONObject});
    }
}
