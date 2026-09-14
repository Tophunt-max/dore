package io.dcloud.f.a.d;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static boolean a(Context context, String str) {
        if (str == null) {
            return false;
        }
        if (str.equals(context.getPackageName())) {
            return true;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 256) != null;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void b(Context context, String str) {
        try {
            Intent intent = new Intent();
            if (!Build.BRAND.equalsIgnoreCase("vivo") && a(context, "com.android.browser")) {
                intent.setPackage("com.android.browser");
            }
            intent.setData(Uri.parse(str));
            intent.setAction("android.intent.action.VIEW");
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            Log.e("ADUtils", "openBrowser exception: " + e.getMessage());
            e.printStackTrace();
        }
    }

    public static boolean c(Context context, String str) {
        try {
            Intent uri = Intent.parseUri(str, 1);
            uri.setSelector(null);
            uri.setComponent(null);
            uri.addCategory("android.intent.category.BROWSABLE");
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(uri, 65536);
            if (listQueryIntentActivities == null || listQueryIntentActivities.isEmpty()) {
                return false;
            }
            uri.setFlags(268435456);
            context.startActivity(uri);
            return true;
        } catch (Exception e) {
            Log.e("ADUtils", "openDeepLink exception: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
}
