package io.dcloud.f.a;

import android.content.Context;
import io.dcloud.f.a.b.a;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f615a = false;

    public static io.dcloud.f.a.c.a a(a.c cVar, Context context, String str, String str2, String str3, String str4) {
        a(context);
        return new io.dcloud.f.a.c.a(cVar, context, str, str2, str3, str4);
    }

    private static void a(Context context) {
        File[] fileArrListFiles;
        if (f615a) {
            return;
        }
        f615a = true;
        if (context != null) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis() - 604800000;
                File file = new File(context.getCacheDir().getAbsolutePath() + "/dcloud_ad/img/");
                if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0) {
                    return;
                }
                for (File file2 : fileArrListFiles) {
                    if (file2.lastModified() < jCurrentTimeMillis) {
                        file2.delete();
                    }
                }
            } catch (Exception unused) {
            }
        }
    }
}
