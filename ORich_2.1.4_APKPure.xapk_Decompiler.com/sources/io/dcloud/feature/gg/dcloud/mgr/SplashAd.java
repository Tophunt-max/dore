package io.dcloud.feature.gg.dcloud.mgr;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.igexin.assist.sdk.AssistPushConsts;
import io.dcloud.common.DHInterface.IActivityHandler;
import io.dcloud.common.DHInterface.ICallBack;
import io.dcloud.common.adapter.util.SP;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.common.util.TestUtil;
import io.dcloud.common.util.ThreadPool;
import io.dcloud.feature.gg.AdSplashUtil;
import io.dcloud.feature.gg.dcloud.ADBaseHandler;
import io.dcloud.feature.gg.dcloud.ADHandler;
import io.dcloud.feature.gg.dcloud.DcloudHandler;
import io.dcloud.feature.gg.dcloud.mgr.SplashAdManager;
import io.dcloud.feature.ui.navigator.QueryNotchTool;
import io.src.dcloud.adapter.DCloudAdapterUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class SplashAd {
    private static final int PULL_FAIL = 3;
    private static final int PULL_ING = 1;
    private static final int PULL_SUCCESS = 2;
    private String appid;
    private String dCloudId;
    private WaitSplashSuccessHandler notifyHandler;
    private Activity showActivity;
    private ADBaseHandler splashHandler;
    private View splashView;
    private String sr;
    private LinkedList<ADBaseHandler> adHandlers = new LinkedList<>();
    private int curIndex = 0;
    private long successRequestTimestamp = 0;

    private class WaitSplashSuccessHandler extends Handler {
        SplashAdManager.OnGetBestAdsListener listener;

        private WaitSplashSuccessHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            SplashAdManager.OnGetBestAdsListener onGetBestAdsListener;
            int i = message.what;
            if (i == 1) {
                this.listener = (SplashAdManager.OnGetBestAdsListener) message.obj;
                return;
            }
            if (i == 2) {
                SplashAdManager.OnGetBestAdsListener onGetBestAdsListener2 = this.listener;
                if (onGetBestAdsListener2 != null) {
                    onGetBestAdsListener2.onSuccess();
                    return;
                }
                return;
            }
            if (i != 3 || (onGetBestAdsListener = this.listener) == null) {
                return;
            }
            onGetBestAdsListener.onFail();
        }
    }

    public SplashAd(String str, Activity activity, List<ADBaseHandler> list, int i) {
        this.appid = str;
        this.showActivity = activity;
        for (ADBaseHandler aDBaseHandler : list) {
            if (aDBaseHandler != null) {
                aDBaseHandler.setSource(i);
                this.adHandlers.add(aDBaseHandler);
            }
        }
        this.notifyHandler = new WaitSplashSuccessHandler();
        this.dCloudId = AdSplashUtil.getSplashAdpId("_adpid_", "UNIAD_SPLASH_ADPID");
        this.sr = AdSplashUtil.getSplashAdpId("_sr_", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void commitData(String str, JSONArray jSONArray) {
        if (!AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT.equals(this.sr) || jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        final HashMap map = new HashMap();
        if (PdrUtil.isEmpty(this.dCloudId)) {
            this.dCloudId = AdSplashUtil.getSplashAdpId("_adpid_", "UNIAD_SPLASH_ADPID");
        }
        if (PdrUtil.isEmpty(this.appid)) {
            String str2 = BaseInfo.sDefaultBootApp;
            this.appid = str2;
            if (PdrUtil.isEmpty(str2)) {
                BaseInfo.parseControl();
                this.appid = BaseInfo.sDefaultBootApp;
            }
        }
        String splashAdpId = AdSplashUtil.getSplashAdpId("_type_", "");
        if (PdrUtil.isEmpty(splashAdpId)) {
            splashAdpId = "splash";
        }
        map.put("type", splashAdpId);
        map.put("adpid", this.dCloudId);
        map.put("ord", str);
        map.put("rsp", jSONArray);
        ThreadPool.self().addThreadTask(new Runnable() { // from class: io.dcloud.feature.gg.dcloud.mgr.SplashAd.4
            @Override // java.lang.Runnable
            public void run() {
                TestUtil.PointTime.commitRatio(SplashAd.this.showActivity, SplashAd.this.appid, SP.getBundleData(ADHandler.AdTag, "adid"), 60, SplashAd.this.dCloudId, map);
            }
        });
    }

    private ADBaseHandler getB2CSplashAd() {
        ADBaseHandler next;
        LinkedList<ADBaseHandler> linkedList = this.adHandlers;
        if (linkedList != null && !linkedList.isEmpty()) {
            Iterator<ADBaseHandler> it = this.adHandlers.iterator();
            while (it.hasNext() && (next = it.next()) != null) {
                if (next.getAdRequestStatus() == 1 && !next.isShow()) {
                    return next;
                }
            }
            return null;
        }
        return null;
    }

    private void notifyListener(SplashAdManager.OnGetBestAdsListener onGetBestAdsListener) {
        Message message = new Message();
        message.what = 1;
        message.obj = onGetBestAdsListener;
        this.notifyHandler.sendMessage(message);
    }

    public void disorderPull() {
        Iterator<ADBaseHandler> it = this.adHandlers.iterator();
        while (it.hasNext()) {
            it.next().pullAds(this.showActivity, this.appid, new ADBaseHandler.OnAdsRequestListener() { // from class: io.dcloud.feature.gg.dcloud.mgr.SplashAd.2
                @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler.OnAdsRequestListener
                public void fail(ADBaseHandler aDBaseHandler) {
                    boolean z;
                    JSONArray jSONArray = new JSONArray();
                    boolean z2 = true;
                    try {
                        for (ADBaseHandler aDBaseHandler2 : SplashAd.this.adHandlers) {
                            if (!(aDBaseHandler2 instanceof DcloudHandler)) {
                                if (aDBaseHandler2.getAdRequestStatus() == 0) {
                                    z = true;
                                    break;
                                } else if (!aDBaseHandler2.getErrorMsg().equals("-9999")) {
                                    jSONArray.put(aDBaseHandler2.getResult());
                                }
                            }
                        }
                    } catch (Exception unused) {
                    }
                    z = false;
                    if (!z) {
                        SplashAd.this.commitData("0", jSONArray);
                    }
                    for (ADBaseHandler aDBaseHandler3 : SplashAd.this.adHandlers) {
                        if (aDBaseHandler3.getAdRequestStatus() == 1) {
                            if (!aDBaseHandler3.isBest()) {
                                aDBaseHandler3.setBest();
                                SplashAd.this.successRequestTimestamp = SystemClock.elapsedRealtime();
                                SplashAd.this.notifyHandler.sendEmptyMessage(2);
                            }
                        } else if (aDBaseHandler3.getAdRequestStatus() == -1) {
                        }
                        z2 = false;
                    }
                    if (z2) {
                        SplashAd.this.notifyHandler.sendEmptyMessage(3);
                    }
                }

                @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler.OnAdsRequestListener
                public void success(ADBaseHandler aDBaseHandler) {
                    boolean z;
                    JSONArray jSONArray = new JSONArray();
                    try {
                        for (ADBaseHandler aDBaseHandler2 : SplashAd.this.adHandlers) {
                            if (!(aDBaseHandler2 instanceof DcloudHandler)) {
                                if (aDBaseHandler2.getAdRequestStatus() == 0) {
                                    z = true;
                                    break;
                                } else if (!aDBaseHandler2.getErrorMsg().equals("-9999")) {
                                    jSONArray.put(aDBaseHandler2.getResult());
                                }
                            }
                        }
                    } catch (Exception unused) {
                    }
                    z = false;
                    if (!z) {
                        SplashAd.this.commitData("0", jSONArray);
                    }
                    for (ADBaseHandler aDBaseHandler3 : SplashAd.this.adHandlers) {
                        if (aDBaseHandler3.getAdRequestStatus() == 1) {
                            if (aDBaseHandler3.isBest()) {
                                return;
                            }
                            aDBaseHandler3.setBest();
                            SplashAd.this.successRequestTimestamp = SystemClock.elapsedRealtime();
                            SplashAd.this.notifyHandler.sendEmptyMessage(2);
                            return;
                        }
                        if (aDBaseHandler3.getAdRequestStatus() != -1) {
                            return;
                        }
                    }
                }
            });
        }
    }

    public String getErrorMsg() {
        StringBuilder sb = new StringBuilder();
        LinkedList<ADBaseHandler> linkedList = this.adHandlers;
        if (linkedList == null || linkedList.isEmpty()) {
            return "";
        }
        for (ADBaseHandler aDBaseHandler : this.adHandlers) {
            if (aDBaseHandler.isHasContext()) {
                if (aDBaseHandler.getAdRequestStatus() != 0) {
                    if (aDBaseHandler.getAdRequestStatus() != -1) {
                        if (aDBaseHandler.getAdRequestStatus() == 1) {
                            break;
                        }
                    } else if (!aDBaseHandler.getErrorMsg().contains("9999")) {
                        sb.append(aDBaseHandler.AD_TAD);
                        sb.append(":");
                        sb.append(aDBaseHandler.getErrorMsg());
                        sb.append(",");
                    }
                } else {
                    sb.append(aDBaseHandler.AD_TAD);
                    sb.append(":关闭时未请求完成(-1)");
                    sb.append(",");
                }
            }
        }
        return sb.toString();
    }

    public ADBaseHandler getSplash() {
        return this.splashHandler;
    }

    public boolean hasAvailableAds() {
        ADBaseHandler next;
        LinkedList<ADBaseHandler> linkedList = this.adHandlers;
        if (linkedList != null && !linkedList.isEmpty()) {
            Iterator<ADBaseHandler> it = this.adHandlers.iterator();
            while (it.hasNext() && (next = it.next()) != null) {
                if (next.getAdRequestStatus() == 1 && !next.isShow()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public boolean isTimeout() {
        return SystemClock.elapsedRealtime() - this.successRequestTimestamp > 1740000;
    }

    public boolean isValid() {
        boolean z = false;
        if (this.showActivity.isDestroyed() || this.showActivity.isFinishing() || isTimeout()) {
            return false;
        }
        Iterator<ADBaseHandler> it = this.adHandlers.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            }
            if (!it.next().isShow()) {
                break;
            }
        }
        return !z;
    }

    public View onCreateSplash(ICallBack iCallBack, SplashAdManager.OnGetBestAdsListener onGetBestAdsListener) {
        LinkedList<ADBaseHandler> linkedList = this.adHandlers;
        if (linkedList == null || linkedList.isEmpty()) {
            onGetBestAdsListener.onFail();
            return null;
        }
        for (int i = 0; i < this.adHandlers.size(); i++) {
            ADBaseHandler aDBaseHandler = this.adHandlers.get(i);
            if (aDBaseHandler instanceof DcloudHandler) {
                ((DcloudHandler) aDBaseHandler).notifyCreateSplash(this.showActivity, this.appid);
            }
        }
        for (int i2 = 0; i2 < this.adHandlers.size(); i2++) {
            ADBaseHandler aDBaseHandler2 = this.adHandlers.get(i2);
            if (aDBaseHandler2 != null && aDBaseHandler2.getAdRequestStatus() != -1) {
                if (aDBaseHandler2.getAdRequestStatus() != 1) {
                    notifyListener(onGetBestAdsListener);
                    return null;
                }
                this.splashHandler = aDBaseHandler2;
                aDBaseHandler2.setShowed();
                return this.splashHandler.onCreateSplash(this.showActivity, this.appid, iCallBack);
            }
        }
        onGetBestAdsListener.onFail();
        return null;
    }

    public void onSplashClose(View view) {
        ADBaseHandler aDBaseHandler = this.splashHandler;
        if (aDBaseHandler != null) {
            aDBaseHandler.onSplashClose(view);
        }
    }

    public void orderPull() {
        if (this.curIndex < this.adHandlers.size()) {
            this.adHandlers.get(this.curIndex).pullAds(this.showActivity, this.appid, new ADBaseHandler.OnAdsRequestListener() { // from class: io.dcloud.feature.gg.dcloud.mgr.SplashAd.1
                @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler.OnAdsRequestListener
                public void fail(ADBaseHandler aDBaseHandler) {
                    SplashAd.this.curIndex++;
                    SplashAd.this.orderPull();
                }

                @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler.OnAdsRequestListener
                public void success(ADBaseHandler aDBaseHandler) {
                    JSONArray jSONArray = new JSONArray();
                    for (int i = 0; i <= SplashAd.this.curIndex; i++) {
                        try {
                            ADBaseHandler aDBaseHandler2 = (ADBaseHandler) SplashAd.this.adHandlers.get(i);
                            if (!(aDBaseHandler2 instanceof DcloudHandler) && !aDBaseHandler2.getErrorMsg().equals("-9999")) {
                                jSONArray.put(aDBaseHandler2.getResult());
                            }
                        } catch (Exception unused) {
                        }
                    }
                    SplashAd.this.commitData(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT, jSONArray);
                    SplashAd.this.curIndex = 0;
                    SplashAd.this.successRequestTimestamp = SystemClock.elapsedRealtime();
                    SplashAd.this.notifyHandler.sendEmptyMessage(2);
                }
            });
            return;
        }
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < this.curIndex; i++) {
            try {
                ADBaseHandler aDBaseHandler = this.adHandlers.get(i);
                if (!(aDBaseHandler instanceof DcloudHandler) && !aDBaseHandler.getErrorMsg().equals("-9999")) {
                    jSONArray.put(aDBaseHandler.getResult());
                }
            } catch (Exception unused) {
            }
        }
        commitData(AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT, jSONArray);
        this.curIndex = 0;
        this.notifyHandler.sendEmptyMessage(3);
    }

    public void showSplashAd() {
        final IActivityHandler iActivityHandler = DCloudAdapterUtil.getIActivityHandler(this.showActivity);
        ADBaseHandler b2CSplashAd = getB2CSplashAd();
        if (b2CSplashAd == null) {
            return;
        }
        if (b2CSplashAd.isShow()) {
            b2CSplashAd = getB2CSplashAd();
        }
        if (b2CSplashAd == null || iActivityHandler == null || iActivityHandler.obtainActivityContentView().getChildCount() > 1) {
            return;
        }
        b2CSplashAd.setShowed();
        this.splashView = b2CSplashAd.onCreateSplash(this.showActivity, this.appid, new ICallBack() { // from class: io.dcloud.feature.gg.dcloud.mgr.SplashAd.3
            @Override // io.dcloud.common.DHInterface.ICallBack
            public Object onCallBack(int i, Object obj) {
                if (SplashAd.this.splashView != null) {
                    iActivityHandler.obtainActivityContentView().removeView(SplashAd.this.splashView);
                }
                if (BaseInfo.sGlobalFullScreen) {
                    return null;
                }
                Window window = SplashAd.this.showActivity.getWindow();
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.flags &= -1025;
                if (QueryNotchTool.hasNotchInScreen(SplashAd.this.showActivity) && Build.VERSION.SDK_INT >= 28) {
                    attributes.layoutInDisplayCutoutMode = 0;
                }
                window.setAttributes(attributes);
                return null;
            }
        });
        if ((b2CSplashAd instanceof DcloudHandler) || b2CSplashAd.AD_TAD.equals("csj")) {
            b2CSplashAd.onSplashClose(this.splashView);
        }
        if (this.splashView != null) {
            iActivityHandler.obtainActivityContentView().addView(this.splashView);
            if (BaseInfo.sGlobalFullScreen) {
                return;
            }
            Window window = this.showActivity.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.flags |= 1024;
            if (QueryNotchTool.hasNotchInScreen(this.showActivity) && Build.VERSION.SDK_INT >= 28) {
                attributes.layoutInDisplayCutoutMode = 1;
            }
            window.setAttributes(attributes);
        }
    }
}
