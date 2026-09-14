package io.dcloud.feature.gg.dcloud.mgr;

import android.app.Activity;
import com.igexin.assist.sdk.AssistPushConsts;
import io.dcloud.feature.gg.dcloud.ADBaseHandler;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SplashAdManager {
    public static final int TYPE_BACK2FRONT = 2;
    public static final int TYPE_SPLASH = 1;
    private static SplashAdManager instance;
    private final LinkedList<SplashAd> splashAds = new LinkedList<>();

    public interface OnGetBestAdsListener {
        void onFail();

        void onSuccess();
    }

    public static SplashAdManager getInstance() {
        if (instance == null) {
            synchronized (SplashAdManager.class) {
                if (instance == null) {
                    SplashAdManager splashAdManager = new SplashAdManager();
                    instance = splashAdManager;
                    return splashAdManager;
                }
            }
        }
        return instance;
    }

    public SplashAd pullSplash(String str, String str2, Activity activity, List<ADBaseHandler> list, int i) {
        SplashAd splashAd = new SplashAd(str2, activity, list, i);
        this.splashAds.add(0, splashAd);
        if (AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT.equalsIgnoreCase(str)) {
            splashAd.orderPull();
        } else {
            splashAd.disorderPull();
        }
        return splashAd;
    }

    public void showSplash() {
        Iterator<SplashAd> it = this.splashAds.iterator();
        while (it.hasNext()) {
            SplashAd next = it.next();
            if (!next.isValid()) {
                it.remove();
            } else if (next.hasAvailableAds()) {
                next.showSplashAd();
            }
        }
    }
}
