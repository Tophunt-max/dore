package io.dcloud.feature.gg.dcloud;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.taobao.weex.common.Constants;
import io.dcloud.PdrR;
import io.dcloud.common.DHInterface.ICallBack;
import io.dcloud.common.adapter.util.SP;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.feature.gg.AdSplashUtil;
import io.dcloud.feature.internal.splash.ISplash;

/* JADX INFO: loaded from: classes2.dex */
public class ADBaseSplashView extends FrameLayout implements ISplash {
    String appid;
    View bottomIcon;
    FrameLayout container;
    ICallBack mCallBack;
    private long pullTime;

    public ADBaseSplashView(Activity activity) {
        super(activity);
        initView(activity);
    }

    private void initView(Activity activity) {
        View viewInflate = LayoutInflater.from(activity).inflate(PdrR.getInt(activity, Constants.Name.LAYOUT, "ad_dcloud_splash"), (ViewGroup) null);
        viewInflate.setBackgroundColor(getBgColor());
        addView(viewInflate);
        this.container = (FrameLayout) viewInflate.findViewById(PdrR.getInt(activity, "id", "ad_dcloud_splash_container"));
        Drawable icon = getIcon();
        this.bottomIcon = viewInflate.findViewById(PdrR.getInt(activity, "id", "ad_dcloud_splash_bottom_bar"));
        ImageView imageView = (ImageView) findViewById(PdrR.getInt(activity, "id", "ad_dcloud_icon_single"));
        if (icon == null) {
            imageView.setVisibility(8);
            ((ImageView) findViewById(PdrR.getInt(activity, "id", "ad_dcloud_icon"))).setImageDrawable(AdSplashUtil.getApplicationIcon(activity));
            ((TextView) findViewById(PdrR.getInt(activity, "id", "ad_dcloud_name"))).setText(AdSplashUtil.getApplicationName(activity));
        } else {
            imageView.setVisibility(0);
            imageView.setImageDrawable(icon);
            findViewById(PdrR.getInt(activity, "id", "ad_dcloud_name")).setVisibility(8);
            findViewById(PdrR.getInt(activity, "id", "ad_dcloud_icon")).setVisibility(8);
        }
    }

    String get(String str) {
        return SP.getBundleData(ADHandler.AdTag, str);
    }

    public int getBgColor() {
        int iStringToColor = PdrUtil.stringToColor(get("bg"));
        if (iStringToColor != -1) {
            return iStringToColor;
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.graphics.drawable.Drawable getIcon() {
        /*
            r3 = this;
            java.lang.String r0 = "img"
            java.lang.String r0 = r3.get(r0)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            r2 = 0
            if (r1 != 0) goto L2d
            boolean r1 = io.dcloud.common.util.PdrUtil.isDeviceRootDir(r0)
            if (r1 == 0) goto L23
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            boolean r1 = r1.exists()
            if (r1 == 0) goto L2d
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeFile(r0)
            goto L2e
        L23:
            r1 = 0
            java.io.InputStream r0 = io.dcloud.common.adapter.util.PlatformUtil.getInputStream(r0, r1)
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r0)
            goto L2e
        L2d:
            r0 = r2
        L2e:
            if (r0 == 0) goto L36
            android.graphics.drawable.BitmapDrawable r1 = new android.graphics.drawable.BitmapDrawable
            r1.<init>(r0)
            return r1
        L36:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.feature.gg.dcloud.ADBaseSplashView.getIcon():android.graphics.drawable.Drawable");
    }

    public FrameLayout getImgContainer() {
        return this.container;
    }

    public void onFinishShow() {
        ICallBack iCallBack = this.mCallBack;
        if (iCallBack != null) {
            iCallBack.onCallBack(1, this.appid);
            this.mCallBack = null;
        }
        FrameLayout frameLayout = this.container;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
    }

    public void onWillCloseSplash() {
        if (System.currentTimeMillis() - this.pullTime >= 4500) {
            onFinishShow();
        }
    }

    public void setAppid(String str) {
        this.appid = str;
    }

    public void setCallBack(ICallBack iCallBack) {
        this.mCallBack = iCallBack;
    }

    @Override // io.dcloud.feature.internal.splash.ISplash
    public void setImageBitmap(Bitmap bitmap) {
    }

    @Override // io.dcloud.feature.internal.splash.ISplash
    public void setNameText(String str) {
    }

    public void setPullTime(long j) {
        this.pullTime = j;
    }
}
