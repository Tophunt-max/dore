package com.igexin.push.extension.distribution.basic.e;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
public class a extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    SQLiteDatabase f307a;

    public a(Context context) {
        super(context, "pushext.db", (SQLiteDatabase.CursorFactory) null, 4);
        this.f307a = null;
    }

    private String a(String str, String str2) {
        return "delete from " + str + " where " + str2;
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

    public Cursor a(String str, String[] strArr) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        this.f307a = readableDatabase;
        try {
            return readableDatabase.rawQuery(str, strArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public Cursor a(String str, String[] strArr, String str2) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        this.f307a = readableDatabase;
        return readableDatabase.query(str, strArr, str2, null, null, null, null);
    }

    public Cursor a(String str, String[] strArr, String[] strArr2, String[] strArr3, String str2) {
        Cursor cursorQuery;
        SQLiteDatabase readableDatabase = getReadableDatabase();
        this.f307a = readableDatabase;
        readableDatabase.beginTransaction();
        Cursor cursor = null;
        try {
            if (strArr == null) {
                cursorQuery = this.f307a.query(str, strArr3, null, null, null, null, str2);
            } else if (strArr.length != 1) {
                cursorQuery = this.f307a.query(str, strArr3, a(strArr, strArr2, strArr.length), null, null, null, str2);
            } else if (strArr2.length == 1) {
                cursorQuery = this.f307a.query(str, strArr3, strArr[0] + " = ? ", strArr2, null, null, str2);
            } else {
                cursorQuery = this.f307a.query(str, strArr3, a(strArr, strArr2, strArr2.length), null, null, null, str2);
            }
            cursor = cursorQuery;
            this.f307a.setTransactionSuccessful();
        } catch (Exception unused) {
        } catch (Throwable th) {
            this.f307a.endTransaction();
            throw th;
        }
        this.f307a.endTransaction();
        return cursor;
    }

    public void a(String str, ContentValues contentValues) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.f307a = writableDatabase;
        writableDatabase.beginTransaction();
        try {
            this.f307a.insert(str, null, contentValues);
            this.f307a.setTransactionSuccessful();
        } catch (Exception unused) {
        } catch (Throwable th) {
            this.f307a.endTransaction();
            throw th;
        }
        this.f307a.endTransaction();
    }

    public void a(String str, String str2, ContentValues contentValues) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.f307a = writableDatabase;
        try {
            writableDatabase.replace(str, str2, contentValues);
        } catch (Exception unused) {
        }
    }

    public void a(String str, String[] strArr, String[] strArr2) {
        SQLiteDatabase sQLiteDatabase;
        String strA;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.f307a = writableDatabase;
        writableDatabase.beginTransaction();
        try {
            if (strArr == null) {
                this.f307a.delete(str, null, null);
            } else {
                if (strArr.length != 1) {
                    sQLiteDatabase = this.f307a;
                    strA = a(str, a(strArr, strArr2, strArr.length));
                } else if (strArr2.length == 1) {
                    this.f307a.delete(str, strArr[0] + " = ?", strArr2);
                } else {
                    sQLiteDatabase = this.f307a;
                    strA = a(str, a(strArr, strArr2, strArr2.length));
                }
                sQLiteDatabase.execSQL(strA);
            }
            this.f307a.setTransactionSuccessful();
        } catch (Exception unused) {
        } catch (Throwable th) {
            this.f307a.endTransaction();
            throw th;
        }
        this.f307a.endTransaction();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public void close() {
        try {
            this.f307a.close();
        } catch (Exception unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.beginTransaction();
            sQLiteDatabase.execSQL("create table if not exists image(id integer primary key autoincrement, imageurl text, imagesrc text, taskid text, createtime bigint)");
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception unused) {
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
        sQLiteDatabase.endTransaction();
        try {
            sQLiteDatabase.beginTransaction();
            sQLiteDatabase.execSQL("create table if not exists message(id integer primary key autoincrement,messageid text,taskid text,appid text,info text,msgextra blob,key text,createtime integer)");
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            sQLiteDatabase.endTransaction();
            throw th2;
        }
        sQLiteDatabase.endTransaction();
        try {
            sQLiteDatabase.beginTransaction();
            sQLiteDatabase.execSQL("create table if not exists sc(id integer primary key autoincrement, title text, value text)");
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception unused3) {
        } catch (Throwable th3) {
            sQLiteDatabase.endTransaction();
            throw th3;
        }
        sQLiteDatabase.endTransaction();
        try {
            sQLiteDatabase.beginTransaction();
            sQLiteDatabase.execSQL("create table if not exists extconfig (key integer primary key, value text)");
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception unused4) {
        } catch (Throwable th4) {
            sQLiteDatabase.endTransaction();
            throw th4;
        }
        sQLiteDatabase.endTransaction();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i2, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            sQLiteDatabase.execSQL("drop table if exists image");
        } catch (Exception unused) {
        }
        try {
            sQLiteDatabase.execSQL("drop table if exists message");
        } catch (Exception unused2) {
        }
        try {
            sQLiteDatabase.execSQL("drop table if exists sc");
        } catch (Exception unused3) {
        }
        try {
            sQLiteDatabase.execSQL("drop table if exists extconfig");
        } catch (Exception unused4) {
        }
        onCreate(sQLiteDatabase);
    }
}
