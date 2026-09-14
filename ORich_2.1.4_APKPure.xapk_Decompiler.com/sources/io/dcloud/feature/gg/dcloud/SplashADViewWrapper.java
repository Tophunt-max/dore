package io.dcloud.feature.gg.dcloud;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.taobao.weex.common.Constants;
import io.dcloud.PdrR;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.common.adapter.util.PlatformUtil;
import io.dcloud.feature.gg.AdSplashUtil;
import io.dcloud.feature.gg.dcloud.ADHandler;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SplashADViewWrapper {
    ADHandler.AdData mAdData;
    AdViewListener mAdViewListener;
    Context mContext;
    View mMainView;
    View mSkipView;
    boolean sNeedShowSkipView = false;
    boolean isClose = false;
    boolean isImgDownlaodReceive = false;
    BroadcastReceiver imageDownloadReceiver = new BroadcastReceiver() { // from class: io.dcloud.feature.gg.dcloud.SplashADViewWrapper.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ADHandler.log("shutao", "imageDownloadReceiver----shou");
            if (SplashADViewWrapper.this.isClose) {
                return;
            }
            String stringExtra = intent.getStringExtra("src");
            ADHandler.log("shutao", "imageDownloadReceiver--src=" + stringExtra);
            if (TextUtils.isEmpty(stringExtra) || SplashADViewWrapper.this.mAdData.full() == null || !SplashADViewWrapper.this.mAdData.data().optString("src").equalsIgnoreCase(stringExtra)) {
                return;
            }
            if (!intent.getBooleanExtra("downloadImage", false)) {
                SplashADViewWrapper.this.onFinishShow();
                return;
            }
            ADHandler.log("shutao", "imageDownloadReceiver--下载成功=");
            ADHandler.AdData adData = SplashADViewWrapper.this.mAdData;
            ADHandler.getBestAdData(context, adData.mOriginalAppid, adData);
            if (SplashADViewWrapper.this.mAdData.check()) {
                SplashADViewWrapper.this.runInitMainView();
            } else {
                SplashADViewWrapper.this.onFinishShow();
            }
        }
    };
    private Runnable FINISHSHOW = new Runnable() { // from class: io.dcloud.feature.gg.dcloud.SplashADViewWrapper.6
        @Override // java.lang.Runnable
        public void run() {
            SplashADViewWrapper.this.onFinishShow();
        }
    };

    public SplashADViewWrapper(final Context context, ADHandler.AdData adData, ViewGroup viewGroup, AdViewListener adViewListener) {
        this.mAdViewListener = null;
        this.mSkipView = null;
        this.mMainView = null;
        this.mAdViewListener = adViewListener;
        this.mAdData = adData;
        this.mContext = context;
        View viewInflate = LayoutInflater.from(context).inflate(PdrR.getInt(context, Constants.Name.LAYOUT, "ad_dcloud_main"), (ViewGroup) null);
        this.mMainView = viewInflate;
        viewGroup.addView(viewInflate);
        this.mSkipView = (TextView) this.mMainView.findViewById(PdrR.getInt(context, "id", "ad_dcloud_main_skip"));
        if (this.mAdData.check()) {
            ADHandler.log("SplashADViewWrapper", "use cache AdData");
            initAdMainView(context, this.mMainView);
        } else {
            ADHandler.log("shutao", "listenADReceive-----------------");
            this.mAdData.listenADReceive(context, new IADReceiver() { // from class: io.dcloud.feature.gg.dcloud.SplashADViewWrapper.1
                @Override // io.dcloud.feature.gg.dcloud.IADReceiver
                public void onError(String str, String str2) {
                    SplashADViewWrapper splashADViewWrapper = SplashADViewWrapper.this;
                    if (!splashADViewWrapper.isClose && splashADViewWrapper.mAdData.mImgData == null) {
                        splashADViewWrapper.onFinishShow();
                    }
                }

                @Override // io.dcloud.feature.gg.dcloud.IADReceiver
                public void onReceiver(JSONObject jSONObject) {
                    ADHandler.log("shutao", "listenADReceive----------------onReceiver-");
                    SplashADViewWrapper splashADViewWrapper = SplashADViewWrapper.this;
                    if (splashADViewWrapper.isClose) {
                        return;
                    }
                    Context context2 = splashADViewWrapper.mContext;
                    ADHandler.AdData adData2 = splashADViewWrapper.mAdData;
                    ADHandler.getBestAdData(context2, adData2.mOriginalAppid, adData2);
                    if (SplashADViewWrapper.this.mAdData.check()) {
                        SplashADViewWrapper.this.runInitMainView();
                        ADHandler.log("shutao", "initAdMainView");
                    } else {
                        ADHandler.log("shutao", "setImageDownlaodListen");
                        SplashADViewWrapper.this.setImageDownlaodListen(context);
                    }
                }
            });
        }
    }

    private boolean imm() {
        return System.currentTimeMillis() - ADHandler.sPullBeginTime >= 3000;
    }

    private void initAdMainView(final Context context, View view) {
        ADHandler.log("ADReceive", "initAdMainView ");
        FrameLayout frameLayout = (FrameLayout) view.findViewById(PdrR.getInt(context, "id", "ad_dcloud_main_img"));
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: io.dcloud.feature.gg.dcloud.SplashADViewWrapper.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                try {
                    SplashADViewWrapper.this.mAdData.full().put("down_x", Math.round(SplashADViewWrapper.this.mAdData.mMotionEvent_down.getX()));
                    SplashADViewWrapper.this.mAdData.full().put("down_y", Math.round(SplashADViewWrapper.this.mAdData.mMotionEvent_down.getY()));
                    SplashADViewWrapper.this.mAdData.full().put("up_x", Math.round(SplashADViewWrapper.this.mAdData.mMotionEvent_up.getX()));
                    SplashADViewWrapper.this.mAdData.full().put("up_y", SplashADViewWrapper.this.mAdData.mMotionEvent_up.getY());
                    SplashADViewWrapper.this.mAdData.full().put("relative_down_x", Math.round(SplashADViewWrapper.this.mAdData.mMotionEvent_down.getX() - view2.getX()));
                    SplashADViewWrapper.this.mAdData.full().put("relative_down_y", Math.round(SplashADViewWrapper.this.mAdData.mMotionEvent_down.getY() - view2.getY()));
                    SplashADViewWrapper.this.mAdData.full().put("relative_up_x", Math.round(SplashADViewWrapper.this.mAdData.mMotionEvent_up.getX() - view2.getX()));
                    SplashADViewWrapper.this.mAdData.full().put("relative_up_y", Math.round(SplashADViewWrapper.this.mAdData.mMotionEvent_up.getY() - view2.getY()));
                    SplashADViewWrapper.this.mAdData.full().put("dw", AdSplashUtil.dw(context));
                    SplashADViewWrapper.this.mAdData.full().put("dh", AdSplashUtil.dh(context));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                Context context2 = context;
                ADHandler.click(context2, SplashADViewWrapper.this.mAdData, ADHandler.get(context2, "adid"));
                view2.setOnClickListener(null);
                ADHandler.AdData adData = SplashADViewWrapper.this.mAdData;
                adData.mMotionEvent_down = null;
                adData.mMotionEvent_up = null;
                view2.postDelayed(new Runnable() { // from class: io.dcloud.feature.gg.dcloud.SplashADViewWrapper.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SplashADViewWrapper.this.mAdViewListener.onFinishShow();
                    }
                }, 500L);
            }
        });
        frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: io.dcloud.feature.gg.dcloud.SplashADViewWrapper.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    SplashADViewWrapper.this.mAdData.mMotionEvent_down = motionEvent;
                    return false;
                }
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                SplashADViewWrapper.this.mAdData.mMotionEvent_up = motionEvent;
                return false;
            }
        });
        Object obj = this.mAdData.mImgData;
        if (obj instanceof Bitmap) {
            ADHandler.AdData adData = this.mAdData;
            frameLayout.addView(new BitmapView(context, (Bitmap) adData.mImgData, adData), -1, -1);
        } else if (obj instanceof Drawable) {
            ImageView imageView = (ImageView) PlatformUtil.newInstance("pl.droidsonroids.gif.GifImageView", new Class[]{Context.class}, new Object[]{context});
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            imageView.setImageDrawable((Drawable) this.mAdData.mImgData);
            frameLayout.addView(imageView, -1, -1);
        }
        if (this.sNeedShowSkipView) {
            this.mSkipView.setVisibility(0);
        }
        this.mSkipView.setOnClickListener(new View.OnClickListener() { // from class: io.dcloud.feature.gg.dcloud.SplashADViewWrapper.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                SplashADViewWrapper.this.onFinishShow();
            }
        });
        ADHandler.view(context, this.mAdData, ADHandler.get(context, "adid"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFinishShow() {
        ADHandler.log("shutao", "onFinishShow");
        this.mAdViewListener.onFinishShow();
        View view = this.mMainView;
        if (view != null && view.getParent() != null) {
            ((ViewGroup) this.mMainView.getParent()).removeView(this.mMainView);
        }
        this.isClose = true;
        Object obj = this.mAdData.mImgData;
        if (obj instanceof Bitmap) {
            Bitmap bitmap = (Bitmap) obj;
            if (!bitmap.isRecycled()) {
                bitmap.recycle();
            }
        }
        this.sNeedShowSkipView = false;
        if (this.isImgDownlaodReceive) {
            LocalBroadcastManager.getInstance(this.mContext).unregisterReceiver(this.imageDownloadReceiver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runInitMainView() {
        if (this.sNeedShowSkipView) {
            this.mMainView.removeCallbacks(this.FINISHSHOW);
            this.mMainView.postDelayed(this.FINISHSHOW, 2000L);
            ADHandler.log("shutao", "runInitMainView--延时2000");
        }
        initAdMainView(this.mContext, this.mMainView);
    }

    public void onWillCloseSplash() {
        Logger.d("onWillCloseSplash", "SplashADViewWrapper");
        ADHandler.log("ADReceive", "onWillCloseSplash ");
        this.sNeedShowSkipView = true;
        if (this.mSkipView != null && this.mAdData.check()) {
            this.mSkipView.setVisibility(0);
        }
        if (imm() && this.mAdData.mImgData == null) {
            ADHandler.log("shutao", "Delayed-------");
            onFinishShow();
        } else {
            ADHandler.log("shutao", "Delayed---30000");
            this.mMainView.postDelayed(this.FINISHSHOW, 2000L);
        }
    }

    public void setImageDownlaodListen(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("ad_img_downlaod_receive");
        LocalBroadcastManager.getInstance(context).registerReceiver(this.imageDownloadReceiver, intentFilter);
        this.isImgDownlaodReceive = true;
    }
}
