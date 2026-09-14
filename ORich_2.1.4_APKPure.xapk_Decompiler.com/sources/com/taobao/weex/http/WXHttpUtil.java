package com.taobao.weex.http;

import android.content.Context;
import android.text.TextUtils;
import dc.squareup.HttpConstants;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class WXHttpUtil {
    public static final String KEY_USER_AGENT = "user-agent";
    private static String sDefaultUA;

    public static String assembleUserAgent(Context context, Map<String, String> map) {
        if (TextUtils.isEmpty(sDefaultUA)) {
            sDefaultUA = HttpConstants.getDefaultUA();
        }
        return sDefaultUA;
    }
}
