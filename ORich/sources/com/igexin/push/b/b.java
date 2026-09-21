package com.igexin.push.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.igexin.push.core.c.h;
import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
public class b extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SQLiteDatabase f106a;

    public b(Context context) {
        super(context, "pushsdk.db", (SQLiteDatabase.CursorFactory) null, 3);
        this.f106a = null;
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

    public int a(String str, String str2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.f106a = writableDatabase;
        writableDatabase.beginTransaction();
        int iDelete = 0;
        try {
            iDelete = this.f106a.delete(str, str2, null);
            com.igexin.b.a.c.b.a("DBHelper|del " + iDelete + " msg");
            this.f106a.setTransactionSuccessful();
        } catch (Exception unused) {
        } catch (Throwable th) {
            this.f106a.endTransaction();
            throw th;
        }
        this.f106a.endTransaction();
        return iDelete;
    }

    public Cursor a(String str, String[] strArr, String[] strArr2, String[] strArr3, String str2) {
        Cursor cursorQuery;
        SQLiteDatabase readableDatabase = getReadableDatabase();
        this.f106a = readableDatabase;
        readableDatabase.beginTransaction();
        Cursor cursor = null;
        try {
            if (strArr == null) {
                cursorQuery = this.f106a.query(str, strArr3, null, null, null, null, str2);
            } else if (strArr.length != 1) {
                cursorQuery = this.f106a.query(str, strArr3, a(strArr, strArr2, strArr.length), null, null, null, str2);
            } else if (strArr2.length == 1) {
                cursorQuery = this.f106a.query(str, strArr3, strArr[0] + "= ?", strArr2, null, null, str2);
            } else {
                cursorQuery = this.f106a.query(str, strArr3, a(strArr, strArr2, strArr2.length), null, null, null, str2);
            }
            cursor = cursorQuery;
            this.f106a.setTransactionSuccessful();
        } catch (Exception unused) {
        } catch (Throwable th) {
            this.f106a.endTransaction();
            throw th;
        }
        this.f106a.endTransaction();
        return cursor;
    }

    public void a(String str, ContentValues contentValues, String[] strArr, String[] strArr2) {
        SQLiteDatabase sQLiteDatabase;
        String strA;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.f106a = writableDatabase;
        writableDatabase.beginTransaction();
        try {
            if (strArr == null) {
                this.f106a.update(str, contentValues, null, null);
            } else {
                if (strArr.length != 1) {
                    sQLiteDatabase = this.f106a;
                    strA = a(strArr, strArr2, strArr.length);
                } else if (strArr2.length == 1) {
                    sQLiteDatabase = this.f106a;
                    strA = strArr[0] + "='" + strArr2[0] + "'";
                } else {
                    sQLiteDatabase = this.f106a;
                    strA = a(strArr, strArr2, strArr2.length);
                }
                sQLiteDatabase.update(str, contentValues, strA, null);
            }
            this.f106a.setTransactionSuccessful();
        } catch (Exception unused) {
        } catch (Throwable th) {
            this.f106a.endTransaction();
            throw th;
        }
        this.f106a.endTransaction();
    }

    public void a(String str, String[] strArr, String[] strArr2) {
        SQLiteDatabase sQLiteDatabase;
        String strB;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.f106a = writableDatabase;
        writableDatabase.beginTransaction();
        try {
            if (strArr == null) {
                this.f106a.delete(str, null, null);
            } else {
                if (strArr.length != 1) {
                    sQLiteDatabase = this.f106a;
                    strB = b(str, a(strArr, strArr2, strArr.length));
                } else if (strArr2.length == 1) {
                    com.igexin.b.a.c.b.a("DBHelper|del " + str + " cnt = " + this.f106a.delete(str, strArr[0] + " = ?", strArr2));
                } else {
                    sQLiteDatabase = this.f106a;
                    strB = b(str, a(strArr, strArr2, strArr2.length));
                }
                sQLiteDatabase.execSQL(strB);
            }
            this.f106a.setTransactionSuccessful();
        } catch (Exception unused) {
        } catch (Throwable th) {
            this.f106a.endTransaction();
            throw th;
        }
        this.f106a.endTransaction();
    }

    public boolean a(String str, ContentValues contentValues) {
        boolean z;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        this.f106a = writableDatabase;
        writableDatabase.beginTransaction();
        try {
            this.f106a.insert(str, null, contentValues);
            this.f106a.setTransactionSuccessful();
            z = true;
        } catch (Exception unused) {
            z = false;
        } catch (Throwable th) {
            this.f106a.endTransaction();
            throw th;
        }
        this.f106a.endTransaction();
        return z;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            sQLiteDatabase.execSQL("create table if not exists config (id integer primary key,value text)");
            sQLiteDatabase.execSQL("create table if not exists runtime (id integer primary key,value text)");
            sQLiteDatabase.execSQL("create table if not exists message (id integer primary key autoincrement,messageid text,taskid text,appid text,info text,msgextra blob,key text,status integer,createtime integer)");
            sQLiteDatabase.execSQL("create table if not exists ral (id integer primary key,data text,type integer,time integer)");
            sQLiteDatabase.execSQL("create table if not exists ca (pkgname text primary key,signature text,permissions text, accesstoken blob, expire integer)");
            sQLiteDatabase.execSQL("create table if not exists bi(id integer primary key autoincrement, start_service_count integer, login_count integer, loginerror_nonetwork_count integer, loginerror_timeout_count integer, loginerror_connecterror_count integer, loginerror_other_count integer, online_time long, network_time long, running_time long, create_time text, type integer)");
            sQLiteDatabase.execSQL("create table if not exists st(id integer primary key autoincrement,type integer,value blob,time integer)");
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception unused) {
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
        sQLiteDatabase.endTransaction();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i2, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        h.a().d(sQLiteDatabase);
        try {
            sQLiteDatabase.execSQL("drop table if exists config");
        } catch (Exception unused) {
        }
        try {
            sQLiteDatabase.execSQL("drop table if exists runtime");
        } catch (Exception unused2) {
        }
        try {
            sQLiteDatabase.execSQL("drop table if exists message");
        } catch (Exception unused3) {
        }
        try {
            sQLiteDatabase.execSQL("drop table if exists ral");
        } catch (Exception unused4) {
        }
        try {
            sQLiteDatabase.execSQL("drop table if exists ca");
        } catch (Exception unused5) {
        }
        try {
            sQLiteDatabase.execSQL("drop table if exists bi");
        } catch (Exception unused6) {
        }
        try {
            sQLiteDatabase.execSQL("drop table if exists st");
        } catch (Exception unused7) {
        }
        onCreate(sQLiteDatabase);
    }
}
