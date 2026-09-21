package com.appsflyer.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.appsflyer.AFLogger;
import io.dcloud.common.constant.AbsoluteConst;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class v {
    public final Map<String, String> AFInAppEventParameterName;
    public final byte[] AFInAppEventType;
    public final String AFKeystoreWrapper;
    public final String valueOf;
    public final boolean values;

    v() {
    }

    static Map<String, String> AFKeystoreWrapper(Context context) {
        HashMap map = new HashMap();
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            int i = context.getResources().getConfiguration().screenLayout & 15;
            map.put("x_px", String.valueOf(displayMetrics.widthPixels));
            map.put("y_px", String.valueOf(displayMetrics.heightPixels));
            map.put("d_dpi", String.valueOf(displayMetrics.densityDpi));
            map.put(AbsoluteConst.JSON_KEY_SIZE, String.valueOf(i));
            map.put("xdp", String.valueOf(displayMetrics.xdpi));
            map.put("ydp", String.valueOf(displayMetrics.ydpi));
        } catch (Throwable th) {
            AFLogger.valueOf("Couldn't aggregate screen stats: ", th);
        }
        return map;
    }

    public v(String str, byte[] bArr, String str2, Map<String, String> map) {
        this.valueOf = str;
        this.AFInAppEventType = bArr;
        this.AFKeystoreWrapper = str2;
        this.AFInAppEventParameterName = map;
        this.values = false;
    }
}
