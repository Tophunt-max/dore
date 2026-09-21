package com.igexin.assist.util;

import android.content.Context;
import android.text.TextUtils;
import com.igexin.push.util.t;
import com.igexin.sdk.PushManager;

/* JADX INFO: loaded from: classes.dex */
public class AssistUtils {
    public static void startGetuiService(Context context) {
        if (context != null) {
            try {
                String str = (String) t.c(context, "us", "");
                PushManager.getInstance().initialize(context, TextUtils.isEmpty(str) ? null : Class.forName(str));
            } catch (Throwable unused) {
            }
        }
    }
}
