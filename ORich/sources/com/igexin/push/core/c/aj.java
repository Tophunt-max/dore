package com.igexin.push.core.c;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.taobao.weex.common.Constants;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class aj implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f194a = "com.igexin.push.core.c.aj";
    private static int b = 200;
    private static int c = 50;
    private static aj f;
    private int d;
    private ArrayList<com.igexin.push.core.bean.j> e = null;

    private aj() {
    }

    static /* synthetic */ int a(aj ajVar) {
        int i = ajVar.d;
        ajVar.d = i + 1;
        return i;
    }

    public static aj a() {
        if (f == null) {
            f = new aj();
        }
        return f;
    }

    public ArrayList<com.igexin.push.core.bean.j> a(String str) {
        ArrayList<com.igexin.push.core.bean.j> arrayList = new ArrayList<>();
        Cursor cursorA = null;
        try {
            cursorA = com.igexin.push.core.e.a().i().a("st", new String[]{"type"}, new String[]{str}, null, null);
            if (cursorA != null && cursorA.getCount() > 0) {
                while (cursorA.moveToNext()) {
                    byte[] bArrC = com.igexin.b.b.a.c(cursorA.getBlob(2));
                    com.igexin.push.core.bean.j jVar = new com.igexin.push.core.bean.j();
                    jVar.a(cursorA.getInt(0));
                    jVar.b(cursorA.getInt(1));
                    jVar.a(new String(bArrC));
                    jVar.a(cursorA.getLong(3));
                    arrayList.add(jVar);
                }
            }
        } catch (Throwable th) {
            try {
                com.igexin.b.a.c.b.a(f194a + "|getThirdGuardData exception:" + th.toString());
                if (cursorA != null) {
                }
            } finally {
                if (cursorA != null) {
                    cursorA.close();
                }
            }
        }
        return arrayList;
    }

    @Override // com.igexin.push.core.c.a
    public void a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorA = null;
        try {
            cursorA = com.igexin.push.core.e.a().i().a("st", null, null, null, null);
            if (cursorA != null) {
                this.d = cursorA.getCount();
            }
            if (cursorA == null) {
                return;
            }
        } catch (Throwable unused) {
            if (cursorA == null) {
                return;
            }
        }
        cursorA.close();
    }

    public void a(String str, String str2) {
        if (this.d >= b) {
            com.igexin.b.a.c.b.a(f194a + "|rowCount >= 200 can not insert");
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", str);
        contentValues.put("value", com.igexin.b.b.a.b(str2.getBytes()));
        contentValues.put(Constants.Value.TIME, Long.valueOf(System.currentTimeMillis()));
        com.igexin.b.a.b.c.b().a(new ak(this, contentValues), false, true);
    }

    public void a(String str, ArrayList<com.igexin.push.core.bean.j> arrayList) {
        try {
            String[] strArr = new String[arrayList.size()];
            int i = 0;
            for (com.igexin.push.core.bean.j jVar : arrayList) {
                strArr[i] = String.valueOf(jVar.a());
                this.e.remove(jVar);
                i++;
            }
            com.igexin.push.core.e.a().i().a("st", new String[]{"id"}, strArr);
            if (this.e.size() > 0) {
                c(str);
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f194a + "|onReportResult exception:" + th.toString());
        }
    }

    @Override // com.igexin.push.core.c.a
    public void b(SQLiteDatabase sQLiteDatabase) {
    }

    public void b(String str) {
        this.e = a(str);
        c(str);
    }

    @Override // com.igexin.push.core.c.a
    public void c(SQLiteDatabase sQLiteDatabase) {
    }

    public void c(String str) {
        try {
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder();
            for (com.igexin.push.core.bean.j jVar : this.e) {
                if (arrayList.size() >= c) {
                    break;
                }
                arrayList.add(jVar);
                sb.append(jVar.b());
                sb.append("\n");
            }
            String string = sb.toString();
            if (TextUtils.isEmpty(string)) {
                return;
            }
            com.igexin.b.a.b.c.b().a(new com.igexin.push.g.a.c(new com.igexin.push.core.d.h(string.getBytes(), str, arrayList)), false, true);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f194a + "|doSTReport exception:" + th.toString());
        }
    }
}
