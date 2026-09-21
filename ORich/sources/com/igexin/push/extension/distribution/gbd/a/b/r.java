package com.igexin.push.extension.distribution.gbd.a.b;

import android.os.Build;
import android.text.TextUtils;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.taobao.weex.el.parse.Operators;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class r {
    public static void a() {
        try {
            Thread.sleep(((long) new Random().nextInt(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION)) + 500);
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    public static void a(Map<String, List<String>> map) {
        String[] strArrSplit;
        try {
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.I) && !"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.I) && (strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.I.split(",")) != null && strArrSplit.length != 0) {
                ArrayList arrayList = new ArrayList(Arrays.asList(strArrSplit));
                Iterator<Map.Entry<String, List<String>>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    if (arrayList.contains(it.next().getKey())) {
                        it.remove();
                    }
                }
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    public static boolean a(String str) {
        try {
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.aA) && !"none".equalsIgnoreCase(com.igexin.push.extension.distribution.gbd.c.a.aA)) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GuardUtils", "guardBrandSdkRomBlackList = " + com.igexin.push.extension.distribution.gbd.c.a.aA);
                String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.aA.split(",");
                if (strArrSplit.length > 0) {
                    String strR = com.igexin.push.extension.distribution.gbd.i.k.r();
                    int i = Build.VERSION.SDK_INT;
                    String lowerCase = com.igexin.push.extension.distribution.gbd.i.k.s().toLowerCase();
                    for (String str2 : strArrSplit) {
                        String[] strArrSplit2 = str2.split(":");
                        if (strArrSplit2.length >= 4) {
                            String str3 = strArrSplit2[0];
                            int i2 = Integer.parseInt(strArrSplit2[1]);
                            String str4 = strArrSplit2[2];
                            String[] strArrSplit3 = strArrSplit2[3].split("&");
                            if (strR.equalsIgnoreCase(str3) && i >= i2 && strArrSplit3.length == 2) {
                                boolean z = Boolean.parseBoolean(strArrSplit3[0]);
                                boolean z2 = Boolean.parseBoolean(strArrSplit3[1]);
                                if (Operators.MUL.equals(str4)) {
                                    return a(z, z2, str);
                                }
                                String[] strArrSplit4 = str4.split("&");
                                if (strArrSplit4.length > 0) {
                                    for (String str5 : strArrSplit4) {
                                        if (lowerCase.contains(str5.toLowerCase())) {
                                            return a(z, z2, str);
                                        }
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0059 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0061 A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean a(boolean r4, boolean r5, java.lang.String r6) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            r6.hashCode()
            r0 = -1
            int r2 = r6.hashCode()
            r3 = 1
            switch(r2) {
                case -1655966961: goto L4c;
                case -109592092: goto L41;
                case 96673: goto L36;
                case 105888445: goto L2b;
                case 110331239: goto L20;
                case 1984153269: goto L15;
                default: goto L14;
            }
        L14:
            goto L56
        L15:
            java.lang.String r2 = "service"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L1e
            goto L56
        L1e:
            r0 = 5
            goto L56
        L20:
            java.lang.String r2 = "third"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L29
            goto L56
        L29:
            r0 = 4
            goto L56
        L2b:
            java.lang.String r2 = "oneof"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L34
            goto L56
        L34:
            r0 = 3
            goto L56
        L36:
            java.lang.String r2 = "all"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L3f
            goto L56
        L3f:
            r0 = 2
            goto L56
        L41:
            java.lang.String r2 = "transmission"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L4a
            goto L56
        L4a:
            r0 = 1
            goto L56
        L4c:
            java.lang.String r2 = "activity"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L55
            goto L56
        L55:
            r0 = 0
        L56:
            switch(r0) {
                case 0: goto L68;
                case 1: goto L68;
                case 2: goto L63;
                case 3: goto L5d;
                case 4: goto L63;
                case 5: goto L5b;
                default: goto L59;
            }
        L59:
            r4 = 0
            goto L68
        L5b:
            r4 = r5
            goto L68
        L5d:
            if (r4 != 0) goto L61
            if (r5 == 0) goto L59
        L61:
            r4 = 1
            goto L68
        L63:
            if (r4 == 0) goto L59
            if (r5 == 0) goto L59
            goto L61
        L68:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.b.r.a(boolean, boolean, java.lang.String):boolean");
    }

    public static boolean b(String str) {
        try {
            if (com.igexin.push.extension.distribution.gbd.c.a.ba && com.igexin.push.extension.distribution.gbd.c.c.ao != null && !com.igexin.push.extension.distribution.gbd.c.c.ao.isEmpty() && com.igexin.push.extension.distribution.gbd.c.c.ao.contains(str)) {
                return true;
            }
            if (com.igexin.push.extension.distribution.gbd.c.a.ba && !TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.bb) && !"none".equals(com.igexin.push.extension.distribution.gbd.c.a.bb) && !TextUtils.isEmpty(str)) {
                String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.bb.split(",");
                if (strArrSplit.length == 0) {
                    return false;
                }
                for (String str2 : strArrSplit) {
                    if (str.equals(str2)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
        return false;
    }

    public static boolean c(String str) {
        try {
            JSONObject jSONObject = TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.c.at) ? new JSONObject() : new JSONObject(com.igexin.push.extension.distribution.gbd.c.c.at);
            long jOptLong = jSONObject.has(str) ? jSONObject.optLong(str) : 0L;
            boolean z = System.currentTimeMillis() - jOptLong > com.igexin.push.extension.distribution.gbd.c.a.bK * 1000;
            com.igexin.push.extension.distribution.gbd.i.j.b("GuardUtils", "last bind time = " + jOptLong + " , isBindOk = " + z);
            if (!z) {
                return false;
            }
            jSONObject.put(str, System.currentTimeMillis());
            com.igexin.push.extension.distribution.gbd.e.a.g.a().c(jSONObject.toString());
            return true;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return false;
        }
    }
}
