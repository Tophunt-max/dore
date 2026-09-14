package io.dcloud.feature.gg.dcloud;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.taobao.weex.common.Constants;
import io.dcloud.PdrR;
import io.dcloud.common.DHInterface.ICallBack;
import io.dcloud.feature.gg.AdSplashUtil;
import io.dcloud.feature.gg.dcloud.ADHandler;
import io.dcloud.feature.internal.splash.ISplash;

/* JADX INFO: loaded from: classes2.dex */
public class SplashADView extends FrameLayout implements ISplash {
    View bottomIcon;
    private CloseSplashListener listener;
    ADHandler.AdData mADData;
    ICallBack mCallback;
    ImageView mIconView;
    public SplashADViewWrapper mSplashUnd;

    public interface CloseSplashListener {
        void onShowFinish();
    }

    public SplashADView(Context context, ICallBack iCallBack, ADHandler.AdData adData) {
        super(context);
        this.mIconView = null;
        this.mADData = null;
        this.mCallback = iCallBack;
        this.mADData = adData;
        init0(context);
    }

    private int getBgColor(Context context) {
        return ADHandler.bg(context);
    }

    private Drawable getIcon(Context context) {
        return ADHandler.img(context);
    }

    private String getName(Context context) {
        return ADHandler.name(context);
    }

    private View getSkipButtonView(View view) {
        if (view != null && view.getClass().getName().contains("ShowTimeTextView")) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View skipButtonView = getSkipButtonView(viewGroup.getChildAt(i));
            if (skipButtonView != null) {
                return skipButtonView;
            }
        }
        return null;
    }

    private void init0(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(PdrR.getInt(context, Constants.Name.LAYOUT, "ad_dcloud_splash"), (ViewGroup) null);
        viewInflate.setBackgroundColor(getBgColor(context));
        addView(viewInflate, -2);
        ViewGroup viewGroup = (ViewGroup) viewInflate.findViewById(PdrR.getInt(context, "id", "ad_dcloud_splash_container"));
        this.bottomIcon = viewInflate.findViewById(PdrR.getInt(context, "id", "ad_dcloud_splash_bottom_bar"));
        Drawable icon = getIcon(context);
        if (icon == null) {
            ((ImageView) findViewById(PdrR.getInt(context, "id", "ad_dcloud_icon_single"))).setVisibility(8);
            ((ImageView) findViewById(PdrR.getInt(context, "id", "ad_dcloud_icon"))).setImageDrawable(AdSplashUtil.getApplicationIcon(context));
            ((TextView) findViewById(PdrR.getInt(context, "id", "ad_dcloud_name"))).setText(AdSplashUtil.getApplicationName(context));
        } else {
            ImageView imageView = (ImageView) findViewById(PdrR.getInt(context, "id", "ad_dcloud_icon_single"));
            imageView.setVisibility(0);
            imageView.setImageDrawable(icon);
            findViewById(PdrR.getInt(context, "id", "ad_dcloud_name")).setVisibility(8);
            findViewById(PdrR.getInt(context, "id", "ad_dcloud_icon")).setVisibility(8);
        }
        this.mSplashUnd = new SplashADViewWrapper(context, this.mADData, viewGroup, new AdViewListener() { // from class: io.dcloud.feature.gg.dcloud.SplashADView.1
            @Override // io.dcloud.feature.gg.dcloud.AdViewListener
            public void onError(int i, String str) {
                Log.i("SplashScreenActivity", "pMsg:" + str);
            }

            @Override // io.dcloud.feature.gg.dcloud.AdViewListener
            public void onFinishShow() {
                if (SplashADView.this.listener != null) {
                    SplashADView.this.listener.onShowFinish();
                }
                SplashADView splashADView = SplashADView.this;
                ICallBack iCallBack = splashADView.mCallback;
                if (iCallBack != null) {
                    iCallBack.onCallBack(1, splashADView.mADData.mOriginalAppid);
                    SplashADView.this.mCallback = null;
                }
            }
        });
    }

    @Override // io.dcloud.feature.internal.splash.ISplash
    public void setImageBitmap(Bitmap bitmap) {
    }

    public void setListener(CloseSplashListener closeSplashListener) {
        this.listener = closeSplashListener;
    }

    @Override // io.dcloud.feature.internal.splash.ISplash
    public void setNameText(String str) {
    }
}
