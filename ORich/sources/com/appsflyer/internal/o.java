package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import java.util.ArrayList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class o {
    public final String[] valueOf;

    public interface d {
        void AFInAppEventParameterName(String str);

        void AFInAppEventType(String str, String str2, String str3);
    }

    o() {
    }

    public o(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            this.valueOf = null;
            return;
        }
        Pattern patternCompile = Pattern.compile("[\\w]{1,45}");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (str != null && patternCompile.matcher(str).matches()) {
                arrayList.add(str.toLowerCase());
            } else {
                AFLogger.init("Invalid partner name: ".concat(String.valueOf(str)));
            }
        }
        if (arrayList.contains("all")) {
            this.valueOf = new String[]{"all"};
        } else if (arrayList.isEmpty()) {
            this.valueOf = null;
        } else {
            this.valueOf = (String[]) arrayList.toArray(new String[0]);
        }
    }
}
