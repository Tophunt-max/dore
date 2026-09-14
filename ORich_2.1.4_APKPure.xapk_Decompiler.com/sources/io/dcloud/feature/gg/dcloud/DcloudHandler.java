package io.dcloud.feature.gg.dcloud;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import io.dcloud.feature.gg.dcloud.ADBaseHandler;
import io.dcloud.feature.gg.dcloud.ADHandler;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class DcloudHandler extends ADBaseHandler {
    private SplashADView adView;
    private AtomicBoolean isNotify = new AtomicBoolean(false);
    private ADBaseHandler.OnAdsRequestListener listener;
    private ADHandler.AdData validData;

    public DcloudHandler() {
        this.AD_TAD = "dcloud";
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public int getAdRequestStatus() {
        ADHandler.AdData adData = this.validData;
        if (adData == null) {
            return 0;
        }
        if (!adData.check()) {
            this.errorMsg = "data error";
        }
        int i = this.validData.check() ? 1 : -1;
        this.currentStatus = i;
        return i;
    }

    public void getBestAD(Context context, String str) {
        this.validData = ADHandler.getBestAdData(context, str);
        if (ADHandler.allReady(context)) {
            return;
        }
        this.validData = null;
    }

    public void initAdData(Context context, String str) {
        ADHandler.AdData adData = this.validData;
        if (adData != null && adData.check()) {
            Object obj = this.validData.mImgData;
            if ((obj instanceof Bitmap) && !((Bitmap) obj).isRecycled()) {
                return;
            }
        }
        if (ADHandler.SplashAdIsEnable(context).booleanValue()) {
            getBestAD(context, str);
        } else {
            this.validData = null;
        }
    }

    public void notifyCreateSplash(Context context, String str) {
        if (this.isNotify.get()) {
            return;
        }
        this.isNotify.set(true);
        initAdData(context, str);
        if (this.listener != null) {
            if (getAdRequestStatus() == 1) {
                this.listener.success(this);
            } else {
                this.listener.fail(this);
            }
        }
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public void onBack() {
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public void onCreate(Context context) {
        this.mContext = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.view.View onCreateSplash(android.content.Context r7, java.lang.String r8, io.dcloud.common.DHInterface.ICallBack r9) {
        /*
            r6 = this;
            io.dcloud.feature.gg.dcloud.ADHandler$AdData r0 = r6.validData
            r1 = 8
            java.lang.String r2 = "1"
            java.lang.String r3 = "UNIAD_FULL_SPLASH"
            java.lang.String r4 = "_fs_"
            if (r0 == 0) goto L48
            boolean r0 = r0.check()
            if (r0 == 0) goto L48
            io.dcloud.feature.gg.dcloud.ADHandler$AdData r0 = r6.validData
            java.lang.Object r0 = r0.mImgData
            boolean r5 = r0 instanceof android.graphics.Bitmap
            if (r5 == 0) goto L48
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            boolean r0 = r0.isRecycled()
            if (r0 != 0) goto L48
            io.dcloud.feature.gg.dcloud.SplashADView r0 = r6.adView
            if (r0 == 0) goto L5f
            android.view.ViewParent r0 = r0.getParent()
            if (r0 != 0) goto L44
            io.dcloud.feature.gg.dcloud.SplashADView r7 = r6.adView
            r7.mCallback = r9
            java.lang.String r7 = io.dcloud.feature.gg.AdSplashUtil.getSplashAdpId(r4, r3)
            boolean r7 = r2.equals(r7)
            if (r7 == 0) goto L41
            io.dcloud.feature.gg.dcloud.SplashADView r7 = r6.adView
            android.view.View r7 = r7.bottomIcon
            r7.setVisibility(r1)
        L41:
            io.dcloud.feature.gg.dcloud.SplashADView r7 = r6.adView
            return r7
        L44:
            r6.getBestAD(r7, r8)
            goto L5f
        L48:
            io.dcloud.feature.gg.dcloud.ADHandler$AdData r0 = r6.validData
            if (r0 == 0) goto L5f
            java.lang.Object r0 = r0.mImgData
            if (r0 == 0) goto L5f
            boolean r5 = r0 instanceof android.graphics.Bitmap
            if (r5 == 0) goto L5f
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            boolean r0 = r0.isRecycled()
            if (r0 == 0) goto L5f
            r6.getBestAD(r7, r8)
        L5f:
            java.lang.Boolean r8 = io.dcloud.feature.gg.dcloud.ADHandler.SplashAdIsEnable(r7)
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L98
            boolean r8 = io.dcloud.feature.gg.dcloud.ADHandler.allReady(r7)
            if (r8 == 0) goto L98
            io.dcloud.feature.gg.dcloud.ADHandler$AdData r8 = r6.validData
            if (r8 == 0) goto L98
            io.dcloud.feature.gg.dcloud.SplashADView r8 = new io.dcloud.feature.gg.dcloud.SplashADView
            io.dcloud.feature.gg.dcloud.ADHandler$AdData r0 = r6.validData
            r8.<init>(r7, r9, r0)
            r6.adView = r8
            io.dcloud.feature.gg.dcloud.DcloudHandler$1 r7 = new io.dcloud.feature.gg.dcloud.DcloudHandler$1
            r7.<init>()
            r8.setListener(r7)
            java.lang.String r7 = io.dcloud.feature.gg.AdSplashUtil.getSplashAdpId(r4, r3)
            boolean r7 = r2.equals(r7)
            if (r7 == 0) goto L95
            io.dcloud.feature.gg.dcloud.SplashADView r7 = r6.adView
            android.view.View r7 = r7.bottomIcon
            r7.setVisibility(r1)
        L95:
            io.dcloud.feature.gg.dcloud.SplashADView r7 = r6.adView
            return r7
        L98:
            r7 = 0
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.feature.gg.dcloud.DcloudHandler.onCreateSplash(android.content.Context, java.lang.String, io.dcloud.common.DHInterface.ICallBack):android.view.View");
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public boolean onSplashClose(View view) {
        SplashADView splashADView;
        if (!(view instanceof SplashADView) || (splashADView = this.adView) == null) {
            return false;
        }
        splashADView.mSplashUnd.onWillCloseSplash();
        return true;
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public void pullAds(Context context) {
    }

    @Override // io.dcloud.feature.gg.dcloud.ADBaseHandler
    public void pullAds(Context context, String str, ADBaseHandler.OnAdsRequestListener onAdsRequestListener) {
        onCreate(context);
        pullAds(context);
        if (getSource() != 1) {
            initAdData(context, str);
            int adRequestStatus = getAdRequestStatus();
            if (adRequestStatus == 0) {
                addRequestListener(onAdsRequestListener);
                return;
            } else if (adRequestStatus != 1) {
                onAdsRequestListener.fail(this);
                return;
            } else {
                onAdsRequestListener.success(this);
                return;
            }
        }
        if (!this.isNotify.get()) {
            this.listener = onAdsRequestListener;
            return;
        }
        if (this.validData == null) {
            onAdsRequestListener.fail(this);
        } else if (getAdRequestStatus() == 1) {
            onAdsRequestListener.success(this);
        } else {
            onAdsRequestListener.fail(this);
        }
    }
}
