package com.igexin.push.core.c;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.taobao.weex.common.Constants;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class d implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f198a;
    private List<com.igexin.push.core.bean.i> b = new CopyOnWriteArrayList();

    private d() {
    }

    private int a(byte b) {
        Iterator<com.igexin.push.core.bean.i> it = this.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().c() == b) {
                i++;
            }
        }
        return i;
    }

    private com.igexin.push.core.bean.i a(long j) {
        for (com.igexin.push.core.bean.i iVar : this.b) {
            if (iVar.a() == j) {
                return iVar;
            }
        }
        return null;
    }

    public static d a() {
        if (f198a == null) {
            f198a = new d();
        }
        return f198a;
    }

    private static ContentValues b(com.igexin.push.core.bean.i iVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Long.valueOf(iVar.a()));
        contentValues.put("data", com.igexin.b.b.a.b(iVar.b().getBytes()));
        contentValues.put("type", Byte.valueOf(iVar.c()));
        contentValues.put(Constants.Value.TIME, Long.valueOf(iVar.d()));
        return contentValues;
    }

    private void b(byte b) {
        com.igexin.push.core.bean.i iVar = null;
        try {
            Iterator<com.igexin.push.core.bean.i> it = this.b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                com.igexin.push.core.bean.i next = it.next();
                if (next.c() == b) {
                    iVar = next;
                    break;
                }
            }
            if (iVar != null) {
                a(iVar.a(), true, true);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(long j, boolean z, boolean z2) {
        com.igexin.push.core.bean.i iVarA = a(j);
        if (iVarA != null) {
            this.b.remove(iVarA);
        }
        if (z) {
            com.igexin.b.a.b.c.b().a(new f(this, b(iVarA), j), z2, !z2);
        }
    }

    @Override // com.igexin.push.core.c.a
    public void a(SQLiteDatabase sQLiteDatabase) {
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(com.igexin.push.core.bean.i r5) {
        /*
            r4 = this;
            if (r5 == 0) goto L6f
            java.util.List<com.igexin.push.core.bean.i> r0 = r4.b
            int r0 = r0.size()
            r1 = 318(0x13e, float:4.46E-43)
            r2 = 7
            r3 = 2
            if (r0 < r1) goto L1b
            byte r0 = r5.c()
            if (r0 == r3) goto L1b
            byte r0 = r5.c()
            if (r0 == r2) goto L1b
            goto L6f
        L1b:
            byte r0 = r5.c()
            if (r0 == r3) goto L51
            r1 = 3
            if (r0 == r1) goto L48
            r3 = 5
            if (r0 == r3) goto L41
            r3 = 6
            if (r0 == r3) goto L38
            if (r0 == r2) goto L51
            r2 = 8
            if (r0 == r2) goto L31
            goto L58
        L31:
            int r0 = r4.a(r2)
            if (r0 < r1) goto L58
            return
        L38:
            int r0 = r4.a(r3)
            r1 = 10
            if (r0 < r1) goto L58
            return
        L41:
            int r0 = r4.a(r3)
            if (r0 < r1) goto L58
            return
        L48:
            int r0 = r4.a(r1)
            r1 = 300(0x12c, float:4.2E-43)
            if (r0 < r1) goto L58
            return
        L51:
            byte r0 = r5.c()
            r4.b(r0)
        L58:
            java.util.List<com.igexin.push.core.bean.i> r0 = r4.b
            r0.add(r5)
            com.igexin.b.a.b.c r0 = com.igexin.b.a.b.c.b()
            com.igexin.push.core.c.e r1 = new com.igexin.push.core.c.e
            android.content.ContentValues r5 = b(r5)
            r1.<init>(r4, r5)
            r5 = 0
            r2 = 1
            r0.a(r1, r5, r2)
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.core.c.d.a(com.igexin.push.core.bean.i):void");
    }

    public boolean a(long j, long j2) {
        com.igexin.push.core.bean.i iVarA = a(j);
        if (iVarA == null) {
            return false;
        }
        iVarA.a(j2);
        com.igexin.b.a.b.c.b().a(new g(this, b(iVarA), j), true, true);
        return true;
    }

    public List<com.igexin.push.core.bean.i> b() {
        return this.b;
    }

    @Override // com.igexin.push.core.c.a
    public void b(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query("ral", new String[]{"id", "data", "type", Constants.Value.TIME}, null, null, null, null, null);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    long j = cursorQuery.getLong(0);
                    byte b = (byte) cursorQuery.getInt(2);
                    long j2 = cursorQuery.getLong(3);
                    if (jCurrentTimeMillis - j2 > 259200000) {
                        a(j, true, true);
                    } else {
                        this.b.add(new com.igexin.push.core.bean.i(j, new String(com.igexin.b.b.a.c(cursorQuery.getBlob(1))), b, j2));
                    }
                }
            }
            if (cursorQuery == null) {
                return;
            }
        } catch (Exception unused) {
            if (cursorQuery == null) {
                return;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        cursorQuery.close();
    }

    @Override // com.igexin.push.core.c.a
    public void c(SQLiteDatabase sQLiteDatabase) {
    }
}
