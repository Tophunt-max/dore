package com.igexin.push.extension.distribution.gbd.e;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
public class a extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SQLiteDatabase f383a;

    public a(Context context) {
        super(context, "pushg.db", (SQLiteDatabase.CursorFactory) null, 7);
        this.f383a = null;
    }

    private String a(String[] strArr, String[] strArr2, int i) {
        StringBuilder sb = new StringBuilder(Operators.SPACE_STR);
        if (strArr.length == 1) {
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(strArr[0]);
                sb.append(" = '");
                sb.append(strArr2[i2]);
                sb.append("'");
                if (i2 < i - 1) {
                    sb.append(" or ");
                }
            }
        } else {
            for (int i3 = 0; i3 < i; i3++) {
                sb.append(strArr[i3]);
                sb.append(" = '");
                sb.append(strArr2[i3]);
                sb.append("'");
                if (i3 < i - 1) {
                    sb.append(" and ");
                }
            }
        }
        return sb.toString();
    }

    private String b(String str, String str2) {
        return "delete from " + str + " where " + str2;
    }

    public long a(String str, ContentValues contentValues) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.f383a = writableDatabase;
        writableDatabase.beginTransaction();
        long jInsert = -1;
        try {
            jInsert = this.f383a.insert(str, null, contentValues);
            this.f383a.setTransactionSuccessful();
        } catch (Throwable unused) {
        }
        this.f383a.endTransaction();
        return jInsert;
    }

    public Cursor a(String str, String[] strArr) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        this.f383a = readableDatabase;
        try {
            return readableDatabase.rawQuery(str, strArr);
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    public void a(String str, ContentValues contentValues, String[] strArr, String[] strArr2) {
        SQLiteDatabase sQLiteDatabase;
        int length;
        String strA;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.f383a = writableDatabase;
        writableDatabase.beginTransaction();
        try {
            if (strArr == null) {
                this.f383a.update(str, contentValues, null, null);
            } else {
                if (strArr.length != 1) {
                    sQLiteDatabase = this.f383a;
                    length = strArr.length;
                } else if (strArr2.length == 1) {
                    sQLiteDatabase = this.f383a;
                    strA = strArr[0] + "='" + strArr2[0] + "'";
                    sQLiteDatabase.update(str, contentValues, strA, null);
                } else {
                    sQLiteDatabase = this.f383a;
                    length = strArr2.length;
                }
                strA = a(strArr, strArr2, length);
                sQLiteDatabase.update(str, contentValues, strA, null);
            }
            this.f383a.setTransactionSuccessful();
        } catch (Throwable unused) {
        }
        this.f383a.endTransaction();
    }

    public void a(String str, String str2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.f383a = writableDatabase;
        writableDatabase.delete(str, str2, null);
    }

    public void a(String str, String str2, ContentValues contentValues) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.f383a = writableDatabase;
        try {
            writableDatabase.replace(str, str2, contentValues);
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public void a(String str, String[] strArr, String[] strArr2, boolean z) {
        SQLiteDatabase sQLiteDatabase;
        String strA;
        SQLiteDatabase sQLiteDatabase2;
        StringBuilder sb;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.f383a = writableDatabase;
        writableDatabase.beginTransaction();
        try {
            if (strArr == null) {
                this.f383a.delete(str, null, null);
            } else {
                if (strArr.length != 1) {
                    sQLiteDatabase = this.f383a;
                    strA = a(strArr, strArr2, strArr.length);
                } else if (strArr2.length == 1) {
                    if (z) {
                        sQLiteDatabase2 = this.f383a;
                        sb = new StringBuilder();
                        sb.append(strArr[0]);
                        sb.append(" <= ?");
                    } else {
                        sQLiteDatabase2 = this.f383a;
                        sb = new StringBuilder();
                        sb.append(strArr[0]);
                        sb.append(" = ?");
                    }
                    sQLiteDatabase2.delete(str, sb.toString(), strArr2);
                } else {
                    sQLiteDatabase = this.f383a;
                    strA = a(strArr, strArr2, strArr2.length);
                }
                sQLiteDatabase.execSQL(b(str, strA));
            }
            this.f383a.setTransactionSuccessful();
        } catch (Throwable unused) {
        }
        this.f383a.endTransaction();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public void close() {
        try {
            this.f383a.close();
        } catch (Throwable unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            sQLiteDatabase.execSQL("create table if not exists runtime(key integer primary key, value text)");
            sQLiteDatabase.execSQL("create table if not exists ral (id integer primary key  , key integer, value blob,  t integer,  num integer default 0)");
            sQLiteDatabase.execSQL("create table if not exists config (key integer primary key, value text)");
            sQLiteDatabase.execSQL("create table if not exists look (id integer primary key  , value text,  t datetime,type integer,status integer, stage integer)");
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Throwable unused) {
        }
        sQLiteDatabase.endTransaction();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i2, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (sQLiteDatabase != null) {
            if (i == 6 && i2 == 7) {
                sQLiteDatabase.beginTransaction();
                try {
                    j.b("GBD_DBHelper", "DBHelper upgrade v=7.");
                    sQLiteDatabase.execSQL("drop table if exists ral");
                    sQLiteDatabase.execSQL("create table if not exists ral (id integer primary key  , key integer, value blob,  t integer,  num integer default 0)");
                    sQLiteDatabase.setTransactionSuccessful();
                } finally {
                    try {
                    } finally {
                    }
                }
                return;
            }
            sQLiteDatabase.beginTransaction();
            try {
                try {
                    sQLiteDatabase.execSQL("drop table if exists runtime");
                } finally {
                    j.a(th);
                }
                try {
                    sQLiteDatabase.execSQL("drop table if exists ral");
                } catch (Throwable th) {
                    j.a(th);
                }
                try {
                    sQLiteDatabase.execSQL("drop table if exists config");
                } catch (Throwable th2) {
                    j.a(th2);
                }
                try {
                    sQLiteDatabase.execSQL("drop table if exists look");
                } catch (Throwable th3) {
                    j.a(th3);
                }
                sQLiteDatabase.setTransactionSuccessful();
            } finally {
                try {
                } finally {
                }
            }
            sQLiteDatabase.endTransaction();
            onCreate(sQLiteDatabase);
        }
    }
}
