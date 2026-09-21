package com.igexin.push.extension.distribution.basic.j;

import android.content.Context;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class i {
    public static String a(Context context) {
        try {
            com.igexin.push.extension.distribution.basic.d.a.a();
            String strC = com.igexin.push.extension.distribution.basic.d.a.c();
            if (TextUtils.isEmpty(strC)) {
                byte[] bArrB = b("/sdcard/libs//" + context.getPackageName() + ".bin");
                if (bArrB != null) {
                    strC = new String(n.b(bArrB));
                }
            }
            try {
                Class.forName(strC);
            } catch (Throwable unused) {
                strC = null;
            }
            return !TextUtils.isEmpty(strC) ? strC : "com.igexin.sdk.PushService";
        } catch (Throwable unused2) {
            return "com.igexin.sdk.PushService";
        }
    }

    public static List<JSONObject> a(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        FileInputStream fileInputStream;
        byte[] byteArray;
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(str);
            if (!file.exists()) {
                return null;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2 != null && file2.isFile() && file2.getName().indexOf(".db") > 0 && !file2.getName().equals("com.igexin.sdk.deviceId.db") && !file2.getName().equals("com.getui.sdk.deviceId.db") && !file2.getName().equals("app.db") && !file2.getName().equals("imsi.db")) {
                        String strSubstring = file2.getName().substring(0, file2.getName().length() - 3);
                        if (c.a(strSubstring) && !com.igexin.push.core.f.f.getPackageName().equals(strSubstring)) {
                            byte[] bArr = new byte[1024];
                            try {
                                fileInputStream = new FileInputStream(file2);
                                try {
                                    byteArrayOutputStream = new ByteArrayOutputStream();
                                    while (true) {
                                        try {
                                            try {
                                                int i = fileInputStream.read(bArr);
                                                if (i == -1) {
                                                    break;
                                                }
                                                byteArrayOutputStream.write(bArr, 0, i);
                                            } catch (Throwable th) {
                                                th = th;
                                                if (fileInputStream != null) {
                                                    fileInputStream.close();
                                                }
                                                if (byteArrayOutputStream != null) {
                                                    byteArrayOutputStream.close();
                                                }
                                                throw th;
                                            }
                                        } catch (Exception e) {
                                            e = e;
                                            com.igexin.b.a.c.b.a("EXT-FileUtils| read " + strSubstring + "excetpion:" + e.toString());
                                            if (fileInputStream != null) {
                                                fileInputStream.close();
                                            }
                                            if (byteArrayOutputStream != null) {
                                                byteArrayOutputStream.close();
                                            }
                                            byteArray = null;
                                        }
                                    }
                                    byteArray = byteArrayOutputStream.toByteArray();
                                    fileInputStream.close();
                                    byteArrayOutputStream.close();
                                } catch (Exception e2) {
                                    e = e2;
                                    byteArrayOutputStream = null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    byteArrayOutputStream = null;
                                }
                            } catch (Exception e3) {
                                e = e3;
                                byteArrayOutputStream = null;
                                fileInputStream = null;
                            } catch (Throwable th3) {
                                th = th3;
                                byteArrayOutputStream = null;
                                fileInputStream = null;
                            }
                            if (byteArray == null) {
                                com.igexin.b.a.c.b.a("EXT-FileUtils|read " + strSubstring + "bytes == null");
                            } else {
                                String[] strArrSplit = new String(com.igexin.b.a.a.a.a(byteArray, com.igexin.push.core.f.B)).split("\\|");
                                if (strArrSplit.length > 2) {
                                    try {
                                        JSONObject jSONObject = new JSONObject();
                                        jSONObject.put("cid", strArrSplit[2]);
                                        jSONObject.put("appid", strArrSplit[1]);
                                        arrayList.add(jSONObject);
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return arrayList;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static boolean a() {
        try {
            File file = new File("/sdcard/libs//test.log");
            if (!file.exists()) {
                file.createNewFile();
            }
            file.delete();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:6|(4:61|7|59|8)|(6:48|9|(1:11)(1:63)|46|14|33)|12|54|13|46|14|33) */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] b(java.lang.String r5) throws java.lang.Throwable {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r5)
            boolean r0 = r0.exists()
            r1 = 0
            if (r0 != 0) goto L26
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "EXT-FileUtils|get data from file = "
            r0.append(r2)
            r0.append(r5)
            java.lang.String r5 = " file not exist ######"
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            com.igexin.b.a.c.b.a(r5)
            return r1
        L26:
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L56
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L56
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            r5.<init>()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
        L34:
            int r3 = r2.read(r0)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L7c
            r4 = -1
            if (r3 == r4) goto L40
            r4 = 0
            r5.write(r0, r4, r3)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L7c
            goto L34
        L40:
            byte[] r1 = r5.toByteArray()     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L7c
            r2.close()     // Catch: java.lang.Exception -> L47
        L47:
            r5.close()     // Catch: java.lang.Exception -> L7b
            goto L7b
        L4b:
            r0 = move-exception
            goto L59
        L4d:
            r0 = move-exception
            r5 = r1
            goto L7d
        L50:
            r0 = move-exception
            r5 = r1
            goto L59
        L53:
            r0 = move-exception
            r5 = r1
            goto L7e
        L56:
            r0 = move-exception
            r5 = r1
            r2 = r5
        L59:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7c
            r3.<init>()     // Catch: java.lang.Throwable -> L7c
            java.lang.String r4 = "EXT-FileUtils|"
            r3.append(r4)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L7c
            r3.append(r0)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L7c
            com.igexin.b.a.c.b.a(r0)     // Catch: java.lang.Throwable -> L7c
            if (r2 == 0) goto L78
            r2.close()     // Catch: java.lang.Exception -> L77
            goto L78
        L77:
        L78:
            if (r5 == 0) goto L7b
            goto L47
        L7b:
            return r1
        L7c:
            r0 = move-exception
        L7d:
            r1 = r2
        L7e:
            if (r1 == 0) goto L85
            r1.close()     // Catch: java.lang.Exception -> L84
            goto L85
        L84:
        L85:
            if (r5 == 0) goto L8a
            r5.close()     // Catch: java.lang.Exception -> L8a
        L8a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.basic.j.i.b(java.lang.String):byte[]");
    }

    public static String c(String str) throws Throwable {
        String[] strArrSplit;
        if (com.igexin.push.extension.distribution.basic.d.c.a(com.igexin.push.core.f.f)) {
            return null;
        }
        try {
            byte[] bArrB = b("/sdcard/libs//" + str + ".db");
            if (bArrB == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            String strA = n.a("cantgetimei");
            String strA2 = n.a("");
            if (strA != null && ((strA.equals(com.igexin.push.core.f.B) || com.igexin.push.core.f.B.equals(strA2)) && !TextUtils.isEmpty(com.igexin.push.core.f.u))) {
                arrayList.add(n.a(com.igexin.push.core.f.u));
            }
            arrayList.add(com.igexin.push.core.f.B);
            arrayList.add(strA2);
            arrayList.add(n.a("000000000000000"));
            arrayList.add(strA);
            String strA3 = h.a(1, com.igexin.push.core.f.f);
            if (!TextUtils.isEmpty(strA3)) {
                arrayList.add(n.a(strA3));
            }
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    strArrSplit = null;
                    break;
                }
                String str2 = new String(com.igexin.b.a.a.a.a(bArrB, (String) it.next()));
                if (Pattern.matches("[\\.:0-9a-zA-Z\\|]+", str2)) {
                    strArrSplit = str2.split("\\|");
                    break;
                }
            }
            if (strArrSplit == null || strArrSplit.length <= 3) {
                return null;
            }
            String str3 = strArrSplit[3];
            if (str3 != null) {
                try {
                    if (str3.equals("null")) {
                        return null;
                    }
                } catch (Exception unused) {
                }
            }
            return str3;
        } catch (Exception unused2) {
            return null;
        }
    }
}
