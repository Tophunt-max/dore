package com.igexin.push.extension.distribution.gbd.e.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Build;
import android.text.TextUtils;
import com.igexin.push.extension.distribution.gbd.b.i;
import com.igexin.push.extension.distribution.gbd.i.ab;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.push.extension.distribution.gbd.i.k;
import io.dcloud.common.DHInterface.IApp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f385a;
    private static final Object d = new Object();
    private List<i> b = new ArrayList();
    private boolean c = false;
    private Comparator<i> e = new c(this);
    private Comparator<i> f = new d(this);
    private com.igexin.push.extension.distribution.gbd.f.c g = new e(this);
    private com.igexin.push.extension.distribution.gbd.f.c h = new f(this);

    public static synchronized b a() {
        if (f385a == null) {
            f385a = new b();
        }
        return f385a;
    }

    private List<i> a(List<i> list, int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (i iVar : list) {
            if (i2 < 10 && iVar.b() == i) {
                arrayList.add(iVar);
                i2++;
            }
        }
        return arrayList;
    }

    private void a(int i, StringBuilder sb, List<i> list) {
        try {
            com.igexin.push.extension.distribution.gbd.f.a.f fVar = new com.igexin.push.extension.distribution.gbd.f.a.f(sb.toString().getBytes("UTF-8"), i, list);
            fVar.a(this.h);
            if (com.igexin.b.a.b.c.b().a(new com.igexin.push.extension.distribution.gbd.f.a(fVar), false, true)) {
                return;
            }
            this.c = false;
        } catch (Exception e) {
            j.a(e);
            this.c = false;
        }
    }

    private void a(HashMap<String, com.igexin.push.extension.distribution.gbd.b.d> map, int i, int i2, int i3) {
        String str;
        String str2;
        String str3;
        if (com.igexin.push.core.f.s == null) {
            return;
        }
        String str4 = "";
        if (map != null) {
            String str5 = "";
            str = str5;
            str2 = str;
            str3 = str2;
            for (String str6 : map.keySet()) {
                com.igexin.push.extension.distribution.gbd.b.d dVar = map.get(str6);
                String str7 = com.igexin.push.extension.distribution.gbd.c.c.s.get(str6);
                if (TextUtils.isEmpty(str7)) {
                    j.a("GBD_RALDataManager", "package name is empty");
                } else if (TextUtils.isEmpty(str5) && TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
                    String str8 = dVar.b() + "";
                    String str9 = dVar.a() + "";
                    str3 = dVar.c() + "";
                    str2 = str9;
                    str = str8;
                    str5 = str7;
                } else {
                    str5 = str5 + "#" + str7;
                    String str10 = str + "," + dVar.b();
                    str2 = str2 + "," + dVar.a();
                    str3 = str3 + "," + dVar.c();
                    str = str10;
                }
            }
            str4 = str5;
        } else {
            str = "";
            str2 = str;
            str3 = str2;
        }
        if (i == 0 && i2 == 0 && TextUtils.isEmpty(str4) && TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            return;
        }
        if (TextUtils.isEmpty(str4) || str4.length() <= 4) {
            j.b("GBD_RALDataManager", "convoyName is " + str4 + ", short and return.");
            return;
        }
        String str11 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(k.x()));
        StringBuilder sb = new StringBuilder();
        sb.append(str11);
        sb.append("|");
        sb.append(com.igexin.push.core.f.s);
        sb.append("|");
        sb.append(com.igexin.push.core.f.f238a);
        sb.append("|");
        sb.append(i3);
        sb.append("|");
        sb.append(str4);
        sb.append("|");
        sb.append(k.a(true));
        if (i3 == 1 || i3 == 3) {
            sb.append("|");
            sb.append(str2);
            sb.append("|");
            sb.append("|");
            sb.append(str);
            sb.append("|");
            sb.append("|");
            sb.append(str3);
            sb.append("|");
            sb.append(com.igexin.push.core.f.x);
            sb.append("|");
        } else {
            sb.append("|");
            sb.append(i2);
            sb.append("|");
            sb.append(i);
            sb.append("|");
            sb.append(str);
            sb.append("|");
            sb.append(str2);
            sb.append("|");
            sb.append(str3);
            sb.append("|");
            sb.append(com.igexin.push.core.f.x);
            sb.append("|");
            if (str4.contains("com.sina.weibo")) {
                sb.append(ab.a().b());
            }
        }
        sb.append("|");
        sb.append(k.r());
        sb.append("|");
        sb.append(Build.MODEL);
        sb.append("|");
        sb.append(Build.VERSION.SDK_INT);
        sb.append("|");
        sb.append(k.s());
        if (k.d(19)) {
            j.b("GBD_RALDataManager", "instant r 19.");
            a(sb.toString(), 19);
        } else {
            j.b("GBD_RALDataManager", "not instant r 19.");
            b(sb.toString(), 19);
        }
    }

    private void a(List<i> list) {
        synchronized (d) {
            if (list != null) {
                if (!list.isEmpty()) {
                    String[] strArr = new String[list.size()];
                    int i = 0;
                    for (i iVar : list) {
                        strArr[i] = String.valueOf(iVar.a());
                        this.b.remove(iVar);
                        i++;
                    }
                    com.igexin.push.extension.distribution.gbd.c.c.b.a("ral", new String[]{"id"}, strArr, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00c2 A[Catch: Exception -> 0x00c6, TRY_LEAVE, TryCatch #0 {Exception -> 0x00c6, blocks: (B:4:0x0007, B:6:0x002a, B:9:0x0037, B:12:0x0040, B:15:0x0049, B:18:0x0052, B:21:0x005b, B:24:0x0064, B:27:0x006d, B:30:0x0076, B:33:0x007f, B:36:0x0087, B:39:0x008f, B:43:0x0098, B:44:0x009c, B:68:0x00c2), top: B:74:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(java.util.List<com.igexin.push.extension.distribution.gbd.b.i> r17, boolean r18) {
        /*
            Method dump skipped, instruction units count: 203
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.e.a.b.a(java.util.List, boolean):void");
    }

    private void b(int i) {
        String strC;
        try {
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList = new ArrayList();
            List<i> listA = a(this.b, i);
            if (!listA.isEmpty()) {
                for (int i2 = 0; i2 < listA.size(); i2++) {
                    i iVar = listA.get(i2);
                    if (i2 < listA.size() - 1) {
                        sb.append(iVar.c());
                        strC = "\n";
                    } else {
                        strC = iVar.c();
                    }
                    sb.append(strC);
                    arrayList.add(iVar);
                }
                a(i, sb, arrayList);
                return;
            }
            int i3 = 11;
            if (i != 6) {
                int i4 = 14;
                if (i != 11) {
                    i3 = 19;
                    if (i != 14) {
                        i4 = 24;
                        if (i != 19) {
                            i3 = 27;
                            if (i != 24) {
                                i4 = 28;
                                if (i != 27) {
                                    i3 = 31;
                                    if (i != 28) {
                                        i4 = 32;
                                        if (i != 31) {
                                            i3 = 34;
                                            if (i != 32) {
                                                i4 = 38;
                                                if (i != 34) {
                                                    i3 = 43;
                                                    if (i != 38) {
                                                        if (i == 43) {
                                                            this.c = false;
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                b(i4);
                return;
            }
            b(i3);
        } catch (Exception e) {
            j.a(e);
        }
    }

    private void b(List<i> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList(list);
                for (i iVar : list) {
                    int iE = iVar.e() + 1;
                    iVar.c(iE);
                    j.b("GBD_RALDataManager", " id = " + iVar.a() + "  num = " + iE);
                    if (iE >= com.igexin.push.extension.distribution.gbd.c.a.bA) {
                        arrayList.add(iVar);
                        arrayList2.remove(iVar);
                    }
                }
                if (arrayList2.size() > 0) {
                    c(arrayList2);
                }
                if (arrayList.size() > 0) {
                    a(arrayList);
                }
            } catch (Throwable th) {
                j.a(th);
            }
        }
    }

    private int c(String str, int i) {
        Cursor cursorA = null;
        int i2 = 0;
        try {
            try {
                cursorA = com.igexin.push.extension.distribution.gbd.c.c.b.a("select count(value) c from look where t < '" + str + "' and status = 4 and type = " + i, (String[]) null);
                if (cursorA != null && cursorA.getCount() > 0 && cursorA.moveToFirst()) {
                    i2 = cursorA.getInt(0);
                }
                if (cursorA != null) {
                    cursorA.close();
                }
                return i2;
            } catch (Exception e) {
                j.a(e);
                if (cursorA != null) {
                    cursorA.close();
                }
                return 0;
            }
        } catch (Throwable th) {
            if (cursorA != null) {
                cursorA.close();
            }
            throw th;
        }
    }

    private void c(List<i> list) {
        synchronized (d) {
            if (list != null) {
                if (!list.isEmpty()) {
                    int size = list.size();
                    String[] strArr = new String[size];
                    int[] iArr = new int[list.size()];
                    int i = 0;
                    for (i iVar : list) {
                        int iA = iVar.a();
                        strArr[i] = String.valueOf(iA);
                        iArr[i] = iVar.e();
                        i++;
                        j.b("GBD_RALDataManager", "update ral id = " + iA);
                    }
                    for (int i2 = 0; i2 < size; i2++) {
                        String str = strArr[i2];
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("num", Integer.valueOf(iArr[i2]));
                        com.igexin.push.extension.distribution.gbd.c.c.b.a("ral", contentValues, new String[]{"id"}, new String[]{str});
                    }
                }
            }
        }
    }

    private int d(String str, int i) {
        Cursor cursorA = null;
        try {
            try {
                cursorA = com.igexin.push.extension.distribution.gbd.c.c.b.a("select count(value) c from look where  t < '" + str + "' and status = 3 and type = " + i, (String[]) null);
                int i2 = (cursorA == null || !cursorA.moveToFirst()) ? 0 : cursorA.getInt(0);
                j.a("GBD_RALDataManager", "screen notes count = " + i2);
                if (cursorA != null) {
                    cursorA.close();
                }
                return i2;
            } catch (Exception e) {
                j.a(e);
                if (cursorA != null) {
                    cursorA.close();
                }
                return 0;
            }
        } catch (Throwable th) {
            if (cursorA != null) {
                cursorA.close();
            }
            throw th;
        }
    }

    private void d() {
        ArrayList arrayList;
        int size;
        synchronized (d) {
            try {
                arrayList = new ArrayList(this.b);
                size = arrayList.size() - com.igexin.push.extension.distribution.gbd.c.a.z;
                j.b("GBD_RALDataManager", "list size = " + arrayList.size() + ", max = " + com.igexin.push.extension.distribution.gbd.c.a.z);
            } catch (Throwable th) {
                j.a(th);
            }
            if (size > 0 && com.igexin.push.extension.distribution.gbd.c.a.z >= 0) {
                Collections.sort(arrayList, this.f);
                long jD = ((i) arrayList.get(size - 1)).d();
                for (int i = 0; i < size; i++) {
                    i iVar = (i) arrayList.get(i);
                    iVar.a();
                    this.b.remove(iVar);
                }
                com.igexin.push.extension.distribution.gbd.c.c.b.a("ral", new String[]{"t"}, new String[]{String.valueOf(jD)}, true);
                return;
            }
            j.b("GBD_RALDataManager", "ral list less than the max.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00c7 A[PHI: r1
      0x00c7: PHI (r1v4 android.database.Cursor) = (r1v3 android.database.Cursor), (r1v6 android.database.Cursor) binds: [B:32:0x00c5, B:25:0x00bb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.HashMap<java.lang.String, com.igexin.push.extension.distribution.gbd.b.d> e(java.lang.String r8, int r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.e.a.b.e(java.lang.String, int):java.util.HashMap");
    }

    public void a(int i) {
        String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date());
        try {
            a(e(str, i), c(str, i), d(str, i), i);
        } catch (Exception e) {
            j.a(e);
        }
        com.igexin.push.extension.distribution.gbd.c.c.b.a("look", "t<'" + str + "' and type = " + i);
    }

    public synchronized void a(String str, int i) {
        try {
            j.b("GBD_RALDataManager", "instant r data, type = " + i);
        } catch (Throwable th) {
            j.a(th);
        }
        if (!k.e(com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
            j.b("GBD_RALDataManager", "ral instant r no network.");
            b(str, i);
            return;
        }
        i iVar = new i();
        iVar.b(i);
        iVar.a(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(iVar);
        com.igexin.push.extension.distribution.gbd.f.a.f fVar = new com.igexin.push.extension.distribution.gbd.f.a.f(str.getBytes("UTF-8"), i, arrayList);
        fVar.a(this.g);
        if (!com.igexin.b.a.b.c.b().a(new com.igexin.push.extension.distribution.gbd.f.a(fVar), true, true)) {
            b(str, i);
            j.b("GBD_RALDataManager", "instant bir requestService false.");
        }
    }

    public void b() {
        Cursor cursorA = null;
        try {
            try {
                cursorA = com.igexin.push.extension.distribution.gbd.c.c.b.a("select id, key, value, t, num from ral order by id", (String[]) null);
                if (cursorA != null) {
                    while (cursorA.moveToNext()) {
                        int i = cursorA.getInt(0);
                        int i2 = cursorA.getInt(1);
                        byte[] bArrC = com.igexin.b.b.a.c(cursorA.getBlob(2));
                        long j = cursorA.getLong(3);
                        int i3 = cursorA.getInt(4);
                        i iVar = new i();
                        iVar.a(i);
                        iVar.b(i2);
                        iVar.a(new String(bArrC));
                        iVar.a(j);
                        iVar.c(i3);
                        this.b.add(iVar);
                    }
                }
                if (cursorA == null) {
                    return;
                }
            } catch (Exception e) {
                j.a(e);
                if (cursorA == null) {
                    return;
                }
            }
            cursorA.close();
        } catch (Throwable th) {
            if (cursorA != null) {
                cursorA.close();
            }
            throw th;
        }
    }

    public void b(String str, int i) {
        j.b("GBD_RALDataManager", "save type = " + i);
        j.a("GBD_RALDataManager", "save type = " + i + " value = " + str);
        synchronized (d) {
            if (this.b.size() >= com.igexin.push.extension.distribution.gbd.c.a.z) {
                Collections.sort(this.b, this.e);
                List<i> arrayList = new ArrayList<>();
                arrayList.add(this.b.get(0));
                a(arrayList);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            ContentValues contentValues = new ContentValues();
            contentValues.put(IApp.ConfigProperty.CONFIG_KEY, Integer.valueOf(i));
            contentValues.put("value", com.igexin.b.b.a.b(str.getBytes()));
            contentValues.put("t", Long.valueOf(jCurrentTimeMillis));
            contentValues.put("num", (Integer) 0);
            if (com.igexin.push.extension.distribution.gbd.c.c.b.a("ral", contentValues) != -1) {
                Cursor cursorA = null;
                try {
                    cursorA = com.igexin.push.extension.distribution.gbd.c.c.b.a("select last_insert_rowid() from ral", (String[]) null);
                    if (cursorA != null && cursorA.moveToFirst()) {
                        int i2 = cursorA.getInt(0);
                        i iVar = new i();
                        iVar.a(i2);
                        iVar.b(i);
                        iVar.a(str);
                        iVar.a(jCurrentTimeMillis);
                        iVar.c(0);
                        this.b.add(iVar);
                    }
                } catch (Throwable th) {
                    try {
                        j.a(th);
                        j.b("GBD_RALDataManager", th.getMessage());
                        if (cursorA != null) {
                        }
                    } finally {
                        if (cursorA != null) {
                            cursorA.close();
                        }
                    }
                }
            }
        }
    }

    public void c() {
        j.b("GBD_RALDataManager", "init doReport isReporting = " + this.c);
        d();
        if (!k.e(com.igexin.push.extension.distribution.gbd.c.c.f373a)) {
            j.b("GBD_RALDataManager", "ral r no network.");
        } else {
            if (this.c) {
                return;
            }
            this.c = true;
            b(6);
        }
    }
}
