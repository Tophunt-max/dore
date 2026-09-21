package com.igexin.push.config;

import android.content.Context;
import com.taobao.weex.el.parse.Operators;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f137a = "FileConfig";

    /* JADX WARN: Removed duplicated region for block: B:106:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0027 A[EXC_TOP_SPLITTER, PHI: r0
      0x0027: PHI (r0v4 java.io.InputStream) = (r0v3 java.io.InputStream), (r0v14 java.io.InputStream) binds: [B:17:0x003a, B:5:0x0025] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.config.l.a():void");
    }

    public static void a(Context context) {
        try {
            byte[] bArrA = com.igexin.push.util.g.a(context.getFilesDir().getPath() + Operators.DIV + "conf_n.pid");
            if (bArrA != null) {
                k.u = Boolean.valueOf(new String(bArrA)).booleanValue();
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f137a + "|load need confgi error = " + th.toString());
        }
    }

    public static void a(InputStream inputStream) throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        if (!line.startsWith("#")) {
                            String[] strArrSplit = line.split("=");
                            if (strArrSplit.length >= 2) {
                                String strTrim = strArrSplit[0].trim();
                                String strTrim2 = strArrSplit[1].trim();
                                if (strTrim.equals("sdk.cm_address")) {
                                    SDKUrlConfig.setXfrAddressIps(strTrim2.split(","));
                                } else if (strTrim.equals("sdk.config_address")) {
                                    SDKUrlConfig.CONFIG_ADDRESS_IPS = strTrim2.split(",");
                                } else if (strTrim.equals("sdk.bi_address")) {
                                    SDKUrlConfig.BI_ADDRESS_IPS = strTrim2.split(",");
                                } else if (strTrim.equals("sdk.cm_address_backup")) {
                                    SDKUrlConfig.XFR_ADDRESS_BAK = strTrim2.split(",");
                                } else if (strTrim.equals("sdk.debug")) {
                                    com.igexin.b.a.c.b.f87a = Boolean.valueOf(strTrim2).booleanValue();
                                } else if (strTrim.equals("sdk.domainbackup.enable")) {
                                    k.f = Boolean.valueOf(strTrim2).booleanValue();
                                } else if (strTrim.equals("sdk.uploadapplist.enable")) {
                                    k.g = Boolean.valueOf(strTrim2).booleanValue();
                                } else if (strTrim.equals("sdk.feature.sendmessage.enable")) {
                                    k.h = Boolean.valueOf(strTrim2).booleanValue();
                                } else if (strTrim.equals("sdk.feature.settag.enable")) {
                                    k.j = Boolean.valueOf(strTrim2).booleanValue();
                                } else if (strTrim.equals("sdk.feature.setsilenttime.enable")) {
                                    k.k = Boolean.valueOf(strTrim2).booleanValue();
                                } else if (strTrim.equals("sdk.feature.setheartbeatinterval.enable")) {
                                    k.l = Boolean.valueOf(strTrim2).booleanValue();
                                } else if (strTrim.equals("sdk.feature.setsockettimeout.enable")) {
                                    k.m = Boolean.valueOf(strTrim2).booleanValue();
                                } else if (strTrim.equals("sdk.stay.backup.time")) {
                                    k.x = Long.valueOf(strTrim2).longValue() * 1000;
                                } else if (strTrim.equals("sdk.enter.backup.detect.failed.cnt")) {
                                    k.y = Integer.valueOf(strTrim2).intValue();
                                } else if (strTrim.equals("sdk.login.failed.cnt")) {
                                    k.z = Integer.valueOf(strTrim2).intValue();
                                } else if (strTrim.equals("sdk.detect.ip.expired.time")) {
                                    k.A = Long.valueOf(strTrim2).longValue() * 1000;
                                } else if (strTrim.equals("sdk.detect.interval.time")) {
                                    k.B = Long.valueOf(strTrim2).longValue() * 1000;
                                } else if (strTrim.equals("sdk.reset.reconnect.delay")) {
                                    k.w = Long.valueOf(strTrim2).longValue() * 1000;
                                }
                            }
                        }
                    } catch (Exception unused) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader == null) {
                            return;
                        } else {
                            bufferedReader.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
                bufferedReader2.close();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
