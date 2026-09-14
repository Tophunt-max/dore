package com.igexin.push.extension.distribution.basic.j;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class f {
    public static int a(String str, String str2) {
        try {
            Pattern patternCompile = Pattern.compile("([a-zA-Z_-])*");
            String[] strArrSplit = str.split("\\.");
            String[] strArrSplit2 = str2.split("\\.");
            if (strArrSplit == null || strArrSplit.length < 4 || strArrSplit2 == null || strArrSplit2.length < 4) {
                return -1;
            }
            strArrSplit[3] = patternCompile.matcher(strArrSplit[3]).replaceAll("");
            strArrSplit2[3] = patternCompile.matcher(strArrSplit2[3]).replaceAll("");
            long j = 0;
            long j2 = 0;
            int i = 0;
            while (true) {
                long j3 = 1;
                if (i >= 4) {
                    break;
                }
                for (int i2 = 0; i2 < 3 - i; i2++) {
                    j3 *= 100;
                }
                long j4 = Long.parseLong(strArrSplit[i]);
                Long.signum(j4);
                j2 += j4 * j3;
                i++;
            }
            for (int i3 = 0; i3 < 4; i3++) {
                long j5 = 1;
                for (int i4 = 0; i4 < 3 - i3; i4++) {
                    j5 *= 100;
                }
                j += Long.parseLong(strArrSplit2[i3]) * j5;
            }
            if (j2 > j) {
                return 1;
            }
            return j2 == j ? 0 : -1;
        } catch (Exception unused) {
            return -1;
        }
    }
}
