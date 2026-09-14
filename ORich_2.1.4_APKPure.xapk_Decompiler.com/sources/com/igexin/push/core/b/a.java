package com.igexin.push.core.b;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.igexin.b.a.b.c;
import com.igexin.push.config.SDKUrlConfig;
import com.igexin.push.core.bean.o;
import com.igexin.push.core.f;
import com.igexin.push.util.p;
import com.igexin.push.util.t;
import com.igexin.sdk.PushConsts;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f164a;

    private a() {
    }

    public static a a() {
        if (f164a == null) {
            f164a = new a();
        }
        return f164a;
    }

    private void a(String str) throws Throwable {
        File file;
        FileOutputStream fileOutputStream = null;
        try {
            try {
                file = new File(f.V);
            } catch (Exception unused) {
                return;
            }
        } catch (Exception unused2) {
        } catch (Throwable th) {
            th = th;
        }
        if (!file.exists() && !file.createNewFile()) {
            com.igexin.b.a.c.b.a("create file " + file.toString() + " failed######");
            return;
        }
        FileOutputStream fileOutputStream2 = new FileOutputStream(f.V);
        try {
            fileOutputStream2.write(com.igexin.b.b.a.a(str).getBytes());
            fileOutputStream2.close();
        } catch (Exception unused3) {
            fileOutputStream = fileOutputStream2;
            if (fileOutputStream == null) {
            } else {
                fileOutputStream.close();
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = fileOutputStream2;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Exception unused4) {
                }
            }
            throw th;
        }
    }

    private void a(List<o> list) {
        if (t.a(f.f)) {
            b bVar = new b(this);
            PackageManager packageManager = f.f.getPackageManager();
            List<PackageInfo> listA = p.a(f.f, 0);
            for (int i = 0; i < listA.size(); i++) {
                try {
                    PackageInfo packageInfo = listA.get(i);
                    ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                    if ((applicationInfo.flags & 1) <= 0) {
                        o oVar = new o();
                        oVar.b(applicationInfo.loadLabel(packageManager).toString());
                        oVar.d(applicationInfo.packageName);
                        oVar.c(String.valueOf(packageInfo.versionCode));
                        oVar.a(packageInfo.versionName);
                        list.add(oVar);
                    }
                } catch (Exception unused) {
                }
            }
            Collections.sort(list, bVar);
        }
    }

    public String b() throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (!new File(f.V).exists()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            fileInputStream = new FileInputStream(f.V);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    try {
                        int i = fileInputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i);
                    } catch (Exception unused) {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                        if (byteArrayOutputStream == null) {
                            return null;
                        }
                        try {
                            byteArrayOutputStream.close();
                            return null;
                        } catch (Exception unused3) {
                            return null;
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream2 = fileInputStream;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (Exception unused4) {
                            }
                        }
                        if (byteArrayOutputStream == null) {
                            throw th;
                        }
                        try {
                            byteArrayOutputStream.close();
                            throw th;
                        } catch (Exception unused5) {
                            throw th;
                        }
                    }
                }
                String str = new String(byteArrayOutputStream.toByteArray());
                try {
                    fileInputStream.close();
                } catch (Exception unused6) {
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Exception unused7) {
                }
                return str;
            } catch (Exception unused8) {
                byteArrayOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
            }
        } catch (Exception unused9) {
            fileInputStream = null;
            byteArrayOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }

    public void c() throws Throwable {
        ArrayList arrayList = new ArrayList();
        a(arrayList);
        if (arrayList.isEmpty()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PushConsts.CMD_ACTION, "reportapplist");
            jSONObject.put("session_last", f.r);
            JSONArray jSONArray = new JSONArray();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("appid", arrayList.get(i).d());
                jSONObject2.put("name", arrayList.get(i).b());
                jSONObject2.put("version", arrayList.get(i).c());
                jSONObject2.put("versionName", arrayList.get(i).a());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("applist", jSONArray);
        } catch (Exception unused) {
        }
        c.b().a(new com.igexin.push.g.a.c(new com.igexin.push.core.d.a(SDKUrlConfig.getBiUploadServiceUrl(), jSONObject.toString().getBytes())), false, true);
        a(a().d());
        com.igexin.b.a.c.b.a("reportapplist");
    }

    public String d() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        a(arrayList2);
        int size = arrayList2.size();
        if (size > 0) {
            for (int i = 0; i < size; i++) {
                arrayList.add(arrayList2.get(i).d());
            }
        }
        return arrayList.toString();
    }
}
