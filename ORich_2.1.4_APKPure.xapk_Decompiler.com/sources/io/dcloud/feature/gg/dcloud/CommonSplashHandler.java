package io.dcloud.feature.gg.dcloud;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.igexin.assist.sdk.AssistPushConsts;
import io.dcloud.common.DHInterface.ICallBack;
import io.dcloud.common.adapter.util.SP;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.TestUtil;
import io.dcloud.common.util.ThreadPool;
import io.dcloud.f.a.b.a;
import io.dcloud.feature.gg.AdSplashUtil;
import io.dcloud.feature.gg.dcloud.ADBaseHandler;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class CommonSplashHandler extends ADBaseHandler implements a.c {
    io.dcloud.f.a.c.a ad;
    String adpid;
    private String appId;
    String config;
    private String dcloudAdpid;
    private String dcloudAppid;
    private String ec;
    private String er;
    long pullAdTime = 0;
    ADBaseSplashView splashView;
    private String tid;

    public CommonSplashHandler(String str, String str2, String str3, String str4) {
        this.AD_TAD = str2;
        this.config = str;
        this.er = str3;
        this.ec = str4;
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.dcloudAppid = jSONObject.optString("did");
            this.dcloudAdpid = jSONObject.optString("adid");
            this.appId = jSONObject.optJSONObject(AbsoluteConst.XML_APP).optString("app_id");
            this.tid = jSONObject.optString("tid");
            this.adpid = AdSplashUtil.getSplashAdpId(this.AD_TAD, "");
        } catch (Exception unused) {
        }
    }

    private void initAdData(Context context, String str) {
    }

    public void commitData(final int i) {
        ThreadPool.self().addThreadTask(new Runnable() { // from class: io.dcloud.feature.gg.dcloud.CommonSplashHandler.1
            @Override // java.lang.Runnable
            public void run() {
                String bundleData = SP.getBundleData(ADHandler.AdTag, "adid");
                CommonSplashHandler commonSplashHandler = CommonSplashHandler.this;
                Context context = commonSplashHandler.mContext;
                String str = commonSplashHandler.dcloudAppid;
                String str2 = CommonSplashHandler.this.tid;
                int i2 = i;
                String str3 = CommonSplashHandler.this.appId;
                CommonSplashHandler commonSplashHandler2 = CommonSplashHandler.this;
                TestUtil.PointTime.commitTid(context, str, str2, bundleData, i2, str3, commonSplashHandler2.adpid, commonSplashHandler2.dcloudAdpid, null);
            }
        });
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public JSONObject getResult() {
        JSONObject result = super.getResult();
        try {
            result.put("mediaId", this.appId);
            result.put("slotId", this.adpid);
            result.put("tid", this.tid);
        } catch (JSONException unused) {
        }
        return result;
    }

    @Override // io.dcloud.f.a.b.a.c
    public void onAdClicked() {
        commitData(41);
    }

    @Override // io.dcloud.f.a.b.a.c
    public void onAdShow() {
        commitData(40);
    }

    @Override // io.dcloud.f.a.b.a.c
    public void onAdShowEnd() {
        ADBaseSplashView aDBaseSplashView = this.splashView;
        if (aDBaseSplashView != null) {
            aDBaseSplashView.onFinishShow();
        }
    }

    @Override // io.dcloud.f.a.b.a.c
    public void onAdShowError(int i, String str) {
        ADBaseSplashView aDBaseSplashView = this.splashView;
        if (aDBaseSplashView != null) {
            aDBaseSplashView.onFinishShow();
        }
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public void onBack() {
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public void onCreate(Context context) {
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public View onCreateSplash(Context context, String str, ICallBack iCallBack) {
        this.splashView = new ADBaseSplashView((Activity) context);
        if (AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT.equals(AdSplashUtil.getSplashAdpId("_fs_", "UNIAD_FULL_SPLASH"))) {
            this.splashView.bottomIcon.setVisibility(8);
        }
        this.splashView.setCallBack(iCallBack);
        this.splashView.setPullTime(this.pullAdTime);
        this.ad.a(this.splashView.getImgContainer());
        return this.splashView;
    }

    @Override // io.dcloud.f.a.b.a.c
    public void onError(int i, String str) {
        endLoadAds();
        execFail(i, str);
    }

    @Override // io.dcloud.f.a.b.a.c
    public void onSkippedAd() {
        ADBaseSplashView aDBaseSplashView = this.splashView;
        if (aDBaseSplashView != null) {
            aDBaseSplashView.onFinishShow();
        }
    }

    @Override // io.dcloud.f.a.b.a.c
    public void onSplashAdLoad() {
        endLoadAds();
        execSuccess();
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public boolean onSplashClose(View view) {
        if (!(view instanceof ADBaseSplashView)) {
            return false;
        }
        ((ADBaseSplashView) view).onWillCloseSplash();
        return true;
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public void pullAds(Context context) {
        this.mContext = context;
        super.pullAds(context);
        this.ad = io.dcloud.f.a.a.a(this, context, this.config, this.adpid, this.er, this.ec);
        startLoadAds();
        this.ad.c();
        this.pullAdTime = System.currentTimeMillis();
    }

    public void setAdpid(String str) {
        this.adpid = str;
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public void pullAds(Context context, String str, ADBaseHandler.OnAdsRequestListener onAdsRequestListener) {
        pullAds(context);
        initAdData(context, str);
        int adRequestStatus = getAdRequestStatus();
        if (adRequestStatus == 0) {
            addRequestListener(onAdsRequestListener);
        } else if (adRequestStatus != 1) {
            onAdsRequestListener.fail(this);
        } else {
            onAdsRequestListener.success(this);
        }
    }
}
