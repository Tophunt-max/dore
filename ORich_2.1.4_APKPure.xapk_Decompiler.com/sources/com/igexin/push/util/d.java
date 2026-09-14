package com.igexin.push.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.sdk.PushBuildConfig;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static void a(f fVar, Context context) {
        new Thread(new e(context, fVar)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(Context context) {
        try {
            byte[] bArrA = g.a(context.getFilesDir().getPath() + Operators.DIV + "init_er.pid");
            if (bArrA != null) {
                return System.currentTimeMillis() - Long.valueOf(new String(bArrA)).longValue() > 86400000;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(Context context) {
        String packageName = context.getPackageName();
        String string = null;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(packageName, 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                string = applicationInfo.metaData.getString(AssistPushConsts.GETUI_APPID);
            }
        } catch (Exception unused) {
        }
        String str = Build.MODEL;
        String str2 = Build.VERSION.SDK;
        String str3 = Build.VERSION.RELEASE;
        File file = new File(context.getApplicationInfo().nativeLibraryDir + File.separator + "libgetuiext3.so");
        StringBuilder sb = new StringBuilder();
        sb.append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date()));
        sb.append("|");
        sb.append(string);
        sb.append("|");
        sb.append(PushBuildConfig.sdk_conf_version);
        sb.append("|");
        sb.append(file.exists());
        sb.append("|");
        sb.append(p.a(context));
        sb.append("|");
        sb.append(str);
        sb.append("|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        sb.append("|");
        sb.append(p.d(context));
        sb.append("|");
        sb.append(p.c());
        sb.append("|");
        sb.append(packageName);
        if (EncryptUtils.errorMsg != null) {
            sb.append("|");
            sb.append(EncryptUtils.errorMsg);
        }
        com.igexin.b.a.c.b.a("ErrorReport|" + sb.toString());
        return sb.toString();
    }
}
